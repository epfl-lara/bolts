; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276400 () Bool)

(assert start!276400)

(declare-fun res!1182246 () Bool)

(declare-fun e!1800321 () Bool)

(assert (=> start!276400 (=> (not res!1182246) (not e!1800321))))

(declare-fun i!849 () Int)

(assert (=> start!276400 (= res!1182246 (>= i!849 0))))

(assert (=> start!276400 e!1800321))

(assert (=> start!276400 true))

(declare-fun e!1800320 () Bool)

(assert (=> start!276400 e!1800320))

(declare-fun b!2841727 () Bool)

(declare-datatypes ((B!2541 0))(
  ( (B!2542 (val!10574 Int)) )
))
(declare-datatypes ((List!33786 0))(
  ( (Nil!33662) (Cons!33662 (h!39082 B!2541) (t!232631 List!33786)) )
))
(declare-fun l!2988 () List!33786)

(declare-fun subseq!536 (List!33786 List!33786) Bool)

(declare-fun drop!1807 (List!33786 Int) List!33786)

(assert (=> b!2841727 (= e!1800321 (not (subseq!536 (drop!1807 l!2988 i!849) l!2988)))))

(assert (=> b!2841727 (subseq!536 (drop!1807 (t!232631 l!2988) (- i!849 1)) (t!232631 l!2988))))

(declare-datatypes ((Unit!47489 0))(
  ( (Unit!47490) )
))
(declare-fun lt!1011683 () Unit!47489)

(declare-fun lemmaDropSubSeq!81 (List!33786 Int) Unit!47489)

(assert (=> b!2841727 (= lt!1011683 (lemmaDropSubSeq!81 (t!232631 l!2988) (- i!849 1)))))

(declare-fun b!2841728 () Bool)

(declare-fun tp_is_empty!14671 () Bool)

(declare-fun tp!910338 () Bool)

(assert (=> b!2841728 (= e!1800320 (and tp_is_empty!14671 tp!910338))))

(declare-fun b!2841726 () Bool)

(declare-fun res!1182248 () Bool)

(assert (=> b!2841726 (=> (not res!1182248) (not e!1800321))))

(get-info :version)

(assert (=> b!2841726 (= res!1182248 (and (not ((_ is Nil!33662) l!2988)) (> i!849 0)))))

(declare-fun b!2841725 () Bool)

(declare-fun res!1182247 () Bool)

(assert (=> b!2841725 (=> (not res!1182247) (not e!1800321))))

(declare-fun size!26131 (List!33786) Int)

(assert (=> b!2841725 (= res!1182247 (<= i!849 (size!26131 l!2988)))))

(assert (= (and start!276400 res!1182246) b!2841725))

(assert (= (and b!2841725 res!1182247) b!2841726))

(assert (= (and b!2841726 res!1182248) b!2841727))

(assert (= (and start!276400 ((_ is Cons!33662) l!2988)) b!2841728))

(declare-fun m!3269527 () Bool)

(assert (=> b!2841727 m!3269527))

(declare-fun m!3269529 () Bool)

(assert (=> b!2841727 m!3269529))

(assert (=> b!2841727 m!3269527))

(declare-fun m!3269531 () Bool)

(assert (=> b!2841727 m!3269531))

(declare-fun m!3269533 () Bool)

(assert (=> b!2841727 m!3269533))

(assert (=> b!2841727 m!3269531))

(declare-fun m!3269535 () Bool)

(assert (=> b!2841727 m!3269535))

(declare-fun m!3269537 () Bool)

(assert (=> b!2841725 m!3269537))

(check-sat (not b!2841727) (not b!2841725) (not b!2841728) tp_is_empty!14671)
(check-sat)
(get-model)

(declare-fun d!823914 () Bool)

(assert (=> d!823914 (subseq!536 (drop!1807 (t!232631 l!2988) (- i!849 1)) (t!232631 l!2988))))

(declare-fun lt!1011686 () Unit!47489)

(declare-fun choose!16741 (List!33786 Int) Unit!47489)

(assert (=> d!823914 (= lt!1011686 (choose!16741 (t!232631 l!2988) (- i!849 1)))))

(declare-fun e!1800324 () Bool)

(assert (=> d!823914 e!1800324))

(declare-fun res!1182251 () Bool)

(assert (=> d!823914 (=> (not res!1182251) (not e!1800324))))

(assert (=> d!823914 (= res!1182251 (>= (- i!849 1) 0))))

(assert (=> d!823914 (= (lemmaDropSubSeq!81 (t!232631 l!2988) (- i!849 1)) lt!1011686)))

(declare-fun b!2841731 () Bool)

(assert (=> b!2841731 (= e!1800324 (<= (- i!849 1) (size!26131 (t!232631 l!2988))))))

(assert (= (and d!823914 res!1182251) b!2841731))

(assert (=> d!823914 m!3269527))

(assert (=> d!823914 m!3269527))

(assert (=> d!823914 m!3269529))

(declare-fun m!3269539 () Bool)

(assert (=> d!823914 m!3269539))

(declare-fun m!3269541 () Bool)

(assert (=> b!2841731 m!3269541))

(assert (=> b!2841727 d!823914))

(declare-fun b!2841771 () Bool)

(declare-fun e!1800348 () List!33786)

(assert (=> b!2841771 (= e!1800348 (drop!1807 (t!232631 (t!232631 l!2988)) (- (- i!849 1) 1)))))

(declare-fun b!2841772 () Bool)

(declare-fun e!1800352 () Int)

(declare-fun call!183309 () Int)

(assert (=> b!2841772 (= e!1800352 (- call!183309 (- i!849 1)))))

(declare-fun b!2841773 () Bool)

(declare-fun e!1800349 () Int)

(assert (=> b!2841773 (= e!1800349 e!1800352)))

(declare-fun c!458738 () Bool)

(assert (=> b!2841773 (= c!458738 (>= (- i!849 1) call!183309))))

(declare-fun b!2841774 () Bool)

(declare-fun e!1800350 () Bool)

(declare-fun lt!1011694 () List!33786)

(assert (=> b!2841774 (= e!1800350 (= (size!26131 lt!1011694) e!1800349))))

(declare-fun c!458741 () Bool)

(assert (=> b!2841774 (= c!458741 (<= (- i!849 1) 0))))

(declare-fun d!823918 () Bool)

(assert (=> d!823918 e!1800350))

(declare-fun res!1182259 () Bool)

(assert (=> d!823918 (=> (not res!1182259) (not e!1800350))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4644 (List!33786) (InoxSet B!2541))

(assert (=> d!823918 (= res!1182259 (= ((_ map implies) (content!4644 lt!1011694) (content!4644 (t!232631 l!2988))) ((as const (InoxSet B!2541)) true)))))

(declare-fun e!1800351 () List!33786)

(assert (=> d!823918 (= lt!1011694 e!1800351)))

(declare-fun c!458739 () Bool)

(assert (=> d!823918 (= c!458739 ((_ is Nil!33662) (t!232631 l!2988)))))

(assert (=> d!823918 (= (drop!1807 (t!232631 l!2988) (- i!849 1)) lt!1011694)))

(declare-fun b!2841775 () Bool)

(assert (=> b!2841775 (= e!1800349 call!183309)))

(declare-fun b!2841776 () Bool)

(assert (=> b!2841776 (= e!1800351 Nil!33662)))

(declare-fun b!2841777 () Bool)

(assert (=> b!2841777 (= e!1800352 0)))

(declare-fun bm!183304 () Bool)

(assert (=> bm!183304 (= call!183309 (size!26131 (t!232631 l!2988)))))

(declare-fun b!2841778 () Bool)

(assert (=> b!2841778 (= e!1800351 e!1800348)))

(declare-fun c!458740 () Bool)

(assert (=> b!2841778 (= c!458740 (<= (- i!849 1) 0))))

(declare-fun b!2841779 () Bool)

(assert (=> b!2841779 (= e!1800348 (t!232631 l!2988))))

(assert (= (and d!823918 c!458739) b!2841776))

(assert (= (and d!823918 (not c!458739)) b!2841778))

(assert (= (and b!2841778 c!458740) b!2841779))

(assert (= (and b!2841778 (not c!458740)) b!2841771))

(assert (= (and d!823918 res!1182259) b!2841774))

(assert (= (and b!2841774 c!458741) b!2841775))

(assert (= (and b!2841774 (not c!458741)) b!2841773))

(assert (= (and b!2841773 c!458738) b!2841777))

(assert (= (and b!2841773 (not c!458738)) b!2841772))

(assert (= (or b!2841775 b!2841773 b!2841772) bm!183304))

(declare-fun m!3269547 () Bool)

(assert (=> b!2841771 m!3269547))

(declare-fun m!3269549 () Bool)

(assert (=> b!2841774 m!3269549))

(declare-fun m!3269551 () Bool)

(assert (=> d!823918 m!3269551))

(declare-fun m!3269553 () Bool)

(assert (=> d!823918 m!3269553))

(assert (=> bm!183304 m!3269541))

(assert (=> b!2841727 d!823918))

(declare-fun d!823922 () Bool)

(declare-fun res!1182271 () Bool)

(declare-fun e!1800366 () Bool)

(assert (=> d!823922 (=> res!1182271 e!1800366)))

(assert (=> d!823922 (= res!1182271 ((_ is Nil!33662) (drop!1807 l!2988 i!849)))))

(assert (=> d!823922 (= (subseq!536 (drop!1807 l!2988 i!849) l!2988) e!1800366)))

(declare-fun b!2841797 () Bool)

(declare-fun e!1800368 () Bool)

(assert (=> b!2841797 (= e!1800366 e!1800368)))

(declare-fun res!1182270 () Bool)

(assert (=> b!2841797 (=> (not res!1182270) (not e!1800368))))

(assert (=> b!2841797 (= res!1182270 ((_ is Cons!33662) l!2988))))

(declare-fun b!2841798 () Bool)

(declare-fun e!1800367 () Bool)

(assert (=> b!2841798 (= e!1800368 e!1800367)))

(declare-fun res!1182272 () Bool)

(assert (=> b!2841798 (=> res!1182272 e!1800367)))

(declare-fun e!1800369 () Bool)

(assert (=> b!2841798 (= res!1182272 e!1800369)))

(declare-fun res!1182269 () Bool)

(assert (=> b!2841798 (=> (not res!1182269) (not e!1800369))))

(assert (=> b!2841798 (= res!1182269 (= (h!39082 (drop!1807 l!2988 i!849)) (h!39082 l!2988)))))

(declare-fun b!2841800 () Bool)

(assert (=> b!2841800 (= e!1800367 (subseq!536 (drop!1807 l!2988 i!849) (t!232631 l!2988)))))

(declare-fun b!2841799 () Bool)

(assert (=> b!2841799 (= e!1800369 (subseq!536 (t!232631 (drop!1807 l!2988 i!849)) (t!232631 l!2988)))))

(assert (= (and d!823922 (not res!1182271)) b!2841797))

(assert (= (and b!2841797 res!1182270) b!2841798))

(assert (= (and b!2841798 res!1182269) b!2841799))

(assert (= (and b!2841798 (not res!1182272)) b!2841800))

(assert (=> b!2841800 m!3269531))

(declare-fun m!3269563 () Bool)

(assert (=> b!2841800 m!3269563))

(declare-fun m!3269565 () Bool)

(assert (=> b!2841799 m!3269565))

(assert (=> b!2841727 d!823922))

(declare-fun b!2841809 () Bool)

(declare-fun e!1800378 () List!33786)

(assert (=> b!2841809 (= e!1800378 (drop!1807 (t!232631 l!2988) (- i!849 1)))))

(declare-fun b!2841810 () Bool)

(declare-fun e!1800382 () Int)

(declare-fun call!183311 () Int)

(assert (=> b!2841810 (= e!1800382 (- call!183311 i!849))))

(declare-fun b!2841811 () Bool)

(declare-fun e!1800379 () Int)

(assert (=> b!2841811 (= e!1800379 e!1800382)))

(declare-fun c!458746 () Bool)

(assert (=> b!2841811 (= c!458746 (>= i!849 call!183311))))

(declare-fun b!2841812 () Bool)

(declare-fun e!1800380 () Bool)

(declare-fun lt!1011696 () List!33786)

(assert (=> b!2841812 (= e!1800380 (= (size!26131 lt!1011696) e!1800379))))

(declare-fun c!458749 () Bool)

(assert (=> b!2841812 (= c!458749 (<= i!849 0))))

(declare-fun d!823926 () Bool)

(assert (=> d!823926 e!1800380))

(declare-fun res!1182281 () Bool)

(assert (=> d!823926 (=> (not res!1182281) (not e!1800380))))

(assert (=> d!823926 (= res!1182281 (= ((_ map implies) (content!4644 lt!1011696) (content!4644 l!2988)) ((as const (InoxSet B!2541)) true)))))

(declare-fun e!1800381 () List!33786)

(assert (=> d!823926 (= lt!1011696 e!1800381)))

(declare-fun c!458747 () Bool)

(assert (=> d!823926 (= c!458747 ((_ is Nil!33662) l!2988))))

(assert (=> d!823926 (= (drop!1807 l!2988 i!849) lt!1011696)))

(declare-fun b!2841813 () Bool)

(assert (=> b!2841813 (= e!1800379 call!183311)))

(declare-fun b!2841814 () Bool)

(assert (=> b!2841814 (= e!1800381 Nil!33662)))

(declare-fun b!2841815 () Bool)

(assert (=> b!2841815 (= e!1800382 0)))

(declare-fun bm!183306 () Bool)

(assert (=> bm!183306 (= call!183311 (size!26131 l!2988))))

(declare-fun b!2841816 () Bool)

(assert (=> b!2841816 (= e!1800381 e!1800378)))

(declare-fun c!458748 () Bool)

(assert (=> b!2841816 (= c!458748 (<= i!849 0))))

(declare-fun b!2841817 () Bool)

(assert (=> b!2841817 (= e!1800378 l!2988)))

(assert (= (and d!823926 c!458747) b!2841814))

(assert (= (and d!823926 (not c!458747)) b!2841816))

(assert (= (and b!2841816 c!458748) b!2841817))

(assert (= (and b!2841816 (not c!458748)) b!2841809))

(assert (= (and d!823926 res!1182281) b!2841812))

(assert (= (and b!2841812 c!458749) b!2841813))

(assert (= (and b!2841812 (not c!458749)) b!2841811))

(assert (= (and b!2841811 c!458746) b!2841815))

(assert (= (and b!2841811 (not c!458746)) b!2841810))

(assert (= (or b!2841813 b!2841811 b!2841810) bm!183306))

(assert (=> b!2841809 m!3269527))

(declare-fun m!3269567 () Bool)

(assert (=> b!2841812 m!3269567))

(declare-fun m!3269569 () Bool)

(assert (=> d!823926 m!3269569))

(declare-fun m!3269571 () Bool)

(assert (=> d!823926 m!3269571))

(assert (=> bm!183306 m!3269537))

(assert (=> b!2841727 d!823926))

(declare-fun d!823928 () Bool)

(declare-fun res!1182284 () Bool)

(declare-fun e!1800383 () Bool)

(assert (=> d!823928 (=> res!1182284 e!1800383)))

(assert (=> d!823928 (= res!1182284 ((_ is Nil!33662) (drop!1807 (t!232631 l!2988) (- i!849 1))))))

(assert (=> d!823928 (= (subseq!536 (drop!1807 (t!232631 l!2988) (- i!849 1)) (t!232631 l!2988)) e!1800383)))

(declare-fun b!2841818 () Bool)

(declare-fun e!1800385 () Bool)

(assert (=> b!2841818 (= e!1800383 e!1800385)))

(declare-fun res!1182283 () Bool)

(assert (=> b!2841818 (=> (not res!1182283) (not e!1800385))))

(assert (=> b!2841818 (= res!1182283 ((_ is Cons!33662) (t!232631 l!2988)))))

(declare-fun b!2841819 () Bool)

(declare-fun e!1800384 () Bool)

(assert (=> b!2841819 (= e!1800385 e!1800384)))

(declare-fun res!1182285 () Bool)

(assert (=> b!2841819 (=> res!1182285 e!1800384)))

(declare-fun e!1800386 () Bool)

(assert (=> b!2841819 (= res!1182285 e!1800386)))

(declare-fun res!1182282 () Bool)

(assert (=> b!2841819 (=> (not res!1182282) (not e!1800386))))

(assert (=> b!2841819 (= res!1182282 (= (h!39082 (drop!1807 (t!232631 l!2988) (- i!849 1))) (h!39082 (t!232631 l!2988))))))

(declare-fun b!2841821 () Bool)

(assert (=> b!2841821 (= e!1800384 (subseq!536 (drop!1807 (t!232631 l!2988) (- i!849 1)) (t!232631 (t!232631 l!2988))))))

(declare-fun b!2841820 () Bool)

(assert (=> b!2841820 (= e!1800386 (subseq!536 (t!232631 (drop!1807 (t!232631 l!2988) (- i!849 1))) (t!232631 (t!232631 l!2988))))))

(assert (= (and d!823928 (not res!1182284)) b!2841818))

(assert (= (and b!2841818 res!1182283) b!2841819))

(assert (= (and b!2841819 res!1182282) b!2841820))

(assert (= (and b!2841819 (not res!1182285)) b!2841821))

(assert (=> b!2841821 m!3269527))

(declare-fun m!3269573 () Bool)

(assert (=> b!2841821 m!3269573))

(declare-fun m!3269575 () Bool)

(assert (=> b!2841820 m!3269575))

(assert (=> b!2841727 d!823928))

(declare-fun d!823930 () Bool)

(declare-fun lt!1011700 () Int)

(assert (=> d!823930 (>= lt!1011700 0)))

(declare-fun e!1800402 () Int)

(assert (=> d!823930 (= lt!1011700 e!1800402)))

(declare-fun c!458756 () Bool)

(assert (=> d!823930 (= c!458756 ((_ is Nil!33662) l!2988))))

(assert (=> d!823930 (= (size!26131 l!2988) lt!1011700)))

(declare-fun b!2841843 () Bool)

(assert (=> b!2841843 (= e!1800402 0)))

(declare-fun b!2841844 () Bool)

(assert (=> b!2841844 (= e!1800402 (+ 1 (size!26131 (t!232631 l!2988))))))

(assert (= (and d!823930 c!458756) b!2841843))

(assert (= (and d!823930 (not c!458756)) b!2841844))

(assert (=> b!2841844 m!3269541))

(assert (=> b!2841725 d!823930))

(declare-fun b!2841849 () Bool)

(declare-fun e!1800405 () Bool)

(declare-fun tp!910341 () Bool)

(assert (=> b!2841849 (= e!1800405 (and tp_is_empty!14671 tp!910341))))

(assert (=> b!2841728 (= tp!910338 e!1800405)))

(assert (= (and b!2841728 ((_ is Cons!33662) (t!232631 l!2988))) b!2841849))

(check-sat (not b!2841771) (not b!2841844) (not d!823926) (not b!2841731) (not d!823914) (not b!2841812) (not b!2841820) (not b!2841774) (not bm!183306) (not d!823918) (not b!2841849) (not b!2841799) tp_is_empty!14671 (not b!2841809) (not bm!183304) (not b!2841821) (not b!2841800))
(check-sat)
