; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396194 () Bool)

(assert start!396194)

(declare-fun b!4158980 () Bool)

(declare-fun res!1703549 () Bool)

(declare-fun e!2581162 () Bool)

(assert (=> b!4158980 (=> res!1703549 e!2581162)))

(declare-datatypes ((B!2685 0))(
  ( (B!2686 (val!14634 Int)) )
))
(declare-datatypes ((List!45511 0))(
  ( (Nil!45387) (Cons!45387 (h!50807 B!2685) (t!343542 List!45511)) )
))
(declare-fun l!3062 () List!45511)

(declare-fun e2!32 () B!2685)

(declare-fun contains!9245 (List!45511 B!2685) Bool)

(assert (=> b!4158980 (= res!1703549 (not (contains!9245 (t!343542 l!3062) e2!32)))))

(declare-fun b!4158981 () Bool)

(declare-fun e1!32 () B!2685)

(declare-fun getIndex!866 (List!45511 B!2685) Int)

(assert (=> b!4158981 (= e!2581162 (< (getIndex!866 (t!343542 l!3062) e1!32) (getIndex!866 (t!343542 l!3062) e2!32)))))

(declare-fun b!4158982 () Bool)

(declare-fun res!1703548 () Bool)

(declare-fun e!2581164 () Bool)

(assert (=> b!4158982 (=> (not res!1703548) (not e!2581164))))

(assert (=> b!4158982 (= res!1703548 (not (= e1!32 e2!32)))))

(declare-fun res!1703546 () Bool)

(assert (=> start!396194 (=> (not res!1703546) (not e!2581164))))

(assert (=> start!396194 (= res!1703546 (contains!9245 l!3062 e1!32))))

(assert (=> start!396194 e!2581164))

(declare-fun e!2581161 () Bool)

(assert (=> start!396194 e!2581161))

(declare-fun tp_is_empty!21733 () Bool)

(assert (=> start!396194 tp_is_empty!21733))

(declare-fun b!4158983 () Bool)

(declare-fun tp!1268984 () Bool)

(assert (=> b!4158983 (= e!2581161 (and tp_is_empty!21733 tp!1268984))))

(declare-fun b!4158984 () Bool)

(declare-fun e!2581163 () Bool)

(assert (=> b!4158984 (= e!2581163 (not e!2581162))))

(declare-fun res!1703550 () Bool)

(assert (=> b!4158984 (=> res!1703550 e!2581162)))

(assert (=> b!4158984 (= res!1703550 (not (contains!9245 (t!343542 l!3062) e1!32)))))

(declare-fun lt!1482486 () Int)

(declare-fun lt!1482485 () List!45511)

(assert (=> b!4158984 (= lt!1482486 (+ 1 (getIndex!866 lt!1482485 e2!32)))))

(declare-datatypes ((Unit!64559 0))(
  ( (Unit!64560) )
))
(declare-fun lt!1482487 () Unit!64559)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!18 (List!45511 B!2685) Unit!64559)

(assert (=> b!4158984 (= lt!1482487 (lemmaNotHeadSoGetIndexTailIsMinusOne!18 l!3062 e2!32))))

(declare-fun lt!1482484 () Int)

(assert (=> b!4158984 (= lt!1482484 (+ 1 (getIndex!866 lt!1482485 e1!32)))))

(declare-fun lt!1482488 () Unit!64559)

(assert (=> b!4158984 (= lt!1482488 (lemmaNotHeadSoGetIndexTailIsMinusOne!18 l!3062 e1!32))))

(assert (=> b!4158984 (contains!9245 lt!1482485 e1!32)))

(declare-fun tail!6671 (List!45511) List!45511)

(assert (=> b!4158984 (= lt!1482485 (tail!6671 l!3062))))

(declare-fun lt!1482483 () Unit!64559)

(declare-fun lemmaContainsAndNotHdThenTlContains!22 (List!45511 B!2685) Unit!64559)

(assert (=> b!4158984 (= lt!1482483 (lemmaContainsAndNotHdThenTlContains!22 l!3062 e1!32))))

(declare-fun b!4158985 () Bool)

(declare-fun res!1703547 () Bool)

(assert (=> b!4158985 (=> (not res!1703547) (not e!2581164))))

(assert (=> b!4158985 (= res!1703547 (contains!9245 l!3062 e2!32))))

(declare-fun b!4158986 () Bool)

(assert (=> b!4158986 (= e!2581164 e!2581163)))

(declare-fun res!1703545 () Bool)

(assert (=> b!4158986 (=> (not res!1703545) (not e!2581163))))

(get-info :version)

(assert (=> b!4158986 (= res!1703545 (and (< lt!1482484 lt!1482486) (or (not ((_ is Cons!45387) l!3062)) (not (= (h!50807 l!3062) e1!32))) ((_ is Cons!45387) l!3062) (not (= (h!50807 l!3062) e1!32))))))

(assert (=> b!4158986 (= lt!1482486 (getIndex!866 l!3062 e2!32))))

(assert (=> b!4158986 (= lt!1482484 (getIndex!866 l!3062 e1!32))))

(assert (= (and start!396194 res!1703546) b!4158985))

(assert (= (and b!4158985 res!1703547) b!4158982))

(assert (= (and b!4158982 res!1703548) b!4158986))

(assert (= (and b!4158986 res!1703545) b!4158984))

(assert (= (and b!4158984 (not res!1703550)) b!4158980))

(assert (= (and b!4158980 (not res!1703549)) b!4158981))

(assert (= (and start!396194 ((_ is Cons!45387) l!3062)) b!4158983))

(declare-fun m!4752759 () Bool)

(assert (=> b!4158986 m!4752759))

(declare-fun m!4752761 () Bool)

(assert (=> b!4158986 m!4752761))

(declare-fun m!4752763 () Bool)

(assert (=> start!396194 m!4752763))

(declare-fun m!4752765 () Bool)

(assert (=> b!4158980 m!4752765))

(declare-fun m!4752767 () Bool)

(assert (=> b!4158981 m!4752767))

(declare-fun m!4752769 () Bool)

(assert (=> b!4158981 m!4752769))

(declare-fun m!4752771 () Bool)

(assert (=> b!4158985 m!4752771))

(declare-fun m!4752773 () Bool)

(assert (=> b!4158984 m!4752773))

(declare-fun m!4752775 () Bool)

(assert (=> b!4158984 m!4752775))

(declare-fun m!4752777 () Bool)

(assert (=> b!4158984 m!4752777))

(declare-fun m!4752779 () Bool)

(assert (=> b!4158984 m!4752779))

(declare-fun m!4752781 () Bool)

(assert (=> b!4158984 m!4752781))

(declare-fun m!4752783 () Bool)

(assert (=> b!4158984 m!4752783))

(declare-fun m!4752785 () Bool)

(assert (=> b!4158984 m!4752785))

(declare-fun m!4752787 () Bool)

(assert (=> b!4158984 m!4752787))

(check-sat (not start!396194) (not b!4158983) (not b!4158984) (not b!4158981) (not b!4158986) (not b!4158985) (not b!4158980) tp_is_empty!21733)
(check-sat)
(get-model)

(declare-fun b!4158996 () Bool)

(declare-fun e!2581170 () Int)

(declare-fun e!2581171 () Int)

(assert (=> b!4158996 (= e!2581170 e!2581171)))

(declare-fun c!711753 () Bool)

(assert (=> b!4158996 (= c!711753 (and ((_ is Cons!45387) lt!1482485) (not (= (h!50807 lt!1482485) e1!32))))))

(declare-fun b!4158997 () Bool)

(assert (=> b!4158997 (= e!2581171 (+ 1 (getIndex!866 (t!343542 lt!1482485) e1!32)))))

(declare-fun b!4158995 () Bool)

(assert (=> b!4158995 (= e!2581170 0)))

(declare-fun b!4158998 () Bool)

(assert (=> b!4158998 (= e!2581171 (- 1))))

(declare-fun d!1229694 () Bool)

(declare-fun lt!1482491 () Int)

(assert (=> d!1229694 (>= lt!1482491 0)))

(assert (=> d!1229694 (= lt!1482491 e!2581170)))

(declare-fun c!711752 () Bool)

(assert (=> d!1229694 (= c!711752 (and ((_ is Cons!45387) lt!1482485) (= (h!50807 lt!1482485) e1!32)))))

(assert (=> d!1229694 (contains!9245 lt!1482485 e1!32)))

(assert (=> d!1229694 (= (getIndex!866 lt!1482485 e1!32) lt!1482491)))

(assert (= (and d!1229694 c!711752) b!4158995))

(assert (= (and d!1229694 (not c!711752)) b!4158996))

(assert (= (and b!4158996 c!711753) b!4158997))

(assert (= (and b!4158996 (not c!711753)) b!4158998))

(declare-fun m!4752789 () Bool)

(assert (=> b!4158997 m!4752789))

(assert (=> d!1229694 m!4752777))

(assert (=> b!4158984 d!1229694))

(declare-fun d!1229696 () Bool)

(assert (=> d!1229696 (contains!9245 (tail!6671 l!3062) e1!32)))

(declare-fun lt!1482494 () Unit!64559)

(declare-fun choose!25476 (List!45511 B!2685) Unit!64559)

(assert (=> d!1229696 (= lt!1482494 (choose!25476 l!3062 e1!32))))

(assert (=> d!1229696 (contains!9245 l!3062 e1!32)))

(assert (=> d!1229696 (= (lemmaContainsAndNotHdThenTlContains!22 l!3062 e1!32) lt!1482494)))

(declare-fun bs!595602 () Bool)

(assert (= bs!595602 d!1229696))

(assert (=> bs!595602 m!4752779))

(assert (=> bs!595602 m!4752779))

(declare-fun m!4752791 () Bool)

(assert (=> bs!595602 m!4752791))

(declare-fun m!4752793 () Bool)

(assert (=> bs!595602 m!4752793))

(assert (=> bs!595602 m!4752763))

(assert (=> b!4158984 d!1229696))

(declare-fun b!4159000 () Bool)

(declare-fun e!2581173 () Int)

(declare-fun e!2581174 () Int)

(assert (=> b!4159000 (= e!2581173 e!2581174)))

(declare-fun c!711755 () Bool)

(assert (=> b!4159000 (= c!711755 (and ((_ is Cons!45387) lt!1482485) (not (= (h!50807 lt!1482485) e2!32))))))

(declare-fun b!4159001 () Bool)

(assert (=> b!4159001 (= e!2581174 (+ 1 (getIndex!866 (t!343542 lt!1482485) e2!32)))))

(declare-fun b!4158999 () Bool)

(assert (=> b!4158999 (= e!2581173 0)))

(declare-fun b!4159002 () Bool)

(assert (=> b!4159002 (= e!2581174 (- 1))))

(declare-fun d!1229700 () Bool)

(declare-fun lt!1482495 () Int)

(assert (=> d!1229700 (>= lt!1482495 0)))

(assert (=> d!1229700 (= lt!1482495 e!2581173)))

(declare-fun c!711754 () Bool)

(assert (=> d!1229700 (= c!711754 (and ((_ is Cons!45387) lt!1482485) (= (h!50807 lt!1482485) e2!32)))))

(assert (=> d!1229700 (contains!9245 lt!1482485 e2!32)))

(assert (=> d!1229700 (= (getIndex!866 lt!1482485 e2!32) lt!1482495)))

(assert (= (and d!1229700 c!711754) b!4158999))

(assert (= (and d!1229700 (not c!711754)) b!4159000))

(assert (= (and b!4159000 c!711755) b!4159001))

(assert (= (and b!4159000 (not c!711755)) b!4159002))

(declare-fun m!4752795 () Bool)

(assert (=> b!4159001 m!4752795))

(declare-fun m!4752797 () Bool)

(assert (=> d!1229700 m!4752797))

(assert (=> b!4158984 d!1229700))

(declare-fun d!1229702 () Bool)

(declare-fun lt!1482501 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7034 (List!45511) (InoxSet B!2685))

(assert (=> d!1229702 (= lt!1482501 (select (content!7034 lt!1482485) e1!32))))

(declare-fun e!2581186 () Bool)

(assert (=> d!1229702 (= lt!1482501 e!2581186)))

(declare-fun res!1703562 () Bool)

(assert (=> d!1229702 (=> (not res!1703562) (not e!2581186))))

(assert (=> d!1229702 (= res!1703562 ((_ is Cons!45387) lt!1482485))))

(assert (=> d!1229702 (= (contains!9245 lt!1482485 e1!32) lt!1482501)))

(declare-fun b!4159013 () Bool)

(declare-fun e!2581185 () Bool)

(assert (=> b!4159013 (= e!2581186 e!2581185)))

(declare-fun res!1703561 () Bool)

(assert (=> b!4159013 (=> res!1703561 e!2581185)))

(assert (=> b!4159013 (= res!1703561 (= (h!50807 lt!1482485) e1!32))))

(declare-fun b!4159014 () Bool)

(assert (=> b!4159014 (= e!2581185 (contains!9245 (t!343542 lt!1482485) e1!32))))

(assert (= (and d!1229702 res!1703562) b!4159013))

(assert (= (and b!4159013 (not res!1703561)) b!4159014))

(declare-fun m!4752803 () Bool)

(assert (=> d!1229702 m!4752803))

(declare-fun m!4752805 () Bool)

(assert (=> d!1229702 m!4752805))

(declare-fun m!4752807 () Bool)

(assert (=> b!4159014 m!4752807))

(assert (=> b!4158984 d!1229702))

(declare-fun d!1229706 () Bool)

(assert (=> d!1229706 (= (getIndex!866 l!3062 e2!32) (+ (getIndex!866 (tail!6671 l!3062) e2!32) 1))))

(declare-fun lt!1482507 () Unit!64559)

(declare-fun choose!25477 (List!45511 B!2685) Unit!64559)

(assert (=> d!1229706 (= lt!1482507 (choose!25477 l!3062 e2!32))))

(assert (=> d!1229706 (contains!9245 l!3062 e2!32)))

(assert (=> d!1229706 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!18 l!3062 e2!32) lt!1482507)))

(declare-fun bs!595603 () Bool)

(assert (= bs!595603 d!1229706))

(assert (=> bs!595603 m!4752759))

(declare-fun m!4752809 () Bool)

(assert (=> bs!595603 m!4752809))

(assert (=> bs!595603 m!4752779))

(declare-fun m!4752811 () Bool)

(assert (=> bs!595603 m!4752811))

(assert (=> bs!595603 m!4752779))

(assert (=> bs!595603 m!4752771))

(assert (=> b!4158984 d!1229706))

(declare-fun d!1229708 () Bool)

(declare-fun lt!1482508 () Bool)

(assert (=> d!1229708 (= lt!1482508 (select (content!7034 (t!343542 l!3062)) e1!32))))

(declare-fun e!2581196 () Bool)

(assert (=> d!1229708 (= lt!1482508 e!2581196)))

(declare-fun res!1703564 () Bool)

(assert (=> d!1229708 (=> (not res!1703564) (not e!2581196))))

(assert (=> d!1229708 (= res!1703564 ((_ is Cons!45387) (t!343542 l!3062)))))

(assert (=> d!1229708 (= (contains!9245 (t!343542 l!3062) e1!32) lt!1482508)))

(declare-fun b!4159027 () Bool)

(declare-fun e!2581195 () Bool)

(assert (=> b!4159027 (= e!2581196 e!2581195)))

(declare-fun res!1703563 () Bool)

(assert (=> b!4159027 (=> res!1703563 e!2581195)))

(assert (=> b!4159027 (= res!1703563 (= (h!50807 (t!343542 l!3062)) e1!32))))

(declare-fun b!4159028 () Bool)

(assert (=> b!4159028 (= e!2581195 (contains!9245 (t!343542 (t!343542 l!3062)) e1!32))))

(assert (= (and d!1229708 res!1703564) b!4159027))

(assert (= (and b!4159027 (not res!1703563)) b!4159028))

(declare-fun m!4752817 () Bool)

(assert (=> d!1229708 m!4752817))

(declare-fun m!4752819 () Bool)

(assert (=> d!1229708 m!4752819))

(declare-fun m!4752821 () Bool)

(assert (=> b!4159028 m!4752821))

(assert (=> b!4158984 d!1229708))

(declare-fun d!1229712 () Bool)

(assert (=> d!1229712 (= (tail!6671 l!3062) (t!343542 l!3062))))

(assert (=> b!4158984 d!1229712))

(declare-fun d!1229714 () Bool)

(assert (=> d!1229714 (= (getIndex!866 l!3062 e1!32) (+ (getIndex!866 (tail!6671 l!3062) e1!32) 1))))

(declare-fun lt!1482509 () Unit!64559)

(assert (=> d!1229714 (= lt!1482509 (choose!25477 l!3062 e1!32))))

(assert (=> d!1229714 (contains!9245 l!3062 e1!32)))

(assert (=> d!1229714 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!18 l!3062 e1!32) lt!1482509)))

(declare-fun bs!595604 () Bool)

(assert (= bs!595604 d!1229714))

(assert (=> bs!595604 m!4752761))

(declare-fun m!4752823 () Bool)

(assert (=> bs!595604 m!4752823))

(assert (=> bs!595604 m!4752779))

(declare-fun m!4752825 () Bool)

(assert (=> bs!595604 m!4752825))

(assert (=> bs!595604 m!4752779))

(assert (=> bs!595604 m!4752763))

(assert (=> b!4158984 d!1229714))

(declare-fun b!4159030 () Bool)

(declare-fun e!2581197 () Int)

(declare-fun e!2581198 () Int)

(assert (=> b!4159030 (= e!2581197 e!2581198)))

(declare-fun c!711763 () Bool)

(assert (=> b!4159030 (= c!711763 (and ((_ is Cons!45387) (t!343542 l!3062)) (not (= (h!50807 (t!343542 l!3062)) e1!32))))))

(declare-fun b!4159031 () Bool)

(assert (=> b!4159031 (= e!2581198 (+ 1 (getIndex!866 (t!343542 (t!343542 l!3062)) e1!32)))))

(declare-fun b!4159029 () Bool)

(assert (=> b!4159029 (= e!2581197 0)))

(declare-fun b!4159032 () Bool)

(assert (=> b!4159032 (= e!2581198 (- 1))))

(declare-fun d!1229716 () Bool)

(declare-fun lt!1482510 () Int)

(assert (=> d!1229716 (>= lt!1482510 0)))

(assert (=> d!1229716 (= lt!1482510 e!2581197)))

(declare-fun c!711762 () Bool)

(assert (=> d!1229716 (= c!711762 (and ((_ is Cons!45387) (t!343542 l!3062)) (= (h!50807 (t!343542 l!3062)) e1!32)))))

(assert (=> d!1229716 (contains!9245 (t!343542 l!3062) e1!32)))

(assert (=> d!1229716 (= (getIndex!866 (t!343542 l!3062) e1!32) lt!1482510)))

(assert (= (and d!1229716 c!711762) b!4159029))

(assert (= (and d!1229716 (not c!711762)) b!4159030))

(assert (= (and b!4159030 c!711763) b!4159031))

(assert (= (and b!4159030 (not c!711763)) b!4159032))

(declare-fun m!4752827 () Bool)

(assert (=> b!4159031 m!4752827))

(assert (=> d!1229716 m!4752775))

(assert (=> b!4158981 d!1229716))

(declare-fun b!4159034 () Bool)

(declare-fun e!2581200 () Int)

(declare-fun e!2581201 () Int)

(assert (=> b!4159034 (= e!2581200 e!2581201)))

(declare-fun c!711765 () Bool)

(assert (=> b!4159034 (= c!711765 (and ((_ is Cons!45387) (t!343542 l!3062)) (not (= (h!50807 (t!343542 l!3062)) e2!32))))))

(declare-fun b!4159035 () Bool)

(assert (=> b!4159035 (= e!2581201 (+ 1 (getIndex!866 (t!343542 (t!343542 l!3062)) e2!32)))))

(declare-fun b!4159033 () Bool)

(assert (=> b!4159033 (= e!2581200 0)))

(declare-fun b!4159036 () Bool)

(assert (=> b!4159036 (= e!2581201 (- 1))))

(declare-fun d!1229718 () Bool)

(declare-fun lt!1482513 () Int)

(assert (=> d!1229718 (>= lt!1482513 0)))

(assert (=> d!1229718 (= lt!1482513 e!2581200)))

(declare-fun c!711764 () Bool)

(assert (=> d!1229718 (= c!711764 (and ((_ is Cons!45387) (t!343542 l!3062)) (= (h!50807 (t!343542 l!3062)) e2!32)))))

(assert (=> d!1229718 (contains!9245 (t!343542 l!3062) e2!32)))

(assert (=> d!1229718 (= (getIndex!866 (t!343542 l!3062) e2!32) lt!1482513)))

(assert (= (and d!1229718 c!711764) b!4159033))

(assert (= (and d!1229718 (not c!711764)) b!4159034))

(assert (= (and b!4159034 c!711765) b!4159035))

(assert (= (and b!4159034 (not c!711765)) b!4159036))

(declare-fun m!4752829 () Bool)

(assert (=> b!4159035 m!4752829))

(assert (=> d!1229718 m!4752765))

(assert (=> b!4158981 d!1229718))

(declare-fun d!1229720 () Bool)

(declare-fun lt!1482514 () Bool)

(assert (=> d!1229720 (= lt!1482514 (select (content!7034 l!3062) e1!32))))

(declare-fun e!2581203 () Bool)

(assert (=> d!1229720 (= lt!1482514 e!2581203)))

(declare-fun res!1703566 () Bool)

(assert (=> d!1229720 (=> (not res!1703566) (not e!2581203))))

(assert (=> d!1229720 (= res!1703566 ((_ is Cons!45387) l!3062))))

(assert (=> d!1229720 (= (contains!9245 l!3062 e1!32) lt!1482514)))

(declare-fun b!4159037 () Bool)

(declare-fun e!2581202 () Bool)

(assert (=> b!4159037 (= e!2581203 e!2581202)))

(declare-fun res!1703565 () Bool)

(assert (=> b!4159037 (=> res!1703565 e!2581202)))

(assert (=> b!4159037 (= res!1703565 (= (h!50807 l!3062) e1!32))))

(declare-fun b!4159038 () Bool)

(assert (=> b!4159038 (= e!2581202 (contains!9245 (t!343542 l!3062) e1!32))))

(assert (= (and d!1229720 res!1703566) b!4159037))

(assert (= (and b!4159037 (not res!1703565)) b!4159038))

(declare-fun m!4752831 () Bool)

(assert (=> d!1229720 m!4752831))

(declare-fun m!4752833 () Bool)

(assert (=> d!1229720 m!4752833))

(assert (=> b!4159038 m!4752775))

(assert (=> start!396194 d!1229720))

(declare-fun d!1229722 () Bool)

(declare-fun lt!1482516 () Bool)

(assert (=> d!1229722 (= lt!1482516 (select (content!7034 l!3062) e2!32))))

(declare-fun e!2581205 () Bool)

(assert (=> d!1229722 (= lt!1482516 e!2581205)))

(declare-fun res!1703568 () Bool)

(assert (=> d!1229722 (=> (not res!1703568) (not e!2581205))))

(assert (=> d!1229722 (= res!1703568 ((_ is Cons!45387) l!3062))))

(assert (=> d!1229722 (= (contains!9245 l!3062 e2!32) lt!1482516)))

(declare-fun b!4159039 () Bool)

(declare-fun e!2581204 () Bool)

(assert (=> b!4159039 (= e!2581205 e!2581204)))

(declare-fun res!1703567 () Bool)

(assert (=> b!4159039 (=> res!1703567 e!2581204)))

(assert (=> b!4159039 (= res!1703567 (= (h!50807 l!3062) e2!32))))

(declare-fun b!4159040 () Bool)

(assert (=> b!4159040 (= e!2581204 (contains!9245 (t!343542 l!3062) e2!32))))

(assert (= (and d!1229722 res!1703568) b!4159039))

(assert (= (and b!4159039 (not res!1703567)) b!4159040))

(assert (=> d!1229722 m!4752831))

(declare-fun m!4752839 () Bool)

(assert (=> d!1229722 m!4752839))

(assert (=> b!4159040 m!4752765))

(assert (=> b!4158985 d!1229722))

(declare-fun d!1229726 () Bool)

(declare-fun lt!1482518 () Bool)

(assert (=> d!1229726 (= lt!1482518 (select (content!7034 (t!343542 l!3062)) e2!32))))

(declare-fun e!2581209 () Bool)

(assert (=> d!1229726 (= lt!1482518 e!2581209)))

(declare-fun res!1703570 () Bool)

(assert (=> d!1229726 (=> (not res!1703570) (not e!2581209))))

(assert (=> d!1229726 (= res!1703570 ((_ is Cons!45387) (t!343542 l!3062)))))

(assert (=> d!1229726 (= (contains!9245 (t!343542 l!3062) e2!32) lt!1482518)))

(declare-fun b!4159045 () Bool)

(declare-fun e!2581208 () Bool)

(assert (=> b!4159045 (= e!2581209 e!2581208)))

(declare-fun res!1703569 () Bool)

(assert (=> b!4159045 (=> res!1703569 e!2581208)))

(assert (=> b!4159045 (= res!1703569 (= (h!50807 (t!343542 l!3062)) e2!32))))

(declare-fun b!4159046 () Bool)

(assert (=> b!4159046 (= e!2581208 (contains!9245 (t!343542 (t!343542 l!3062)) e2!32))))

(assert (= (and d!1229726 res!1703570) b!4159045))

(assert (= (and b!4159045 (not res!1703569)) b!4159046))

(assert (=> d!1229726 m!4752817))

(declare-fun m!4752843 () Bool)

(assert (=> d!1229726 m!4752843))

(declare-fun m!4752845 () Bool)

(assert (=> b!4159046 m!4752845))

(assert (=> b!4158980 d!1229726))

(declare-fun b!4159050 () Bool)

(declare-fun e!2581212 () Int)

(declare-fun e!2581213 () Int)

(assert (=> b!4159050 (= e!2581212 e!2581213)))

(declare-fun c!711769 () Bool)

(assert (=> b!4159050 (= c!711769 (and ((_ is Cons!45387) l!3062) (not (= (h!50807 l!3062) e2!32))))))

(declare-fun b!4159051 () Bool)

(assert (=> b!4159051 (= e!2581213 (+ 1 (getIndex!866 (t!343542 l!3062) e2!32)))))

(declare-fun b!4159049 () Bool)

(assert (=> b!4159049 (= e!2581212 0)))

(declare-fun b!4159052 () Bool)

(assert (=> b!4159052 (= e!2581213 (- 1))))

(declare-fun d!1229730 () Bool)

(declare-fun lt!1482520 () Int)

(assert (=> d!1229730 (>= lt!1482520 0)))

(assert (=> d!1229730 (= lt!1482520 e!2581212)))

(declare-fun c!711768 () Bool)

(assert (=> d!1229730 (= c!711768 (and ((_ is Cons!45387) l!3062) (= (h!50807 l!3062) e2!32)))))

(assert (=> d!1229730 (contains!9245 l!3062 e2!32)))

(assert (=> d!1229730 (= (getIndex!866 l!3062 e2!32) lt!1482520)))

(assert (= (and d!1229730 c!711768) b!4159049))

(assert (= (and d!1229730 (not c!711768)) b!4159050))

(assert (= (and b!4159050 c!711769) b!4159051))

(assert (= (and b!4159050 (not c!711769)) b!4159052))

(assert (=> b!4159051 m!4752769))

(assert (=> d!1229730 m!4752771))

(assert (=> b!4158986 d!1229730))

(declare-fun b!4159054 () Bool)

(declare-fun e!2581214 () Int)

(declare-fun e!2581215 () Int)

(assert (=> b!4159054 (= e!2581214 e!2581215)))

(declare-fun c!711771 () Bool)

(assert (=> b!4159054 (= c!711771 (and ((_ is Cons!45387) l!3062) (not (= (h!50807 l!3062) e1!32))))))

(declare-fun b!4159055 () Bool)

(assert (=> b!4159055 (= e!2581215 (+ 1 (getIndex!866 (t!343542 l!3062) e1!32)))))

(declare-fun b!4159053 () Bool)

(assert (=> b!4159053 (= e!2581214 0)))

(declare-fun b!4159056 () Bool)

(assert (=> b!4159056 (= e!2581215 (- 1))))

(declare-fun d!1229734 () Bool)

(declare-fun lt!1482521 () Int)

(assert (=> d!1229734 (>= lt!1482521 0)))

(assert (=> d!1229734 (= lt!1482521 e!2581214)))

(declare-fun c!711770 () Bool)

(assert (=> d!1229734 (= c!711770 (and ((_ is Cons!45387) l!3062) (= (h!50807 l!3062) e1!32)))))

(assert (=> d!1229734 (contains!9245 l!3062 e1!32)))

(assert (=> d!1229734 (= (getIndex!866 l!3062 e1!32) lt!1482521)))

(assert (= (and d!1229734 c!711770) b!4159053))

(assert (= (and d!1229734 (not c!711770)) b!4159054))

(assert (= (and b!4159054 c!711771) b!4159055))

(assert (= (and b!4159054 (not c!711771)) b!4159056))

(assert (=> b!4159055 m!4752767))

(assert (=> d!1229734 m!4752763))

(assert (=> b!4158986 d!1229734))

(declare-fun b!4159061 () Bool)

(declare-fun e!2581218 () Bool)

(declare-fun tp!1268987 () Bool)

(assert (=> b!4159061 (= e!2581218 (and tp_is_empty!21733 tp!1268987))))

(assert (=> b!4158983 (= tp!1268984 e!2581218)))

(assert (= (and b!4158983 ((_ is Cons!45387) (t!343542 l!3062))) b!4159061))

(check-sat (not d!1229716) (not d!1229694) (not d!1229722) (not b!4159035) (not d!1229700) (not b!4159031) (not d!1229714) (not b!4159028) (not b!4159001) (not d!1229702) (not b!4159055) (not b!4159040) (not b!4159061) (not d!1229696) (not b!4159051) (not b!4159046) (not d!1229718) (not b!4159014) (not d!1229734) (not d!1229708) tp_is_empty!21733 (not d!1229720) (not b!4158997) (not d!1229706) (not d!1229730) (not d!1229726) (not b!4159038))
(check-sat)
