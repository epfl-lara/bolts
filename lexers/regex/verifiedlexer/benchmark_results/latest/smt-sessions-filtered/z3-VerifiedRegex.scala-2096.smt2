; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106076 () Bool)

(assert start!106076)

(declare-fun b!1192854 () Bool)

(declare-fun e!766595 () Bool)

(declare-datatypes ((T!21558 0))(
  ( (T!21559 (val!3856 Int)) )
))
(declare-datatypes ((List!12035 0))(
  ( (Nil!12011) (Cons!12011 (h!17412 T!21558) (t!112291 List!12035)) )
))
(declare-fun lt!409637 () List!12035)

(declare-fun call!82885 () List!12035)

(assert (=> b!1192854 (= e!766595 (= lt!409637 call!82885))))

(declare-fun c!198092 () Bool)

(declare-fun lt!409638 () Int)

(declare-fun lt!409633 () List!12035)

(declare-fun from!553 () Int)

(declare-fun lt!409635 () List!12035)

(declare-fun until!31 () Int)

(declare-fun bm!82880 () Bool)

(declare-fun slice!429 (List!12035 Int Int) List!12035)

(assert (=> bm!82880 (= call!82885 (slice!429 (ite c!198092 lt!409635 lt!409633) (ite c!198092 (- from!553 lt!409638) from!553) (ite c!198092 (- until!31 lt!409638) lt!409638)))))

(declare-fun b!1192855 () Bool)

(declare-fun e!766590 () Bool)

(declare-fun e!766593 () Bool)

(assert (=> b!1192855 (= e!766590 e!766593)))

(declare-fun res!538687 () Bool)

(assert (=> b!1192855 (=> (not res!538687) (not e!766593))))

(declare-fun lt!409636 () Int)

(assert (=> b!1192855 (= res!538687 (<= from!553 lt!409636))))

(declare-fun call!82886 () List!12035)

(declare-fun bm!82881 () Bool)

(declare-fun c!198091 () Bool)

(assert (=> bm!82881 (= call!82886 (slice!429 (ite c!198091 lt!409633 lt!409635) (ite c!198091 from!553 0) (ite c!198091 until!31 (- until!31 lt!409638))))))

(declare-fun res!538684 () Bool)

(declare-fun e!766594 () Bool)

(assert (=> start!106076 (=> (not res!538684) (not e!766594))))

(assert (=> start!106076 (= res!538684 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106076 e!766594))

(assert (=> start!106076 true))

(declare-datatypes ((IArray!7893 0))(
  ( (IArray!7894 (innerList!4004 List!12035)) )
))
(declare-datatypes ((Conc!3944 0))(
  ( (Node!3944 (left!10464 Conc!3944) (right!10794 Conc!3944) (csize!8118 Int) (cheight!4155 Int)) (Leaf!6041 (xs!6649 IArray!7893) (csize!8119 Int)) (Empty!3944) )
))
(declare-fun t!4115 () Conc!3944)

(declare-fun e!766591 () Bool)

(declare-fun inv!15947 (Conc!3944) Bool)

(assert (=> start!106076 (and (inv!15947 t!4115) e!766591)))

(declare-fun b!1192856 () Bool)

(declare-fun e!766592 () List!12035)

(assert (=> b!1192856 (= e!766592 call!82886)))

(declare-fun b!1192857 () Bool)

(declare-fun ++!3048 (List!12035 List!12035) List!12035)

(assert (=> b!1192857 (= e!766592 (++!3048 call!82885 call!82886))))

(declare-fun b!1192858 () Bool)

(declare-fun e!766596 () Bool)

(declare-fun tp!340153 () Bool)

(assert (=> b!1192858 (= e!766596 tp!340153)))

(declare-fun b!1192859 () Bool)

(declare-fun isBalanced!1129 (Conc!3944) Bool)

(assert (=> b!1192859 (= e!766593 (isBalanced!1129 (left!10464 t!4115)))))

(declare-fun tp!340151 () Bool)

(declare-fun tp!340152 () Bool)

(declare-fun b!1192860 () Bool)

(assert (=> b!1192860 (= e!766591 (and (inv!15947 (left!10464 t!4115)) tp!340151 (inv!15947 (right!10794 t!4115)) tp!340152))))

(declare-fun b!1192861 () Bool)

(declare-fun res!538686 () Bool)

(assert (=> b!1192861 (=> (not res!538686) (not e!766594))))

(get-info :version)

(assert (=> b!1192861 (= res!538686 (and (not (= from!553 until!31)) (not ((_ is Leaf!6041) t!4115)) ((_ is Node!3944) t!4115)))))

(declare-fun b!1192862 () Bool)

(declare-fun res!538683 () Bool)

(assert (=> b!1192862 (=> (not res!538683) (not e!766594))))

(assert (=> b!1192862 (= res!538683 (isBalanced!1129 t!4115))))

(declare-fun b!1192863 () Bool)

(declare-fun inv!15948 (IArray!7893) Bool)

(assert (=> b!1192863 (= e!766591 (and (inv!15948 (xs!6649 t!4115)) e!766596))))

(declare-fun b!1192864 () Bool)

(assert (=> b!1192864 (= e!766595 (= lt!409637 e!766592))))

(assert (=> b!1192864 (= c!198091 (<= until!31 lt!409638))))

(declare-fun b!1192865 () Bool)

(assert (=> b!1192865 (= e!766594 (not e!766590))))

(declare-fun res!538688 () Bool)

(assert (=> b!1192865 (=> res!538688 e!766590)))

(assert (=> b!1192865 (= res!538688 (or (<= lt!409636 from!553) (<= until!31 lt!409636)))))

(declare-fun size!9506 (Conc!3944) Int)

(assert (=> b!1192865 (= lt!409636 (size!9506 (left!10464 t!4115)))))

(assert (=> b!1192865 e!766595))

(assert (=> b!1192865 (= c!198092 (<= lt!409638 from!553))))

(assert (=> b!1192865 (= lt!409637 (slice!429 (++!3048 lt!409633 lt!409635) from!553 until!31))))

(declare-fun size!9507 (List!12035) Int)

(assert (=> b!1192865 (= lt!409638 (size!9507 lt!409633))))

(declare-datatypes ((Unit!18428 0))(
  ( (Unit!18429) )
))
(declare-fun lt!409634 () Unit!18428)

(declare-fun sliceLemma!25 (List!12035 List!12035 Int Int) Unit!18428)

(assert (=> b!1192865 (= lt!409634 (sliceLemma!25 lt!409633 lt!409635 from!553 until!31))))

(declare-fun list!4431 (Conc!3944) List!12035)

(assert (=> b!1192865 (= lt!409635 (list!4431 (right!10794 t!4115)))))

(assert (=> b!1192865 (= lt!409633 (list!4431 (left!10464 t!4115)))))

(declare-fun b!1192866 () Bool)

(declare-fun res!538685 () Bool)

(assert (=> b!1192866 (=> (not res!538685) (not e!766594))))

(assert (=> b!1192866 (= res!538685 (<= until!31 (size!9506 t!4115)))))

(assert (= (and start!106076 res!538684) b!1192866))

(assert (= (and b!1192866 res!538685) b!1192862))

(assert (= (and b!1192862 res!538683) b!1192861))

(assert (= (and b!1192861 res!538686) b!1192865))

(assert (= (and b!1192865 c!198092) b!1192854))

(assert (= (and b!1192865 (not c!198092)) b!1192864))

(assert (= (and b!1192864 c!198091) b!1192856))

(assert (= (and b!1192864 (not c!198091)) b!1192857))

(assert (= (or b!1192856 b!1192857) bm!82881))

(assert (= (or b!1192854 b!1192857) bm!82880))

(assert (= (and b!1192865 (not res!538688)) b!1192855))

(assert (= (and b!1192855 res!538687) b!1192859))

(assert (= (and start!106076 ((_ is Node!3944) t!4115)) b!1192860))

(assert (= b!1192863 b!1192858))

(assert (= (and start!106076 ((_ is Leaf!6041) t!4115)) b!1192863))

(declare-fun m!1367641 () Bool)

(assert (=> start!106076 m!1367641))

(declare-fun m!1367643 () Bool)

(assert (=> b!1192857 m!1367643))

(declare-fun m!1367645 () Bool)

(assert (=> b!1192863 m!1367645))

(declare-fun m!1367647 () Bool)

(assert (=> b!1192862 m!1367647))

(declare-fun m!1367649 () Bool)

(assert (=> bm!82881 m!1367649))

(declare-fun m!1367651 () Bool)

(assert (=> b!1192866 m!1367651))

(declare-fun m!1367653 () Bool)

(assert (=> bm!82880 m!1367653))

(declare-fun m!1367655 () Bool)

(assert (=> b!1192860 m!1367655))

(declare-fun m!1367657 () Bool)

(assert (=> b!1192860 m!1367657))

(declare-fun m!1367659 () Bool)

(assert (=> b!1192865 m!1367659))

(declare-fun m!1367661 () Bool)

(assert (=> b!1192865 m!1367661))

(declare-fun m!1367663 () Bool)

(assert (=> b!1192865 m!1367663))

(declare-fun m!1367665 () Bool)

(assert (=> b!1192865 m!1367665))

(assert (=> b!1192865 m!1367663))

(declare-fun m!1367667 () Bool)

(assert (=> b!1192865 m!1367667))

(declare-fun m!1367669 () Bool)

(assert (=> b!1192865 m!1367669))

(declare-fun m!1367671 () Bool)

(assert (=> b!1192865 m!1367671))

(declare-fun m!1367673 () Bool)

(assert (=> b!1192859 m!1367673))

(check-sat (not b!1192862) (not b!1192859) (not bm!82880) (not b!1192858) (not b!1192860) (not b!1192865) (not start!106076) (not bm!82881) (not b!1192866) (not b!1192857) (not b!1192863))
(check-sat)
(get-model)

(declare-fun b!1192875 () Bool)

(declare-fun e!766602 () List!12035)

(assert (=> b!1192875 (= e!766602 call!82886)))

(declare-fun d!340703 () Bool)

(declare-fun e!766601 () Bool)

(assert (=> d!340703 e!766601))

(declare-fun res!538694 () Bool)

(assert (=> d!340703 (=> (not res!538694) (not e!766601))))

(declare-fun lt!409641 () List!12035)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1667 (List!12035) (InoxSet T!21558))

(assert (=> d!340703 (= res!538694 (= (content!1667 lt!409641) ((_ map or) (content!1667 call!82885) (content!1667 call!82886))))))

(assert (=> d!340703 (= lt!409641 e!766602)))

(declare-fun c!198095 () Bool)

(assert (=> d!340703 (= c!198095 ((_ is Nil!12011) call!82885))))

(assert (=> d!340703 (= (++!3048 call!82885 call!82886) lt!409641)))

(declare-fun b!1192877 () Bool)

(declare-fun res!538693 () Bool)

(assert (=> b!1192877 (=> (not res!538693) (not e!766601))))

(assert (=> b!1192877 (= res!538693 (= (size!9507 lt!409641) (+ (size!9507 call!82885) (size!9507 call!82886))))))

(declare-fun b!1192878 () Bool)

(assert (=> b!1192878 (= e!766601 (or (not (= call!82886 Nil!12011)) (= lt!409641 call!82885)))))

(declare-fun b!1192876 () Bool)

(assert (=> b!1192876 (= e!766602 (Cons!12011 (h!17412 call!82885) (++!3048 (t!112291 call!82885) call!82886)))))

(assert (= (and d!340703 c!198095) b!1192875))

(assert (= (and d!340703 (not c!198095)) b!1192876))

(assert (= (and d!340703 res!538694) b!1192877))

(assert (= (and b!1192877 res!538693) b!1192878))

(declare-fun m!1367675 () Bool)

(assert (=> d!340703 m!1367675))

(declare-fun m!1367677 () Bool)

(assert (=> d!340703 m!1367677))

(declare-fun m!1367679 () Bool)

(assert (=> d!340703 m!1367679))

(declare-fun m!1367681 () Bool)

(assert (=> b!1192877 m!1367681))

(declare-fun m!1367683 () Bool)

(assert (=> b!1192877 m!1367683))

(declare-fun m!1367685 () Bool)

(assert (=> b!1192877 m!1367685))

(declare-fun m!1367687 () Bool)

(assert (=> b!1192876 m!1367687))

(assert (=> b!1192857 d!340703))

(declare-fun b!1192891 () Bool)

(declare-fun res!538708 () Bool)

(declare-fun e!766607 () Bool)

(assert (=> b!1192891 (=> (not res!538708) (not e!766607))))

(declare-fun isEmpty!7223 (Conc!3944) Bool)

(assert (=> b!1192891 (= res!538708 (not (isEmpty!7223 (left!10464 t!4115))))))

(declare-fun b!1192892 () Bool)

(declare-fun e!766608 () Bool)

(assert (=> b!1192892 (= e!766608 e!766607)))

(declare-fun res!538709 () Bool)

(assert (=> b!1192892 (=> (not res!538709) (not e!766607))))

(declare-fun height!542 (Conc!3944) Int)

(assert (=> b!1192892 (= res!538709 (<= (- 1) (- (height!542 (left!10464 t!4115)) (height!542 (right!10794 t!4115)))))))

(declare-fun b!1192893 () Bool)

(assert (=> b!1192893 (= e!766607 (not (isEmpty!7223 (right!10794 t!4115))))))

(declare-fun b!1192894 () Bool)

(declare-fun res!538710 () Bool)

(assert (=> b!1192894 (=> (not res!538710) (not e!766607))))

(assert (=> b!1192894 (= res!538710 (isBalanced!1129 (right!10794 t!4115)))))

(declare-fun d!340705 () Bool)

(declare-fun res!538712 () Bool)

(assert (=> d!340705 (=> res!538712 e!766608)))

(assert (=> d!340705 (= res!538712 (not ((_ is Node!3944) t!4115)))))

(assert (=> d!340705 (= (isBalanced!1129 t!4115) e!766608)))

(declare-fun b!1192895 () Bool)

(declare-fun res!538707 () Bool)

(assert (=> b!1192895 (=> (not res!538707) (not e!766607))))

(assert (=> b!1192895 (= res!538707 (isBalanced!1129 (left!10464 t!4115)))))

(declare-fun b!1192896 () Bool)

(declare-fun res!538711 () Bool)

(assert (=> b!1192896 (=> (not res!538711) (not e!766607))))

(assert (=> b!1192896 (= res!538711 (<= (- (height!542 (left!10464 t!4115)) (height!542 (right!10794 t!4115))) 1))))

(assert (= (and d!340705 (not res!538712)) b!1192892))

(assert (= (and b!1192892 res!538709) b!1192896))

(assert (= (and b!1192896 res!538711) b!1192895))

(assert (= (and b!1192895 res!538707) b!1192894))

(assert (= (and b!1192894 res!538710) b!1192891))

(assert (= (and b!1192891 res!538708) b!1192893))

(assert (=> b!1192895 m!1367673))

(declare-fun m!1367693 () Bool)

(assert (=> b!1192894 m!1367693))

(declare-fun m!1367695 () Bool)

(assert (=> b!1192893 m!1367695))

(declare-fun m!1367697 () Bool)

(assert (=> b!1192896 m!1367697))

(declare-fun m!1367699 () Bool)

(assert (=> b!1192896 m!1367699))

(assert (=> b!1192892 m!1367697))

(assert (=> b!1192892 m!1367699))

(declare-fun m!1367701 () Bool)

(assert (=> b!1192891 m!1367701))

(assert (=> b!1192862 d!340705))

(declare-fun d!340711 () Bool)

(declare-fun take!109 (List!12035 Int) List!12035)

(declare-fun drop!581 (List!12035 Int) List!12035)

(assert (=> d!340711 (= (slice!429 (ite c!198092 lt!409635 lt!409633) (ite c!198092 (- from!553 lt!409638) from!553) (ite c!198092 (- until!31 lt!409638) lt!409638)) (take!109 (drop!581 (ite c!198092 lt!409635 lt!409633) (ite c!198092 (- from!553 lt!409638) from!553)) (- (ite c!198092 (- until!31 lt!409638) lt!409638) (ite c!198092 (- from!553 lt!409638) from!553))))))

(declare-fun bs!287954 () Bool)

(assert (= bs!287954 d!340711))

(declare-fun m!1367703 () Bool)

(assert (=> bs!287954 m!1367703))

(assert (=> bs!287954 m!1367703))

(declare-fun m!1367705 () Bool)

(assert (=> bs!287954 m!1367705))

(assert (=> bm!82880 d!340711))

(declare-fun d!340713 () Bool)

(assert (=> d!340713 (= (inv!15948 (xs!6649 t!4115)) (<= (size!9507 (innerList!4004 (xs!6649 t!4115))) 2147483647))))

(declare-fun bs!287955 () Bool)

(assert (= bs!287955 d!340713))

(declare-fun m!1367707 () Bool)

(assert (=> bs!287955 m!1367707))

(assert (=> b!1192863 d!340713))

(declare-fun d!340715 () Bool)

(declare-fun c!198098 () Bool)

(assert (=> d!340715 (= c!198098 ((_ is Node!3944) (left!10464 t!4115)))))

(declare-fun e!766621 () Bool)

(assert (=> d!340715 (= (inv!15947 (left!10464 t!4115)) e!766621)))

(declare-fun b!1192927 () Bool)

(declare-fun inv!15949 (Conc!3944) Bool)

(assert (=> b!1192927 (= e!766621 (inv!15949 (left!10464 t!4115)))))

(declare-fun b!1192928 () Bool)

(declare-fun e!766622 () Bool)

(assert (=> b!1192928 (= e!766621 e!766622)))

(declare-fun res!538739 () Bool)

(assert (=> b!1192928 (= res!538739 (not ((_ is Leaf!6041) (left!10464 t!4115))))))

(assert (=> b!1192928 (=> res!538739 e!766622)))

(declare-fun b!1192929 () Bool)

(declare-fun inv!15950 (Conc!3944) Bool)

(assert (=> b!1192929 (= e!766622 (inv!15950 (left!10464 t!4115)))))

(assert (= (and d!340715 c!198098) b!1192927))

(assert (= (and d!340715 (not c!198098)) b!1192928))

(assert (= (and b!1192928 (not res!538739)) b!1192929))

(declare-fun m!1367739 () Bool)

(assert (=> b!1192927 m!1367739))

(declare-fun m!1367741 () Bool)

(assert (=> b!1192929 m!1367741))

(assert (=> b!1192860 d!340715))

(declare-fun d!340725 () Bool)

(declare-fun c!198099 () Bool)

(assert (=> d!340725 (= c!198099 ((_ is Node!3944) (right!10794 t!4115)))))

(declare-fun e!766623 () Bool)

(assert (=> d!340725 (= (inv!15947 (right!10794 t!4115)) e!766623)))

(declare-fun b!1192930 () Bool)

(assert (=> b!1192930 (= e!766623 (inv!15949 (right!10794 t!4115)))))

(declare-fun b!1192931 () Bool)

(declare-fun e!766624 () Bool)

(assert (=> b!1192931 (= e!766623 e!766624)))

(declare-fun res!538740 () Bool)

(assert (=> b!1192931 (= res!538740 (not ((_ is Leaf!6041) (right!10794 t!4115))))))

(assert (=> b!1192931 (=> res!538740 e!766624)))

(declare-fun b!1192932 () Bool)

(assert (=> b!1192932 (= e!766624 (inv!15950 (right!10794 t!4115)))))

(assert (= (and d!340725 c!198099) b!1192930))

(assert (= (and d!340725 (not c!198099)) b!1192931))

(assert (= (and b!1192931 (not res!538740)) b!1192932))

(declare-fun m!1367743 () Bool)

(assert (=> b!1192930 m!1367743))

(declare-fun m!1367745 () Bool)

(assert (=> b!1192932 m!1367745))

(assert (=> b!1192860 d!340725))

(declare-fun d!340727 () Bool)

(declare-fun lt!409649 () Int)

(assert (=> d!340727 (= lt!409649 (size!9507 (list!4431 (left!10464 t!4115))))))

(assert (=> d!340727 (= lt!409649 (ite ((_ is Empty!3944) (left!10464 t!4115)) 0 (ite ((_ is Leaf!6041) (left!10464 t!4115)) (csize!8119 (left!10464 t!4115)) (csize!8118 (left!10464 t!4115)))))))

(assert (=> d!340727 (= (size!9506 (left!10464 t!4115)) lt!409649)))

(declare-fun bs!287958 () Bool)

(assert (= bs!287958 d!340727))

(assert (=> bs!287958 m!1367659))

(assert (=> bs!287958 m!1367659))

(declare-fun m!1367747 () Bool)

(assert (=> bs!287958 m!1367747))

(assert (=> b!1192865 d!340727))

(declare-fun d!340729 () Bool)

(assert (=> d!340729 (= (slice!429 (++!3048 lt!409633 lt!409635) from!553 until!31) (take!109 (drop!581 (++!3048 lt!409633 lt!409635) from!553) (- until!31 from!553)))))

(declare-fun bs!287959 () Bool)

(assert (= bs!287959 d!340729))

(assert (=> bs!287959 m!1367663))

(declare-fun m!1367749 () Bool)

(assert (=> bs!287959 m!1367749))

(assert (=> bs!287959 m!1367749))

(declare-fun m!1367751 () Bool)

(assert (=> bs!287959 m!1367751))

(assert (=> b!1192865 d!340729))

(declare-fun e!766653 () List!12035)

(declare-fun call!82893 () Int)

(declare-fun b!1192985 () Bool)

(declare-fun call!82895 () List!12035)

(assert (=> b!1192985 (= e!766653 (++!3048 call!82895 (slice!429 lt!409635 0 (- until!31 call!82893))))))

(declare-fun b!1192986 () Bool)

(declare-fun e!766654 () Int)

(assert (=> b!1192986 (= e!766654 until!31)))

(declare-fun bm!82888 () Bool)

(assert (=> bm!82888 (= call!82893 (size!9507 lt!409633))))

(declare-fun b!1192988 () Bool)

(assert (=> b!1192988 (= e!766653 call!82895)))

(declare-fun b!1192989 () Bool)

(declare-fun e!766655 () List!12035)

(assert (=> b!1192989 (= e!766655 e!766653)))

(declare-fun c!198121 () Bool)

(assert (=> b!1192989 (= c!198121 (<= until!31 call!82893))))

(declare-fun bm!82889 () Bool)

(declare-fun call!82894 () List!12035)

(declare-fun c!198120 () Bool)

(assert (=> bm!82889 (= call!82894 (slice!429 (ite c!198120 lt!409635 lt!409633) (ite c!198120 (- from!553 call!82893) from!553) (ite c!198120 (- until!31 call!82893) e!766654)))))

(declare-fun b!1192990 () Bool)

(declare-fun e!766656 () Bool)

(assert (=> b!1192990 (= e!766656 (<= until!31 (+ (size!9507 lt!409633) (size!9507 lt!409635))))))

(declare-fun b!1192991 () Bool)

(assert (=> b!1192991 (= e!766655 call!82894)))

(declare-fun bm!82890 () Bool)

(declare-fun c!198122 () Bool)

(assert (=> bm!82890 (= c!198122 c!198121)))

(assert (=> bm!82890 (= call!82895 call!82894)))

(declare-fun b!1192987 () Bool)

(assert (=> b!1192987 (= e!766654 call!82893)))

(declare-fun d!340731 () Bool)

(assert (=> d!340731 (= (slice!429 (++!3048 lt!409633 lt!409635) from!553 until!31) e!766655)))

(assert (=> d!340731 (= c!198120 (<= (size!9507 lt!409633) from!553))))

(declare-fun lt!409657 () Unit!18428)

(declare-fun choose!7709 (List!12035 List!12035 Int Int) Unit!18428)

(assert (=> d!340731 (= lt!409657 (choose!7709 lt!409633 lt!409635 from!553 until!31))))

(assert (=> d!340731 e!766656))

(declare-fun res!538753 () Bool)

(assert (=> d!340731 (=> (not res!538753) (not e!766656))))

(assert (=> d!340731 (= res!538753 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!340731 (= (sliceLemma!25 lt!409633 lt!409635 from!553 until!31) lt!409657)))

(assert (= (and d!340731 res!538753) b!1192990))

(assert (= (and d!340731 c!198120) b!1192991))

(assert (= (and d!340731 (not c!198120)) b!1192989))

(assert (= (and b!1192989 c!198121) b!1192988))

(assert (= (and b!1192989 (not c!198121)) b!1192985))

(assert (= (or b!1192988 b!1192985) bm!82890))

(assert (= (and bm!82890 c!198122) b!1192986))

(assert (= (and bm!82890 (not c!198122)) b!1192987))

(assert (= (or b!1192991 b!1192985 b!1192987 b!1192989) bm!82888))

(assert (= (or b!1192991 bm!82890) bm!82889))

(declare-fun m!1367793 () Bool)

(assert (=> bm!82889 m!1367793))

(assert (=> bm!82888 m!1367671))

(assert (=> b!1192990 m!1367671))

(declare-fun m!1367795 () Bool)

(assert (=> b!1192990 m!1367795))

(declare-fun m!1367797 () Bool)

(assert (=> b!1192985 m!1367797))

(assert (=> b!1192985 m!1367797))

(declare-fun m!1367799 () Bool)

(assert (=> b!1192985 m!1367799))

(assert (=> d!340731 m!1367663))

(assert (=> d!340731 m!1367663))

(assert (=> d!340731 m!1367665))

(assert (=> d!340731 m!1367671))

(declare-fun m!1367801 () Bool)

(assert (=> d!340731 m!1367801))

(assert (=> b!1192865 d!340731))

(declare-fun b!1193013 () Bool)

(declare-fun e!766668 () List!12035)

(declare-fun list!4433 (IArray!7893) List!12035)

(assert (=> b!1193013 (= e!766668 (list!4433 (xs!6649 (left!10464 t!4115))))))

(declare-fun b!1193012 () Bool)

(declare-fun e!766667 () List!12035)

(assert (=> b!1193012 (= e!766667 e!766668)))

(declare-fun c!198133 () Bool)

(assert (=> b!1193012 (= c!198133 ((_ is Leaf!6041) (left!10464 t!4115)))))

(declare-fun b!1193011 () Bool)

(assert (=> b!1193011 (= e!766667 Nil!12011)))

(declare-fun b!1193014 () Bool)

(assert (=> b!1193014 (= e!766668 (++!3048 (list!4431 (left!10464 (left!10464 t!4115))) (list!4431 (right!10794 (left!10464 t!4115)))))))

(declare-fun d!340743 () Bool)

(declare-fun c!198132 () Bool)

(assert (=> d!340743 (= c!198132 ((_ is Empty!3944) (left!10464 t!4115)))))

(assert (=> d!340743 (= (list!4431 (left!10464 t!4115)) e!766667)))

(assert (= (and d!340743 c!198132) b!1193011))

(assert (= (and d!340743 (not c!198132)) b!1193012))

(assert (= (and b!1193012 c!198133) b!1193013))

(assert (= (and b!1193012 (not c!198133)) b!1193014))

(declare-fun m!1367805 () Bool)

(assert (=> b!1193013 m!1367805))

(declare-fun m!1367807 () Bool)

(assert (=> b!1193014 m!1367807))

(declare-fun m!1367809 () Bool)

(assert (=> b!1193014 m!1367809))

(assert (=> b!1193014 m!1367807))

(assert (=> b!1193014 m!1367809))

(declare-fun m!1367815 () Bool)

(assert (=> b!1193014 m!1367815))

(assert (=> b!1192865 d!340743))

(declare-fun b!1193017 () Bool)

(declare-fun e!766670 () List!12035)

(assert (=> b!1193017 (= e!766670 (list!4433 (xs!6649 (right!10794 t!4115))))))

(declare-fun b!1193016 () Bool)

(declare-fun e!766669 () List!12035)

(assert (=> b!1193016 (= e!766669 e!766670)))

(declare-fun c!198135 () Bool)

(assert (=> b!1193016 (= c!198135 ((_ is Leaf!6041) (right!10794 t!4115)))))

(declare-fun b!1193015 () Bool)

(assert (=> b!1193015 (= e!766669 Nil!12011)))

(declare-fun b!1193018 () Bool)

(assert (=> b!1193018 (= e!766670 (++!3048 (list!4431 (left!10464 (right!10794 t!4115))) (list!4431 (right!10794 (right!10794 t!4115)))))))

(declare-fun d!340745 () Bool)

(declare-fun c!198134 () Bool)

(assert (=> d!340745 (= c!198134 ((_ is Empty!3944) (right!10794 t!4115)))))

(assert (=> d!340745 (= (list!4431 (right!10794 t!4115)) e!766669)))

(assert (= (and d!340745 c!198134) b!1193015))

(assert (= (and d!340745 (not c!198134)) b!1193016))

(assert (= (and b!1193016 c!198135) b!1193017))

(assert (= (and b!1193016 (not c!198135)) b!1193018))

(declare-fun m!1367821 () Bool)

(assert (=> b!1193017 m!1367821))

(declare-fun m!1367825 () Bool)

(assert (=> b!1193018 m!1367825))

(declare-fun m!1367827 () Bool)

(assert (=> b!1193018 m!1367827))

(assert (=> b!1193018 m!1367825))

(assert (=> b!1193018 m!1367827))

(declare-fun m!1367833 () Bool)

(assert (=> b!1193018 m!1367833))

(assert (=> b!1192865 d!340745))

(declare-fun b!1193023 () Bool)

(declare-fun e!766674 () List!12035)

(assert (=> b!1193023 (= e!766674 lt!409635)))

(declare-fun d!340751 () Bool)

(declare-fun e!766673 () Bool)

(assert (=> d!340751 e!766673))

(declare-fun res!538756 () Bool)

(assert (=> d!340751 (=> (not res!538756) (not e!766673))))

(declare-fun lt!409659 () List!12035)

(assert (=> d!340751 (= res!538756 (= (content!1667 lt!409659) ((_ map or) (content!1667 lt!409633) (content!1667 lt!409635))))))

(assert (=> d!340751 (= lt!409659 e!766674)))

(declare-fun c!198138 () Bool)

(assert (=> d!340751 (= c!198138 ((_ is Nil!12011) lt!409633))))

(assert (=> d!340751 (= (++!3048 lt!409633 lt!409635) lt!409659)))

(declare-fun b!1193025 () Bool)

(declare-fun res!538755 () Bool)

(assert (=> b!1193025 (=> (not res!538755) (not e!766673))))

(assert (=> b!1193025 (= res!538755 (= (size!9507 lt!409659) (+ (size!9507 lt!409633) (size!9507 lt!409635))))))

(declare-fun b!1193026 () Bool)

(assert (=> b!1193026 (= e!766673 (or (not (= lt!409635 Nil!12011)) (= lt!409659 lt!409633)))))

(declare-fun b!1193024 () Bool)

(assert (=> b!1193024 (= e!766674 (Cons!12011 (h!17412 lt!409633) (++!3048 (t!112291 lt!409633) lt!409635)))))

(assert (= (and d!340751 c!198138) b!1193023))

(assert (= (and d!340751 (not c!198138)) b!1193024))

(assert (= (and d!340751 res!538756) b!1193025))

(assert (= (and b!1193025 res!538755) b!1193026))

(declare-fun m!1367835 () Bool)

(assert (=> d!340751 m!1367835))

(declare-fun m!1367837 () Bool)

(assert (=> d!340751 m!1367837))

(declare-fun m!1367839 () Bool)

(assert (=> d!340751 m!1367839))

(declare-fun m!1367841 () Bool)

(assert (=> b!1193025 m!1367841))

(assert (=> b!1193025 m!1367671))

(assert (=> b!1193025 m!1367795))

(declare-fun m!1367843 () Bool)

(assert (=> b!1193024 m!1367843))

(assert (=> b!1192865 d!340751))

(declare-fun d!340753 () Bool)

(declare-fun lt!409665 () Int)

(assert (=> d!340753 (>= lt!409665 0)))

(declare-fun e!766680 () Int)

(assert (=> d!340753 (= lt!409665 e!766680)))

(declare-fun c!198144 () Bool)

(assert (=> d!340753 (= c!198144 ((_ is Nil!12011) lt!409633))))

(assert (=> d!340753 (= (size!9507 lt!409633) lt!409665)))

(declare-fun b!1193037 () Bool)

(assert (=> b!1193037 (= e!766680 0)))

(declare-fun b!1193038 () Bool)

(assert (=> b!1193038 (= e!766680 (+ 1 (size!9507 (t!112291 lt!409633))))))

(assert (= (and d!340753 c!198144) b!1193037))

(assert (= (and d!340753 (not c!198144)) b!1193038))

(declare-fun m!1367849 () Bool)

(assert (=> b!1193038 m!1367849))

(assert (=> b!1192865 d!340753))

(declare-fun b!1193039 () Bool)

(declare-fun res!538758 () Bool)

(declare-fun e!766681 () Bool)

(assert (=> b!1193039 (=> (not res!538758) (not e!766681))))

(assert (=> b!1193039 (= res!538758 (not (isEmpty!7223 (left!10464 (left!10464 t!4115)))))))

(declare-fun b!1193040 () Bool)

(declare-fun e!766682 () Bool)

(assert (=> b!1193040 (= e!766682 e!766681)))

(declare-fun res!538759 () Bool)

(assert (=> b!1193040 (=> (not res!538759) (not e!766681))))

(assert (=> b!1193040 (= res!538759 (<= (- 1) (- (height!542 (left!10464 (left!10464 t!4115))) (height!542 (right!10794 (left!10464 t!4115))))))))

(declare-fun b!1193041 () Bool)

(assert (=> b!1193041 (= e!766681 (not (isEmpty!7223 (right!10794 (left!10464 t!4115)))))))

(declare-fun b!1193042 () Bool)

(declare-fun res!538760 () Bool)

(assert (=> b!1193042 (=> (not res!538760) (not e!766681))))

(assert (=> b!1193042 (= res!538760 (isBalanced!1129 (right!10794 (left!10464 t!4115))))))

(declare-fun d!340759 () Bool)

(declare-fun res!538762 () Bool)

(assert (=> d!340759 (=> res!538762 e!766682)))

(assert (=> d!340759 (= res!538762 (not ((_ is Node!3944) (left!10464 t!4115))))))

(assert (=> d!340759 (= (isBalanced!1129 (left!10464 t!4115)) e!766682)))

(declare-fun b!1193043 () Bool)

(declare-fun res!538757 () Bool)

(assert (=> b!1193043 (=> (not res!538757) (not e!766681))))

(assert (=> b!1193043 (= res!538757 (isBalanced!1129 (left!10464 (left!10464 t!4115))))))

(declare-fun b!1193044 () Bool)

(declare-fun res!538761 () Bool)

(assert (=> b!1193044 (=> (not res!538761) (not e!766681))))

(assert (=> b!1193044 (= res!538761 (<= (- (height!542 (left!10464 (left!10464 t!4115))) (height!542 (right!10794 (left!10464 t!4115)))) 1))))

(assert (= (and d!340759 (not res!538762)) b!1193040))

(assert (= (and b!1193040 res!538759) b!1193044))

(assert (= (and b!1193044 res!538761) b!1193043))

(assert (= (and b!1193043 res!538757) b!1193042))

(assert (= (and b!1193042 res!538760) b!1193039))

(assert (= (and b!1193039 res!538758) b!1193041))

(declare-fun m!1367851 () Bool)

(assert (=> b!1193043 m!1367851))

(declare-fun m!1367853 () Bool)

(assert (=> b!1193042 m!1367853))

(declare-fun m!1367855 () Bool)

(assert (=> b!1193041 m!1367855))

(declare-fun m!1367857 () Bool)

(assert (=> b!1193044 m!1367857))

(declare-fun m!1367859 () Bool)

(assert (=> b!1193044 m!1367859))

(assert (=> b!1193040 m!1367857))

(assert (=> b!1193040 m!1367859))

(declare-fun m!1367861 () Bool)

(assert (=> b!1193039 m!1367861))

(assert (=> b!1192859 d!340759))

(declare-fun d!340761 () Bool)

(declare-fun lt!409666 () Int)

(assert (=> d!340761 (= lt!409666 (size!9507 (list!4431 t!4115)))))

(assert (=> d!340761 (= lt!409666 (ite ((_ is Empty!3944) t!4115) 0 (ite ((_ is Leaf!6041) t!4115) (csize!8119 t!4115) (csize!8118 t!4115))))))

(assert (=> d!340761 (= (size!9506 t!4115) lt!409666)))

(declare-fun bs!287963 () Bool)

(assert (= bs!287963 d!340761))

(declare-fun m!1367863 () Bool)

(assert (=> bs!287963 m!1367863))

(assert (=> bs!287963 m!1367863))

(declare-fun m!1367865 () Bool)

(assert (=> bs!287963 m!1367865))

(assert (=> b!1192866 d!340761))

(declare-fun d!340763 () Bool)

(declare-fun c!198145 () Bool)

(assert (=> d!340763 (= c!198145 ((_ is Node!3944) t!4115))))

(declare-fun e!766683 () Bool)

(assert (=> d!340763 (= (inv!15947 t!4115) e!766683)))

(declare-fun b!1193045 () Bool)

(assert (=> b!1193045 (= e!766683 (inv!15949 t!4115))))

(declare-fun b!1193046 () Bool)

(declare-fun e!766684 () Bool)

(assert (=> b!1193046 (= e!766683 e!766684)))

(declare-fun res!538763 () Bool)

(assert (=> b!1193046 (= res!538763 (not ((_ is Leaf!6041) t!4115)))))

(assert (=> b!1193046 (=> res!538763 e!766684)))

(declare-fun b!1193047 () Bool)

(assert (=> b!1193047 (= e!766684 (inv!15950 t!4115))))

(assert (= (and d!340763 c!198145) b!1193045))

(assert (= (and d!340763 (not c!198145)) b!1193046))

(assert (= (and b!1193046 (not res!538763)) b!1193047))

(declare-fun m!1367867 () Bool)

(assert (=> b!1193045 m!1367867))

(declare-fun m!1367869 () Bool)

(assert (=> b!1193047 m!1367869))

(assert (=> start!106076 d!340763))

(declare-fun d!340765 () Bool)

(assert (=> d!340765 (= (slice!429 (ite c!198091 lt!409633 lt!409635) (ite c!198091 from!553 0) (ite c!198091 until!31 (- until!31 lt!409638))) (take!109 (drop!581 (ite c!198091 lt!409633 lt!409635) (ite c!198091 from!553 0)) (- (ite c!198091 until!31 (- until!31 lt!409638)) (ite c!198091 from!553 0))))))

(declare-fun bs!287964 () Bool)

(assert (= bs!287964 d!340765))

(declare-fun m!1367871 () Bool)

(assert (=> bs!287964 m!1367871))

(assert (=> bs!287964 m!1367871))

(declare-fun m!1367873 () Bool)

(assert (=> bs!287964 m!1367873))

(assert (=> bm!82881 d!340765))

(declare-fun b!1193061 () Bool)

(declare-fun e!766693 () Bool)

(declare-fun tp_is_empty!5921 () Bool)

(declare-fun tp!340156 () Bool)

(assert (=> b!1193061 (= e!766693 (and tp_is_empty!5921 tp!340156))))

(assert (=> b!1192858 (= tp!340153 e!766693)))

(assert (= (and b!1192858 ((_ is Cons!12011) (innerList!4004 (xs!6649 t!4115)))) b!1193061))

(declare-fun tp!340174 () Bool)

(declare-fun e!766710 () Bool)

(declare-fun b!1193089 () Bool)

(declare-fun tp!340172 () Bool)

(assert (=> b!1193089 (= e!766710 (and (inv!15947 (left!10464 (left!10464 t!4115))) tp!340172 (inv!15947 (right!10794 (left!10464 t!4115))) tp!340174))))

(declare-fun b!1193091 () Bool)

(declare-fun e!766709 () Bool)

(declare-fun tp!340173 () Bool)

(assert (=> b!1193091 (= e!766709 tp!340173)))

(declare-fun b!1193090 () Bool)

(assert (=> b!1193090 (= e!766710 (and (inv!15948 (xs!6649 (left!10464 t!4115))) e!766709))))

(assert (=> b!1192860 (= tp!340151 (and (inv!15947 (left!10464 t!4115)) e!766710))))

(assert (= (and b!1192860 ((_ is Node!3944) (left!10464 t!4115))) b!1193089))

(assert (= b!1193090 b!1193091))

(assert (= (and b!1192860 ((_ is Leaf!6041) (left!10464 t!4115))) b!1193090))

(declare-fun m!1367887 () Bool)

(assert (=> b!1193089 m!1367887))

(declare-fun m!1367889 () Bool)

(assert (=> b!1193089 m!1367889))

(declare-fun m!1367891 () Bool)

(assert (=> b!1193090 m!1367891))

(assert (=> b!1192860 m!1367655))

(declare-fun b!1193095 () Bool)

(declare-fun tp!340180 () Bool)

(declare-fun tp!340178 () Bool)

(declare-fun e!766714 () Bool)

(assert (=> b!1193095 (= e!766714 (and (inv!15947 (left!10464 (right!10794 t!4115))) tp!340178 (inv!15947 (right!10794 (right!10794 t!4115))) tp!340180))))

(declare-fun b!1193097 () Bool)

(declare-fun e!766713 () Bool)

(declare-fun tp!340179 () Bool)

(assert (=> b!1193097 (= e!766713 tp!340179)))

(declare-fun b!1193096 () Bool)

(assert (=> b!1193096 (= e!766714 (and (inv!15948 (xs!6649 (right!10794 t!4115))) e!766713))))

(assert (=> b!1192860 (= tp!340152 (and (inv!15947 (right!10794 t!4115)) e!766714))))

(assert (= (and b!1192860 ((_ is Node!3944) (right!10794 t!4115))) b!1193095))

(assert (= b!1193096 b!1193097))

(assert (= (and b!1192860 ((_ is Leaf!6041) (right!10794 t!4115))) b!1193096))

(declare-fun m!1367897 () Bool)

(assert (=> b!1193095 m!1367897))

(declare-fun m!1367901 () Bool)

(assert (=> b!1193095 m!1367901))

(declare-fun m!1367903 () Bool)

(assert (=> b!1193096 m!1367903))

(assert (=> b!1192860 m!1367657))

(check-sat (not b!1193024) (not d!340765) (not d!340713) (not bm!82888) (not d!340731) (not b!1192893) (not d!340761) (not b!1193039) (not b!1193096) (not b!1192896) (not b!1193090) (not bm!82889) (not b!1193097) (not d!340751) (not b!1193038) (not b!1193018) (not b!1192985) (not d!340703) (not d!340711) (not b!1193017) (not b!1192877) (not b!1192894) (not b!1192927) (not b!1193047) (not b!1193025) (not b!1192876) (not d!340729) (not b!1192929) (not b!1192932) (not b!1193013) (not b!1193089) (not b!1193041) (not b!1192860) (not b!1192892) (not b!1192891) (not b!1193061) (not b!1193045) (not b!1193043) (not b!1193042) (not b!1193095) (not b!1192990) (not b!1193014) (not b!1192895) tp_is_empty!5921 (not d!340727) (not b!1193091) (not b!1192930) (not b!1193044) (not b!1193040))
(check-sat)
