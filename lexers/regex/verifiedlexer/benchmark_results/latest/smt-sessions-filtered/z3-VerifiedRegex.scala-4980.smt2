; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252520 () Bool)

(assert start!252520)

(declare-fun b!2599504 () Bool)

(declare-fun res!1094800 () Bool)

(declare-fun e!1640793 () Bool)

(assert (=> b!2599504 (=> (not res!1094800) (not e!1640793))))

(declare-datatypes ((B!2341 0))(
  ( (B!2342 (val!9638 Int)) )
))
(declare-datatypes ((List!30071 0))(
  ( (Nil!29971) (Cons!29971 (h!35391 B!2341) (t!213084 List!30071)) )
))
(declare-fun l!3274 () List!30071)

(declare-fun e!9367 () B!2341)

(declare-fun contains!5519 (List!30071 B!2341) Bool)

(assert (=> b!2599504 (= res!1094800 (not (contains!5519 l!3274 e!9367)))))

(declare-fun b!2599505 () Bool)

(declare-fun res!1094801 () Bool)

(assert (=> b!2599505 (=> (not res!1094801) (not e!1640793))))

(get-info :version)

(assert (=> b!2599505 (= res!1094801 ((_ is Cons!29971) l!3274))))

(declare-fun b!2599506 () Bool)

(assert (=> b!2599506 (= e!1640793 (not (not (contains!5519 (t!213084 l!3274) e!9367))))))

(declare-fun -!206 (List!30071 B!2341) List!30071)

(assert (=> b!2599506 (= (t!213084 l!3274) (-!206 (t!213084 l!3274) e!9367))))

(declare-datatypes ((Unit!44011 0))(
  ( (Unit!44012) )
))
(declare-fun lt!915153 () Unit!44011)

(declare-fun lemmaNotContainedThenRemoveSameList!8 (List!30071 B!2341) Unit!44011)

(assert (=> b!2599506 (= lt!915153 (lemmaNotContainedThenRemoveSameList!8 (t!213084 l!3274) e!9367))))

(declare-fun res!1094799 () Bool)

(assert (=> start!252520 (=> (not res!1094799) (not e!1640793))))

(declare-fun noDuplicate!519 (List!30071) Bool)

(assert (=> start!252520 (= res!1094799 (noDuplicate!519 l!3274))))

(assert (=> start!252520 e!1640793))

(declare-fun e!1640792 () Bool)

(assert (=> start!252520 e!1640792))

(declare-fun tp_is_empty!13621 () Bool)

(assert (=> start!252520 tp_is_empty!13621))

(declare-fun b!2599507 () Bool)

(declare-fun tp!823672 () Bool)

(assert (=> b!2599507 (= e!1640792 (and tp_is_empty!13621 tp!823672))))

(assert (= (and start!252520 res!1094799) b!2599504))

(assert (= (and b!2599504 res!1094800) b!2599505))

(assert (= (and b!2599505 res!1094801) b!2599506))

(assert (= (and start!252520 ((_ is Cons!29971) l!3274)) b!2599507))

(declare-fun m!2935223 () Bool)

(assert (=> b!2599504 m!2935223))

(declare-fun m!2935225 () Bool)

(assert (=> b!2599506 m!2935225))

(declare-fun m!2935227 () Bool)

(assert (=> b!2599506 m!2935227))

(declare-fun m!2935229 () Bool)

(assert (=> b!2599506 m!2935229))

(declare-fun m!2935231 () Bool)

(assert (=> start!252520 m!2935231))

(check-sat tp_is_empty!13621 (not start!252520) (not b!2599504) (not b!2599506) (not b!2599507))
(check-sat)
(get-model)

(declare-fun d!736523 () Bool)

(declare-fun lt!915159 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4244 (List!30071) (InoxSet B!2341))

(assert (=> d!736523 (= lt!915159 (select (content!4244 (t!213084 l!3274)) e!9367))))

(declare-fun e!1640810 () Bool)

(assert (=> d!736523 (= lt!915159 e!1640810)))

(declare-fun res!1094819 () Bool)

(assert (=> d!736523 (=> (not res!1094819) (not e!1640810))))

(assert (=> d!736523 (= res!1094819 ((_ is Cons!29971) (t!213084 l!3274)))))

(assert (=> d!736523 (= (contains!5519 (t!213084 l!3274) e!9367) lt!915159)))

(declare-fun b!2599524 () Bool)

(declare-fun e!1640811 () Bool)

(assert (=> b!2599524 (= e!1640810 e!1640811)))

(declare-fun res!1094818 () Bool)

(assert (=> b!2599524 (=> res!1094818 e!1640811)))

(assert (=> b!2599524 (= res!1094818 (= (h!35391 (t!213084 l!3274)) e!9367))))

(declare-fun b!2599525 () Bool)

(assert (=> b!2599525 (= e!1640811 (contains!5519 (t!213084 (t!213084 l!3274)) e!9367))))

(assert (= (and d!736523 res!1094819) b!2599524))

(assert (= (and b!2599524 (not res!1094818)) b!2599525))

(declare-fun m!2935243 () Bool)

(assert (=> d!736523 m!2935243))

(declare-fun m!2935247 () Bool)

(assert (=> d!736523 m!2935247))

(declare-fun m!2935251 () Bool)

(assert (=> b!2599525 m!2935251))

(assert (=> b!2599506 d!736523))

(declare-fun bm!167395 () Bool)

(declare-fun call!167400 () List!30071)

(assert (=> bm!167395 (= call!167400 (-!206 (t!213084 (t!213084 l!3274)) e!9367))))

(declare-fun b!2599553 () Bool)

(declare-fun e!1640832 () Bool)

(declare-fun lt!915166 () List!30071)

(assert (=> b!2599553 (= e!1640832 (= (content!4244 lt!915166) ((_ map and) (content!4244 (t!213084 l!3274)) ((_ map not) (store ((as const (Array B!2341 Bool)) false) e!9367 true)))))))

(declare-fun b!2599554 () Bool)

(declare-fun e!1640833 () List!30071)

(declare-fun e!1640831 () List!30071)

(assert (=> b!2599554 (= e!1640833 e!1640831)))

(declare-fun c!418588 () Bool)

(assert (=> b!2599554 (= c!418588 (= e!9367 (h!35391 (t!213084 l!3274))))))

(declare-fun b!2599555 () Bool)

(assert (=> b!2599555 (= e!1640833 Nil!29971)))

(declare-fun d!736531 () Bool)

(assert (=> d!736531 e!1640832))

(declare-fun res!1094827 () Bool)

(assert (=> d!736531 (=> (not res!1094827) (not e!1640832))))

(declare-fun size!23240 (List!30071) Int)

(assert (=> d!736531 (= res!1094827 (<= (size!23240 lt!915166) (size!23240 (t!213084 l!3274))))))

(assert (=> d!736531 (= lt!915166 e!1640833)))

(declare-fun c!418587 () Bool)

(assert (=> d!736531 (= c!418587 ((_ is Cons!29971) (t!213084 l!3274)))))

(assert (=> d!736531 (= (-!206 (t!213084 l!3274) e!9367) lt!915166)))

(declare-fun b!2599556 () Bool)

(assert (=> b!2599556 (= e!1640831 call!167400)))

(declare-fun b!2599557 () Bool)

(assert (=> b!2599557 (= e!1640831 (Cons!29971 (h!35391 (t!213084 l!3274)) call!167400))))

(assert (= (and d!736531 c!418587) b!2599554))

(assert (= (and d!736531 (not c!418587)) b!2599555))

(assert (= (and b!2599554 c!418588) b!2599556))

(assert (= (and b!2599554 (not c!418588)) b!2599557))

(assert (= (or b!2599556 b!2599557) bm!167395))

(assert (= (and d!736531 res!1094827) b!2599553))

(declare-fun m!2935263 () Bool)

(assert (=> bm!167395 m!2935263))

(declare-fun m!2935265 () Bool)

(assert (=> b!2599553 m!2935265))

(assert (=> b!2599553 m!2935243))

(declare-fun m!2935267 () Bool)

(assert (=> b!2599553 m!2935267))

(declare-fun m!2935269 () Bool)

(assert (=> d!736531 m!2935269))

(declare-fun m!2935271 () Bool)

(assert (=> d!736531 m!2935271))

(assert (=> b!2599506 d!736531))

(declare-fun d!736535 () Bool)

(assert (=> d!736535 (= (t!213084 l!3274) (-!206 (t!213084 l!3274) e!9367))))

(declare-fun lt!915172 () Unit!44011)

(declare-fun choose!15454 (List!30071 B!2341) Unit!44011)

(assert (=> d!736535 (= lt!915172 (choose!15454 (t!213084 l!3274) e!9367))))

(assert (=> d!736535 (noDuplicate!519 (t!213084 l!3274))))

(assert (=> d!736535 (= (lemmaNotContainedThenRemoveSameList!8 (t!213084 l!3274) e!9367) lt!915172)))

(declare-fun bs!473130 () Bool)

(assert (= bs!473130 d!736535))

(assert (=> bs!473130 m!2935227))

(declare-fun m!2935275 () Bool)

(assert (=> bs!473130 m!2935275))

(declare-fun m!2935277 () Bool)

(assert (=> bs!473130 m!2935277))

(assert (=> b!2599506 d!736535))

(declare-fun d!736537 () Bool)

(declare-fun res!1094832 () Bool)

(declare-fun e!1640843 () Bool)

(assert (=> d!736537 (=> res!1094832 e!1640843)))

(assert (=> d!736537 (= res!1094832 ((_ is Nil!29971) l!3274))))

(assert (=> d!736537 (= (noDuplicate!519 l!3274) e!1640843)))

(declare-fun b!2599567 () Bool)

(declare-fun e!1640844 () Bool)

(assert (=> b!2599567 (= e!1640843 e!1640844)))

(declare-fun res!1094833 () Bool)

(assert (=> b!2599567 (=> (not res!1094833) (not e!1640844))))

(assert (=> b!2599567 (= res!1094833 (not (contains!5519 (t!213084 l!3274) (h!35391 l!3274))))))

(declare-fun b!2599568 () Bool)

(assert (=> b!2599568 (= e!1640844 (noDuplicate!519 (t!213084 l!3274)))))

(assert (= (and d!736537 (not res!1094832)) b!2599567))

(assert (= (and b!2599567 res!1094833) b!2599568))

(declare-fun m!2935279 () Bool)

(assert (=> b!2599567 m!2935279))

(assert (=> b!2599568 m!2935277))

(assert (=> start!252520 d!736537))

(declare-fun d!736539 () Bool)

(declare-fun lt!915173 () Bool)

(assert (=> d!736539 (= lt!915173 (select (content!4244 l!3274) e!9367))))

(declare-fun e!1640845 () Bool)

(assert (=> d!736539 (= lt!915173 e!1640845)))

(declare-fun res!1094835 () Bool)

(assert (=> d!736539 (=> (not res!1094835) (not e!1640845))))

(assert (=> d!736539 (= res!1094835 ((_ is Cons!29971) l!3274))))

(assert (=> d!736539 (= (contains!5519 l!3274 e!9367) lt!915173)))

(declare-fun b!2599569 () Bool)

(declare-fun e!1640846 () Bool)

(assert (=> b!2599569 (= e!1640845 e!1640846)))

(declare-fun res!1094834 () Bool)

(assert (=> b!2599569 (=> res!1094834 e!1640846)))

(assert (=> b!2599569 (= res!1094834 (= (h!35391 l!3274) e!9367))))

(declare-fun b!2599570 () Bool)

(assert (=> b!2599570 (= e!1640846 (contains!5519 (t!213084 l!3274) e!9367))))

(assert (= (and d!736539 res!1094835) b!2599569))

(assert (= (and b!2599569 (not res!1094834)) b!2599570))

(declare-fun m!2935281 () Bool)

(assert (=> d!736539 m!2935281))

(declare-fun m!2935283 () Bool)

(assert (=> d!736539 m!2935283))

(assert (=> b!2599570 m!2935225))

(assert (=> b!2599504 d!736539))

(declare-fun b!2599575 () Bool)

(declare-fun e!1640849 () Bool)

(declare-fun tp!823678 () Bool)

(assert (=> b!2599575 (= e!1640849 (and tp_is_empty!13621 tp!823678))))

(assert (=> b!2599507 (= tp!823672 e!1640849)))

(assert (= (and b!2599507 ((_ is Cons!29971) (t!213084 l!3274))) b!2599575))

(check-sat (not d!736523) (not bm!167395) (not d!736539) tp_is_empty!13621 (not b!2599525) (not d!736531) (not b!2599553) (not b!2599568) (not d!736535) (not b!2599570) (not b!2599575) (not b!2599567))
(check-sat)
