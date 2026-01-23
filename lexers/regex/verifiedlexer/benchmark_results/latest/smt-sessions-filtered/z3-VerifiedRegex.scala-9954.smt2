; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521940 () Bool)

(assert start!521940)

(declare-fun b!4952750 () Bool)

(declare-fun res!2112947 () Bool)

(declare-fun e!3094407 () Bool)

(assert (=> b!4952750 (=> (not res!2112947) (not e!3094407))))

(declare-datatypes ((B!3029 0))(
  ( (B!3030 (val!22984 Int)) )
))
(declare-datatypes ((List!57172 0))(
  ( (Nil!57048) (Cons!57048 (h!63496 B!3029) (t!367738 List!57172)) )
))
(declare-fun l!2976 () List!57172)

(declare-fun i!792 () Int)

(get-info :version)

(assert (=> b!4952750 (= res!2112947 (and (not ((_ is Nil!57048) l!2976)) (= i!792 0)))))

(declare-fun res!2112946 () Bool)

(assert (=> start!521940 (=> (not res!2112946) (not e!3094407))))

(assert (=> start!521940 (= res!2112946 (>= i!792 0))))

(assert (=> start!521940 e!3094407))

(assert (=> start!521940 true))

(declare-fun e!3094406 () Bool)

(assert (=> start!521940 e!3094406))

(declare-fun b!4952751 () Bool)

(declare-fun head!10629 (List!57172) B!3029)

(declare-fun drop!2310 (List!57172 Int) List!57172)

(declare-fun apply!13868 (List!57172 Int) B!3029)

(assert (=> b!4952751 (= e!3094407 (not (= (head!10629 (drop!2310 l!2976 i!792)) (apply!13868 l!2976 i!792))))))

(declare-fun b!4952749 () Bool)

(declare-fun res!2112948 () Bool)

(assert (=> b!4952749 (=> (not res!2112948) (not e!3094407))))

(declare-fun size!37876 (List!57172) Int)

(assert (=> b!4952749 (= res!2112948 (< i!792 (size!37876 l!2976)))))

(declare-fun b!4952752 () Bool)

(declare-fun tp_is_empty!36247 () Bool)

(declare-fun tp!1388452 () Bool)

(assert (=> b!4952752 (= e!3094406 (and tp_is_empty!36247 tp!1388452))))

(assert (= (and start!521940 res!2112946) b!4952749))

(assert (= (and b!4952749 res!2112948) b!4952750))

(assert (= (and b!4952750 res!2112947) b!4952751))

(assert (= (and start!521940 ((_ is Cons!57048) l!2976)) b!4952752))

(declare-fun m!5977620 () Bool)

(assert (=> b!4952751 m!5977620))

(assert (=> b!4952751 m!5977620))

(declare-fun m!5977622 () Bool)

(assert (=> b!4952751 m!5977622))

(declare-fun m!5977624 () Bool)

(assert (=> b!4952751 m!5977624))

(declare-fun m!5977626 () Bool)

(assert (=> b!4952749 m!5977626))

(check-sat (not b!4952751) (not b!4952749) (not b!4952752) tp_is_empty!36247)
(check-sat)
(get-model)

(declare-fun d!1595041 () Bool)

(assert (=> d!1595041 (= (head!10629 (drop!2310 l!2976 i!792)) (h!63496 (drop!2310 l!2976 i!792)))))

(assert (=> b!4952751 d!1595041))

(declare-fun bm!345844 () Bool)

(declare-fun call!345849 () Int)

(assert (=> bm!345844 (= call!345849 (size!37876 l!2976))))

(declare-fun b!4952807 () Bool)

(declare-fun e!3094441 () List!57172)

(assert (=> b!4952807 (= e!3094441 (drop!2310 (t!367738 l!2976) (- i!792 1)))))

(declare-fun b!4952808 () Bool)

(assert (=> b!4952808 (= e!3094441 l!2976)))

(declare-fun b!4952809 () Bool)

(declare-fun e!3094439 () Int)

(assert (=> b!4952809 (= e!3094439 0)))

(declare-fun d!1595043 () Bool)

(declare-fun e!3094442 () Bool)

(assert (=> d!1595043 e!3094442))

(declare-fun res!2112957 () Bool)

(assert (=> d!1595043 (=> (not res!2112957) (not e!3094442))))

(declare-fun lt!2044188 () List!57172)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10173 (List!57172) (InoxSet B!3029))

(assert (=> d!1595043 (= res!2112957 (= ((_ map implies) (content!10173 lt!2044188) (content!10173 l!2976)) ((as const (InoxSet B!3029)) true)))))

(declare-fun e!3094443 () List!57172)

(assert (=> d!1595043 (= lt!2044188 e!3094443)))

(declare-fun c!845831 () Bool)

(assert (=> d!1595043 (= c!845831 ((_ is Nil!57048) l!2976))))

(assert (=> d!1595043 (= (drop!2310 l!2976 i!792) lt!2044188)))

(declare-fun b!4952810 () Bool)

(declare-fun e!3094440 () Int)

(assert (=> b!4952810 (= e!3094440 call!345849)))

(declare-fun b!4952811 () Bool)

(assert (=> b!4952811 (= e!3094443 e!3094441)))

(declare-fun c!845828 () Bool)

(assert (=> b!4952811 (= c!845828 (<= i!792 0))))

(declare-fun b!4952812 () Bool)

(assert (=> b!4952812 (= e!3094442 (= (size!37876 lt!2044188) e!3094440))))

(declare-fun c!845829 () Bool)

(assert (=> b!4952812 (= c!845829 (<= i!792 0))))

(declare-fun b!4952813 () Bool)

(assert (=> b!4952813 (= e!3094443 Nil!57048)))

(declare-fun b!4952814 () Bool)

(assert (=> b!4952814 (= e!3094439 (- call!345849 i!792))))

(declare-fun b!4952815 () Bool)

(assert (=> b!4952815 (= e!3094440 e!3094439)))

(declare-fun c!845830 () Bool)

(assert (=> b!4952815 (= c!845830 (>= i!792 call!345849))))

(assert (= (and d!1595043 c!845831) b!4952813))

(assert (= (and d!1595043 (not c!845831)) b!4952811))

(assert (= (and b!4952811 c!845828) b!4952808))

(assert (= (and b!4952811 (not c!845828)) b!4952807))

(assert (= (and d!1595043 res!2112957) b!4952812))

(assert (= (and b!4952812 c!845829) b!4952810))

(assert (= (and b!4952812 (not c!845829)) b!4952815))

(assert (= (and b!4952815 c!845830) b!4952809))

(assert (= (and b!4952815 (not c!845830)) b!4952814))

(assert (= (or b!4952810 b!4952815 b!4952814) bm!345844))

(assert (=> bm!345844 m!5977626))

(declare-fun m!5977644 () Bool)

(assert (=> b!4952807 m!5977644))

(declare-fun m!5977646 () Bool)

(assert (=> d!1595043 m!5977646))

(declare-fun m!5977648 () Bool)

(assert (=> d!1595043 m!5977648))

(declare-fun m!5977650 () Bool)

(assert (=> b!4952812 m!5977650))

(assert (=> b!4952751 d!1595043))

(declare-fun d!1595049 () Bool)

(declare-fun lt!2044194 () B!3029)

(declare-fun contains!19508 (List!57172 B!3029) Bool)

(assert (=> d!1595049 (contains!19508 l!2976 lt!2044194)))

(declare-fun e!3094454 () B!3029)

(assert (=> d!1595049 (= lt!2044194 e!3094454)))

(declare-fun c!845837 () Bool)

(assert (=> d!1595049 (= c!845837 (= i!792 0))))

(declare-fun e!3094455 () Bool)

(assert (=> d!1595049 e!3094455))

(declare-fun res!2112960 () Bool)

(assert (=> d!1595049 (=> (not res!2112960) (not e!3094455))))

(assert (=> d!1595049 (= res!2112960 (<= 0 i!792))))

(assert (=> d!1595049 (= (apply!13868 l!2976 i!792) lt!2044194)))

(declare-fun b!4952833 () Bool)

(assert (=> b!4952833 (= e!3094455 (< i!792 (size!37876 l!2976)))))

(declare-fun b!4952834 () Bool)

(assert (=> b!4952834 (= e!3094454 (head!10629 l!2976))))

(declare-fun b!4952835 () Bool)

(declare-fun tail!9762 (List!57172) List!57172)

(assert (=> b!4952835 (= e!3094454 (apply!13868 (tail!9762 l!2976) (- i!792 1)))))

(assert (= (and d!1595049 res!2112960) b!4952833))

(assert (= (and d!1595049 c!845837) b!4952834))

(assert (= (and d!1595049 (not c!845837)) b!4952835))

(declare-fun m!5977654 () Bool)

(assert (=> d!1595049 m!5977654))

(assert (=> b!4952833 m!5977626))

(declare-fun m!5977656 () Bool)

(assert (=> b!4952834 m!5977656))

(declare-fun m!5977658 () Bool)

(assert (=> b!4952835 m!5977658))

(assert (=> b!4952835 m!5977658))

(declare-fun m!5977660 () Bool)

(assert (=> b!4952835 m!5977660))

(assert (=> b!4952751 d!1595049))

(declare-fun d!1595051 () Bool)

(declare-fun lt!2044197 () Int)

(assert (=> d!1595051 (>= lt!2044197 0)))

(declare-fun e!3094458 () Int)

(assert (=> d!1595051 (= lt!2044197 e!3094458)))

(declare-fun c!845840 () Bool)

(assert (=> d!1595051 (= c!845840 ((_ is Nil!57048) l!2976))))

(assert (=> d!1595051 (= (size!37876 l!2976) lt!2044197)))

(declare-fun b!4952840 () Bool)

(assert (=> b!4952840 (= e!3094458 0)))

(declare-fun b!4952841 () Bool)

(assert (=> b!4952841 (= e!3094458 (+ 1 (size!37876 (t!367738 l!2976))))))

(assert (= (and d!1595051 c!845840) b!4952840))

(assert (= (and d!1595051 (not c!845840)) b!4952841))

(declare-fun m!5977662 () Bool)

(assert (=> b!4952841 m!5977662))

(assert (=> b!4952749 d!1595051))

(declare-fun b!4952846 () Bool)

(declare-fun e!3094461 () Bool)

(declare-fun tp!1388458 () Bool)

(assert (=> b!4952846 (= e!3094461 (and tp_is_empty!36247 tp!1388458))))

(assert (=> b!4952752 (= tp!1388452 e!3094461)))

(assert (= (and b!4952752 ((_ is Cons!57048) (t!367738 l!2976))) b!4952846))

(check-sat (not b!4952833) (not d!1595043) (not bm!345844) (not b!4952807) (not b!4952812) (not b!4952841) (not d!1595049) (not b!4952834) (not b!4952835) tp_is_empty!36247 (not b!4952846))
(check-sat)
