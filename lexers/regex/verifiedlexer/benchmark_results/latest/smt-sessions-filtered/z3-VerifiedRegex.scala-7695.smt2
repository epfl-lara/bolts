; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405050 () Bool)

(assert start!405050)

(declare-fun res!1741243 () Bool)

(declare-fun e!2628711 () Bool)

(assert (=> start!405050 (=> (not res!1741243) (not e!2628711))))

(declare-datatypes ((B!2733 0))(
  ( (B!2734 (val!15068 Int)) )
))
(declare-datatypes ((List!46865 0))(
  ( (Nil!46741) (Cons!46741 (h!52161 B!2733) (t!349568 List!46865)) )
))
(declare-fun l!3106 () List!46865)

(declare-fun e1!42 () B!2733)

(declare-fun contains!9685 (List!46865 B!2733) Bool)

(assert (=> start!405050 (= res!1741243 (contains!9685 l!3106 e1!42))))

(assert (=> start!405050 e!2628711))

(declare-fun e!2628710 () Bool)

(assert (=> start!405050 e!2628710))

(declare-fun tp_is_empty!22549 () Bool)

(assert (=> start!405050 tp_is_empty!22549))

(declare-fun b!4233664 () Bool)

(declare-fun e!2628712 () Bool)

(assert (=> b!4233664 (= e!2628711 e!2628712)))

(declare-fun res!1741244 () Bool)

(assert (=> b!4233664 (=> (not res!1741244) (not e!2628712))))

(declare-fun lt!1505336 () Int)

(declare-fun e2!42 () B!2733)

(declare-fun getIndex!884 (List!46865 B!2733) Int)

(assert (=> b!4233664 (= res!1741244 (= lt!1505336 (getIndex!884 l!3106 e2!42)))))

(assert (=> b!4233664 (= lt!1505336 (getIndex!884 l!3106 e1!42))))

(declare-fun b!4233665 () Bool)

(assert (=> b!4233665 (= e!2628712 (and (= lt!1505336 0) (= l!3106 Nil!46741)))))

(declare-fun b!4233663 () Bool)

(declare-fun res!1741242 () Bool)

(assert (=> b!4233663 (=> (not res!1741242) (not e!2628711))))

(assert (=> b!4233663 (= res!1741242 (contains!9685 l!3106 e2!42))))

(declare-fun b!4233666 () Bool)

(declare-fun tp!1296516 () Bool)

(assert (=> b!4233666 (= e!2628710 (and tp_is_empty!22549 tp!1296516))))

(assert (= (and start!405050 res!1741243) b!4233663))

(assert (= (and b!4233663 res!1741242) b!4233664))

(assert (= (and b!4233664 res!1741244) b!4233665))

(get-info :version)

(assert (= (and start!405050 ((_ is Cons!46741) l!3106)) b!4233666))

(declare-fun m!4820067 () Bool)

(assert (=> start!405050 m!4820067))

(declare-fun m!4820069 () Bool)

(assert (=> b!4233664 m!4820069))

(declare-fun m!4820071 () Bool)

(assert (=> b!4233664 m!4820071))

(declare-fun m!4820073 () Bool)

(assert (=> b!4233663 m!4820073))

(check-sat (not start!405050) (not b!4233666) tp_is_empty!22549 (not b!4233663) (not b!4233664))
(check-sat)
(get-model)

(declare-fun d!1245810 () Bool)

(declare-fun lt!1505342 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7343 (List!46865) (InoxSet B!2733))

(assert (=> d!1245810 (= lt!1505342 (select (content!7343 l!3106) e1!42))))

(declare-fun e!2628723 () Bool)

(assert (=> d!1245810 (= lt!1505342 e!2628723)))

(declare-fun res!1741256 () Bool)

(assert (=> d!1245810 (=> (not res!1741256) (not e!2628723))))

(assert (=> d!1245810 (= res!1741256 ((_ is Cons!46741) l!3106))))

(assert (=> d!1245810 (= (contains!9685 l!3106 e1!42) lt!1505342)))

(declare-fun b!4233677 () Bool)

(declare-fun e!2628724 () Bool)

(assert (=> b!4233677 (= e!2628723 e!2628724)))

(declare-fun res!1741255 () Bool)

(assert (=> b!4233677 (=> res!1741255 e!2628724)))

(assert (=> b!4233677 (= res!1741255 (= (h!52161 l!3106) e1!42))))

(declare-fun b!4233678 () Bool)

(assert (=> b!4233678 (= e!2628724 (contains!9685 (t!349568 l!3106) e1!42))))

(assert (= (and d!1245810 res!1741256) b!4233677))

(assert (= (and b!4233677 (not res!1741255)) b!4233678))

(declare-fun m!4820081 () Bool)

(assert (=> d!1245810 m!4820081))

(declare-fun m!4820083 () Bool)

(assert (=> d!1245810 m!4820083))

(declare-fun m!4820085 () Bool)

(assert (=> b!4233678 m!4820085))

(assert (=> start!405050 d!1245810))

(declare-fun b!4233711 () Bool)

(declare-fun e!2628744 () Int)

(assert (=> b!4233711 (= e!2628744 (+ 1 (getIndex!884 (t!349568 l!3106) e2!42)))))

(declare-fun d!1245814 () Bool)

(declare-fun lt!1505350 () Int)

(assert (=> d!1245814 (>= lt!1505350 0)))

(declare-fun e!2628743 () Int)

(assert (=> d!1245814 (= lt!1505350 e!2628743)))

(declare-fun c!719655 () Bool)

(assert (=> d!1245814 (= c!719655 (and ((_ is Cons!46741) l!3106) (= (h!52161 l!3106) e2!42)))))

(assert (=> d!1245814 (contains!9685 l!3106 e2!42)))

(assert (=> d!1245814 (= (getIndex!884 l!3106 e2!42) lt!1505350)))

(declare-fun b!4233709 () Bool)

(assert (=> b!4233709 (= e!2628743 0)))

(declare-fun b!4233710 () Bool)

(assert (=> b!4233710 (= e!2628743 e!2628744)))

(declare-fun c!719654 () Bool)

(assert (=> b!4233710 (= c!719654 (and ((_ is Cons!46741) l!3106) (not (= (h!52161 l!3106) e2!42))))))

(declare-fun b!4233712 () Bool)

(assert (=> b!4233712 (= e!2628744 (- 1))))

(assert (= (and d!1245814 c!719655) b!4233709))

(assert (= (and d!1245814 (not c!719655)) b!4233710))

(assert (= (and b!4233710 c!719654) b!4233711))

(assert (= (and b!4233710 (not c!719654)) b!4233712))

(declare-fun m!4820095 () Bool)

(assert (=> b!4233711 m!4820095))

(assert (=> d!1245814 m!4820073))

(assert (=> b!4233664 d!1245814))

(declare-fun b!4233716 () Bool)

(declare-fun e!2628747 () Int)

(assert (=> b!4233716 (= e!2628747 (+ 1 (getIndex!884 (t!349568 l!3106) e1!42)))))

(declare-fun d!1245820 () Bool)

(declare-fun lt!1505351 () Int)

(assert (=> d!1245820 (>= lt!1505351 0)))

(declare-fun e!2628746 () Int)

(assert (=> d!1245820 (= lt!1505351 e!2628746)))

(declare-fun c!719657 () Bool)

(assert (=> d!1245820 (= c!719657 (and ((_ is Cons!46741) l!3106) (= (h!52161 l!3106) e1!42)))))

(assert (=> d!1245820 (contains!9685 l!3106 e1!42)))

(assert (=> d!1245820 (= (getIndex!884 l!3106 e1!42) lt!1505351)))

(declare-fun b!4233714 () Bool)

(assert (=> b!4233714 (= e!2628746 0)))

(declare-fun b!4233715 () Bool)

(assert (=> b!4233715 (= e!2628746 e!2628747)))

(declare-fun c!719656 () Bool)

(assert (=> b!4233715 (= c!719656 (and ((_ is Cons!46741) l!3106) (not (= (h!52161 l!3106) e1!42))))))

(declare-fun b!4233717 () Bool)

(assert (=> b!4233717 (= e!2628747 (- 1))))

(assert (= (and d!1245820 c!719657) b!4233714))

(assert (= (and d!1245820 (not c!719657)) b!4233715))

(assert (= (and b!4233715 c!719656) b!4233716))

(assert (= (and b!4233715 (not c!719656)) b!4233717))

(declare-fun m!4820097 () Bool)

(assert (=> b!4233716 m!4820097))

(assert (=> d!1245820 m!4820067))

(assert (=> b!4233664 d!1245820))

(declare-fun d!1245822 () Bool)

(declare-fun lt!1505352 () Bool)

(assert (=> d!1245822 (= lt!1505352 (select (content!7343 l!3106) e2!42))))

(declare-fun e!2628748 () Bool)

(assert (=> d!1245822 (= lt!1505352 e!2628748)))

(declare-fun res!1741260 () Bool)

(assert (=> d!1245822 (=> (not res!1741260) (not e!2628748))))

(assert (=> d!1245822 (= res!1741260 ((_ is Cons!46741) l!3106))))

(assert (=> d!1245822 (= (contains!9685 l!3106 e2!42) lt!1505352)))

(declare-fun b!4233718 () Bool)

(declare-fun e!2628749 () Bool)

(assert (=> b!4233718 (= e!2628748 e!2628749)))

(declare-fun res!1741259 () Bool)

(assert (=> b!4233718 (=> res!1741259 e!2628749)))

(assert (=> b!4233718 (= res!1741259 (= (h!52161 l!3106) e2!42))))

(declare-fun b!4233719 () Bool)

(assert (=> b!4233719 (= e!2628749 (contains!9685 (t!349568 l!3106) e2!42))))

(assert (= (and d!1245822 res!1741260) b!4233718))

(assert (= (and b!4233718 (not res!1741259)) b!4233719))

(assert (=> d!1245822 m!4820081))

(declare-fun m!4820099 () Bool)

(assert (=> d!1245822 m!4820099))

(declare-fun m!4820101 () Bool)

(assert (=> b!4233719 m!4820101))

(assert (=> b!4233663 d!1245822))

(declare-fun b!4233724 () Bool)

(declare-fun e!2628752 () Bool)

(declare-fun tp!1296522 () Bool)

(assert (=> b!4233724 (= e!2628752 (and tp_is_empty!22549 tp!1296522))))

(assert (=> b!4233666 (= tp!1296516 e!2628752)))

(assert (= (and b!4233666 ((_ is Cons!46741) (t!349568 l!3106))) b!4233724))

(check-sat (not b!4233719) (not b!4233716) (not d!1245814) (not b!4233711) (not b!4233724) (not d!1245810) (not d!1245822) (not b!4233678) tp_is_empty!22549 (not d!1245820))
(check-sat)
