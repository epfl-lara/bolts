; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396290 () Bool)

(assert start!396290)

(declare-fun b!4159595 () Bool)

(declare-fun e!2581531 () Bool)

(declare-datatypes ((B!2713 0))(
  ( (B!2714 (val!14648 Int)) )
))
(declare-datatypes ((List!45525 0))(
  ( (Nil!45401) (Cons!45401 (h!50821 B!2713) (t!343556 List!45525)) )
))
(declare-fun l!3122 () List!45525)

(declare-fun e2!48 () B!2713)

(declare-fun contains!9259 (List!45525 B!2713) Bool)

(declare-fun tail!6677 (List!45525) List!45525)

(assert (=> b!4159595 (= e!2581531 (not (contains!9259 (tail!6677 l!3122) e2!48)))))

(declare-fun b!4159596 () Bool)

(declare-fun res!1703839 () Bool)

(assert (=> b!4159596 (=> (not res!1703839) (not e!2581531))))

(assert (=> b!4159596 (= res!1703839 (contains!9259 l!3122 e2!48))))

(declare-fun b!4159597 () Bool)

(declare-fun res!1703837 () Bool)

(assert (=> b!4159597 (=> (not res!1703837) (not e!2581531))))

(declare-fun e1!48 () B!2713)

(declare-fun getIndex!878 (List!45525 B!2713) Int)

(assert (=> b!4159597 (= res!1703837 (< (getIndex!878 l!3122 e1!48) (getIndex!878 l!3122 e2!48)))))

(declare-fun res!1703836 () Bool)

(assert (=> start!396290 (=> (not res!1703836) (not e!2581531))))

(assert (=> start!396290 (= res!1703836 (contains!9259 l!3122 e1!48))))

(assert (=> start!396290 e!2581531))

(declare-fun e!2581532 () Bool)

(assert (=> start!396290 e!2581532))

(declare-fun tp_is_empty!21761 () Bool)

(assert (=> start!396290 tp_is_empty!21761))

(declare-fun b!4159598 () Bool)

(declare-fun tp!1269056 () Bool)

(assert (=> b!4159598 (= e!2581532 (and tp_is_empty!21761 tp!1269056))))

(declare-fun b!4159599 () Bool)

(declare-fun res!1703840 () Bool)

(assert (=> b!4159599 (=> (not res!1703840) (not e!2581531))))

(assert (=> b!4159599 (= res!1703840 (not (= e1!48 e2!48)))))

(declare-fun b!4159600 () Bool)

(declare-fun res!1703838 () Bool)

(assert (=> b!4159600 (=> (not res!1703838) (not e!2581531))))

(declare-fun head!8828 (List!45525) B!2713)

(assert (=> b!4159600 (= res!1703838 (= (head!8828 l!3122) e1!48))))

(assert (= (and start!396290 res!1703836) b!4159596))

(assert (= (and b!4159596 res!1703839) b!4159599))

(assert (= (and b!4159599 res!1703840) b!4159600))

(assert (= (and b!4159600 res!1703838) b!4159597))

(assert (= (and b!4159597 res!1703837) b!4159595))

(get-info :version)

(assert (= (and start!396290 ((_ is Cons!45401) l!3122)) b!4159598))

(declare-fun m!4753251 () Bool)

(assert (=> b!4159595 m!4753251))

(assert (=> b!4159595 m!4753251))

(declare-fun m!4753253 () Bool)

(assert (=> b!4159595 m!4753253))

(declare-fun m!4753255 () Bool)

(assert (=> b!4159596 m!4753255))

(declare-fun m!4753257 () Bool)

(assert (=> b!4159597 m!4753257))

(declare-fun m!4753259 () Bool)

(assert (=> b!4159597 m!4753259))

(declare-fun m!4753261 () Bool)

(assert (=> start!396290 m!4753261))

(declare-fun m!4753263 () Bool)

(assert (=> b!4159600 m!4753263))

(check-sat tp_is_empty!21761 (not b!4159597) (not b!4159598) (not b!4159595) (not b!4159596) (not start!396290) (not b!4159600))
(check-sat)
(get-model)

(declare-fun d!1229873 () Bool)

(declare-fun lt!1482725 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7043 (List!45525) (InoxSet B!2713))

(assert (=> d!1229873 (= lt!1482725 (select (content!7043 l!3122) e1!48))))

(declare-fun e!2581541 () Bool)

(assert (=> d!1229873 (= lt!1482725 e!2581541)))

(declare-fun res!1703850 () Bool)

(assert (=> d!1229873 (=> (not res!1703850) (not e!2581541))))

(assert (=> d!1229873 (= res!1703850 ((_ is Cons!45401) l!3122))))

(assert (=> d!1229873 (= (contains!9259 l!3122 e1!48) lt!1482725)))

(declare-fun b!4159609 () Bool)

(declare-fun e!2581542 () Bool)

(assert (=> b!4159609 (= e!2581541 e!2581542)))

(declare-fun res!1703849 () Bool)

(assert (=> b!4159609 (=> res!1703849 e!2581542)))

(assert (=> b!4159609 (= res!1703849 (= (h!50821 l!3122) e1!48))))

(declare-fun b!4159610 () Bool)

(assert (=> b!4159610 (= e!2581542 (contains!9259 (t!343556 l!3122) e1!48))))

(assert (= (and d!1229873 res!1703850) b!4159609))

(assert (= (and b!4159609 (not res!1703849)) b!4159610))

(declare-fun m!4753265 () Bool)

(assert (=> d!1229873 m!4753265))

(declare-fun m!4753267 () Bool)

(assert (=> d!1229873 m!4753267))

(declare-fun m!4753269 () Bool)

(assert (=> b!4159610 m!4753269))

(assert (=> start!396290 d!1229873))

(declare-fun d!1229877 () Bool)

(declare-fun lt!1482727 () Bool)

(assert (=> d!1229877 (= lt!1482727 (select (content!7043 (tail!6677 l!3122)) e2!48))))

(declare-fun e!2581545 () Bool)

(assert (=> d!1229877 (= lt!1482727 e!2581545)))

(declare-fun res!1703854 () Bool)

(assert (=> d!1229877 (=> (not res!1703854) (not e!2581545))))

(assert (=> d!1229877 (= res!1703854 ((_ is Cons!45401) (tail!6677 l!3122)))))

(assert (=> d!1229877 (= (contains!9259 (tail!6677 l!3122) e2!48) lt!1482727)))

(declare-fun b!4159613 () Bool)

(declare-fun e!2581546 () Bool)

(assert (=> b!4159613 (= e!2581545 e!2581546)))

(declare-fun res!1703853 () Bool)

(assert (=> b!4159613 (=> res!1703853 e!2581546)))

(assert (=> b!4159613 (= res!1703853 (= (h!50821 (tail!6677 l!3122)) e2!48))))

(declare-fun b!4159614 () Bool)

(assert (=> b!4159614 (= e!2581546 (contains!9259 (t!343556 (tail!6677 l!3122)) e2!48))))

(assert (= (and d!1229877 res!1703854) b!4159613))

(assert (= (and b!4159613 (not res!1703853)) b!4159614))

(assert (=> d!1229877 m!4753251))

(declare-fun m!4753273 () Bool)

(assert (=> d!1229877 m!4753273))

(declare-fun m!4753275 () Bool)

(assert (=> d!1229877 m!4753275))

(declare-fun m!4753279 () Bool)

(assert (=> b!4159614 m!4753279))

(assert (=> b!4159595 d!1229877))

(declare-fun d!1229879 () Bool)

(assert (=> d!1229879 (= (tail!6677 l!3122) (t!343556 l!3122))))

(assert (=> b!4159595 d!1229879))

(declare-fun d!1229883 () Bool)

(assert (=> d!1229883 (= (head!8828 l!3122) (h!50821 l!3122))))

(assert (=> b!4159600 d!1229883))

(declare-fun d!1229889 () Bool)

(declare-fun lt!1482729 () Bool)

(assert (=> d!1229889 (= lt!1482729 (select (content!7043 l!3122) e2!48))))

(declare-fun e!2581549 () Bool)

(assert (=> d!1229889 (= lt!1482729 e!2581549)))

(declare-fun res!1703858 () Bool)

(assert (=> d!1229889 (=> (not res!1703858) (not e!2581549))))

(assert (=> d!1229889 (= res!1703858 ((_ is Cons!45401) l!3122))))

(assert (=> d!1229889 (= (contains!9259 l!3122 e2!48) lt!1482729)))

(declare-fun b!4159617 () Bool)

(declare-fun e!2581550 () Bool)

(assert (=> b!4159617 (= e!2581549 e!2581550)))

(declare-fun res!1703857 () Bool)

(assert (=> b!4159617 (=> res!1703857 e!2581550)))

(assert (=> b!4159617 (= res!1703857 (= (h!50821 l!3122) e2!48))))

(declare-fun b!4159618 () Bool)

(assert (=> b!4159618 (= e!2581550 (contains!9259 (t!343556 l!3122) e2!48))))

(assert (= (and d!1229889 res!1703858) b!4159617))

(assert (= (and b!4159617 (not res!1703857)) b!4159618))

(assert (=> d!1229889 m!4753265))

(declare-fun m!4753287 () Bool)

(assert (=> d!1229889 m!4753287))

(declare-fun m!4753291 () Bool)

(assert (=> b!4159618 m!4753291))

(assert (=> b!4159596 d!1229889))

(declare-fun d!1229893 () Bool)

(declare-fun lt!1482735 () Int)

(assert (=> d!1229893 (>= lt!1482735 0)))

(declare-fun e!2581564 () Int)

(assert (=> d!1229893 (= lt!1482735 e!2581564)))

(declare-fun c!711872 () Bool)

(assert (=> d!1229893 (= c!711872 (and ((_ is Cons!45401) l!3122) (= (h!50821 l!3122) e1!48)))))

(assert (=> d!1229893 (contains!9259 l!3122 e1!48)))

(assert (=> d!1229893 (= (getIndex!878 l!3122 e1!48) lt!1482735)))

(declare-fun b!4159640 () Bool)

(declare-fun e!2581563 () Int)

(assert (=> b!4159640 (= e!2581563 (- 1))))

(declare-fun b!4159638 () Bool)

(assert (=> b!4159638 (= e!2581564 e!2581563)))

(declare-fun c!711873 () Bool)

(assert (=> b!4159638 (= c!711873 (and ((_ is Cons!45401) l!3122) (not (= (h!50821 l!3122) e1!48))))))

(declare-fun b!4159637 () Bool)

(assert (=> b!4159637 (= e!2581564 0)))

(declare-fun b!4159639 () Bool)

(assert (=> b!4159639 (= e!2581563 (+ 1 (getIndex!878 (t!343556 l!3122) e1!48)))))

(assert (= (and d!1229893 c!711872) b!4159637))

(assert (= (and d!1229893 (not c!711872)) b!4159638))

(assert (= (and b!4159638 c!711873) b!4159639))

(assert (= (and b!4159638 (not c!711873)) b!4159640))

(assert (=> d!1229893 m!4753261))

(declare-fun m!4753297 () Bool)

(assert (=> b!4159639 m!4753297))

(assert (=> b!4159597 d!1229893))

(declare-fun d!1229897 () Bool)

(declare-fun lt!1482737 () Int)

(assert (=> d!1229897 (>= lt!1482737 0)))

(declare-fun e!2581568 () Int)

(assert (=> d!1229897 (= lt!1482737 e!2581568)))

(declare-fun c!711876 () Bool)

(assert (=> d!1229897 (= c!711876 (and ((_ is Cons!45401) l!3122) (= (h!50821 l!3122) e2!48)))))

(assert (=> d!1229897 (contains!9259 l!3122 e2!48)))

(assert (=> d!1229897 (= (getIndex!878 l!3122 e2!48) lt!1482737)))

(declare-fun b!4159648 () Bool)

(declare-fun e!2581567 () Int)

(assert (=> b!4159648 (= e!2581567 (- 1))))

(declare-fun b!4159646 () Bool)

(assert (=> b!4159646 (= e!2581568 e!2581567)))

(declare-fun c!711877 () Bool)

(assert (=> b!4159646 (= c!711877 (and ((_ is Cons!45401) l!3122) (not (= (h!50821 l!3122) e2!48))))))

(declare-fun b!4159645 () Bool)

(assert (=> b!4159645 (= e!2581568 0)))

(declare-fun b!4159647 () Bool)

(assert (=> b!4159647 (= e!2581567 (+ 1 (getIndex!878 (t!343556 l!3122) e2!48)))))

(assert (= (and d!1229897 c!711876) b!4159645))

(assert (= (and d!1229897 (not c!711876)) b!4159646))

(assert (= (and b!4159646 c!711877) b!4159647))

(assert (= (and b!4159646 (not c!711877)) b!4159648))

(assert (=> d!1229897 m!4753255))

(declare-fun m!4753301 () Bool)

(assert (=> b!4159647 m!4753301))

(assert (=> b!4159597 d!1229897))

(declare-fun b!4159661 () Bool)

(declare-fun e!2581575 () Bool)

(declare-fun tp!1269061 () Bool)

(assert (=> b!4159661 (= e!2581575 (and tp_is_empty!21761 tp!1269061))))

(assert (=> b!4159598 (= tp!1269056 e!2581575)))

(assert (= (and b!4159598 ((_ is Cons!45401) (t!343556 l!3122))) b!4159661))

(check-sat (not d!1229877) (not b!4159618) (not d!1229893) (not b!4159614) (not b!4159661) tp_is_empty!21761 (not b!4159647) (not b!4159610) (not d!1229889) (not d!1229897) (not d!1229873) (not b!4159639))
(check-sat)
