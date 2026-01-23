; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405062 () Bool)

(assert start!405062)

(declare-fun b!4233755 () Bool)

(declare-fun e!2628768 () Bool)

(declare-fun tp_is_empty!22553 () Bool)

(declare-fun tp!1296528 () Bool)

(assert (=> b!4233755 (= e!2628768 (and tp_is_empty!22553 tp!1296528))))

(declare-fun b!4233756 () Bool)

(declare-fun res!1741289 () Bool)

(declare-fun e!2628769 () Bool)

(assert (=> b!4233756 (=> (not res!1741289) (not e!2628769))))

(declare-datatypes ((B!2737 0))(
  ( (B!2738 (val!15070 Int)) )
))
(declare-datatypes ((List!46867 0))(
  ( (Nil!46743) (Cons!46743 (h!52163 B!2737) (t!349570 List!46867)) )
))
(declare-fun l!3106 () List!46867)

(declare-fun e1!42 () B!2737)

(declare-fun head!8977 (List!46867) B!2737)

(assert (=> b!4233756 (= res!1741289 (= (head!8977 l!3106) e1!42))))

(declare-fun b!4233757 () Bool)

(declare-fun e!2628770 () Bool)

(assert (=> b!4233757 (= e!2628770 e!2628769)))

(declare-fun res!1741287 () Bool)

(assert (=> b!4233757 (=> (not res!1741287) (not e!2628769))))

(declare-fun lt!1505358 () Int)

(declare-fun e2!42 () B!2737)

(declare-fun getIndex!886 (List!46867 B!2737) Int)

(assert (=> b!4233757 (= res!1741287 (= lt!1505358 (getIndex!886 l!3106 e2!42)))))

(assert (=> b!4233757 (= lt!1505358 (getIndex!886 l!3106 e1!42))))

(declare-fun res!1741288 () Bool)

(assert (=> start!405062 (=> (not res!1741288) (not e!2628770))))

(declare-fun contains!9687 (List!46867 B!2737) Bool)

(assert (=> start!405062 (= res!1741288 (contains!9687 l!3106 e1!42))))

(assert (=> start!405062 e!2628770))

(assert (=> start!405062 e!2628768))

(assert (=> start!405062 tp_is_empty!22553))

(declare-fun b!4233758 () Bool)

(declare-fun res!1741290 () Bool)

(assert (=> b!4233758 (=> (not res!1741290) (not e!2628770))))

(assert (=> b!4233758 (= res!1741290 (contains!9687 l!3106 e2!42))))

(declare-fun b!4233759 () Bool)

(assert (=> b!4233759 (= e!2628769 (= l!3106 Nil!46743))))

(declare-fun b!4233760 () Bool)

(declare-fun res!1741286 () Bool)

(assert (=> b!4233760 (=> (not res!1741286) (not e!2628769))))

(assert (=> b!4233760 (= res!1741286 (= lt!1505358 0))))

(assert (= (and start!405062 res!1741288) b!4233758))

(assert (= (and b!4233758 res!1741290) b!4233757))

(assert (= (and b!4233757 res!1741287) b!4233760))

(assert (= (and b!4233760 res!1741286) b!4233756))

(assert (= (and b!4233756 res!1741289) b!4233759))

(get-info :version)

(assert (= (and start!405062 ((_ is Cons!46743) l!3106)) b!4233755))

(declare-fun m!4820113 () Bool)

(assert (=> b!4233756 m!4820113))

(declare-fun m!4820115 () Bool)

(assert (=> b!4233757 m!4820115))

(declare-fun m!4820117 () Bool)

(assert (=> b!4233757 m!4820117))

(declare-fun m!4820119 () Bool)

(assert (=> start!405062 m!4820119))

(declare-fun m!4820121 () Bool)

(assert (=> b!4233758 m!4820121))

(check-sat (not b!4233756) (not start!405062) (not b!4233758) (not b!4233757) (not b!4233755) tp_is_empty!22553)
(check-sat)
(get-model)

(declare-fun b!4233787 () Bool)

(declare-fun e!2628785 () Int)

(assert (=> b!4233787 (= e!2628785 (+ 1 (getIndex!886 (t!349570 l!3106) e2!42)))))

(declare-fun b!4233785 () Bool)

(declare-fun e!2628786 () Int)

(assert (=> b!4233785 (= e!2628786 0)))

(declare-fun b!4233786 () Bool)

(assert (=> b!4233786 (= e!2628786 e!2628785)))

(declare-fun c!719670 () Bool)

(assert (=> b!4233786 (= c!719670 (and ((_ is Cons!46743) l!3106) (not (= (h!52163 l!3106) e2!42))))))

(declare-fun d!1245827 () Bool)

(declare-fun lt!1505365 () Int)

(assert (=> d!1245827 (>= lt!1505365 0)))

(assert (=> d!1245827 (= lt!1505365 e!2628786)))

(declare-fun c!719671 () Bool)

(assert (=> d!1245827 (= c!719671 (and ((_ is Cons!46743) l!3106) (= (h!52163 l!3106) e2!42)))))

(assert (=> d!1245827 (contains!9687 l!3106 e2!42)))

(assert (=> d!1245827 (= (getIndex!886 l!3106 e2!42) lt!1505365)))

(declare-fun b!4233788 () Bool)

(assert (=> b!4233788 (= e!2628785 (- 1))))

(assert (= (and d!1245827 c!719671) b!4233785))

(assert (= (and d!1245827 (not c!719671)) b!4233786))

(assert (= (and b!4233786 c!719670) b!4233787))

(assert (= (and b!4233786 (not c!719670)) b!4233788))

(declare-fun m!4820127 () Bool)

(assert (=> b!4233787 m!4820127))

(assert (=> d!1245827 m!4820121))

(assert (=> b!4233757 d!1245827))

(declare-fun b!4233791 () Bool)

(declare-fun e!2628787 () Int)

(assert (=> b!4233791 (= e!2628787 (+ 1 (getIndex!886 (t!349570 l!3106) e1!42)))))

(declare-fun b!4233789 () Bool)

(declare-fun e!2628788 () Int)

(assert (=> b!4233789 (= e!2628788 0)))

(declare-fun b!4233790 () Bool)

(assert (=> b!4233790 (= e!2628788 e!2628787)))

(declare-fun c!719672 () Bool)

(assert (=> b!4233790 (= c!719672 (and ((_ is Cons!46743) l!3106) (not (= (h!52163 l!3106) e1!42))))))

(declare-fun d!1245835 () Bool)

(declare-fun lt!1505366 () Int)

(assert (=> d!1245835 (>= lt!1505366 0)))

(assert (=> d!1245835 (= lt!1505366 e!2628788)))

(declare-fun c!719673 () Bool)

(assert (=> d!1245835 (= c!719673 (and ((_ is Cons!46743) l!3106) (= (h!52163 l!3106) e1!42)))))

(assert (=> d!1245835 (contains!9687 l!3106 e1!42)))

(assert (=> d!1245835 (= (getIndex!886 l!3106 e1!42) lt!1505366)))

(declare-fun b!4233792 () Bool)

(assert (=> b!4233792 (= e!2628787 (- 1))))

(assert (= (and d!1245835 c!719673) b!4233789))

(assert (= (and d!1245835 (not c!719673)) b!4233790))

(assert (= (and b!4233790 c!719672) b!4233791))

(assert (= (and b!4233790 (not c!719672)) b!4233792))

(declare-fun m!4820129 () Bool)

(assert (=> b!4233791 m!4820129))

(assert (=> d!1245835 m!4820119))

(assert (=> b!4233757 d!1245835))

(declare-fun d!1245837 () Bool)

(declare-fun lt!1505373 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7345 (List!46867) (InoxSet B!2737))

(assert (=> d!1245837 (= lt!1505373 (select (content!7345 l!3106) e2!42))))

(declare-fun e!2628804 () Bool)

(assert (=> d!1245837 (= lt!1505373 e!2628804)))

(declare-fun res!1741304 () Bool)

(assert (=> d!1245837 (=> (not res!1741304) (not e!2628804))))

(assert (=> d!1245837 (= res!1741304 ((_ is Cons!46743) l!3106))))

(assert (=> d!1245837 (= (contains!9687 l!3106 e2!42) lt!1505373)))

(declare-fun b!4233810 () Bool)

(declare-fun e!2628805 () Bool)

(assert (=> b!4233810 (= e!2628804 e!2628805)))

(declare-fun res!1741303 () Bool)

(assert (=> b!4233810 (=> res!1741303 e!2628805)))

(assert (=> b!4233810 (= res!1741303 (= (h!52163 l!3106) e2!42))))

(declare-fun b!4233811 () Bool)

(assert (=> b!4233811 (= e!2628805 (contains!9687 (t!349570 l!3106) e2!42))))

(assert (= (and d!1245837 res!1741304) b!4233810))

(assert (= (and b!4233810 (not res!1741303)) b!4233811))

(declare-fun m!4820141 () Bool)

(assert (=> d!1245837 m!4820141))

(declare-fun m!4820143 () Bool)

(assert (=> d!1245837 m!4820143))

(declare-fun m!4820145 () Bool)

(assert (=> b!4233811 m!4820145))

(assert (=> b!4233758 d!1245837))

(declare-fun d!1245841 () Bool)

(declare-fun lt!1505374 () Bool)

(assert (=> d!1245841 (= lt!1505374 (select (content!7345 l!3106) e1!42))))

(declare-fun e!2628806 () Bool)

(assert (=> d!1245841 (= lt!1505374 e!2628806)))

(declare-fun res!1741306 () Bool)

(assert (=> d!1245841 (=> (not res!1741306) (not e!2628806))))

(assert (=> d!1245841 (= res!1741306 ((_ is Cons!46743) l!3106))))

(assert (=> d!1245841 (= (contains!9687 l!3106 e1!42) lt!1505374)))

(declare-fun b!4233812 () Bool)

(declare-fun e!2628807 () Bool)

(assert (=> b!4233812 (= e!2628806 e!2628807)))

(declare-fun res!1741305 () Bool)

(assert (=> b!4233812 (=> res!1741305 e!2628807)))

(assert (=> b!4233812 (= res!1741305 (= (h!52163 l!3106) e1!42))))

(declare-fun b!4233813 () Bool)

(assert (=> b!4233813 (= e!2628807 (contains!9687 (t!349570 l!3106) e1!42))))

(assert (= (and d!1245841 res!1741306) b!4233812))

(assert (= (and b!4233812 (not res!1741305)) b!4233813))

(assert (=> d!1245841 m!4820141))

(declare-fun m!4820147 () Bool)

(assert (=> d!1245841 m!4820147))

(declare-fun m!4820149 () Bool)

(assert (=> b!4233813 m!4820149))

(assert (=> start!405062 d!1245841))

(declare-fun d!1245843 () Bool)

(assert (=> d!1245843 (= (head!8977 l!3106) (h!52163 l!3106))))

(assert (=> b!4233756 d!1245843))

(declare-fun b!4233818 () Bool)

(declare-fun e!2628810 () Bool)

(declare-fun tp!1296534 () Bool)

(assert (=> b!4233818 (= e!2628810 (and tp_is_empty!22553 tp!1296534))))

(assert (=> b!4233755 (= tp!1296528 e!2628810)))

(assert (= (and b!4233755 ((_ is Cons!46743) (t!349570 l!3106))) b!4233818))

(check-sat tp_is_empty!22553 (not d!1245835) (not b!4233813) (not b!4233791) (not d!1245837) (not b!4233818) (not d!1245841) (not d!1245827) (not b!4233787) (not b!4233811))
(check-sat)
