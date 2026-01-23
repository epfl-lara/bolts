; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507538 () Bool)

(assert start!507538)

(declare-datatypes ((T!98658 0))(
  ( (T!98659 (val!22408 Int)) )
))
(declare-datatypes ((List!55876 0))(
  ( (Nil!55752) (Cons!55752 (h!62200 T!98658) (t!363464 List!55876)) )
))
(declare-datatypes ((IArray!29125 0))(
  ( (IArray!29126 (innerList!14620 List!55876)) )
))
(declare-datatypes ((Conc!14532 0))(
  ( (Node!14532 (left!40518 Conc!14532) (right!40848 Conc!14532) (csize!29294 Int) (cheight!14743 Int)) (Leaf!24213 (xs!17838 IArray!29125) (csize!29295 Int)) (Empty!14532) )
))
(declare-fun t!4677 () Conc!14532)

(declare-fun tp!1366611 () Bool)

(declare-fun tp!1366613 () Bool)

(declare-fun b!4857741 () Bool)

(declare-fun e!3036970 () Bool)

(declare-fun inv!71596 (Conc!14532) Bool)

(assert (=> b!4857741 (= e!3036970 (and (inv!71596 (left!40518 t!4677)) tp!1366613 (inv!71596 (right!40848 t!4677)) tp!1366611))))

(declare-fun b!4857742 () Bool)

(declare-fun e!3036969 () Bool)

(declare-fun tp!1366612 () Bool)

(assert (=> b!4857742 (= e!3036969 tp!1366612)))

(declare-fun res!2073744 () Bool)

(declare-fun e!3036966 () Bool)

(assert (=> start!507538 (=> (not res!2073744) (not e!3036966))))

(declare-fun isBalanced!3938 (Conc!14532) Bool)

(assert (=> start!507538 (= res!2073744 (isBalanced!3938 t!4677))))

(assert (=> start!507538 e!3036966))

(assert (=> start!507538 (and (inv!71596 t!4677) e!3036970)))

(declare-fun b!4857743 () Bool)

(declare-fun e!3036965 () Bool)

(declare-fun lt!1991660 () List!55876)

(declare-fun lt!1991662 () List!55876)

(declare-fun last!402 (List!55876) T!98658)

(declare-fun ++!12137 (List!55876 List!55876) List!55876)

(assert (=> b!4857743 (= e!3036965 (= (last!402 (++!12137 lt!1991660 lt!1991662)) (last!402 lt!1991662)))))

(declare-fun b!4857744 () Bool)

(declare-fun inv!71597 (IArray!29125) Bool)

(assert (=> b!4857744 (= e!3036970 (and (inv!71597 (xs!17838 t!4677)) e!3036969))))

(declare-fun b!4857745 () Bool)

(declare-fun e!3036968 () Bool)

(assert (=> b!4857745 (= e!3036968 e!3036965)))

(declare-fun res!2073746 () Bool)

(assert (=> b!4857745 (=> (not res!2073746) (not e!3036965))))

(declare-fun lt!1991661 () Bool)

(assert (=> b!4857745 (= res!2073746 (not lt!1991661))))

(declare-fun b!4857746 () Bool)

(declare-fun res!2073749 () Bool)

(assert (=> b!4857746 (=> (not res!2073749) (not e!3036966))))

(get-info :version)

(assert (=> b!4857746 (= res!2073749 (and (not ((_ is Leaf!24213) t!4677)) ((_ is Node!14532) t!4677)))))

(declare-fun b!4857747 () Bool)

(declare-fun ConcPrimitiveSize!32 (Conc!14532) Int)

(assert (=> b!4857747 (= e!3036966 (not (< (ConcPrimitiveSize!32 (right!40848 t!4677)) (ConcPrimitiveSize!32 t!4677))))))

(assert (=> b!4857747 e!3036968))

(declare-fun res!2073748 () Bool)

(assert (=> b!4857747 (=> res!2073748 e!3036968)))

(declare-fun e!3036967 () Bool)

(assert (=> b!4857747 (= res!2073748 e!3036967)))

(declare-fun res!2073747 () Bool)

(assert (=> b!4857747 (=> (not res!2073747) (not e!3036967))))

(assert (=> b!4857747 (= res!2073747 lt!1991661)))

(declare-fun isEmpty!29836 (List!55876) Bool)

(assert (=> b!4857747 (= lt!1991661 (isEmpty!29836 lt!1991662))))

(declare-datatypes ((Unit!145855 0))(
  ( (Unit!145856) )
))
(declare-fun lt!1991663 () Unit!145855)

(declare-fun lemmaLastOfConcatIsLastOfRhs!34 (List!55876 List!55876) Unit!145855)

(assert (=> b!4857747 (= lt!1991663 (lemmaLastOfConcatIsLastOfRhs!34 lt!1991660 lt!1991662))))

(declare-fun list!17424 (Conc!14532) List!55876)

(assert (=> b!4857747 (= lt!1991662 (list!17424 (right!40848 t!4677)))))

(assert (=> b!4857747 (= lt!1991660 (list!17424 (left!40518 t!4677)))))

(declare-fun b!4857748 () Bool)

(declare-fun res!2073745 () Bool)

(assert (=> b!4857748 (=> (not res!2073745) (not e!3036966))))

(declare-fun isEmpty!29837 (Conc!14532) Bool)

(assert (=> b!4857748 (= res!2073745 (not (isEmpty!29837 t!4677)))))

(declare-fun b!4857749 () Bool)

(assert (=> b!4857749 (= e!3036967 (= (last!402 (++!12137 lt!1991660 lt!1991662)) (last!402 lt!1991660)))))

(assert (= (and start!507538 res!2073744) b!4857748))

(assert (= (and b!4857748 res!2073745) b!4857746))

(assert (= (and b!4857746 res!2073749) b!4857747))

(assert (= (and b!4857747 res!2073747) b!4857749))

(assert (= (and b!4857747 (not res!2073748)) b!4857745))

(assert (= (and b!4857745 res!2073746) b!4857743))

(assert (= (and start!507538 ((_ is Node!14532) t!4677)) b!4857741))

(assert (= b!4857744 b!4857742))

(assert (= (and start!507538 ((_ is Leaf!24213) t!4677)) b!4857744))

(declare-fun m!5855594 () Bool)

(assert (=> b!4857741 m!5855594))

(declare-fun m!5855596 () Bool)

(assert (=> b!4857741 m!5855596))

(declare-fun m!5855598 () Bool)

(assert (=> b!4857748 m!5855598))

(declare-fun m!5855600 () Bool)

(assert (=> b!4857747 m!5855600))

(declare-fun m!5855602 () Bool)

(assert (=> b!4857747 m!5855602))

(declare-fun m!5855604 () Bool)

(assert (=> b!4857747 m!5855604))

(declare-fun m!5855606 () Bool)

(assert (=> b!4857747 m!5855606))

(declare-fun m!5855608 () Bool)

(assert (=> b!4857747 m!5855608))

(declare-fun m!5855610 () Bool)

(assert (=> b!4857747 m!5855610))

(declare-fun m!5855612 () Bool)

(assert (=> b!4857749 m!5855612))

(assert (=> b!4857749 m!5855612))

(declare-fun m!5855614 () Bool)

(assert (=> b!4857749 m!5855614))

(declare-fun m!5855616 () Bool)

(assert (=> b!4857749 m!5855616))

(assert (=> b!4857743 m!5855612))

(assert (=> b!4857743 m!5855612))

(assert (=> b!4857743 m!5855614))

(declare-fun m!5855618 () Bool)

(assert (=> b!4857743 m!5855618))

(declare-fun m!5855620 () Bool)

(assert (=> start!507538 m!5855620))

(declare-fun m!5855622 () Bool)

(assert (=> start!507538 m!5855622))

(declare-fun m!5855624 () Bool)

(assert (=> b!4857744 m!5855624))

(check-sat (not b!4857742) (not b!4857747) (not b!4857743) (not b!4857741) (not b!4857748) (not start!507538) (not b!4857744) (not b!4857749))
(check-sat)
(get-model)

(declare-fun d!1559177 () Bool)

(declare-fun lt!1991666 () T!98658)

(declare-fun contains!19364 (List!55876 T!98658) Bool)

(assert (=> d!1559177 (contains!19364 (++!12137 lt!1991660 lt!1991662) lt!1991666)))

(declare-fun e!3036977 () T!98658)

(assert (=> d!1559177 (= lt!1991666 e!3036977)))

(declare-fun c!826364 () Bool)

(assert (=> d!1559177 (= c!826364 (and ((_ is Cons!55752) (++!12137 lt!1991660 lt!1991662)) ((_ is Nil!55752) (t!363464 (++!12137 lt!1991660 lt!1991662)))))))

(assert (=> d!1559177 (not (isEmpty!29836 (++!12137 lt!1991660 lt!1991662)))))

(assert (=> d!1559177 (= (last!402 (++!12137 lt!1991660 lt!1991662)) lt!1991666)))

(declare-fun b!4857766 () Bool)

(assert (=> b!4857766 (= e!3036977 (h!62200 (++!12137 lt!1991660 lt!1991662)))))

(declare-fun b!4857767 () Bool)

(assert (=> b!4857767 (= e!3036977 (last!402 (t!363464 (++!12137 lt!1991660 lt!1991662))))))

(assert (= (and d!1559177 c!826364) b!4857766))

(assert (= (and d!1559177 (not c!826364)) b!4857767))

(assert (=> d!1559177 m!5855612))

(declare-fun m!5855626 () Bool)

(assert (=> d!1559177 m!5855626))

(assert (=> d!1559177 m!5855612))

(declare-fun m!5855628 () Bool)

(assert (=> d!1559177 m!5855628))

(declare-fun m!5855630 () Bool)

(assert (=> b!4857767 m!5855630))

(assert (=> b!4857743 d!1559177))

(declare-fun b!4857783 () Bool)

(declare-fun e!3036985 () List!55876)

(assert (=> b!4857783 (= e!3036985 lt!1991662)))

(declare-fun b!4857785 () Bool)

(assert (=> b!4857785 (= e!3036985 (Cons!55752 (h!62200 lt!1991660) (++!12137 (t!363464 lt!1991660) lt!1991662)))))

(declare-fun e!3036984 () Bool)

(declare-fun b!4857787 () Bool)

(declare-fun lt!1991669 () List!55876)

(assert (=> b!4857787 (= e!3036984 (or (not (= lt!1991662 Nil!55752)) (= lt!1991669 lt!1991660)))))

(declare-fun b!4857786 () Bool)

(declare-fun res!2073772 () Bool)

(assert (=> b!4857786 (=> (not res!2073772) (not e!3036984))))

(declare-fun size!36732 (List!55876) Int)

(assert (=> b!4857786 (= res!2073772 (= (size!36732 lt!1991669) (+ (size!36732 lt!1991660) (size!36732 lt!1991662))))))

(declare-fun d!1559181 () Bool)

(assert (=> d!1559181 e!3036984))

(declare-fun res!2073773 () Bool)

(assert (=> d!1559181 (=> (not res!2073773) (not e!3036984))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9936 (List!55876) (InoxSet T!98658))

(assert (=> d!1559181 (= res!2073773 (= (content!9936 lt!1991669) ((_ map or) (content!9936 lt!1991660) (content!9936 lt!1991662))))))

(assert (=> d!1559181 (= lt!1991669 e!3036985)))

(declare-fun c!826367 () Bool)

(assert (=> d!1559181 (= c!826367 ((_ is Nil!55752) lt!1991660))))

(assert (=> d!1559181 (= (++!12137 lt!1991660 lt!1991662) lt!1991669)))

(assert (= (and d!1559181 c!826367) b!4857783))

(assert (= (and d!1559181 (not c!826367)) b!4857785))

(assert (= (and d!1559181 res!2073773) b!4857786))

(assert (= (and b!4857786 res!2073772) b!4857787))

(declare-fun m!5855644 () Bool)

(assert (=> b!4857785 m!5855644))

(declare-fun m!5855646 () Bool)

(assert (=> b!4857786 m!5855646))

(declare-fun m!5855648 () Bool)

(assert (=> b!4857786 m!5855648))

(declare-fun m!5855650 () Bool)

(assert (=> b!4857786 m!5855650))

(declare-fun m!5855652 () Bool)

(assert (=> d!1559181 m!5855652))

(declare-fun m!5855654 () Bool)

(assert (=> d!1559181 m!5855654))

(declare-fun m!5855656 () Bool)

(assert (=> d!1559181 m!5855656))

(assert (=> b!4857743 d!1559181))

(declare-fun d!1559185 () Bool)

(declare-fun lt!1991670 () T!98658)

(assert (=> d!1559185 (contains!19364 lt!1991662 lt!1991670)))

(declare-fun e!3036990 () T!98658)

(assert (=> d!1559185 (= lt!1991670 e!3036990)))

(declare-fun c!826370 () Bool)

(assert (=> d!1559185 (= c!826370 (and ((_ is Cons!55752) lt!1991662) ((_ is Nil!55752) (t!363464 lt!1991662))))))

(assert (=> d!1559185 (not (isEmpty!29836 lt!1991662))))

(assert (=> d!1559185 (= (last!402 lt!1991662) lt!1991670)))

(declare-fun b!4857792 () Bool)

(assert (=> b!4857792 (= e!3036990 (h!62200 lt!1991662))))

(declare-fun b!4857793 () Bool)

(assert (=> b!4857793 (= e!3036990 (last!402 (t!363464 lt!1991662)))))

(assert (= (and d!1559185 c!826370) b!4857792))

(assert (= (and d!1559185 (not c!826370)) b!4857793))

(declare-fun m!5855658 () Bool)

(assert (=> d!1559185 m!5855658))

(assert (=> d!1559185 m!5855606))

(declare-fun m!5855660 () Bool)

(assert (=> b!4857793 m!5855660))

(assert (=> b!4857743 d!1559185))

(declare-fun d!1559187 () Bool)

(assert (=> d!1559187 (= (inv!71597 (xs!17838 t!4677)) (<= (size!36732 (innerList!14620 (xs!17838 t!4677))) 2147483647))))

(declare-fun bs!1173792 () Bool)

(assert (= bs!1173792 d!1559187))

(declare-fun m!5855666 () Bool)

(assert (=> bs!1173792 m!5855666))

(assert (=> b!4857744 d!1559187))

(assert (=> b!4857749 d!1559177))

(assert (=> b!4857749 d!1559181))

(declare-fun d!1559191 () Bool)

(declare-fun lt!1991671 () T!98658)

(assert (=> d!1559191 (contains!19364 lt!1991660 lt!1991671)))

(declare-fun e!3036993 () T!98658)

(assert (=> d!1559191 (= lt!1991671 e!3036993)))

(declare-fun c!826372 () Bool)

(assert (=> d!1559191 (= c!826372 (and ((_ is Cons!55752) lt!1991660) ((_ is Nil!55752) (t!363464 lt!1991660))))))

(assert (=> d!1559191 (not (isEmpty!29836 lt!1991660))))

(assert (=> d!1559191 (= (last!402 lt!1991660) lt!1991671)))

(declare-fun b!4857797 () Bool)

(assert (=> b!4857797 (= e!3036993 (h!62200 lt!1991660))))

(declare-fun b!4857798 () Bool)

(assert (=> b!4857798 (= e!3036993 (last!402 (t!363464 lt!1991660)))))

(assert (= (and d!1559191 c!826372) b!4857797))

(assert (= (and d!1559191 (not c!826372)) b!4857798))

(declare-fun m!5855668 () Bool)

(assert (=> d!1559191 m!5855668))

(declare-fun m!5855670 () Bool)

(assert (=> d!1559191 m!5855670))

(declare-fun m!5855672 () Bool)

(assert (=> b!4857798 m!5855672))

(assert (=> b!4857749 d!1559191))

(declare-fun b!4857821 () Bool)

(declare-fun res!2073791 () Bool)

(declare-fun e!3037004 () Bool)

(assert (=> b!4857821 (=> (not res!2073791) (not e!3037004))))

(declare-fun height!1911 (Conc!14532) Int)

(assert (=> b!4857821 (= res!2073791 (<= (- (height!1911 (left!40518 t!4677)) (height!1911 (right!40848 t!4677))) 1))))

(declare-fun b!4857822 () Bool)

(declare-fun res!2073789 () Bool)

(assert (=> b!4857822 (=> (not res!2073789) (not e!3037004))))

(assert (=> b!4857822 (= res!2073789 (isBalanced!3938 (right!40848 t!4677)))))

(declare-fun b!4857823 () Bool)

(declare-fun res!2073794 () Bool)

(assert (=> b!4857823 (=> (not res!2073794) (not e!3037004))))

(assert (=> b!4857823 (= res!2073794 (isBalanced!3938 (left!40518 t!4677)))))

(declare-fun b!4857824 () Bool)

(declare-fun res!2073792 () Bool)

(assert (=> b!4857824 (=> (not res!2073792) (not e!3037004))))

(assert (=> b!4857824 (= res!2073792 (not (isEmpty!29837 (left!40518 t!4677))))))

(declare-fun d!1559193 () Bool)

(declare-fun res!2073793 () Bool)

(declare-fun e!3037003 () Bool)

(assert (=> d!1559193 (=> res!2073793 e!3037003)))

(assert (=> d!1559193 (= res!2073793 (not ((_ is Node!14532) t!4677)))))

(assert (=> d!1559193 (= (isBalanced!3938 t!4677) e!3037003)))

(declare-fun b!4857825 () Bool)

(assert (=> b!4857825 (= e!3037003 e!3037004)))

(declare-fun res!2073790 () Bool)

(assert (=> b!4857825 (=> (not res!2073790) (not e!3037004))))

(assert (=> b!4857825 (= res!2073790 (<= (- 1) (- (height!1911 (left!40518 t!4677)) (height!1911 (right!40848 t!4677)))))))

(declare-fun b!4857826 () Bool)

(assert (=> b!4857826 (= e!3037004 (not (isEmpty!29837 (right!40848 t!4677))))))

(assert (= (and d!1559193 (not res!2073793)) b!4857825))

(assert (= (and b!4857825 res!2073790) b!4857821))

(assert (= (and b!4857821 res!2073791) b!4857823))

(assert (= (and b!4857823 res!2073794) b!4857822))

(assert (= (and b!4857822 res!2073789) b!4857824))

(assert (= (and b!4857824 res!2073792) b!4857826))

(declare-fun m!5855680 () Bool)

(assert (=> b!4857821 m!5855680))

(declare-fun m!5855682 () Bool)

(assert (=> b!4857821 m!5855682))

(declare-fun m!5855684 () Bool)

(assert (=> b!4857826 m!5855684))

(declare-fun m!5855686 () Bool)

(assert (=> b!4857824 m!5855686))

(declare-fun m!5855688 () Bool)

(assert (=> b!4857823 m!5855688))

(declare-fun m!5855690 () Bool)

(assert (=> b!4857822 m!5855690))

(assert (=> b!4857825 m!5855680))

(assert (=> b!4857825 m!5855682))

(assert (=> start!507538 d!1559193))

(declare-fun d!1559197 () Bool)

(declare-fun c!826385 () Bool)

(assert (=> d!1559197 (= c!826385 ((_ is Node!14532) t!4677))))

(declare-fun e!3037019 () Bool)

(assert (=> d!1559197 (= (inv!71596 t!4677) e!3037019)))

(declare-fun b!4857851 () Bool)

(declare-fun inv!71600 (Conc!14532) Bool)

(assert (=> b!4857851 (= e!3037019 (inv!71600 t!4677))))

(declare-fun b!4857852 () Bool)

(declare-fun e!3037020 () Bool)

(assert (=> b!4857852 (= e!3037019 e!3037020)))

(declare-fun res!2073805 () Bool)

(assert (=> b!4857852 (= res!2073805 (not ((_ is Leaf!24213) t!4677)))))

(assert (=> b!4857852 (=> res!2073805 e!3037020)))

(declare-fun b!4857853 () Bool)

(declare-fun inv!71601 (Conc!14532) Bool)

(assert (=> b!4857853 (= e!3037020 (inv!71601 t!4677))))

(assert (= (and d!1559197 c!826385) b!4857851))

(assert (= (and d!1559197 (not c!826385)) b!4857852))

(assert (= (and b!4857852 (not res!2073805)) b!4857853))

(declare-fun m!5855724 () Bool)

(assert (=> b!4857851 m!5855724))

(declare-fun m!5855726 () Bool)

(assert (=> b!4857853 m!5855726))

(assert (=> start!507538 d!1559197))

(declare-fun d!1559209 () Bool)

(declare-fun c!826386 () Bool)

(assert (=> d!1559209 (= c!826386 ((_ is Node!14532) (left!40518 t!4677)))))

(declare-fun e!3037021 () Bool)

(assert (=> d!1559209 (= (inv!71596 (left!40518 t!4677)) e!3037021)))

(declare-fun b!4857854 () Bool)

(assert (=> b!4857854 (= e!3037021 (inv!71600 (left!40518 t!4677)))))

(declare-fun b!4857855 () Bool)

(declare-fun e!3037022 () Bool)

(assert (=> b!4857855 (= e!3037021 e!3037022)))

(declare-fun res!2073806 () Bool)

(assert (=> b!4857855 (= res!2073806 (not ((_ is Leaf!24213) (left!40518 t!4677))))))

(assert (=> b!4857855 (=> res!2073806 e!3037022)))

(declare-fun b!4857856 () Bool)

(assert (=> b!4857856 (= e!3037022 (inv!71601 (left!40518 t!4677)))))

(assert (= (and d!1559209 c!826386) b!4857854))

(assert (= (and d!1559209 (not c!826386)) b!4857855))

(assert (= (and b!4857855 (not res!2073806)) b!4857856))

(declare-fun m!5855728 () Bool)

(assert (=> b!4857854 m!5855728))

(declare-fun m!5855730 () Bool)

(assert (=> b!4857856 m!5855730))

(assert (=> b!4857741 d!1559209))

(declare-fun d!1559211 () Bool)

(declare-fun c!826387 () Bool)

(assert (=> d!1559211 (= c!826387 ((_ is Node!14532) (right!40848 t!4677)))))

(declare-fun e!3037023 () Bool)

(assert (=> d!1559211 (= (inv!71596 (right!40848 t!4677)) e!3037023)))

(declare-fun b!4857857 () Bool)

(assert (=> b!4857857 (= e!3037023 (inv!71600 (right!40848 t!4677)))))

(declare-fun b!4857858 () Bool)

(declare-fun e!3037024 () Bool)

(assert (=> b!4857858 (= e!3037023 e!3037024)))

(declare-fun res!2073807 () Bool)

(assert (=> b!4857858 (= res!2073807 (not ((_ is Leaf!24213) (right!40848 t!4677))))))

(assert (=> b!4857858 (=> res!2073807 e!3037024)))

(declare-fun b!4857859 () Bool)

(assert (=> b!4857859 (= e!3037024 (inv!71601 (right!40848 t!4677)))))

(assert (= (and d!1559211 c!826387) b!4857857))

(assert (= (and d!1559211 (not c!826387)) b!4857858))

(assert (= (and b!4857858 (not res!2073807)) b!4857859))

(declare-fun m!5855732 () Bool)

(assert (=> b!4857857 m!5855732))

(declare-fun m!5855734 () Bool)

(assert (=> b!4857859 m!5855734))

(assert (=> b!4857741 d!1559211))

(declare-fun b!4857876 () Bool)

(declare-fun e!3037034 () Int)

(declare-fun call!337761 () Int)

(declare-fun IArrayPrimitiveSize!30 (IArray!29125) Int)

(assert (=> b!4857876 (= e!3037034 (+ 1 (IArrayPrimitiveSize!30 (xs!17838 t!4677)) call!337761))))

(declare-fun b!4857877 () Bool)

(assert (=> b!4857877 (= e!3037034 0)))

(declare-fun b!4857878 () Bool)

(declare-fun e!3037033 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!4857878 (= e!3037033 (+ 1 (ConcPrimitiveSize!32 (left!40518 t!4677)) (ConcPrimitiveSize!32 (right!40848 t!4677)) call!337761 (BigIntAbs!0 (cheight!14743 t!4677))))))

(declare-fun d!1559213 () Bool)

(declare-fun lt!1991687 () Int)

(assert (=> d!1559213 (>= lt!1991687 0)))

(assert (=> d!1559213 (= lt!1991687 e!3037033)))

(declare-fun c!826396 () Bool)

(assert (=> d!1559213 (= c!826396 ((_ is Node!14532) t!4677))))

(assert (=> d!1559213 (= (ConcPrimitiveSize!32 t!4677) lt!1991687)))

(declare-fun b!4857879 () Bool)

(assert (=> b!4857879 (= e!3037033 e!3037034)))

(declare-fun c!826397 () Bool)

(assert (=> b!4857879 (= c!826397 ((_ is Leaf!24213) t!4677))))

(declare-fun bm!337756 () Bool)

(assert (=> bm!337756 (= call!337761 (BigIntAbs!0 (ite c!826396 (csize!29294 t!4677) (csize!29295 t!4677))))))

(assert (= (and d!1559213 c!826396) b!4857878))

(assert (= (and d!1559213 (not c!826396)) b!4857879))

(assert (= (and b!4857879 c!826397) b!4857876))

(assert (= (and b!4857879 (not c!826397)) b!4857877))

(assert (= (or b!4857878 b!4857876) bm!337756))

(declare-fun m!5855742 () Bool)

(assert (=> b!4857876 m!5855742))

(declare-fun m!5855744 () Bool)

(assert (=> b!4857878 m!5855744))

(assert (=> b!4857878 m!5855602))

(declare-fun m!5855746 () Bool)

(assert (=> b!4857878 m!5855746))

(declare-fun m!5855748 () Bool)

(assert (=> bm!337756 m!5855748))

(assert (=> b!4857747 d!1559213))

(declare-fun b!4857880 () Bool)

(declare-fun e!3037036 () Int)

(declare-fun call!337762 () Int)

(assert (=> b!4857880 (= e!3037036 (+ 1 (IArrayPrimitiveSize!30 (xs!17838 (right!40848 t!4677))) call!337762))))

(declare-fun b!4857881 () Bool)

(assert (=> b!4857881 (= e!3037036 0)))

(declare-fun b!4857882 () Bool)

(declare-fun e!3037035 () Int)

(assert (=> b!4857882 (= e!3037035 (+ 1 (ConcPrimitiveSize!32 (left!40518 (right!40848 t!4677))) (ConcPrimitiveSize!32 (right!40848 (right!40848 t!4677))) call!337762 (BigIntAbs!0 (cheight!14743 (right!40848 t!4677)))))))

(declare-fun d!1559219 () Bool)

(declare-fun lt!1991688 () Int)

(assert (=> d!1559219 (>= lt!1991688 0)))

(assert (=> d!1559219 (= lt!1991688 e!3037035)))

(declare-fun c!826398 () Bool)

(assert (=> d!1559219 (= c!826398 ((_ is Node!14532) (right!40848 t!4677)))))

(assert (=> d!1559219 (= (ConcPrimitiveSize!32 (right!40848 t!4677)) lt!1991688)))

(declare-fun b!4857883 () Bool)

(assert (=> b!4857883 (= e!3037035 e!3037036)))

(declare-fun c!826399 () Bool)

(assert (=> b!4857883 (= c!826399 ((_ is Leaf!24213) (right!40848 t!4677)))))

(declare-fun bm!337757 () Bool)

(assert (=> bm!337757 (= call!337762 (BigIntAbs!0 (ite c!826398 (csize!29294 (right!40848 t!4677)) (csize!29295 (right!40848 t!4677)))))))

(assert (= (and d!1559219 c!826398) b!4857882))

(assert (= (and d!1559219 (not c!826398)) b!4857883))

(assert (= (and b!4857883 c!826399) b!4857880))

(assert (= (and b!4857883 (not c!826399)) b!4857881))

(assert (= (or b!4857882 b!4857880) bm!337757))

(declare-fun m!5855750 () Bool)

(assert (=> b!4857880 m!5855750))

(declare-fun m!5855752 () Bool)

(assert (=> b!4857882 m!5855752))

(declare-fun m!5855754 () Bool)

(assert (=> b!4857882 m!5855754))

(declare-fun m!5855756 () Bool)

(assert (=> b!4857882 m!5855756))

(declare-fun m!5855758 () Bool)

(assert (=> bm!337757 m!5855758))

(assert (=> b!4857747 d!1559219))

(declare-fun d!1559221 () Bool)

(assert (=> d!1559221 (= (isEmpty!29836 lt!1991662) ((_ is Nil!55752) lt!1991662))))

(assert (=> b!4857747 d!1559221))

(declare-fun d!1559225 () Bool)

(declare-fun e!3037057 () Bool)

(assert (=> d!1559225 e!3037057))

(declare-fun res!2073823 () Bool)

(assert (=> d!1559225 (=> res!2073823 e!3037057)))

(declare-fun e!3037056 () Bool)

(assert (=> d!1559225 (= res!2073823 e!3037056)))

(declare-fun res!2073824 () Bool)

(assert (=> d!1559225 (=> (not res!2073824) (not e!3037056))))

(assert (=> d!1559225 (= res!2073824 (isEmpty!29836 lt!1991662))))

(declare-fun lt!1991696 () Unit!145855)

(declare-fun choose!35561 (List!55876 List!55876) Unit!145855)

(assert (=> d!1559225 (= lt!1991696 (choose!35561 lt!1991660 lt!1991662))))

(assert (=> d!1559225 (not (isEmpty!29836 (++!12137 lt!1991660 lt!1991662)))))

(assert (=> d!1559225 (= (lemmaLastOfConcatIsLastOfRhs!34 lt!1991660 lt!1991662) lt!1991696)))

(declare-fun b!4857907 () Bool)

(assert (=> b!4857907 (= e!3037056 (= (last!402 (++!12137 lt!1991660 lt!1991662)) (last!402 lt!1991660)))))

(declare-fun b!4857908 () Bool)

(declare-fun e!3037058 () Bool)

(assert (=> b!4857908 (= e!3037057 e!3037058)))

(declare-fun res!2073825 () Bool)

(assert (=> b!4857908 (=> (not res!2073825) (not e!3037058))))

(assert (=> b!4857908 (= res!2073825 (not (isEmpty!29836 lt!1991662)))))

(declare-fun b!4857909 () Bool)

(assert (=> b!4857909 (= e!3037058 (= (last!402 (++!12137 lt!1991660 lt!1991662)) (last!402 lt!1991662)))))

(assert (= (and d!1559225 res!2073824) b!4857907))

(assert (= (and d!1559225 (not res!2073823)) b!4857908))

(assert (= (and b!4857908 res!2073825) b!4857909))

(assert (=> d!1559225 m!5855606))

(declare-fun m!5855780 () Bool)

(assert (=> d!1559225 m!5855780))

(assert (=> d!1559225 m!5855612))

(assert (=> d!1559225 m!5855612))

(assert (=> d!1559225 m!5855628))

(assert (=> b!4857907 m!5855612))

(assert (=> b!4857907 m!5855612))

(assert (=> b!4857907 m!5855614))

(assert (=> b!4857907 m!5855616))

(assert (=> b!4857908 m!5855606))

(assert (=> b!4857909 m!5855612))

(assert (=> b!4857909 m!5855612))

(assert (=> b!4857909 m!5855614))

(assert (=> b!4857909 m!5855618))

(assert (=> b!4857747 d!1559225))

(declare-fun b!4857937 () Bool)

(declare-fun e!3037072 () List!55876)

(assert (=> b!4857937 (= e!3037072 (++!12137 (list!17424 (left!40518 (right!40848 t!4677))) (list!17424 (right!40848 (right!40848 t!4677)))))))

(declare-fun b!4857934 () Bool)

(declare-fun e!3037071 () List!55876)

(assert (=> b!4857934 (= e!3037071 Nil!55752)))

(declare-fun d!1559231 () Bool)

(declare-fun c!826416 () Bool)

(assert (=> d!1559231 (= c!826416 ((_ is Empty!14532) (right!40848 t!4677)))))

(assert (=> d!1559231 (= (list!17424 (right!40848 t!4677)) e!3037071)))

(declare-fun b!4857935 () Bool)

(assert (=> b!4857935 (= e!3037071 e!3037072)))

(declare-fun c!826417 () Bool)

(assert (=> b!4857935 (= c!826417 ((_ is Leaf!24213) (right!40848 t!4677)))))

(declare-fun b!4857936 () Bool)

(declare-fun list!17425 (IArray!29125) List!55876)

(assert (=> b!4857936 (= e!3037072 (list!17425 (xs!17838 (right!40848 t!4677))))))

(assert (= (and d!1559231 c!826416) b!4857934))

(assert (= (and d!1559231 (not c!826416)) b!4857935))

(assert (= (and b!4857935 c!826417) b!4857936))

(assert (= (and b!4857935 (not c!826417)) b!4857937))

(declare-fun m!5855800 () Bool)

(assert (=> b!4857937 m!5855800))

(declare-fun m!5855802 () Bool)

(assert (=> b!4857937 m!5855802))

(assert (=> b!4857937 m!5855800))

(assert (=> b!4857937 m!5855802))

(declare-fun m!5855804 () Bool)

(assert (=> b!4857937 m!5855804))

(declare-fun m!5855806 () Bool)

(assert (=> b!4857936 m!5855806))

(assert (=> b!4857747 d!1559231))

(declare-fun b!4857945 () Bool)

(declare-fun e!3037076 () List!55876)

(assert (=> b!4857945 (= e!3037076 (++!12137 (list!17424 (left!40518 (left!40518 t!4677))) (list!17424 (right!40848 (left!40518 t!4677)))))))

(declare-fun b!4857942 () Bool)

(declare-fun e!3037075 () List!55876)

(assert (=> b!4857942 (= e!3037075 Nil!55752)))

(declare-fun d!1559237 () Bool)

(declare-fun c!826418 () Bool)

(assert (=> d!1559237 (= c!826418 ((_ is Empty!14532) (left!40518 t!4677)))))

(assert (=> d!1559237 (= (list!17424 (left!40518 t!4677)) e!3037075)))

(declare-fun b!4857943 () Bool)

(assert (=> b!4857943 (= e!3037075 e!3037076)))

(declare-fun c!826419 () Bool)

(assert (=> b!4857943 (= c!826419 ((_ is Leaf!24213) (left!40518 t!4677)))))

(declare-fun b!4857944 () Bool)

(assert (=> b!4857944 (= e!3037076 (list!17425 (xs!17838 (left!40518 t!4677))))))

(assert (= (and d!1559237 c!826418) b!4857942))

(assert (= (and d!1559237 (not c!826418)) b!4857943))

(assert (= (and b!4857943 c!826419) b!4857944))

(assert (= (and b!4857943 (not c!826419)) b!4857945))

(declare-fun m!5855808 () Bool)

(assert (=> b!4857945 m!5855808))

(declare-fun m!5855810 () Bool)

(assert (=> b!4857945 m!5855810))

(assert (=> b!4857945 m!5855808))

(assert (=> b!4857945 m!5855810))

(declare-fun m!5855812 () Bool)

(assert (=> b!4857945 m!5855812))

(declare-fun m!5855814 () Bool)

(assert (=> b!4857944 m!5855814))

(assert (=> b!4857747 d!1559237))

(declare-fun d!1559239 () Bool)

(declare-fun lt!1991699 () Bool)

(assert (=> d!1559239 (= lt!1991699 (isEmpty!29836 (list!17424 t!4677)))))

(declare-fun size!36735 (Conc!14532) Int)

(assert (=> d!1559239 (= lt!1991699 (= (size!36735 t!4677) 0))))

(assert (=> d!1559239 (= (isEmpty!29837 t!4677) lt!1991699)))

(declare-fun bs!1173795 () Bool)

(assert (= bs!1173795 d!1559239))

(declare-fun m!5855828 () Bool)

(assert (=> bs!1173795 m!5855828))

(assert (=> bs!1173795 m!5855828))

(declare-fun m!5855830 () Bool)

(assert (=> bs!1173795 m!5855830))

(declare-fun m!5855832 () Bool)

(assert (=> bs!1173795 m!5855832))

(assert (=> b!4857748 d!1559239))

(declare-fun tp!1366636 () Bool)

(declare-fun e!3037091 () Bool)

(declare-fun tp!1366637 () Bool)

(declare-fun b!4857969 () Bool)

(assert (=> b!4857969 (= e!3037091 (and (inv!71596 (left!40518 (left!40518 t!4677))) tp!1366636 (inv!71596 (right!40848 (left!40518 t!4677))) tp!1366637))))

(declare-fun b!4857971 () Bool)

(declare-fun e!3037090 () Bool)

(declare-fun tp!1366635 () Bool)

(assert (=> b!4857971 (= e!3037090 tp!1366635)))

(declare-fun b!4857970 () Bool)

(assert (=> b!4857970 (= e!3037091 (and (inv!71597 (xs!17838 (left!40518 t!4677))) e!3037090))))

(assert (=> b!4857741 (= tp!1366613 (and (inv!71596 (left!40518 t!4677)) e!3037091))))

(assert (= (and b!4857741 ((_ is Node!14532) (left!40518 t!4677))) b!4857969))

(assert (= b!4857970 b!4857971))

(assert (= (and b!4857741 ((_ is Leaf!24213) (left!40518 t!4677))) b!4857970))

(declare-fun m!5855834 () Bool)

(assert (=> b!4857969 m!5855834))

(declare-fun m!5855836 () Bool)

(assert (=> b!4857969 m!5855836))

(declare-fun m!5855838 () Bool)

(assert (=> b!4857970 m!5855838))

(assert (=> b!4857741 m!5855594))

(declare-fun tp!1366639 () Bool)

(declare-fun e!3037093 () Bool)

(declare-fun tp!1366640 () Bool)

(declare-fun b!4857972 () Bool)

(assert (=> b!4857972 (= e!3037093 (and (inv!71596 (left!40518 (right!40848 t!4677))) tp!1366639 (inv!71596 (right!40848 (right!40848 t!4677))) tp!1366640))))

(declare-fun b!4857974 () Bool)

(declare-fun e!3037092 () Bool)

(declare-fun tp!1366638 () Bool)

(assert (=> b!4857974 (= e!3037092 tp!1366638)))

(declare-fun b!4857973 () Bool)

(assert (=> b!4857973 (= e!3037093 (and (inv!71597 (xs!17838 (right!40848 t!4677))) e!3037092))))

(assert (=> b!4857741 (= tp!1366611 (and (inv!71596 (right!40848 t!4677)) e!3037093))))

(assert (= (and b!4857741 ((_ is Node!14532) (right!40848 t!4677))) b!4857972))

(assert (= b!4857973 b!4857974))

(assert (= (and b!4857741 ((_ is Leaf!24213) (right!40848 t!4677))) b!4857973))

(declare-fun m!5855840 () Bool)

(assert (=> b!4857972 m!5855840))

(declare-fun m!5855842 () Bool)

(assert (=> b!4857972 m!5855842))

(declare-fun m!5855844 () Bool)

(assert (=> b!4857973 m!5855844))

(assert (=> b!4857741 m!5855596))

(declare-fun b!4857979 () Bool)

(declare-fun e!3037096 () Bool)

(declare-fun tp_is_empty!35523 () Bool)

(declare-fun tp!1366643 () Bool)

(assert (=> b!4857979 (= e!3037096 (and tp_is_empty!35523 tp!1366643))))

(assert (=> b!4857742 (= tp!1366612 e!3037096)))

(assert (= (and b!4857742 ((_ is Cons!55752) (innerList!14620 (xs!17838 t!4677)))) b!4857979))

(check-sat (not b!4857824) (not b!4857969) (not b!4857823) (not b!4857822) (not b!4857859) (not b!4857971) (not b!4857974) (not d!1559239) (not b!4857856) (not d!1559181) tp_is_empty!35523 (not b!4857767) (not d!1559225) (not bm!337756) (not d!1559187) (not d!1559191) (not b!4857851) (not b!4857907) (not b!4857908) (not b!4857944) (not b!4857936) (not b!4857793) (not b!4857853) (not b!4857880) (not b!4857972) (not b!4857878) (not bm!337757) (not b!4857945) (not d!1559185) (not d!1559177) (not b!4857785) (not b!4857909) (not b!4857741) (not b!4857979) (not b!4857876) (not b!4857826) (not b!4857937) (not b!4857973) (not b!4857786) (not b!4857970) (not b!4857857) (not b!4857821) (not b!4857825) (not b!4857798) (not b!4857854) (not b!4857882))
(check-sat)
(get-model)

(declare-fun b!4857980 () Bool)

(declare-fun e!3037098 () Int)

(declare-fun call!337765 () Int)

(assert (=> b!4857980 (= e!3037098 (+ 1 (IArrayPrimitiveSize!30 (xs!17838 (left!40518 t!4677))) call!337765))))

(declare-fun b!4857981 () Bool)

(assert (=> b!4857981 (= e!3037098 0)))

(declare-fun b!4857982 () Bool)

(declare-fun e!3037097 () Int)

(assert (=> b!4857982 (= e!3037097 (+ 1 (ConcPrimitiveSize!32 (left!40518 (left!40518 t!4677))) (ConcPrimitiveSize!32 (right!40848 (left!40518 t!4677))) call!337765 (BigIntAbs!0 (cheight!14743 (left!40518 t!4677)))))))

(declare-fun d!1559241 () Bool)

(declare-fun lt!1991700 () Int)

(assert (=> d!1559241 (>= lt!1991700 0)))

(assert (=> d!1559241 (= lt!1991700 e!3037097)))

(declare-fun c!826420 () Bool)

(assert (=> d!1559241 (= c!826420 ((_ is Node!14532) (left!40518 t!4677)))))

(assert (=> d!1559241 (= (ConcPrimitiveSize!32 (left!40518 t!4677)) lt!1991700)))

(declare-fun b!4857983 () Bool)

(assert (=> b!4857983 (= e!3037097 e!3037098)))

(declare-fun c!826421 () Bool)

(assert (=> b!4857983 (= c!826421 ((_ is Leaf!24213) (left!40518 t!4677)))))

(declare-fun bm!337760 () Bool)

(assert (=> bm!337760 (= call!337765 (BigIntAbs!0 (ite c!826420 (csize!29294 (left!40518 t!4677)) (csize!29295 (left!40518 t!4677)))))))

(assert (= (and d!1559241 c!826420) b!4857982))

(assert (= (and d!1559241 (not c!826420)) b!4857983))

(assert (= (and b!4857983 c!826421) b!4857980))

(assert (= (and b!4857983 (not c!826421)) b!4857981))

(assert (= (or b!4857982 b!4857980) bm!337760))

(declare-fun m!5855846 () Bool)

(assert (=> b!4857980 m!5855846))

(declare-fun m!5855848 () Bool)

(assert (=> b!4857982 m!5855848))

(declare-fun m!5855850 () Bool)

(assert (=> b!4857982 m!5855850))

(declare-fun m!5855852 () Bool)

(assert (=> b!4857982 m!5855852))

(declare-fun m!5855854 () Bool)

(assert (=> bm!337760 m!5855854))

(assert (=> b!4857878 d!1559241))

(assert (=> b!4857878 d!1559219))

(declare-fun d!1559243 () Bool)

(assert (=> d!1559243 (= (BigIntAbs!0 (cheight!14743 t!4677)) (ite (>= (cheight!14743 t!4677) 0) (cheight!14743 t!4677) (- (cheight!14743 t!4677))))))

(assert (=> b!4857878 d!1559243))

(declare-fun d!1559245 () Bool)

(declare-fun res!2073830 () Bool)

(declare-fun e!3037101 () Bool)

(assert (=> d!1559245 (=> (not res!2073830) (not e!3037101))))

(assert (=> d!1559245 (= res!2073830 (<= (size!36732 (list!17425 (xs!17838 (right!40848 t!4677)))) 512))))

(assert (=> d!1559245 (= (inv!71601 (right!40848 t!4677)) e!3037101)))

(declare-fun b!4857988 () Bool)

(declare-fun res!2073831 () Bool)

(assert (=> b!4857988 (=> (not res!2073831) (not e!3037101))))

(assert (=> b!4857988 (= res!2073831 (= (csize!29295 (right!40848 t!4677)) (size!36732 (list!17425 (xs!17838 (right!40848 t!4677))))))))

(declare-fun b!4857989 () Bool)

(assert (=> b!4857989 (= e!3037101 (and (> (csize!29295 (right!40848 t!4677)) 0) (<= (csize!29295 (right!40848 t!4677)) 512)))))

(assert (= (and d!1559245 res!2073830) b!4857988))

(assert (= (and b!4857988 res!2073831) b!4857989))

(assert (=> d!1559245 m!5855806))

(assert (=> d!1559245 m!5855806))

(declare-fun m!5855856 () Bool)

(assert (=> d!1559245 m!5855856))

(assert (=> b!4857988 m!5855806))

(assert (=> b!4857988 m!5855806))

(assert (=> b!4857988 m!5855856))

(assert (=> b!4857859 d!1559245))

(declare-fun d!1559247 () Bool)

(declare-fun c!826422 () Bool)

(assert (=> d!1559247 (= c!826422 ((_ is Node!14532) (left!40518 (left!40518 t!4677))))))

(declare-fun e!3037102 () Bool)

(assert (=> d!1559247 (= (inv!71596 (left!40518 (left!40518 t!4677))) e!3037102)))

(declare-fun b!4857990 () Bool)

(assert (=> b!4857990 (= e!3037102 (inv!71600 (left!40518 (left!40518 t!4677))))))

(declare-fun b!4857991 () Bool)

(declare-fun e!3037103 () Bool)

(assert (=> b!4857991 (= e!3037102 e!3037103)))

(declare-fun res!2073832 () Bool)

(assert (=> b!4857991 (= res!2073832 (not ((_ is Leaf!24213) (left!40518 (left!40518 t!4677)))))))

(assert (=> b!4857991 (=> res!2073832 e!3037103)))

(declare-fun b!4857992 () Bool)

(assert (=> b!4857992 (= e!3037103 (inv!71601 (left!40518 (left!40518 t!4677))))))

(assert (= (and d!1559247 c!826422) b!4857990))

(assert (= (and d!1559247 (not c!826422)) b!4857991))

(assert (= (and b!4857991 (not res!2073832)) b!4857992))

(declare-fun m!5855858 () Bool)

(assert (=> b!4857990 m!5855858))

(declare-fun m!5855860 () Bool)

(assert (=> b!4857992 m!5855860))

(assert (=> b!4857969 d!1559247))

(declare-fun d!1559249 () Bool)

(declare-fun c!826423 () Bool)

(assert (=> d!1559249 (= c!826423 ((_ is Node!14532) (right!40848 (left!40518 t!4677))))))

(declare-fun e!3037104 () Bool)

(assert (=> d!1559249 (= (inv!71596 (right!40848 (left!40518 t!4677))) e!3037104)))

(declare-fun b!4857993 () Bool)

(assert (=> b!4857993 (= e!3037104 (inv!71600 (right!40848 (left!40518 t!4677))))))

(declare-fun b!4857994 () Bool)

(declare-fun e!3037105 () Bool)

(assert (=> b!4857994 (= e!3037104 e!3037105)))

(declare-fun res!2073833 () Bool)

(assert (=> b!4857994 (= res!2073833 (not ((_ is Leaf!24213) (right!40848 (left!40518 t!4677)))))))

(assert (=> b!4857994 (=> res!2073833 e!3037105)))

(declare-fun b!4857995 () Bool)

(assert (=> b!4857995 (= e!3037105 (inv!71601 (right!40848 (left!40518 t!4677))))))

(assert (= (and d!1559249 c!826423) b!4857993))

(assert (= (and d!1559249 (not c!826423)) b!4857994))

(assert (= (and b!4857994 (not res!2073833)) b!4857995))

(declare-fun m!5855862 () Bool)

(assert (=> b!4857993 m!5855862))

(declare-fun m!5855864 () Bool)

(assert (=> b!4857995 m!5855864))

(assert (=> b!4857969 d!1559249))

(declare-fun d!1559251 () Bool)

(declare-fun lt!1991701 () T!98658)

(assert (=> d!1559251 (contains!19364 (t!363464 (++!12137 lt!1991660 lt!1991662)) lt!1991701)))

(declare-fun e!3037106 () T!98658)

(assert (=> d!1559251 (= lt!1991701 e!3037106)))

(declare-fun c!826424 () Bool)

(assert (=> d!1559251 (= c!826424 (and ((_ is Cons!55752) (t!363464 (++!12137 lt!1991660 lt!1991662))) ((_ is Nil!55752) (t!363464 (t!363464 (++!12137 lt!1991660 lt!1991662))))))))

(assert (=> d!1559251 (not (isEmpty!29836 (t!363464 (++!12137 lt!1991660 lt!1991662))))))

(assert (=> d!1559251 (= (last!402 (t!363464 (++!12137 lt!1991660 lt!1991662))) lt!1991701)))

(declare-fun b!4857996 () Bool)

(assert (=> b!4857996 (= e!3037106 (h!62200 (t!363464 (++!12137 lt!1991660 lt!1991662))))))

(declare-fun b!4857997 () Bool)

(assert (=> b!4857997 (= e!3037106 (last!402 (t!363464 (t!363464 (++!12137 lt!1991660 lt!1991662)))))))

(assert (= (and d!1559251 c!826424) b!4857996))

(assert (= (and d!1559251 (not c!826424)) b!4857997))

(declare-fun m!5855866 () Bool)

(assert (=> d!1559251 m!5855866))

(declare-fun m!5855868 () Bool)

(assert (=> d!1559251 m!5855868))

(declare-fun m!5855870 () Bool)

(assert (=> b!4857997 m!5855870))

(assert (=> b!4857767 d!1559251))

(declare-fun d!1559253 () Bool)

(assert (=> d!1559253 (= (BigIntAbs!0 (ite c!826398 (csize!29294 (right!40848 t!4677)) (csize!29295 (right!40848 t!4677)))) (ite (>= (ite c!826398 (csize!29294 (right!40848 t!4677)) (csize!29295 (right!40848 t!4677))) 0) (ite c!826398 (csize!29294 (right!40848 t!4677)) (csize!29295 (right!40848 t!4677))) (- (ite c!826398 (csize!29294 (right!40848 t!4677)) (csize!29295 (right!40848 t!4677))))))))

(assert (=> bm!337757 d!1559253))

(declare-fun d!1559255 () Bool)

(assert (=> d!1559255 (= (list!17425 (xs!17838 (left!40518 t!4677))) (innerList!14620 (xs!17838 (left!40518 t!4677))))))

(assert (=> b!4857944 d!1559255))

(declare-fun d!1559257 () Bool)

(assert (=> d!1559257 (= (BigIntAbs!0 (ite c!826396 (csize!29294 t!4677) (csize!29295 t!4677))) (ite (>= (ite c!826396 (csize!29294 t!4677) (csize!29295 t!4677)) 0) (ite c!826396 (csize!29294 t!4677) (csize!29295 t!4677)) (- (ite c!826396 (csize!29294 t!4677) (csize!29295 t!4677)))))))

(assert (=> bm!337756 d!1559257))

(declare-fun d!1559259 () Bool)

(assert (=> d!1559259 (= (inv!71597 (xs!17838 (left!40518 t!4677))) (<= (size!36732 (innerList!14620 (xs!17838 (left!40518 t!4677)))) 2147483647))))

(declare-fun bs!1173796 () Bool)

(assert (= bs!1173796 d!1559259))

(declare-fun m!5855872 () Bool)

(assert (=> bs!1173796 m!5855872))

(assert (=> b!4857970 d!1559259))

(declare-fun d!1559261 () Bool)

(declare-fun lt!1991704 () Bool)

(assert (=> d!1559261 (= lt!1991704 (select (content!9936 lt!1991662) lt!1991670))))

(declare-fun e!3037112 () Bool)

(assert (=> d!1559261 (= lt!1991704 e!3037112)))

(declare-fun res!2073839 () Bool)

(assert (=> d!1559261 (=> (not res!2073839) (not e!3037112))))

(assert (=> d!1559261 (= res!2073839 ((_ is Cons!55752) lt!1991662))))

(assert (=> d!1559261 (= (contains!19364 lt!1991662 lt!1991670) lt!1991704)))

(declare-fun b!4858002 () Bool)

(declare-fun e!3037111 () Bool)

(assert (=> b!4858002 (= e!3037112 e!3037111)))

(declare-fun res!2073838 () Bool)

(assert (=> b!4858002 (=> res!2073838 e!3037111)))

(assert (=> b!4858002 (= res!2073838 (= (h!62200 lt!1991662) lt!1991670))))

(declare-fun b!4858003 () Bool)

(assert (=> b!4858003 (= e!3037111 (contains!19364 (t!363464 lt!1991662) lt!1991670))))

(assert (= (and d!1559261 res!2073839) b!4858002))

(assert (= (and b!4858002 (not res!2073838)) b!4858003))

(assert (=> d!1559261 m!5855656))

(declare-fun m!5855874 () Bool)

(assert (=> d!1559261 m!5855874))

(declare-fun m!5855876 () Bool)

(assert (=> b!4858003 m!5855876))

(assert (=> d!1559185 d!1559261))

(assert (=> d!1559185 d!1559221))

(declare-fun d!1559263 () Bool)

(declare-fun lt!1991707 () Int)

(assert (=> d!1559263 (>= lt!1991707 0)))

(declare-fun ListPrimitiveSize!366 (List!55876) Int)

(assert (=> d!1559263 (= lt!1991707 (+ 1 (ListPrimitiveSize!366 (innerList!14620 (xs!17838 (right!40848 t!4677))))))))

(assert (=> d!1559263 (= (IArrayPrimitiveSize!30 (xs!17838 (right!40848 t!4677))) lt!1991707)))

(declare-fun bs!1173797 () Bool)

(assert (= bs!1173797 d!1559263))

(declare-fun m!5855878 () Bool)

(assert (=> bs!1173797 m!5855878))

(assert (=> b!4857880 d!1559263))

(declare-fun d!1559265 () Bool)

(declare-fun lt!1991708 () Bool)

(assert (=> d!1559265 (= lt!1991708 (isEmpty!29836 (list!17424 (left!40518 t!4677))))))

(assert (=> d!1559265 (= lt!1991708 (= (size!36735 (left!40518 t!4677)) 0))))

(assert (=> d!1559265 (= (isEmpty!29837 (left!40518 t!4677)) lt!1991708)))

(declare-fun bs!1173798 () Bool)

(assert (= bs!1173798 d!1559265))

(assert (=> bs!1173798 m!5855608))

(assert (=> bs!1173798 m!5855608))

(declare-fun m!5855880 () Bool)

(assert (=> bs!1173798 m!5855880))

(declare-fun m!5855882 () Bool)

(assert (=> bs!1173798 m!5855882))

(assert (=> b!4857824 d!1559265))

(declare-fun d!1559267 () Bool)

(declare-fun lt!1991709 () Int)

(assert (=> d!1559267 (>= lt!1991709 0)))

(assert (=> d!1559267 (= lt!1991709 (+ 1 (ListPrimitiveSize!366 (innerList!14620 (xs!17838 t!4677)))))))

(assert (=> d!1559267 (= (IArrayPrimitiveSize!30 (xs!17838 t!4677)) lt!1991709)))

(declare-fun bs!1173799 () Bool)

(assert (= bs!1173799 d!1559267))

(declare-fun m!5855884 () Bool)

(assert (=> bs!1173799 m!5855884))

(assert (=> b!4857876 d!1559267))

(declare-fun d!1559269 () Bool)

(declare-fun res!2073846 () Bool)

(declare-fun e!3037115 () Bool)

(assert (=> d!1559269 (=> (not res!2073846) (not e!3037115))))

(assert (=> d!1559269 (= res!2073846 (= (csize!29294 (right!40848 t!4677)) (+ (size!36735 (left!40518 (right!40848 t!4677))) (size!36735 (right!40848 (right!40848 t!4677))))))))

(assert (=> d!1559269 (= (inv!71600 (right!40848 t!4677)) e!3037115)))

(declare-fun b!4858010 () Bool)

(declare-fun res!2073847 () Bool)

(assert (=> b!4858010 (=> (not res!2073847) (not e!3037115))))

(assert (=> b!4858010 (= res!2073847 (and (not (= (left!40518 (right!40848 t!4677)) Empty!14532)) (not (= (right!40848 (right!40848 t!4677)) Empty!14532))))))

(declare-fun b!4858011 () Bool)

(declare-fun res!2073848 () Bool)

(assert (=> b!4858011 (=> (not res!2073848) (not e!3037115))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4858011 (= res!2073848 (= (cheight!14743 (right!40848 t!4677)) (+ (max!0 (height!1911 (left!40518 (right!40848 t!4677))) (height!1911 (right!40848 (right!40848 t!4677)))) 1)))))

(declare-fun b!4858012 () Bool)

(assert (=> b!4858012 (= e!3037115 (<= 0 (cheight!14743 (right!40848 t!4677))))))

(assert (= (and d!1559269 res!2073846) b!4858010))

(assert (= (and b!4858010 res!2073847) b!4858011))

(assert (= (and b!4858011 res!2073848) b!4858012))

(declare-fun m!5855886 () Bool)

(assert (=> d!1559269 m!5855886))

(declare-fun m!5855888 () Bool)

(assert (=> d!1559269 m!5855888))

(declare-fun m!5855890 () Bool)

(assert (=> b!4858011 m!5855890))

(declare-fun m!5855892 () Bool)

(assert (=> b!4858011 m!5855892))

(assert (=> b!4858011 m!5855890))

(assert (=> b!4858011 m!5855892))

(declare-fun m!5855894 () Bool)

(assert (=> b!4858011 m!5855894))

(assert (=> b!4857857 d!1559269))

(declare-fun d!1559271 () Bool)

(assert (=> d!1559271 (= (height!1911 (left!40518 t!4677)) (ite ((_ is Empty!14532) (left!40518 t!4677)) 0 (ite ((_ is Leaf!24213) (left!40518 t!4677)) 1 (cheight!14743 (left!40518 t!4677)))))))

(assert (=> b!4857825 d!1559271))

(declare-fun d!1559273 () Bool)

(assert (=> d!1559273 (= (height!1911 (right!40848 t!4677)) (ite ((_ is Empty!14532) (right!40848 t!4677)) 0 (ite ((_ is Leaf!24213) (right!40848 t!4677)) 1 (cheight!14743 (right!40848 t!4677)))))))

(assert (=> b!4857825 d!1559273))

(declare-fun b!4858013 () Bool)

(declare-fun e!3037117 () Int)

(declare-fun call!337766 () Int)

(assert (=> b!4858013 (= e!3037117 (+ 1 (IArrayPrimitiveSize!30 (xs!17838 (left!40518 (right!40848 t!4677)))) call!337766))))

(declare-fun b!4858014 () Bool)

(assert (=> b!4858014 (= e!3037117 0)))

(declare-fun b!4858015 () Bool)

(declare-fun e!3037116 () Int)

(assert (=> b!4858015 (= e!3037116 (+ 1 (ConcPrimitiveSize!32 (left!40518 (left!40518 (right!40848 t!4677)))) (ConcPrimitiveSize!32 (right!40848 (left!40518 (right!40848 t!4677)))) call!337766 (BigIntAbs!0 (cheight!14743 (left!40518 (right!40848 t!4677))))))))

(declare-fun d!1559275 () Bool)

(declare-fun lt!1991710 () Int)

(assert (=> d!1559275 (>= lt!1991710 0)))

(assert (=> d!1559275 (= lt!1991710 e!3037116)))

(declare-fun c!826425 () Bool)

(assert (=> d!1559275 (= c!826425 ((_ is Node!14532) (left!40518 (right!40848 t!4677))))))

(assert (=> d!1559275 (= (ConcPrimitiveSize!32 (left!40518 (right!40848 t!4677))) lt!1991710)))

(declare-fun b!4858016 () Bool)

(assert (=> b!4858016 (= e!3037116 e!3037117)))

(declare-fun c!826426 () Bool)

(assert (=> b!4858016 (= c!826426 ((_ is Leaf!24213) (left!40518 (right!40848 t!4677))))))

(declare-fun bm!337761 () Bool)

(assert (=> bm!337761 (= call!337766 (BigIntAbs!0 (ite c!826425 (csize!29294 (left!40518 (right!40848 t!4677))) (csize!29295 (left!40518 (right!40848 t!4677))))))))

(assert (= (and d!1559275 c!826425) b!4858015))

(assert (= (and d!1559275 (not c!826425)) b!4858016))

(assert (= (and b!4858016 c!826426) b!4858013))

(assert (= (and b!4858016 (not c!826426)) b!4858014))

(assert (= (or b!4858015 b!4858013) bm!337761))

(declare-fun m!5855896 () Bool)

(assert (=> b!4858013 m!5855896))

(declare-fun m!5855898 () Bool)

(assert (=> b!4858015 m!5855898))

(declare-fun m!5855900 () Bool)

(assert (=> b!4858015 m!5855900))

(declare-fun m!5855902 () Bool)

(assert (=> b!4858015 m!5855902))

(declare-fun m!5855904 () Bool)

(assert (=> bm!337761 m!5855904))

(assert (=> b!4857882 d!1559275))

(declare-fun b!4858017 () Bool)

(declare-fun e!3037119 () Int)

(declare-fun call!337767 () Int)

(assert (=> b!4858017 (= e!3037119 (+ 1 (IArrayPrimitiveSize!30 (xs!17838 (right!40848 (right!40848 t!4677)))) call!337767))))

(declare-fun b!4858018 () Bool)

(assert (=> b!4858018 (= e!3037119 0)))

(declare-fun b!4858019 () Bool)

(declare-fun e!3037118 () Int)

(assert (=> b!4858019 (= e!3037118 (+ 1 (ConcPrimitiveSize!32 (left!40518 (right!40848 (right!40848 t!4677)))) (ConcPrimitiveSize!32 (right!40848 (right!40848 (right!40848 t!4677)))) call!337767 (BigIntAbs!0 (cheight!14743 (right!40848 (right!40848 t!4677))))))))

(declare-fun d!1559277 () Bool)

(declare-fun lt!1991711 () Int)

(assert (=> d!1559277 (>= lt!1991711 0)))

(assert (=> d!1559277 (= lt!1991711 e!3037118)))

(declare-fun c!826427 () Bool)

(assert (=> d!1559277 (= c!826427 ((_ is Node!14532) (right!40848 (right!40848 t!4677))))))

(assert (=> d!1559277 (= (ConcPrimitiveSize!32 (right!40848 (right!40848 t!4677))) lt!1991711)))

(declare-fun b!4858020 () Bool)

(assert (=> b!4858020 (= e!3037118 e!3037119)))

(declare-fun c!826428 () Bool)

(assert (=> b!4858020 (= c!826428 ((_ is Leaf!24213) (right!40848 (right!40848 t!4677))))))

(declare-fun bm!337762 () Bool)

(assert (=> bm!337762 (= call!337767 (BigIntAbs!0 (ite c!826427 (csize!29294 (right!40848 (right!40848 t!4677))) (csize!29295 (right!40848 (right!40848 t!4677))))))))

(assert (= (and d!1559277 c!826427) b!4858019))

(assert (= (and d!1559277 (not c!826427)) b!4858020))

(assert (= (and b!4858020 c!826428) b!4858017))

(assert (= (and b!4858020 (not c!826428)) b!4858018))

(assert (= (or b!4858019 b!4858017) bm!337762))

(declare-fun m!5855906 () Bool)

(assert (=> b!4858017 m!5855906))

(declare-fun m!5855908 () Bool)

(assert (=> b!4858019 m!5855908))

(declare-fun m!5855910 () Bool)

(assert (=> b!4858019 m!5855910))

(declare-fun m!5855912 () Bool)

(assert (=> b!4858019 m!5855912))

(declare-fun m!5855914 () Bool)

(assert (=> bm!337762 m!5855914))

(assert (=> b!4857882 d!1559277))

(declare-fun d!1559279 () Bool)

(assert (=> d!1559279 (= (BigIntAbs!0 (cheight!14743 (right!40848 t!4677))) (ite (>= (cheight!14743 (right!40848 t!4677)) 0) (cheight!14743 (right!40848 t!4677)) (- (cheight!14743 (right!40848 t!4677)))))))

(assert (=> b!4857882 d!1559279))

(declare-fun d!1559281 () Bool)

(declare-fun lt!1991712 () Bool)

(assert (=> d!1559281 (= lt!1991712 (isEmpty!29836 (list!17424 (right!40848 t!4677))))))

(assert (=> d!1559281 (= lt!1991712 (= (size!36735 (right!40848 t!4677)) 0))))

(assert (=> d!1559281 (= (isEmpty!29837 (right!40848 t!4677)) lt!1991712)))

(declare-fun bs!1173800 () Bool)

(assert (= bs!1173800 d!1559281))

(assert (=> bs!1173800 m!5855600))

(assert (=> bs!1173800 m!5855600))

(declare-fun m!5855916 () Bool)

(assert (=> bs!1173800 m!5855916))

(declare-fun m!5855918 () Bool)

(assert (=> bs!1173800 m!5855918))

(assert (=> b!4857826 d!1559281))

(assert (=> b!4857821 d!1559271))

(assert (=> b!4857821 d!1559273))

(declare-fun d!1559283 () Bool)

(assert (=> d!1559283 (= (inv!71597 (xs!17838 (right!40848 t!4677))) (<= (size!36732 (innerList!14620 (xs!17838 (right!40848 t!4677)))) 2147483647))))

(declare-fun bs!1173801 () Bool)

(assert (= bs!1173801 d!1559283))

(declare-fun m!5855920 () Bool)

(assert (=> bs!1173801 m!5855920))

(assert (=> b!4857973 d!1559283))

(declare-fun b!4858021 () Bool)

(declare-fun res!2073851 () Bool)

(declare-fun e!3037121 () Bool)

(assert (=> b!4858021 (=> (not res!2073851) (not e!3037121))))

(assert (=> b!4858021 (= res!2073851 (<= (- (height!1911 (left!40518 (right!40848 t!4677))) (height!1911 (right!40848 (right!40848 t!4677)))) 1))))

(declare-fun b!4858022 () Bool)

(declare-fun res!2073849 () Bool)

(assert (=> b!4858022 (=> (not res!2073849) (not e!3037121))))

(assert (=> b!4858022 (= res!2073849 (isBalanced!3938 (right!40848 (right!40848 t!4677))))))

(declare-fun b!4858023 () Bool)

(declare-fun res!2073854 () Bool)

(assert (=> b!4858023 (=> (not res!2073854) (not e!3037121))))

(assert (=> b!4858023 (= res!2073854 (isBalanced!3938 (left!40518 (right!40848 t!4677))))))

(declare-fun b!4858024 () Bool)

(declare-fun res!2073852 () Bool)

(assert (=> b!4858024 (=> (not res!2073852) (not e!3037121))))

(assert (=> b!4858024 (= res!2073852 (not (isEmpty!29837 (left!40518 (right!40848 t!4677)))))))

(declare-fun d!1559285 () Bool)

(declare-fun res!2073853 () Bool)

(declare-fun e!3037120 () Bool)

(assert (=> d!1559285 (=> res!2073853 e!3037120)))

(assert (=> d!1559285 (= res!2073853 (not ((_ is Node!14532) (right!40848 t!4677))))))

(assert (=> d!1559285 (= (isBalanced!3938 (right!40848 t!4677)) e!3037120)))

(declare-fun b!4858025 () Bool)

(assert (=> b!4858025 (= e!3037120 e!3037121)))

(declare-fun res!2073850 () Bool)

(assert (=> b!4858025 (=> (not res!2073850) (not e!3037121))))

(assert (=> b!4858025 (= res!2073850 (<= (- 1) (- (height!1911 (left!40518 (right!40848 t!4677))) (height!1911 (right!40848 (right!40848 t!4677))))))))

(declare-fun b!4858026 () Bool)

(assert (=> b!4858026 (= e!3037121 (not (isEmpty!29837 (right!40848 (right!40848 t!4677)))))))

(assert (= (and d!1559285 (not res!2073853)) b!4858025))

(assert (= (and b!4858025 res!2073850) b!4858021))

(assert (= (and b!4858021 res!2073851) b!4858023))

(assert (= (and b!4858023 res!2073854) b!4858022))

(assert (= (and b!4858022 res!2073849) b!4858024))

(assert (= (and b!4858024 res!2073852) b!4858026))

(assert (=> b!4858021 m!5855890))

(assert (=> b!4858021 m!5855892))

(declare-fun m!5855922 () Bool)

(assert (=> b!4858026 m!5855922))

(declare-fun m!5855924 () Bool)

(assert (=> b!4858024 m!5855924))

(declare-fun m!5855926 () Bool)

(assert (=> b!4858023 m!5855926))

(declare-fun m!5855928 () Bool)

(assert (=> b!4858022 m!5855928))

(assert (=> b!4858025 m!5855890))

(assert (=> b!4858025 m!5855892))

(assert (=> b!4857822 d!1559285))

(declare-fun d!1559287 () Bool)

(declare-fun res!2073855 () Bool)

(declare-fun e!3037122 () Bool)

(assert (=> d!1559287 (=> (not res!2073855) (not e!3037122))))

(assert (=> d!1559287 (= res!2073855 (<= (size!36732 (list!17425 (xs!17838 t!4677))) 512))))

(assert (=> d!1559287 (= (inv!71601 t!4677) e!3037122)))

(declare-fun b!4858027 () Bool)

(declare-fun res!2073856 () Bool)

(assert (=> b!4858027 (=> (not res!2073856) (not e!3037122))))

(assert (=> b!4858027 (= res!2073856 (= (csize!29295 t!4677) (size!36732 (list!17425 (xs!17838 t!4677)))))))

(declare-fun b!4858028 () Bool)

(assert (=> b!4858028 (= e!3037122 (and (> (csize!29295 t!4677) 0) (<= (csize!29295 t!4677) 512)))))

(assert (= (and d!1559287 res!2073855) b!4858027))

(assert (= (and b!4858027 res!2073856) b!4858028))

(declare-fun m!5855930 () Bool)

(assert (=> d!1559287 m!5855930))

(assert (=> d!1559287 m!5855930))

(declare-fun m!5855932 () Bool)

(assert (=> d!1559287 m!5855932))

(assert (=> b!4858027 m!5855930))

(assert (=> b!4858027 m!5855930))

(assert (=> b!4858027 m!5855932))

(assert (=> b!4857853 d!1559287))

(declare-fun b!4858029 () Bool)

(declare-fun res!2073859 () Bool)

(declare-fun e!3037124 () Bool)

(assert (=> b!4858029 (=> (not res!2073859) (not e!3037124))))

(assert (=> b!4858029 (= res!2073859 (<= (- (height!1911 (left!40518 (left!40518 t!4677))) (height!1911 (right!40848 (left!40518 t!4677)))) 1))))

(declare-fun b!4858030 () Bool)

(declare-fun res!2073857 () Bool)

(assert (=> b!4858030 (=> (not res!2073857) (not e!3037124))))

(assert (=> b!4858030 (= res!2073857 (isBalanced!3938 (right!40848 (left!40518 t!4677))))))

(declare-fun b!4858031 () Bool)

(declare-fun res!2073862 () Bool)

(assert (=> b!4858031 (=> (not res!2073862) (not e!3037124))))

(assert (=> b!4858031 (= res!2073862 (isBalanced!3938 (left!40518 (left!40518 t!4677))))))

(declare-fun b!4858032 () Bool)

(declare-fun res!2073860 () Bool)

(assert (=> b!4858032 (=> (not res!2073860) (not e!3037124))))

(assert (=> b!4858032 (= res!2073860 (not (isEmpty!29837 (left!40518 (left!40518 t!4677)))))))

(declare-fun d!1559289 () Bool)

(declare-fun res!2073861 () Bool)

(declare-fun e!3037123 () Bool)

(assert (=> d!1559289 (=> res!2073861 e!3037123)))

(assert (=> d!1559289 (= res!2073861 (not ((_ is Node!14532) (left!40518 t!4677))))))

(assert (=> d!1559289 (= (isBalanced!3938 (left!40518 t!4677)) e!3037123)))

(declare-fun b!4858033 () Bool)

(assert (=> b!4858033 (= e!3037123 e!3037124)))

(declare-fun res!2073858 () Bool)

(assert (=> b!4858033 (=> (not res!2073858) (not e!3037124))))

(assert (=> b!4858033 (= res!2073858 (<= (- 1) (- (height!1911 (left!40518 (left!40518 t!4677))) (height!1911 (right!40848 (left!40518 t!4677))))))))

(declare-fun b!4858034 () Bool)

(assert (=> b!4858034 (= e!3037124 (not (isEmpty!29837 (right!40848 (left!40518 t!4677)))))))

(assert (= (and d!1559289 (not res!2073861)) b!4858033))

(assert (= (and b!4858033 res!2073858) b!4858029))

(assert (= (and b!4858029 res!2073859) b!4858031))

(assert (= (and b!4858031 res!2073862) b!4858030))

(assert (= (and b!4858030 res!2073857) b!4858032))

(assert (= (and b!4858032 res!2073860) b!4858034))

(declare-fun m!5855934 () Bool)

(assert (=> b!4858029 m!5855934))

(declare-fun m!5855936 () Bool)

(assert (=> b!4858029 m!5855936))

(declare-fun m!5855938 () Bool)

(assert (=> b!4858034 m!5855938))

(declare-fun m!5855940 () Bool)

(assert (=> b!4858032 m!5855940))

(declare-fun m!5855942 () Bool)

(assert (=> b!4858031 m!5855942))

(declare-fun m!5855944 () Bool)

(assert (=> b!4858030 m!5855944))

(assert (=> b!4858033 m!5855934))

(assert (=> b!4858033 m!5855936))

(assert (=> b!4857823 d!1559289))

(assert (=> d!1559225 d!1559221))

(declare-fun d!1559291 () Bool)

(declare-fun e!3037131 () Bool)

(assert (=> d!1559291 e!3037131))

(declare-fun res!2073870 () Bool)

(assert (=> d!1559291 (=> res!2073870 e!3037131)))

(declare-fun e!3037133 () Bool)

(assert (=> d!1559291 (= res!2073870 e!3037133)))

(declare-fun res!2073871 () Bool)

(assert (=> d!1559291 (=> (not res!2073871) (not e!3037133))))

(assert (=> d!1559291 (= res!2073871 (isEmpty!29836 lt!1991662))))

(assert (=> d!1559291 true))

(declare-fun _$74!73 () Unit!145855)

(assert (=> d!1559291 (= (choose!35561 lt!1991660 lt!1991662) _$74!73)))

(declare-fun b!4858041 () Bool)

(assert (=> b!4858041 (= e!3037133 (= (last!402 (++!12137 lt!1991660 lt!1991662)) (last!402 lt!1991660)))))

(declare-fun b!4858042 () Bool)

(declare-fun e!3037132 () Bool)

(assert (=> b!4858042 (= e!3037131 e!3037132)))

(declare-fun res!2073869 () Bool)

(assert (=> b!4858042 (=> (not res!2073869) (not e!3037132))))

(assert (=> b!4858042 (= res!2073869 (not (isEmpty!29836 lt!1991662)))))

(declare-fun b!4858043 () Bool)

(assert (=> b!4858043 (= e!3037132 (= (last!402 (++!12137 lt!1991660 lt!1991662)) (last!402 lt!1991662)))))

(assert (= (and d!1559291 res!2073871) b!4858041))

(assert (= (and d!1559291 (not res!2073870)) b!4858042))

(assert (= (and b!4858042 res!2073869) b!4858043))

(assert (=> d!1559291 m!5855606))

(assert (=> b!4858041 m!5855612))

(assert (=> b!4858041 m!5855612))

(assert (=> b!4858041 m!5855614))

(assert (=> b!4858041 m!5855616))

(assert (=> b!4858042 m!5855606))

(assert (=> b!4858043 m!5855612))

(assert (=> b!4858043 m!5855612))

(assert (=> b!4858043 m!5855614))

(assert (=> b!4858043 m!5855618))

(assert (=> d!1559225 d!1559291))

(declare-fun d!1559295 () Bool)

(assert (=> d!1559295 (= (isEmpty!29836 (++!12137 lt!1991660 lt!1991662)) ((_ is Nil!55752) (++!12137 lt!1991660 lt!1991662)))))

(assert (=> d!1559225 d!1559295))

(assert (=> d!1559225 d!1559181))

(declare-fun d!1559297 () Bool)

(declare-fun lt!1991713 () T!98658)

(assert (=> d!1559297 (contains!19364 (t!363464 lt!1991660) lt!1991713)))

(declare-fun e!3037136 () T!98658)

(assert (=> d!1559297 (= lt!1991713 e!3037136)))

(declare-fun c!826429 () Bool)

(assert (=> d!1559297 (= c!826429 (and ((_ is Cons!55752) (t!363464 lt!1991660)) ((_ is Nil!55752) (t!363464 (t!363464 lt!1991660)))))))

(assert (=> d!1559297 (not (isEmpty!29836 (t!363464 lt!1991660)))))

(assert (=> d!1559297 (= (last!402 (t!363464 lt!1991660)) lt!1991713)))

(declare-fun b!4858050 () Bool)

(assert (=> b!4858050 (= e!3037136 (h!62200 (t!363464 lt!1991660)))))

(declare-fun b!4858051 () Bool)

(assert (=> b!4858051 (= e!3037136 (last!402 (t!363464 (t!363464 lt!1991660))))))

(assert (= (and d!1559297 c!826429) b!4858050))

(assert (= (and d!1559297 (not c!826429)) b!4858051))

(declare-fun m!5855946 () Bool)

(assert (=> d!1559297 m!5855946))

(declare-fun m!5855948 () Bool)

(assert (=> d!1559297 m!5855948))

(declare-fun m!5855950 () Bool)

(assert (=> b!4858051 m!5855950))

(assert (=> b!4857798 d!1559297))

(declare-fun d!1559299 () Bool)

(declare-fun lt!1991714 () Bool)

(assert (=> d!1559299 (= lt!1991714 (select (content!9936 (++!12137 lt!1991660 lt!1991662)) lt!1991666))))

(declare-fun e!3037138 () Bool)

(assert (=> d!1559299 (= lt!1991714 e!3037138)))

(declare-fun res!2073879 () Bool)

(assert (=> d!1559299 (=> (not res!2073879) (not e!3037138))))

(assert (=> d!1559299 (= res!2073879 ((_ is Cons!55752) (++!12137 lt!1991660 lt!1991662)))))

(assert (=> d!1559299 (= (contains!19364 (++!12137 lt!1991660 lt!1991662) lt!1991666) lt!1991714)))

(declare-fun b!4858052 () Bool)

(declare-fun e!3037137 () Bool)

(assert (=> b!4858052 (= e!3037138 e!3037137)))

(declare-fun res!2073878 () Bool)

(assert (=> b!4858052 (=> res!2073878 e!3037137)))

(assert (=> b!4858052 (= res!2073878 (= (h!62200 (++!12137 lt!1991660 lt!1991662)) lt!1991666))))

(declare-fun b!4858053 () Bool)

(assert (=> b!4858053 (= e!3037137 (contains!19364 (t!363464 (++!12137 lt!1991660 lt!1991662)) lt!1991666))))

(assert (= (and d!1559299 res!2073879) b!4858052))

(assert (= (and b!4858052 (not res!2073878)) b!4858053))

(assert (=> d!1559299 m!5855612))

(declare-fun m!5855952 () Bool)

(assert (=> d!1559299 m!5855952))

(declare-fun m!5855954 () Bool)

(assert (=> d!1559299 m!5855954))

(declare-fun m!5855956 () Bool)

(assert (=> b!4858053 m!5855956))

(assert (=> d!1559177 d!1559299))

(assert (=> d!1559177 d!1559295))

(declare-fun d!1559301 () Bool)

(declare-fun res!2073880 () Bool)

(declare-fun e!3037139 () Bool)

(assert (=> d!1559301 (=> (not res!2073880) (not e!3037139))))

(assert (=> d!1559301 (= res!2073880 (= (csize!29294 t!4677) (+ (size!36735 (left!40518 t!4677)) (size!36735 (right!40848 t!4677)))))))

(assert (=> d!1559301 (= (inv!71600 t!4677) e!3037139)))

(declare-fun b!4858054 () Bool)

(declare-fun res!2073881 () Bool)

(assert (=> b!4858054 (=> (not res!2073881) (not e!3037139))))

(assert (=> b!4858054 (= res!2073881 (and (not (= (left!40518 t!4677) Empty!14532)) (not (= (right!40848 t!4677) Empty!14532))))))

(declare-fun b!4858055 () Bool)

(declare-fun res!2073882 () Bool)

(assert (=> b!4858055 (=> (not res!2073882) (not e!3037139))))

(assert (=> b!4858055 (= res!2073882 (= (cheight!14743 t!4677) (+ (max!0 (height!1911 (left!40518 t!4677)) (height!1911 (right!40848 t!4677))) 1)))))

(declare-fun b!4858056 () Bool)

(assert (=> b!4858056 (= e!3037139 (<= 0 (cheight!14743 t!4677)))))

(assert (= (and d!1559301 res!2073880) b!4858054))

(assert (= (and b!4858054 res!2073881) b!4858055))

(assert (= (and b!4858055 res!2073882) b!4858056))

(assert (=> d!1559301 m!5855882))

(assert (=> d!1559301 m!5855918))

(assert (=> b!4858055 m!5855680))

(assert (=> b!4858055 m!5855682))

(assert (=> b!4858055 m!5855680))

(assert (=> b!4858055 m!5855682))

(declare-fun m!5855970 () Bool)

(assert (=> b!4858055 m!5855970))

(assert (=> b!4857851 d!1559301))

(declare-fun d!1559305 () Bool)

(declare-fun c!826430 () Bool)

(assert (=> d!1559305 (= c!826430 ((_ is Node!14532) (left!40518 (right!40848 t!4677))))))

(declare-fun e!3037140 () Bool)

(assert (=> d!1559305 (= (inv!71596 (left!40518 (right!40848 t!4677))) e!3037140)))

(declare-fun b!4858057 () Bool)

(assert (=> b!4858057 (= e!3037140 (inv!71600 (left!40518 (right!40848 t!4677))))))

(declare-fun b!4858058 () Bool)

(declare-fun e!3037141 () Bool)

(assert (=> b!4858058 (= e!3037140 e!3037141)))

(declare-fun res!2073883 () Bool)

(assert (=> b!4858058 (= res!2073883 (not ((_ is Leaf!24213) (left!40518 (right!40848 t!4677)))))))

(assert (=> b!4858058 (=> res!2073883 e!3037141)))

(declare-fun b!4858059 () Bool)

(assert (=> b!4858059 (= e!3037141 (inv!71601 (left!40518 (right!40848 t!4677))))))

(assert (= (and d!1559305 c!826430) b!4858057))

(assert (= (and d!1559305 (not c!826430)) b!4858058))

(assert (= (and b!4858058 (not res!2073883)) b!4858059))

(declare-fun m!5855972 () Bool)

(assert (=> b!4858057 m!5855972))

(declare-fun m!5855974 () Bool)

(assert (=> b!4858059 m!5855974))

(assert (=> b!4857972 d!1559305))

(declare-fun d!1559307 () Bool)

(declare-fun c!826431 () Bool)

(assert (=> d!1559307 (= c!826431 ((_ is Node!14532) (right!40848 (right!40848 t!4677))))))

(declare-fun e!3037142 () Bool)

(assert (=> d!1559307 (= (inv!71596 (right!40848 (right!40848 t!4677))) e!3037142)))

(declare-fun b!4858060 () Bool)

(assert (=> b!4858060 (= e!3037142 (inv!71600 (right!40848 (right!40848 t!4677))))))

(declare-fun b!4858061 () Bool)

(declare-fun e!3037143 () Bool)

(assert (=> b!4858061 (= e!3037142 e!3037143)))

(declare-fun res!2073884 () Bool)

(assert (=> b!4858061 (= res!2073884 (not ((_ is Leaf!24213) (right!40848 (right!40848 t!4677)))))))

(assert (=> b!4858061 (=> res!2073884 e!3037143)))

(declare-fun b!4858062 () Bool)

(assert (=> b!4858062 (= e!3037143 (inv!71601 (right!40848 (right!40848 t!4677))))))

(assert (= (and d!1559307 c!826431) b!4858060))

(assert (= (and d!1559307 (not c!826431)) b!4858061))

(assert (= (and b!4858061 (not res!2073884)) b!4858062))

(declare-fun m!5855976 () Bool)

(assert (=> b!4858060 m!5855976))

(declare-fun m!5855978 () Bool)

(assert (=> b!4858062 m!5855978))

(assert (=> b!4857972 d!1559307))

(declare-fun d!1559309 () Bool)

(declare-fun lt!1991718 () Int)

(assert (=> d!1559309 (>= lt!1991718 0)))

(declare-fun e!3037151 () Int)

(assert (=> d!1559309 (= lt!1991718 e!3037151)))

(declare-fun c!826437 () Bool)

(assert (=> d!1559309 (= c!826437 ((_ is Nil!55752) lt!1991669))))

(assert (=> d!1559309 (= (size!36732 lt!1991669) lt!1991718)))

(declare-fun b!4858075 () Bool)

(assert (=> b!4858075 (= e!3037151 0)))

(declare-fun b!4858076 () Bool)

(assert (=> b!4858076 (= e!3037151 (+ 1 (size!36732 (t!363464 lt!1991669))))))

(assert (= (and d!1559309 c!826437) b!4858075))

(assert (= (and d!1559309 (not c!826437)) b!4858076))

(declare-fun m!5855994 () Bool)

(assert (=> b!4858076 m!5855994))

(assert (=> b!4857786 d!1559309))

(declare-fun d!1559321 () Bool)

(declare-fun lt!1991719 () Int)

(assert (=> d!1559321 (>= lt!1991719 0)))

(declare-fun e!3037152 () Int)

(assert (=> d!1559321 (= lt!1991719 e!3037152)))

(declare-fun c!826438 () Bool)

(assert (=> d!1559321 (= c!826438 ((_ is Nil!55752) lt!1991660))))

(assert (=> d!1559321 (= (size!36732 lt!1991660) lt!1991719)))

(declare-fun b!4858077 () Bool)

(assert (=> b!4858077 (= e!3037152 0)))

(declare-fun b!4858078 () Bool)

(assert (=> b!4858078 (= e!3037152 (+ 1 (size!36732 (t!363464 lt!1991660))))))

(assert (= (and d!1559321 c!826438) b!4858077))

(assert (= (and d!1559321 (not c!826438)) b!4858078))

(declare-fun m!5855996 () Bool)

(assert (=> b!4858078 m!5855996))

(assert (=> b!4857786 d!1559321))

(declare-fun d!1559323 () Bool)

(declare-fun lt!1991720 () Int)

(assert (=> d!1559323 (>= lt!1991720 0)))

(declare-fun e!3037153 () Int)

(assert (=> d!1559323 (= lt!1991720 e!3037153)))

(declare-fun c!826439 () Bool)

(assert (=> d!1559323 (= c!826439 ((_ is Nil!55752) lt!1991662))))

(assert (=> d!1559323 (= (size!36732 lt!1991662) lt!1991720)))

(declare-fun b!4858079 () Bool)

(assert (=> b!4858079 (= e!3037153 0)))

(declare-fun b!4858080 () Bool)

(assert (=> b!4858080 (= e!3037153 (+ 1 (size!36732 (t!363464 lt!1991662))))))

(assert (= (and d!1559323 c!826439) b!4858079))

(assert (= (and d!1559323 (not c!826439)) b!4858080))

(declare-fun m!5855998 () Bool)

(assert (=> b!4858080 m!5855998))

(assert (=> b!4857786 d!1559323))

(declare-fun d!1559325 () Bool)

(declare-fun lt!1991721 () Bool)

(assert (=> d!1559325 (= lt!1991721 (select (content!9936 lt!1991660) lt!1991671))))

(declare-fun e!3037155 () Bool)

(assert (=> d!1559325 (= lt!1991721 e!3037155)))

(declare-fun res!2073888 () Bool)

(assert (=> d!1559325 (=> (not res!2073888) (not e!3037155))))

(assert (=> d!1559325 (= res!2073888 ((_ is Cons!55752) lt!1991660))))

(assert (=> d!1559325 (= (contains!19364 lt!1991660 lt!1991671) lt!1991721)))

(declare-fun b!4858081 () Bool)

(declare-fun e!3037154 () Bool)

(assert (=> b!4858081 (= e!3037155 e!3037154)))

(declare-fun res!2073887 () Bool)

(assert (=> b!4858081 (=> res!2073887 e!3037154)))

(assert (=> b!4858081 (= res!2073887 (= (h!62200 lt!1991660) lt!1991671))))

(declare-fun b!4858082 () Bool)

(assert (=> b!4858082 (= e!3037154 (contains!19364 (t!363464 lt!1991660) lt!1991671))))

(assert (= (and d!1559325 res!2073888) b!4858081))

(assert (= (and b!4858081 (not res!2073887)) b!4858082))

(assert (=> d!1559325 m!5855654))

(declare-fun m!5856000 () Bool)

(assert (=> d!1559325 m!5856000))

(declare-fun m!5856002 () Bool)

(assert (=> b!4858082 m!5856002))

(assert (=> d!1559191 d!1559325))

(declare-fun d!1559327 () Bool)

(assert (=> d!1559327 (= (isEmpty!29836 lt!1991660) ((_ is Nil!55752) lt!1991660))))

(assert (=> d!1559191 d!1559327))

(declare-fun d!1559329 () Bool)

(declare-fun res!2073889 () Bool)

(declare-fun e!3037156 () Bool)

(assert (=> d!1559329 (=> (not res!2073889) (not e!3037156))))

(assert (=> d!1559329 (= res!2073889 (<= (size!36732 (list!17425 (xs!17838 (left!40518 t!4677)))) 512))))

(assert (=> d!1559329 (= (inv!71601 (left!40518 t!4677)) e!3037156)))

(declare-fun b!4858083 () Bool)

(declare-fun res!2073890 () Bool)

(assert (=> b!4858083 (=> (not res!2073890) (not e!3037156))))

(assert (=> b!4858083 (= res!2073890 (= (csize!29295 (left!40518 t!4677)) (size!36732 (list!17425 (xs!17838 (left!40518 t!4677))))))))

(declare-fun b!4858084 () Bool)

(assert (=> b!4858084 (= e!3037156 (and (> (csize!29295 (left!40518 t!4677)) 0) (<= (csize!29295 (left!40518 t!4677)) 512)))))

(assert (= (and d!1559329 res!2073889) b!4858083))

(assert (= (and b!4858083 res!2073890) b!4858084))

(assert (=> d!1559329 m!5855814))

(assert (=> d!1559329 m!5855814))

(declare-fun m!5856004 () Bool)

(assert (=> d!1559329 m!5856004))

(assert (=> b!4858083 m!5855814))

(assert (=> b!4858083 m!5855814))

(assert (=> b!4858083 m!5856004))

(assert (=> b!4857856 d!1559329))

(declare-fun d!1559331 () Bool)

(declare-fun lt!1991722 () Int)

(assert (=> d!1559331 (>= lt!1991722 0)))

(declare-fun e!3037157 () Int)

(assert (=> d!1559331 (= lt!1991722 e!3037157)))

(declare-fun c!826440 () Bool)

(assert (=> d!1559331 (= c!826440 ((_ is Nil!55752) (innerList!14620 (xs!17838 t!4677))))))

(assert (=> d!1559331 (= (size!36732 (innerList!14620 (xs!17838 t!4677))) lt!1991722)))

(declare-fun b!4858085 () Bool)

(assert (=> b!4858085 (= e!3037157 0)))

(declare-fun b!4858086 () Bool)

(assert (=> b!4858086 (= e!3037157 (+ 1 (size!36732 (t!363464 (innerList!14620 (xs!17838 t!4677))))))))

(assert (= (and d!1559331 c!826440) b!4858085))

(assert (= (and d!1559331 (not c!826440)) b!4858086))

(declare-fun m!5856006 () Bool)

(assert (=> b!4858086 m!5856006))

(assert (=> d!1559187 d!1559331))

(declare-fun d!1559333 () Bool)

(assert (=> d!1559333 (= (list!17425 (xs!17838 (right!40848 t!4677))) (innerList!14620 (xs!17838 (right!40848 t!4677))))))

(assert (=> b!4857936 d!1559333))

(declare-fun d!1559335 () Bool)

(declare-fun c!826443 () Bool)

(assert (=> d!1559335 (= c!826443 ((_ is Nil!55752) lt!1991669))))

(declare-fun e!3037162 () (InoxSet T!98658))

(assert (=> d!1559335 (= (content!9936 lt!1991669) e!3037162)))

(declare-fun b!4858093 () Bool)

(assert (=> b!4858093 (= e!3037162 ((as const (Array T!98658 Bool)) false))))

(declare-fun b!4858094 () Bool)

(assert (=> b!4858094 (= e!3037162 ((_ map or) (store ((as const (Array T!98658 Bool)) false) (h!62200 lt!1991669) true) (content!9936 (t!363464 lt!1991669))))))

(assert (= (and d!1559335 c!826443) b!4858093))

(assert (= (and d!1559335 (not c!826443)) b!4858094))

(declare-fun m!5856008 () Bool)

(assert (=> b!4858094 m!5856008))

(declare-fun m!5856010 () Bool)

(assert (=> b!4858094 m!5856010))

(assert (=> d!1559181 d!1559335))

(declare-fun d!1559337 () Bool)

(declare-fun c!826444 () Bool)

(assert (=> d!1559337 (= c!826444 ((_ is Nil!55752) lt!1991660))))

(declare-fun e!3037163 () (InoxSet T!98658))

(assert (=> d!1559337 (= (content!9936 lt!1991660) e!3037163)))

(declare-fun b!4858099 () Bool)

(assert (=> b!4858099 (= e!3037163 ((as const (Array T!98658 Bool)) false))))

(declare-fun b!4858100 () Bool)

(assert (=> b!4858100 (= e!3037163 ((_ map or) (store ((as const (Array T!98658 Bool)) false) (h!62200 lt!1991660) true) (content!9936 (t!363464 lt!1991660))))))

(assert (= (and d!1559337 c!826444) b!4858099))

(assert (= (and d!1559337 (not c!826444)) b!4858100))

(declare-fun m!5856012 () Bool)

(assert (=> b!4858100 m!5856012))

(declare-fun m!5856014 () Bool)

(assert (=> b!4858100 m!5856014))

(assert (=> d!1559181 d!1559337))

(declare-fun d!1559339 () Bool)

(declare-fun c!826445 () Bool)

(assert (=> d!1559339 (= c!826445 ((_ is Nil!55752) lt!1991662))))

(declare-fun e!3037164 () (InoxSet T!98658))

(assert (=> d!1559339 (= (content!9936 lt!1991662) e!3037164)))

(declare-fun b!4858101 () Bool)

(assert (=> b!4858101 (= e!3037164 ((as const (Array T!98658 Bool)) false))))

(declare-fun b!4858102 () Bool)

(assert (=> b!4858102 (= e!3037164 ((_ map or) (store ((as const (Array T!98658 Bool)) false) (h!62200 lt!1991662) true) (content!9936 (t!363464 lt!1991662))))))

(assert (= (and d!1559339 c!826445) b!4858101))

(assert (= (and d!1559339 (not c!826445)) b!4858102))

(declare-fun m!5856016 () Bool)

(assert (=> b!4858102 m!5856016))

(declare-fun m!5856018 () Bool)

(assert (=> b!4858102 m!5856018))

(assert (=> d!1559181 d!1559339))

(declare-fun b!4858103 () Bool)

(declare-fun e!3037166 () List!55876)

(assert (=> b!4858103 (= e!3037166 lt!1991662)))

(declare-fun b!4858104 () Bool)

(assert (=> b!4858104 (= e!3037166 (Cons!55752 (h!62200 (t!363464 lt!1991660)) (++!12137 (t!363464 (t!363464 lt!1991660)) lt!1991662)))))

(declare-fun b!4858106 () Bool)

(declare-fun lt!1991723 () List!55876)

(declare-fun e!3037165 () Bool)

(assert (=> b!4858106 (= e!3037165 (or (not (= lt!1991662 Nil!55752)) (= lt!1991723 (t!363464 lt!1991660))))))

(declare-fun b!4858105 () Bool)

(declare-fun res!2073897 () Bool)

(assert (=> b!4858105 (=> (not res!2073897) (not e!3037165))))

(assert (=> b!4858105 (= res!2073897 (= (size!36732 lt!1991723) (+ (size!36732 (t!363464 lt!1991660)) (size!36732 lt!1991662))))))

(declare-fun d!1559341 () Bool)

(assert (=> d!1559341 e!3037165))

(declare-fun res!2073898 () Bool)

(assert (=> d!1559341 (=> (not res!2073898) (not e!3037165))))

(assert (=> d!1559341 (= res!2073898 (= (content!9936 lt!1991723) ((_ map or) (content!9936 (t!363464 lt!1991660)) (content!9936 lt!1991662))))))

(assert (=> d!1559341 (= lt!1991723 e!3037166)))

(declare-fun c!826446 () Bool)

(assert (=> d!1559341 (= c!826446 ((_ is Nil!55752) (t!363464 lt!1991660)))))

(assert (=> d!1559341 (= (++!12137 (t!363464 lt!1991660) lt!1991662) lt!1991723)))

(assert (= (and d!1559341 c!826446) b!4858103))

(assert (= (and d!1559341 (not c!826446)) b!4858104))

(assert (= (and d!1559341 res!2073898) b!4858105))

(assert (= (and b!4858105 res!2073897) b!4858106))

(declare-fun m!5856020 () Bool)

(assert (=> b!4858104 m!5856020))

(declare-fun m!5856022 () Bool)

(assert (=> b!4858105 m!5856022))

(assert (=> b!4858105 m!5855996))

(assert (=> b!4858105 m!5855650))

(declare-fun m!5856024 () Bool)

(assert (=> d!1559341 m!5856024))

(assert (=> d!1559341 m!5856014))

(assert (=> d!1559341 m!5855656))

(assert (=> b!4857785 d!1559341))

(declare-fun b!4858107 () Bool)

(declare-fun e!3037168 () List!55876)

(assert (=> b!4858107 (= e!3037168 (list!17424 (right!40848 (right!40848 t!4677))))))

(declare-fun b!4858108 () Bool)

(assert (=> b!4858108 (= e!3037168 (Cons!55752 (h!62200 (list!17424 (left!40518 (right!40848 t!4677)))) (++!12137 (t!363464 (list!17424 (left!40518 (right!40848 t!4677)))) (list!17424 (right!40848 (right!40848 t!4677))))))))

(declare-fun b!4858110 () Bool)

(declare-fun e!3037167 () Bool)

(declare-fun lt!1991724 () List!55876)

(assert (=> b!4858110 (= e!3037167 (or (not (= (list!17424 (right!40848 (right!40848 t!4677))) Nil!55752)) (= lt!1991724 (list!17424 (left!40518 (right!40848 t!4677))))))))

(declare-fun b!4858109 () Bool)

(declare-fun res!2073899 () Bool)

(assert (=> b!4858109 (=> (not res!2073899) (not e!3037167))))

(assert (=> b!4858109 (= res!2073899 (= (size!36732 lt!1991724) (+ (size!36732 (list!17424 (left!40518 (right!40848 t!4677)))) (size!36732 (list!17424 (right!40848 (right!40848 t!4677)))))))))

(declare-fun d!1559343 () Bool)

(assert (=> d!1559343 e!3037167))

(declare-fun res!2073900 () Bool)

(assert (=> d!1559343 (=> (not res!2073900) (not e!3037167))))

(assert (=> d!1559343 (= res!2073900 (= (content!9936 lt!1991724) ((_ map or) (content!9936 (list!17424 (left!40518 (right!40848 t!4677)))) (content!9936 (list!17424 (right!40848 (right!40848 t!4677)))))))))

(assert (=> d!1559343 (= lt!1991724 e!3037168)))

(declare-fun c!826447 () Bool)

(assert (=> d!1559343 (= c!826447 ((_ is Nil!55752) (list!17424 (left!40518 (right!40848 t!4677)))))))

(assert (=> d!1559343 (= (++!12137 (list!17424 (left!40518 (right!40848 t!4677))) (list!17424 (right!40848 (right!40848 t!4677)))) lt!1991724)))

(assert (= (and d!1559343 c!826447) b!4858107))

(assert (= (and d!1559343 (not c!826447)) b!4858108))

(assert (= (and d!1559343 res!2073900) b!4858109))

(assert (= (and b!4858109 res!2073899) b!4858110))

(assert (=> b!4858108 m!5855802))

(declare-fun m!5856026 () Bool)

(assert (=> b!4858108 m!5856026))

(declare-fun m!5856028 () Bool)

(assert (=> b!4858109 m!5856028))

(assert (=> b!4858109 m!5855800))

(declare-fun m!5856030 () Bool)

(assert (=> b!4858109 m!5856030))

(assert (=> b!4858109 m!5855802))

(declare-fun m!5856032 () Bool)

(assert (=> b!4858109 m!5856032))

(declare-fun m!5856034 () Bool)

(assert (=> d!1559343 m!5856034))

(assert (=> d!1559343 m!5855800))

(declare-fun m!5856036 () Bool)

(assert (=> d!1559343 m!5856036))

(assert (=> d!1559343 m!5855802))

(declare-fun m!5856038 () Bool)

(assert (=> d!1559343 m!5856038))

(assert (=> b!4857937 d!1559343))

(declare-fun b!4858114 () Bool)

(declare-fun e!3037170 () List!55876)

(assert (=> b!4858114 (= e!3037170 (++!12137 (list!17424 (left!40518 (left!40518 (right!40848 t!4677)))) (list!17424 (right!40848 (left!40518 (right!40848 t!4677))))))))

(declare-fun b!4858111 () Bool)

(declare-fun e!3037169 () List!55876)

(assert (=> b!4858111 (= e!3037169 Nil!55752)))

(declare-fun d!1559345 () Bool)

(declare-fun c!826448 () Bool)

(assert (=> d!1559345 (= c!826448 ((_ is Empty!14532) (left!40518 (right!40848 t!4677))))))

(assert (=> d!1559345 (= (list!17424 (left!40518 (right!40848 t!4677))) e!3037169)))

(declare-fun b!4858112 () Bool)

(assert (=> b!4858112 (= e!3037169 e!3037170)))

(declare-fun c!826449 () Bool)

(assert (=> b!4858112 (= c!826449 ((_ is Leaf!24213) (left!40518 (right!40848 t!4677))))))

(declare-fun b!4858113 () Bool)

(assert (=> b!4858113 (= e!3037170 (list!17425 (xs!17838 (left!40518 (right!40848 t!4677)))))))

(assert (= (and d!1559345 c!826448) b!4858111))

(assert (= (and d!1559345 (not c!826448)) b!4858112))

(assert (= (and b!4858112 c!826449) b!4858113))

(assert (= (and b!4858112 (not c!826449)) b!4858114))

(declare-fun m!5856040 () Bool)

(assert (=> b!4858114 m!5856040))

(declare-fun m!5856042 () Bool)

(assert (=> b!4858114 m!5856042))

(assert (=> b!4858114 m!5856040))

(assert (=> b!4858114 m!5856042))

(declare-fun m!5856044 () Bool)

(assert (=> b!4858114 m!5856044))

(declare-fun m!5856046 () Bool)

(assert (=> b!4858113 m!5856046))

(assert (=> b!4857937 d!1559345))

(declare-fun b!4858121 () Bool)

(declare-fun e!3037173 () List!55876)

(assert (=> b!4858121 (= e!3037173 (++!12137 (list!17424 (left!40518 (right!40848 (right!40848 t!4677)))) (list!17424 (right!40848 (right!40848 (right!40848 t!4677))))))))

(declare-fun b!4858118 () Bool)

(declare-fun e!3037172 () List!55876)

(assert (=> b!4858118 (= e!3037172 Nil!55752)))

(declare-fun d!1559347 () Bool)

(declare-fun c!826450 () Bool)

(assert (=> d!1559347 (= c!826450 ((_ is Empty!14532) (right!40848 (right!40848 t!4677))))))

(assert (=> d!1559347 (= (list!17424 (right!40848 (right!40848 t!4677))) e!3037172)))

(declare-fun b!4858119 () Bool)

(assert (=> b!4858119 (= e!3037172 e!3037173)))

(declare-fun c!826451 () Bool)

(assert (=> b!4858119 (= c!826451 ((_ is Leaf!24213) (right!40848 (right!40848 t!4677))))))

(declare-fun b!4858120 () Bool)

(assert (=> b!4858120 (= e!3037173 (list!17425 (xs!17838 (right!40848 (right!40848 t!4677)))))))

(assert (= (and d!1559347 c!826450) b!4858118))

(assert (= (and d!1559347 (not c!826450)) b!4858119))

(assert (= (and b!4858119 c!826451) b!4858120))

(assert (= (and b!4858119 (not c!826451)) b!4858121))

(declare-fun m!5856048 () Bool)

(assert (=> b!4858121 m!5856048))

(declare-fun m!5856050 () Bool)

(assert (=> b!4858121 m!5856050))

(assert (=> b!4858121 m!5856048))

(assert (=> b!4858121 m!5856050))

(declare-fun m!5856054 () Bool)

(assert (=> b!4858121 m!5856054))

(declare-fun m!5856056 () Bool)

(assert (=> b!4858120 m!5856056))

(assert (=> b!4857937 d!1559347))

(declare-fun d!1559349 () Bool)

(assert (=> d!1559349 (= (isEmpty!29836 (list!17424 t!4677)) ((_ is Nil!55752) (list!17424 t!4677)))))

(assert (=> d!1559239 d!1559349))

(declare-fun b!4858125 () Bool)

(declare-fun e!3037175 () List!55876)

(assert (=> b!4858125 (= e!3037175 (++!12137 (list!17424 (left!40518 t!4677)) (list!17424 (right!40848 t!4677))))))

(declare-fun b!4858122 () Bool)

(declare-fun e!3037174 () List!55876)

(assert (=> b!4858122 (= e!3037174 Nil!55752)))

(declare-fun d!1559351 () Bool)

(declare-fun c!826452 () Bool)

(assert (=> d!1559351 (= c!826452 ((_ is Empty!14532) t!4677))))

(assert (=> d!1559351 (= (list!17424 t!4677) e!3037174)))

(declare-fun b!4858123 () Bool)

(assert (=> b!4858123 (= e!3037174 e!3037175)))

(declare-fun c!826453 () Bool)

(assert (=> b!4858123 (= c!826453 ((_ is Leaf!24213) t!4677))))

(declare-fun b!4858124 () Bool)

(assert (=> b!4858124 (= e!3037175 (list!17425 (xs!17838 t!4677)))))

(assert (= (and d!1559351 c!826452) b!4858122))

(assert (= (and d!1559351 (not c!826452)) b!4858123))

(assert (= (and b!4858123 c!826453) b!4858124))

(assert (= (and b!4858123 (not c!826453)) b!4858125))

(assert (=> b!4858125 m!5855608))

(assert (=> b!4858125 m!5855600))

(assert (=> b!4858125 m!5855608))

(assert (=> b!4858125 m!5855600))

(declare-fun m!5856064 () Bool)

(assert (=> b!4858125 m!5856064))

(assert (=> b!4858124 m!5855930))

(assert (=> d!1559239 d!1559351))

(declare-fun d!1559357 () Bool)

(declare-fun lt!1991729 () Int)

(assert (=> d!1559357 (= lt!1991729 (size!36732 (list!17424 t!4677)))))

(assert (=> d!1559357 (= lt!1991729 (ite ((_ is Empty!14532) t!4677) 0 (ite ((_ is Leaf!24213) t!4677) (csize!29295 t!4677) (csize!29294 t!4677))))))

(assert (=> d!1559357 (= (size!36735 t!4677) lt!1991729)))

(declare-fun bs!1173805 () Bool)

(assert (= bs!1173805 d!1559357))

(assert (=> bs!1173805 m!5855828))

(assert (=> bs!1173805 m!5855828))

(declare-fun m!5856086 () Bool)

(assert (=> bs!1173805 m!5856086))

(assert (=> d!1559239 d!1559357))

(declare-fun d!1559365 () Bool)

(declare-fun res!2073910 () Bool)

(declare-fun e!3037178 () Bool)

(assert (=> d!1559365 (=> (not res!2073910) (not e!3037178))))

(assert (=> d!1559365 (= res!2073910 (= (csize!29294 (left!40518 t!4677)) (+ (size!36735 (left!40518 (left!40518 t!4677))) (size!36735 (right!40848 (left!40518 t!4677))))))))

(assert (=> d!1559365 (= (inv!71600 (left!40518 t!4677)) e!3037178)))

(declare-fun b!4858132 () Bool)

(declare-fun res!2073911 () Bool)

(assert (=> b!4858132 (=> (not res!2073911) (not e!3037178))))

(assert (=> b!4858132 (= res!2073911 (and (not (= (left!40518 (left!40518 t!4677)) Empty!14532)) (not (= (right!40848 (left!40518 t!4677)) Empty!14532))))))

(declare-fun b!4858133 () Bool)

(declare-fun res!2073912 () Bool)

(assert (=> b!4858133 (=> (not res!2073912) (not e!3037178))))

(assert (=> b!4858133 (= res!2073912 (= (cheight!14743 (left!40518 t!4677)) (+ (max!0 (height!1911 (left!40518 (left!40518 t!4677))) (height!1911 (right!40848 (left!40518 t!4677)))) 1)))))

(declare-fun b!4858134 () Bool)

(assert (=> b!4858134 (= e!3037178 (<= 0 (cheight!14743 (left!40518 t!4677))))))

(assert (= (and d!1559365 res!2073910) b!4858132))

(assert (= (and b!4858132 res!2073911) b!4858133))

(assert (= (and b!4858133 res!2073912) b!4858134))

(declare-fun m!5856088 () Bool)

(assert (=> d!1559365 m!5856088))

(declare-fun m!5856090 () Bool)

(assert (=> d!1559365 m!5856090))

(assert (=> b!4858133 m!5855934))

(assert (=> b!4858133 m!5855936))

(assert (=> b!4858133 m!5855934))

(assert (=> b!4858133 m!5855936))

(declare-fun m!5856092 () Bool)

(assert (=> b!4858133 m!5856092))

(assert (=> b!4857854 d!1559365))

(assert (=> b!4857907 d!1559177))

(assert (=> b!4857907 d!1559181))

(assert (=> b!4857907 d!1559191))

(declare-fun b!4858135 () Bool)

(declare-fun e!3037180 () List!55876)

(assert (=> b!4858135 (= e!3037180 (list!17424 (right!40848 (left!40518 t!4677))))))

(declare-fun b!4858136 () Bool)

(assert (=> b!4858136 (= e!3037180 (Cons!55752 (h!62200 (list!17424 (left!40518 (left!40518 t!4677)))) (++!12137 (t!363464 (list!17424 (left!40518 (left!40518 t!4677)))) (list!17424 (right!40848 (left!40518 t!4677))))))))

(declare-fun b!4858138 () Bool)

(declare-fun e!3037179 () Bool)

(declare-fun lt!1991730 () List!55876)

(assert (=> b!4858138 (= e!3037179 (or (not (= (list!17424 (right!40848 (left!40518 t!4677))) Nil!55752)) (= lt!1991730 (list!17424 (left!40518 (left!40518 t!4677))))))))

(declare-fun b!4858137 () Bool)

(declare-fun res!2073913 () Bool)

(assert (=> b!4858137 (=> (not res!2073913) (not e!3037179))))

(assert (=> b!4858137 (= res!2073913 (= (size!36732 lt!1991730) (+ (size!36732 (list!17424 (left!40518 (left!40518 t!4677)))) (size!36732 (list!17424 (right!40848 (left!40518 t!4677)))))))))

(declare-fun d!1559367 () Bool)

(assert (=> d!1559367 e!3037179))

(declare-fun res!2073914 () Bool)

(assert (=> d!1559367 (=> (not res!2073914) (not e!3037179))))

(assert (=> d!1559367 (= res!2073914 (= (content!9936 lt!1991730) ((_ map or) (content!9936 (list!17424 (left!40518 (left!40518 t!4677)))) (content!9936 (list!17424 (right!40848 (left!40518 t!4677)))))))))

(assert (=> d!1559367 (= lt!1991730 e!3037180)))

(declare-fun c!826454 () Bool)

(assert (=> d!1559367 (= c!826454 ((_ is Nil!55752) (list!17424 (left!40518 (left!40518 t!4677)))))))

(assert (=> d!1559367 (= (++!12137 (list!17424 (left!40518 (left!40518 t!4677))) (list!17424 (right!40848 (left!40518 t!4677)))) lt!1991730)))

(assert (= (and d!1559367 c!826454) b!4858135))

(assert (= (and d!1559367 (not c!826454)) b!4858136))

(assert (= (and d!1559367 res!2073914) b!4858137))

(assert (= (and b!4858137 res!2073913) b!4858138))

(assert (=> b!4858136 m!5855810))

(declare-fun m!5856094 () Bool)

(assert (=> b!4858136 m!5856094))

(declare-fun m!5856096 () Bool)

(assert (=> b!4858137 m!5856096))

(assert (=> b!4858137 m!5855808))

(declare-fun m!5856098 () Bool)

(assert (=> b!4858137 m!5856098))

(assert (=> b!4858137 m!5855810))

(declare-fun m!5856100 () Bool)

(assert (=> b!4858137 m!5856100))

(declare-fun m!5856102 () Bool)

(assert (=> d!1559367 m!5856102))

(assert (=> d!1559367 m!5855808))

(declare-fun m!5856104 () Bool)

(assert (=> d!1559367 m!5856104))

(assert (=> d!1559367 m!5855810))

(declare-fun m!5856106 () Bool)

(assert (=> d!1559367 m!5856106))

(assert (=> b!4857945 d!1559367))

(declare-fun b!4858146 () Bool)

(declare-fun e!3037186 () List!55876)

(assert (=> b!4858146 (= e!3037186 (++!12137 (list!17424 (left!40518 (left!40518 (left!40518 t!4677)))) (list!17424 (right!40848 (left!40518 (left!40518 t!4677))))))))

(declare-fun b!4858143 () Bool)

(declare-fun e!3037185 () List!55876)

(assert (=> b!4858143 (= e!3037185 Nil!55752)))

(declare-fun d!1559369 () Bool)

(declare-fun c!826455 () Bool)

(assert (=> d!1559369 (= c!826455 ((_ is Empty!14532) (left!40518 (left!40518 t!4677))))))

(assert (=> d!1559369 (= (list!17424 (left!40518 (left!40518 t!4677))) e!3037185)))

(declare-fun b!4858144 () Bool)

(assert (=> b!4858144 (= e!3037185 e!3037186)))

(declare-fun c!826456 () Bool)

(assert (=> b!4858144 (= c!826456 ((_ is Leaf!24213) (left!40518 (left!40518 t!4677))))))

(declare-fun b!4858145 () Bool)

(assert (=> b!4858145 (= e!3037186 (list!17425 (xs!17838 (left!40518 (left!40518 t!4677)))))))

(assert (= (and d!1559369 c!826455) b!4858143))

(assert (= (and d!1559369 (not c!826455)) b!4858144))

(assert (= (and b!4858144 c!826456) b!4858145))

(assert (= (and b!4858144 (not c!826456)) b!4858146))

(declare-fun m!5856108 () Bool)

(assert (=> b!4858146 m!5856108))

(declare-fun m!5856110 () Bool)

(assert (=> b!4858146 m!5856110))

(assert (=> b!4858146 m!5856108))

(assert (=> b!4858146 m!5856110))

(declare-fun m!5856112 () Bool)

(assert (=> b!4858146 m!5856112))

(declare-fun m!5856114 () Bool)

(assert (=> b!4858145 m!5856114))

(assert (=> b!4857945 d!1559369))

(declare-fun b!4858152 () Bool)

(declare-fun e!3037190 () List!55876)

(assert (=> b!4858152 (= e!3037190 (++!12137 (list!17424 (left!40518 (right!40848 (left!40518 t!4677)))) (list!17424 (right!40848 (right!40848 (left!40518 t!4677))))))))

(declare-fun b!4858149 () Bool)

(declare-fun e!3037189 () List!55876)

(assert (=> b!4858149 (= e!3037189 Nil!55752)))

(declare-fun d!1559371 () Bool)

(declare-fun c!826457 () Bool)

(assert (=> d!1559371 (= c!826457 ((_ is Empty!14532) (right!40848 (left!40518 t!4677))))))

(assert (=> d!1559371 (= (list!17424 (right!40848 (left!40518 t!4677))) e!3037189)))

(declare-fun b!4858150 () Bool)

(assert (=> b!4858150 (= e!3037189 e!3037190)))

(declare-fun c!826458 () Bool)

(assert (=> b!4858150 (= c!826458 ((_ is Leaf!24213) (right!40848 (left!40518 t!4677))))))

(declare-fun b!4858151 () Bool)

(assert (=> b!4858151 (= e!3037190 (list!17425 (xs!17838 (right!40848 (left!40518 t!4677)))))))

(assert (= (and d!1559371 c!826457) b!4858149))

(assert (= (and d!1559371 (not c!826457)) b!4858150))

(assert (= (and b!4858150 c!826458) b!4858151))

(assert (= (and b!4858150 (not c!826458)) b!4858152))

(declare-fun m!5856116 () Bool)

(assert (=> b!4858152 m!5856116))

(declare-fun m!5856118 () Bool)

(assert (=> b!4858152 m!5856118))

(assert (=> b!4858152 m!5856116))

(assert (=> b!4858152 m!5856118))

(declare-fun m!5856120 () Bool)

(assert (=> b!4858152 m!5856120))

(declare-fun m!5856122 () Bool)

(assert (=> b!4858151 m!5856122))

(assert (=> b!4857945 d!1559371))

(declare-fun d!1559373 () Bool)

(declare-fun lt!1991731 () T!98658)

(assert (=> d!1559373 (contains!19364 (t!363464 lt!1991662) lt!1991731)))

(declare-fun e!3037191 () T!98658)

(assert (=> d!1559373 (= lt!1991731 e!3037191)))

(declare-fun c!826459 () Bool)

(assert (=> d!1559373 (= c!826459 (and ((_ is Cons!55752) (t!363464 lt!1991662)) ((_ is Nil!55752) (t!363464 (t!363464 lt!1991662)))))))

(assert (=> d!1559373 (not (isEmpty!29836 (t!363464 lt!1991662)))))

(assert (=> d!1559373 (= (last!402 (t!363464 lt!1991662)) lt!1991731)))

(declare-fun b!4858153 () Bool)

(assert (=> b!4858153 (= e!3037191 (h!62200 (t!363464 lt!1991662)))))

(declare-fun b!4858154 () Bool)

(assert (=> b!4858154 (= e!3037191 (last!402 (t!363464 (t!363464 lt!1991662))))))

(assert (= (and d!1559373 c!826459) b!4858153))

(assert (= (and d!1559373 (not c!826459)) b!4858154))

(declare-fun m!5856124 () Bool)

(assert (=> d!1559373 m!5856124))

(declare-fun m!5856126 () Bool)

(assert (=> d!1559373 m!5856126))

(declare-fun m!5856128 () Bool)

(assert (=> b!4858154 m!5856128))

(assert (=> b!4857793 d!1559373))

(assert (=> b!4857741 d!1559209))

(assert (=> b!4857741 d!1559211))

(assert (=> b!4857908 d!1559221))

(assert (=> b!4857909 d!1559177))

(assert (=> b!4857909 d!1559181))

(assert (=> b!4857909 d!1559185))

(declare-fun b!4858155 () Bool)

(declare-fun e!3037192 () Bool)

(declare-fun tp!1366644 () Bool)

(assert (=> b!4858155 (= e!3037192 (and tp_is_empty!35523 tp!1366644))))

(assert (=> b!4857974 (= tp!1366638 e!3037192)))

(assert (= (and b!4857974 ((_ is Cons!55752) (innerList!14620 (xs!17838 (right!40848 t!4677))))) b!4858155))

(declare-fun b!4858156 () Bool)

(declare-fun tp!1366647 () Bool)

(declare-fun tp!1366646 () Bool)

(declare-fun e!3037194 () Bool)

(assert (=> b!4858156 (= e!3037194 (and (inv!71596 (left!40518 (left!40518 (left!40518 t!4677)))) tp!1366646 (inv!71596 (right!40848 (left!40518 (left!40518 t!4677)))) tp!1366647))))

(declare-fun b!4858158 () Bool)

(declare-fun e!3037193 () Bool)

(declare-fun tp!1366645 () Bool)

(assert (=> b!4858158 (= e!3037193 tp!1366645)))

(declare-fun b!4858157 () Bool)

(assert (=> b!4858157 (= e!3037194 (and (inv!71597 (xs!17838 (left!40518 (left!40518 t!4677)))) e!3037193))))

(assert (=> b!4857969 (= tp!1366636 (and (inv!71596 (left!40518 (left!40518 t!4677))) e!3037194))))

(assert (= (and b!4857969 ((_ is Node!14532) (left!40518 (left!40518 t!4677)))) b!4858156))

(assert (= b!4858157 b!4858158))

(assert (= (and b!4857969 ((_ is Leaf!24213) (left!40518 (left!40518 t!4677)))) b!4858157))

(declare-fun m!5856130 () Bool)

(assert (=> b!4858156 m!5856130))

(declare-fun m!5856132 () Bool)

(assert (=> b!4858156 m!5856132))

(declare-fun m!5856134 () Bool)

(assert (=> b!4858157 m!5856134))

(assert (=> b!4857969 m!5855834))

(declare-fun tp!1366650 () Bool)

(declare-fun e!3037199 () Bool)

(declare-fun tp!1366649 () Bool)

(declare-fun b!4858159 () Bool)

(assert (=> b!4858159 (= e!3037199 (and (inv!71596 (left!40518 (right!40848 (left!40518 t!4677)))) tp!1366649 (inv!71596 (right!40848 (right!40848 (left!40518 t!4677)))) tp!1366650))))

(declare-fun b!4858162 () Bool)

(declare-fun e!3037196 () Bool)

(declare-fun tp!1366648 () Bool)

(assert (=> b!4858162 (= e!3037196 tp!1366648)))

(declare-fun b!4858160 () Bool)

(assert (=> b!4858160 (= e!3037199 (and (inv!71597 (xs!17838 (right!40848 (left!40518 t!4677)))) e!3037196))))

(assert (=> b!4857969 (= tp!1366637 (and (inv!71596 (right!40848 (left!40518 t!4677))) e!3037199))))

(assert (= (and b!4857969 ((_ is Node!14532) (right!40848 (left!40518 t!4677)))) b!4858159))

(assert (= b!4858160 b!4858162))

(assert (= (and b!4857969 ((_ is Leaf!24213) (right!40848 (left!40518 t!4677)))) b!4858160))

(declare-fun m!5856136 () Bool)

(assert (=> b!4858159 m!5856136))

(declare-fun m!5856138 () Bool)

(assert (=> b!4858159 m!5856138))

(declare-fun m!5856140 () Bool)

(assert (=> b!4858160 m!5856140))

(assert (=> b!4857969 m!5855836))

(declare-fun b!4858165 () Bool)

(declare-fun e!3037200 () Bool)

(declare-fun tp!1366651 () Bool)

(assert (=> b!4858165 (= e!3037200 (and tp_is_empty!35523 tp!1366651))))

(assert (=> b!4857979 (= tp!1366643 e!3037200)))

(assert (= (and b!4857979 ((_ is Cons!55752) (t!363464 (innerList!14620 (xs!17838 t!4677))))) b!4858165))

(declare-fun b!4858166 () Bool)

(declare-fun e!3037201 () Bool)

(declare-fun tp!1366652 () Bool)

(assert (=> b!4858166 (= e!3037201 (and tp_is_empty!35523 tp!1366652))))

(assert (=> b!4857971 (= tp!1366635 e!3037201)))

(assert (= (and b!4857971 ((_ is Cons!55752) (innerList!14620 (xs!17838 (left!40518 t!4677))))) b!4858166))

(declare-fun tp!1366655 () Bool)

(declare-fun b!4858167 () Bool)

(declare-fun tp!1366654 () Bool)

(declare-fun e!3037203 () Bool)

(assert (=> b!4858167 (= e!3037203 (and (inv!71596 (left!40518 (left!40518 (right!40848 t!4677)))) tp!1366654 (inv!71596 (right!40848 (left!40518 (right!40848 t!4677)))) tp!1366655))))

(declare-fun b!4858169 () Bool)

(declare-fun e!3037202 () Bool)

(declare-fun tp!1366653 () Bool)

(assert (=> b!4858169 (= e!3037202 tp!1366653)))

(declare-fun b!4858168 () Bool)

(assert (=> b!4858168 (= e!3037203 (and (inv!71597 (xs!17838 (left!40518 (right!40848 t!4677)))) e!3037202))))

(assert (=> b!4857972 (= tp!1366639 (and (inv!71596 (left!40518 (right!40848 t!4677))) e!3037203))))

(assert (= (and b!4857972 ((_ is Node!14532) (left!40518 (right!40848 t!4677)))) b!4858167))

(assert (= b!4858168 b!4858169))

(assert (= (and b!4857972 ((_ is Leaf!24213) (left!40518 (right!40848 t!4677)))) b!4858168))

(declare-fun m!5856142 () Bool)

(assert (=> b!4858167 m!5856142))

(declare-fun m!5856144 () Bool)

(assert (=> b!4858167 m!5856144))

(declare-fun m!5856146 () Bool)

(assert (=> b!4858168 m!5856146))

(assert (=> b!4857972 m!5855840))

(declare-fun tp!1366658 () Bool)

(declare-fun b!4858170 () Bool)

(declare-fun tp!1366657 () Bool)

(declare-fun e!3037205 () Bool)

(assert (=> b!4858170 (= e!3037205 (and (inv!71596 (left!40518 (right!40848 (right!40848 t!4677)))) tp!1366657 (inv!71596 (right!40848 (right!40848 (right!40848 t!4677)))) tp!1366658))))

(declare-fun b!4858172 () Bool)

(declare-fun e!3037204 () Bool)

(declare-fun tp!1366656 () Bool)

(assert (=> b!4858172 (= e!3037204 tp!1366656)))

(declare-fun b!4858171 () Bool)

(assert (=> b!4858171 (= e!3037205 (and (inv!71597 (xs!17838 (right!40848 (right!40848 t!4677)))) e!3037204))))

(assert (=> b!4857972 (= tp!1366640 (and (inv!71596 (right!40848 (right!40848 t!4677))) e!3037205))))

(assert (= (and b!4857972 ((_ is Node!14532) (right!40848 (right!40848 t!4677)))) b!4858170))

(assert (= b!4858171 b!4858172))

(assert (= (and b!4857972 ((_ is Leaf!24213) (right!40848 (right!40848 t!4677)))) b!4858171))

(declare-fun m!5856148 () Bool)

(assert (=> b!4858170 m!5856148))

(declare-fun m!5856150 () Bool)

(assert (=> b!4858170 m!5856150))

(declare-fun m!5856152 () Bool)

(assert (=> b!4858171 m!5856152))

(assert (=> b!4857972 m!5855842))

(check-sat (not b!4858151) (not b!4858033) (not b!4858031) (not b!4858024) (not d!1559269) (not b!4858019) (not d!1559267) (not d!1559251) (not d!1559329) (not b!4858029) (not b!4858057) (not b!4858113) (not b!4858034) (not b!4858094) (not b!4858154) (not b!4858078) (not b!4858121) (not b!4858042) (not b!4857969) (not b!4858157) (not b!4858032) (not b!4858062) (not b!4857997) (not d!1559263) (not d!1559281) (not b!4858083) (not d!1559259) (not b!4858145) (not b!4858026) (not b!4858025) (not d!1559301) (not b!4858165) (not d!1559373) (not b!4857990) (not b!4858003) (not b!4858015) (not b!4858082) (not d!1559245) (not b!4858100) (not b!4857972) (not b!4858021) (not d!1559265) (not d!1559365) (not b!4858022) (not b!4858172) (not b!4858013) (not d!1559287) (not b!4858124) (not d!1559283) (not d!1559291) (not b!4858171) (not b!4858109) (not d!1559261) (not b!4858156) (not b!4858011) (not b!4858055) (not b!4858133) (not b!4858027) (not b!4858104) (not b!4858168) (not b!4858162) (not b!4858030) (not b!4858105) (not b!4857980) (not b!4858108) (not bm!337761) (not d!1559357) (not bm!337760) (not b!4858169) (not d!1559299) (not d!1559325) (not b!4857995) (not b!4858166) (not b!4858167) (not b!4858146) (not b!4858080) (not b!4858041) (not b!4858086) (not b!4857988) (not d!1559297) (not b!4858158) (not b!4858137) tp_is_empty!35523 (not b!4858023) (not b!4857992) (not b!4858160) (not b!4858053) (not b!4858136) (not b!4858114) (not b!4857982) (not b!4858043) (not b!4858059) (not b!4858159) (not b!4858102) (not b!4858170) (not b!4858125) (not d!1559343) (not bm!337762) (not b!4857993) (not b!4858051) (not b!4858152) (not d!1559341) (not b!4858060) (not d!1559367) (not b!4858017) (not b!4858155) (not b!4858076) (not b!4858120))
(check-sat)
