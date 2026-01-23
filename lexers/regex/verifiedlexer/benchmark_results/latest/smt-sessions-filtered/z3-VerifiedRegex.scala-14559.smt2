; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755288 () Bool)

(assert start!755288)

(declare-fun b!8023695 () Bool)

(declare-fun e!4726683 () Bool)

(declare-fun tp_is_empty!54141 () Bool)

(declare-fun tp!2401319 () Bool)

(assert (=> b!8023695 (= e!4726683 (and tp_is_empty!54141 tp!2401319))))

(declare-fun b!8023694 () Bool)

(declare-fun e!4726685 () Bool)

(declare-fun tp!2401318 () Bool)

(assert (=> b!8023694 (= e!4726685 (and tp_is_empty!54141 tp!2401318))))

(declare-fun res!3173033 () Bool)

(declare-fun e!4726684 () Bool)

(assert (=> start!755288 (=> (not res!3173033) (not e!4726684))))

(declare-datatypes ((B!4253 0))(
  ( (B!4254 (val!32516 Int)) )
))
(declare-datatypes ((List!75028 0))(
  ( (Nil!74904) (Cons!74904 (h!81352 B!4253) (t!390771 List!75028)) )
))
(declare-fun l!2932 () List!75028)

(declare-fun p!1838 () List!75028)

(declare-fun size!43681 (List!75028) Int)

(assert (=> start!755288 (= res!3173033 (>= (size!43681 l!2932) (size!43681 p!1838)))))

(assert (=> start!755288 e!4726684))

(assert (=> start!755288 e!4726685))

(assert (=> start!755288 e!4726683))

(declare-fun b!8023692 () Bool)

(declare-fun res!3173034 () Bool)

(assert (=> b!8023692 (=> (not res!3173034) (not e!4726684))))

(declare-fun isPrefix!6835 (List!75028 List!75028) Bool)

(assert (=> b!8023692 (= res!3173034 (isPrefix!6835 p!1838 l!2932))))

(declare-fun b!8023693 () Bool)

(get-info :version)

(assert (=> b!8023693 (= e!4726684 (and ((_ is Cons!74904) p!1838) (= l!2932 Nil!74904)))))

(assert (= (and start!755288 res!3173033) b!8023692))

(assert (= (and b!8023692 res!3173034) b!8023693))

(assert (= (and start!755288 ((_ is Cons!74904) l!2932)) b!8023694))

(assert (= (and start!755288 ((_ is Cons!74904) p!1838)) b!8023695))

(declare-fun m!8386308 () Bool)

(assert (=> start!755288 m!8386308))

(declare-fun m!8386310 () Bool)

(assert (=> start!755288 m!8386310))

(declare-fun m!8386312 () Bool)

(assert (=> b!8023692 m!8386312))

(check-sat (not start!755288) (not b!8023694) (not b!8023692) (not b!8023695) tp_is_empty!54141)
(check-sat)
(get-model)

(declare-fun b!8023715 () Bool)

(declare-fun e!4726698 () Bool)

(assert (=> b!8023715 (= e!4726698 (>= (size!43681 l!2932) (size!43681 p!1838)))))

(declare-fun d!2392508 () Bool)

(assert (=> d!2392508 e!4726698))

(declare-fun res!3173045 () Bool)

(assert (=> d!2392508 (=> res!3173045 e!4726698)))

(declare-fun lt!2720453 () Bool)

(assert (=> d!2392508 (= res!3173045 (not lt!2720453))))

(declare-fun e!4726696 () Bool)

(assert (=> d!2392508 (= lt!2720453 e!4726696)))

(declare-fun res!3173044 () Bool)

(assert (=> d!2392508 (=> res!3173044 e!4726696)))

(assert (=> d!2392508 (= res!3173044 ((_ is Nil!74904) p!1838))))

(assert (=> d!2392508 (= (isPrefix!6835 p!1838 l!2932) lt!2720453)))

(declare-fun b!8023714 () Bool)

(declare-fun e!4726697 () Bool)

(declare-fun tail!15970 (List!75028) List!75028)

(assert (=> b!8023714 (= e!4726697 (isPrefix!6835 (tail!15970 p!1838) (tail!15970 l!2932)))))

(declare-fun b!8023713 () Bool)

(declare-fun res!3173046 () Bool)

(assert (=> b!8023713 (=> (not res!3173046) (not e!4726697))))

(declare-fun head!16431 (List!75028) B!4253)

(assert (=> b!8023713 (= res!3173046 (= (head!16431 p!1838) (head!16431 l!2932)))))

(declare-fun b!8023712 () Bool)

(assert (=> b!8023712 (= e!4726696 e!4726697)))

(declare-fun res!3173043 () Bool)

(assert (=> b!8023712 (=> (not res!3173043) (not e!4726697))))

(assert (=> b!8023712 (= res!3173043 (not ((_ is Nil!74904) l!2932)))))

(assert (= (and d!2392508 (not res!3173044)) b!8023712))

(assert (= (and b!8023712 res!3173043) b!8023713))

(assert (= (and b!8023713 res!3173046) b!8023714))

(assert (= (and d!2392508 (not res!3173045)) b!8023715))

(assert (=> b!8023715 m!8386308))

(assert (=> b!8023715 m!8386310))

(declare-fun m!8386318 () Bool)

(assert (=> b!8023714 m!8386318))

(declare-fun m!8386320 () Bool)

(assert (=> b!8023714 m!8386320))

(assert (=> b!8023714 m!8386318))

(assert (=> b!8023714 m!8386320))

(declare-fun m!8386322 () Bool)

(assert (=> b!8023714 m!8386322))

(declare-fun m!8386324 () Bool)

(assert (=> b!8023713 m!8386324))

(declare-fun m!8386326 () Bool)

(assert (=> b!8023713 m!8386326))

(assert (=> b!8023692 d!2392508))

(declare-fun d!2392514 () Bool)

(declare-fun lt!2720459 () Int)

(assert (=> d!2392514 (>= lt!2720459 0)))

(declare-fun e!4726710 () Int)

(assert (=> d!2392514 (= lt!2720459 e!4726710)))

(declare-fun c!1472316 () Bool)

(assert (=> d!2392514 (= c!1472316 ((_ is Nil!74904) l!2932))))

(assert (=> d!2392514 (= (size!43681 l!2932) lt!2720459)))

(declare-fun b!8023732 () Bool)

(assert (=> b!8023732 (= e!4726710 0)))

(declare-fun b!8023733 () Bool)

(assert (=> b!8023733 (= e!4726710 (+ 1 (size!43681 (t!390771 l!2932))))))

(assert (= (and d!2392514 c!1472316) b!8023732))

(assert (= (and d!2392514 (not c!1472316)) b!8023733))

(declare-fun m!8386338 () Bool)

(assert (=> b!8023733 m!8386338))

(assert (=> start!755288 d!2392514))

(declare-fun d!2392516 () Bool)

(declare-fun lt!2720460 () Int)

(assert (=> d!2392516 (>= lt!2720460 0)))

(declare-fun e!4726713 () Int)

(assert (=> d!2392516 (= lt!2720460 e!4726713)))

(declare-fun c!1472317 () Bool)

(assert (=> d!2392516 (= c!1472317 ((_ is Nil!74904) p!1838))))

(assert (=> d!2392516 (= (size!43681 p!1838) lt!2720460)))

(declare-fun b!8023738 () Bool)

(assert (=> b!8023738 (= e!4726713 0)))

(declare-fun b!8023739 () Bool)

(assert (=> b!8023739 (= e!4726713 (+ 1 (size!43681 (t!390771 p!1838))))))

(assert (= (and d!2392516 c!1472317) b!8023738))

(assert (= (and d!2392516 (not c!1472317)) b!8023739))

(declare-fun m!8386340 () Bool)

(assert (=> b!8023739 m!8386340))

(assert (=> start!755288 d!2392516))

(declare-fun b!8023746 () Bool)

(declare-fun e!4726718 () Bool)

(declare-fun tp!2401326 () Bool)

(assert (=> b!8023746 (= e!4726718 (and tp_is_empty!54141 tp!2401326))))

(assert (=> b!8023694 (= tp!2401318 e!4726718)))

(assert (= (and b!8023694 ((_ is Cons!74904) (t!390771 l!2932))) b!8023746))

(declare-fun b!8023747 () Bool)

(declare-fun e!4726719 () Bool)

(declare-fun tp!2401327 () Bool)

(assert (=> b!8023747 (= e!4726719 (and tp_is_empty!54141 tp!2401327))))

(assert (=> b!8023695 (= tp!2401319 e!4726719)))

(assert (= (and b!8023695 ((_ is Cons!74904) (t!390771 p!1838))) b!8023747))

(check-sat tp_is_empty!54141 (not b!8023715) (not b!8023713) (not b!8023733) (not b!8023746) (not b!8023747) (not b!8023739) (not b!8023714))
(check-sat)
