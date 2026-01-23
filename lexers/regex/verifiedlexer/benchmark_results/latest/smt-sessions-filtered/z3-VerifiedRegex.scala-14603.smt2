; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756024 () Bool)

(assert start!756024)

(declare-fun b!8027643 () Bool)

(declare-fun e!4729283 () Bool)

(declare-fun e!4729285 () Bool)

(assert (=> b!8027643 (= e!4729283 e!4729285)))

(declare-fun res!3174718 () Bool)

(assert (=> b!8027643 (=> (not res!3174718) (not e!4729285))))

(declare-datatypes ((B!4409 0))(
  ( (B!4410 (val!32604 Int)) )
))
(declare-datatypes ((List!75120 0))(
  ( (Nil!74994) (Cons!74994 (h!81442 B!4409) (t!390876 List!75120)) )
))
(declare-fun lt!2721301 () List!75120)

(declare-fun l!3185 () List!75120)

(assert (=> b!8027643 (= res!3174718 (= lt!2721301 l!3185))))

(declare-fun p1!159 () List!75120)

(declare-fun s1!480 () List!75120)

(declare-fun ++!18596 (List!75120 List!75120) List!75120)

(assert (=> b!8027643 (= lt!2721301 (++!18596 p1!159 s1!480))))

(declare-fun b!8027644 () Bool)

(declare-fun e!4729281 () Bool)

(declare-fun p2!159 () List!75120)

(declare-fun isPrefix!6869 (List!75120 List!75120) Bool)

(declare-fun tail!16027 (List!75120) List!75120)

(assert (=> b!8027644 (= e!4729281 (isPrefix!6869 (tail!16027 p2!159) (tail!16027 l!3185)))))

(declare-fun b!8027645 () Bool)

(assert (=> b!8027645 (= e!4729285 (not e!4729281))))

(declare-fun res!3174720 () Bool)

(assert (=> b!8027645 (=> res!3174720 e!4729281)))

(get-info :version)

(assert (=> b!8027645 (= res!3174720 (not ((_ is Cons!74994) p1!159)))))

(assert (=> b!8027645 (isPrefix!6869 p1!159 lt!2721301)))

(declare-datatypes ((Unit!170972 0))(
  ( (Unit!170973) )
))
(declare-fun lt!2721302 () Unit!170972)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3988 (List!75120 List!75120) Unit!170972)

(assert (=> b!8027645 (= lt!2721302 (lemmaConcatTwoListThenFirstIsPrefix!3988 p1!159 s1!480))))

(declare-fun b!8027646 () Bool)

(declare-fun e!4729284 () Bool)

(declare-fun tp_is_empty!54313 () Bool)

(declare-fun tp!2402361 () Bool)

(assert (=> b!8027646 (= e!4729284 (and tp_is_empty!54313 tp!2402361))))

(declare-fun b!8027647 () Bool)

(declare-fun res!3174721 () Bool)

(assert (=> b!8027647 (=> (not res!3174721) (not e!4729285))))

(declare-fun size!43729 (List!75120) Int)

(assert (=> b!8027647 (= res!3174721 (< (size!43729 p1!159) (size!43729 p2!159)))))

(declare-fun b!8027648 () Bool)

(declare-fun e!4729287 () Bool)

(declare-fun tp!2402360 () Bool)

(assert (=> b!8027648 (= e!4729287 (and tp_is_empty!54313 tp!2402360))))

(declare-fun b!8027649 () Bool)

(declare-fun e!4729282 () Bool)

(declare-fun tp!2402363 () Bool)

(assert (=> b!8027649 (= e!4729282 (and tp_is_empty!54313 tp!2402363))))

(declare-fun b!8027650 () Bool)

(declare-fun e!4729286 () Bool)

(declare-fun tp!2402362 () Bool)

(assert (=> b!8027650 (= e!4729286 (and tp_is_empty!54313 tp!2402362))))

(declare-fun b!8027651 () Bool)

(declare-fun res!3174719 () Bool)

(assert (=> b!8027651 (=> (not res!3174719) (not e!4729285))))

(declare-fun isEmpty!43002 (List!75120) Bool)

(assert (=> b!8027651 (= res!3174719 (not (isEmpty!43002 s1!480)))))

(declare-fun res!3174717 () Bool)

(assert (=> start!756024 (=> (not res!3174717) (not e!4729283))))

(assert (=> start!756024 (= res!3174717 (isPrefix!6869 p2!159 l!3185))))

(assert (=> start!756024 e!4729283))

(assert (=> start!756024 e!4729286))

(assert (=> start!756024 e!4729287))

(assert (=> start!756024 e!4729282))

(assert (=> start!756024 e!4729284))

(assert (= (and start!756024 res!3174717) b!8027643))

(assert (= (and b!8027643 res!3174718) b!8027651))

(assert (= (and b!8027651 res!3174719) b!8027647))

(assert (= (and b!8027647 res!3174721) b!8027645))

(assert (= (and b!8027645 (not res!3174720)) b!8027644))

(assert (= (and start!756024 ((_ is Cons!74994) p2!159)) b!8027650))

(assert (= (and start!756024 ((_ is Cons!74994) l!3185)) b!8027648))

(assert (= (and start!756024 ((_ is Cons!74994) p1!159)) b!8027649))

(assert (= (and start!756024 ((_ is Cons!74994) s1!480)) b!8027646))

(declare-fun m!8389742 () Bool)

(assert (=> b!8027645 m!8389742))

(declare-fun m!8389744 () Bool)

(assert (=> b!8027645 m!8389744))

(declare-fun m!8389746 () Bool)

(assert (=> b!8027647 m!8389746))

(declare-fun m!8389748 () Bool)

(assert (=> b!8027647 m!8389748))

(declare-fun m!8389750 () Bool)

(assert (=> b!8027651 m!8389750))

(declare-fun m!8389752 () Bool)

(assert (=> start!756024 m!8389752))

(declare-fun m!8389754 () Bool)

(assert (=> b!8027643 m!8389754))

(declare-fun m!8389756 () Bool)

(assert (=> b!8027644 m!8389756))

(declare-fun m!8389758 () Bool)

(assert (=> b!8027644 m!8389758))

(assert (=> b!8027644 m!8389756))

(assert (=> b!8027644 m!8389758))

(declare-fun m!8389760 () Bool)

(assert (=> b!8027644 m!8389760))

(check-sat tp_is_empty!54313 (not b!8027648) (not b!8027651) (not start!756024) (not b!8027644) (not b!8027649) (not b!8027643) (not b!8027645) (not b!8027646) (not b!8027650) (not b!8027647))
(check-sat)
(get-model)

(declare-fun d!2393766 () Bool)

(declare-fun lt!2721305 () Int)

(assert (=> d!2393766 (>= lt!2721305 0)))

(declare-fun e!4729290 () Int)

(assert (=> d!2393766 (= lt!2721305 e!4729290)))

(declare-fun c!1472851 () Bool)

(assert (=> d!2393766 (= c!1472851 ((_ is Nil!74994) p1!159))))

(assert (=> d!2393766 (= (size!43729 p1!159) lt!2721305)))

(declare-fun b!8027656 () Bool)

(assert (=> b!8027656 (= e!4729290 0)))

(declare-fun b!8027657 () Bool)

(assert (=> b!8027657 (= e!4729290 (+ 1 (size!43729 (t!390876 p1!159))))))

(assert (= (and d!2393766 c!1472851) b!8027656))

(assert (= (and d!2393766 (not c!1472851)) b!8027657))

(declare-fun m!8389762 () Bool)

(assert (=> b!8027657 m!8389762))

(assert (=> b!8027647 d!2393766))

(declare-fun d!2393768 () Bool)

(declare-fun lt!2721306 () Int)

(assert (=> d!2393768 (>= lt!2721306 0)))

(declare-fun e!4729291 () Int)

(assert (=> d!2393768 (= lt!2721306 e!4729291)))

(declare-fun c!1472852 () Bool)

(assert (=> d!2393768 (= c!1472852 ((_ is Nil!74994) p2!159))))

(assert (=> d!2393768 (= (size!43729 p2!159) lt!2721306)))

(declare-fun b!8027658 () Bool)

(assert (=> b!8027658 (= e!4729291 0)))

(declare-fun b!8027659 () Bool)

(assert (=> b!8027659 (= e!4729291 (+ 1 (size!43729 (t!390876 p2!159))))))

(assert (= (and d!2393768 c!1472852) b!8027658))

(assert (= (and d!2393768 (not c!1472852)) b!8027659))

(declare-fun m!8389764 () Bool)

(assert (=> b!8027659 m!8389764))

(assert (=> b!8027647 d!2393768))

(declare-fun d!2393770 () Bool)

(assert (=> d!2393770 (= (isEmpty!43002 s1!480) ((_ is Nil!74994) s1!480))))

(assert (=> b!8027651 d!2393770))

(declare-fun b!8027671 () Bool)

(declare-fun e!4729298 () Bool)

(assert (=> b!8027671 (= e!4729298 (>= (size!43729 lt!2721301) (size!43729 p1!159)))))

(declare-fun b!8027668 () Bool)

(declare-fun e!4729299 () Bool)

(declare-fun e!4729300 () Bool)

(assert (=> b!8027668 (= e!4729299 e!4729300)))

(declare-fun res!3174731 () Bool)

(assert (=> b!8027668 (=> (not res!3174731) (not e!4729300))))

(assert (=> b!8027668 (= res!3174731 (not ((_ is Nil!74994) lt!2721301)))))

(declare-fun b!8027669 () Bool)

(declare-fun res!3174730 () Bool)

(assert (=> b!8027669 (=> (not res!3174730) (not e!4729300))))

(declare-fun head!16483 (List!75120) B!4409)

(assert (=> b!8027669 (= res!3174730 (= (head!16483 p1!159) (head!16483 lt!2721301)))))

(declare-fun d!2393772 () Bool)

(assert (=> d!2393772 e!4729298))

(declare-fun res!3174733 () Bool)

(assert (=> d!2393772 (=> res!3174733 e!4729298)))

(declare-fun lt!2721309 () Bool)

(assert (=> d!2393772 (= res!3174733 (not lt!2721309))))

(assert (=> d!2393772 (= lt!2721309 e!4729299)))

(declare-fun res!3174732 () Bool)

(assert (=> d!2393772 (=> res!3174732 e!4729299)))

(assert (=> d!2393772 (= res!3174732 ((_ is Nil!74994) p1!159))))

(assert (=> d!2393772 (= (isPrefix!6869 p1!159 lt!2721301) lt!2721309)))

(declare-fun b!8027670 () Bool)

(assert (=> b!8027670 (= e!4729300 (isPrefix!6869 (tail!16027 p1!159) (tail!16027 lt!2721301)))))

(assert (= (and d!2393772 (not res!3174732)) b!8027668))

(assert (= (and b!8027668 res!3174731) b!8027669))

(assert (= (and b!8027669 res!3174730) b!8027670))

(assert (= (and d!2393772 (not res!3174733)) b!8027671))

(declare-fun m!8389766 () Bool)

(assert (=> b!8027671 m!8389766))

(assert (=> b!8027671 m!8389746))

(declare-fun m!8389768 () Bool)

(assert (=> b!8027669 m!8389768))

(declare-fun m!8389770 () Bool)

(assert (=> b!8027669 m!8389770))

(declare-fun m!8389772 () Bool)

(assert (=> b!8027670 m!8389772))

(declare-fun m!8389774 () Bool)

(assert (=> b!8027670 m!8389774))

(assert (=> b!8027670 m!8389772))

(assert (=> b!8027670 m!8389774))

(declare-fun m!8389776 () Bool)

(assert (=> b!8027670 m!8389776))

(assert (=> b!8027645 d!2393772))

(declare-fun d!2393778 () Bool)

(assert (=> d!2393778 (isPrefix!6869 p1!159 (++!18596 p1!159 s1!480))))

(declare-fun lt!2721312 () Unit!170972)

(declare-fun choose!60462 (List!75120 List!75120) Unit!170972)

(assert (=> d!2393778 (= lt!2721312 (choose!60462 p1!159 s1!480))))

(assert (=> d!2393778 (= (lemmaConcatTwoListThenFirstIsPrefix!3988 p1!159 s1!480) lt!2721312)))

(declare-fun bs!1971363 () Bool)

(assert (= bs!1971363 d!2393778))

(assert (=> bs!1971363 m!8389754))

(assert (=> bs!1971363 m!8389754))

(declare-fun m!8389778 () Bool)

(assert (=> bs!1971363 m!8389778))

(declare-fun m!8389780 () Bool)

(assert (=> bs!1971363 m!8389780))

(assert (=> b!8027645 d!2393778))

(declare-fun b!8027675 () Bool)

(declare-fun e!4729301 () Bool)

(assert (=> b!8027675 (= e!4729301 (>= (size!43729 (tail!16027 l!3185)) (size!43729 (tail!16027 p2!159))))))

(declare-fun b!8027672 () Bool)

(declare-fun e!4729302 () Bool)

(declare-fun e!4729303 () Bool)

(assert (=> b!8027672 (= e!4729302 e!4729303)))

(declare-fun res!3174735 () Bool)

(assert (=> b!8027672 (=> (not res!3174735) (not e!4729303))))

(assert (=> b!8027672 (= res!3174735 (not ((_ is Nil!74994) (tail!16027 l!3185))))))

(declare-fun b!8027673 () Bool)

(declare-fun res!3174734 () Bool)

(assert (=> b!8027673 (=> (not res!3174734) (not e!4729303))))

(assert (=> b!8027673 (= res!3174734 (= (head!16483 (tail!16027 p2!159)) (head!16483 (tail!16027 l!3185))))))

(declare-fun d!2393780 () Bool)

(assert (=> d!2393780 e!4729301))

(declare-fun res!3174737 () Bool)

(assert (=> d!2393780 (=> res!3174737 e!4729301)))

(declare-fun lt!2721313 () Bool)

(assert (=> d!2393780 (= res!3174737 (not lt!2721313))))

(assert (=> d!2393780 (= lt!2721313 e!4729302)))

(declare-fun res!3174736 () Bool)

(assert (=> d!2393780 (=> res!3174736 e!4729302)))

(assert (=> d!2393780 (= res!3174736 ((_ is Nil!74994) (tail!16027 p2!159)))))

(assert (=> d!2393780 (= (isPrefix!6869 (tail!16027 p2!159) (tail!16027 l!3185)) lt!2721313)))

(declare-fun b!8027674 () Bool)

(assert (=> b!8027674 (= e!4729303 (isPrefix!6869 (tail!16027 (tail!16027 p2!159)) (tail!16027 (tail!16027 l!3185))))))

(assert (= (and d!2393780 (not res!3174736)) b!8027672))

(assert (= (and b!8027672 res!3174735) b!8027673))

(assert (= (and b!8027673 res!3174734) b!8027674))

(assert (= (and d!2393780 (not res!3174737)) b!8027675))

(assert (=> b!8027675 m!8389758))

(declare-fun m!8389782 () Bool)

(assert (=> b!8027675 m!8389782))

(assert (=> b!8027675 m!8389756))

(declare-fun m!8389784 () Bool)

(assert (=> b!8027675 m!8389784))

(assert (=> b!8027673 m!8389756))

(declare-fun m!8389786 () Bool)

(assert (=> b!8027673 m!8389786))

(assert (=> b!8027673 m!8389758))

(declare-fun m!8389788 () Bool)

(assert (=> b!8027673 m!8389788))

(assert (=> b!8027674 m!8389756))

(declare-fun m!8389790 () Bool)

(assert (=> b!8027674 m!8389790))

(assert (=> b!8027674 m!8389758))

(declare-fun m!8389792 () Bool)

(assert (=> b!8027674 m!8389792))

(assert (=> b!8027674 m!8389790))

(assert (=> b!8027674 m!8389792))

(declare-fun m!8389794 () Bool)

(assert (=> b!8027674 m!8389794))

(assert (=> b!8027644 d!2393780))

(declare-fun d!2393782 () Bool)

(assert (=> d!2393782 (= (tail!16027 p2!159) (t!390876 p2!159))))

(assert (=> b!8027644 d!2393782))

(declare-fun d!2393784 () Bool)

(assert (=> d!2393784 (= (tail!16027 l!3185) (t!390876 l!3185))))

(assert (=> b!8027644 d!2393784))

(declare-fun b!8027687 () Bool)

(declare-fun e!4729308 () Bool)

(assert (=> b!8027687 (= e!4729308 (>= (size!43729 l!3185) (size!43729 p2!159)))))

(declare-fun b!8027684 () Bool)

(declare-fun e!4729309 () Bool)

(declare-fun e!4729310 () Bool)

(assert (=> b!8027684 (= e!4729309 e!4729310)))

(declare-fun res!3174743 () Bool)

(assert (=> b!8027684 (=> (not res!3174743) (not e!4729310))))

(assert (=> b!8027684 (= res!3174743 (not ((_ is Nil!74994) l!3185)))))

(declare-fun b!8027685 () Bool)

(declare-fun res!3174742 () Bool)

(assert (=> b!8027685 (=> (not res!3174742) (not e!4729310))))

(assert (=> b!8027685 (= res!3174742 (= (head!16483 p2!159) (head!16483 l!3185)))))

(declare-fun d!2393786 () Bool)

(assert (=> d!2393786 e!4729308))

(declare-fun res!3174745 () Bool)

(assert (=> d!2393786 (=> res!3174745 e!4729308)))

(declare-fun lt!2721316 () Bool)

(assert (=> d!2393786 (= res!3174745 (not lt!2721316))))

(assert (=> d!2393786 (= lt!2721316 e!4729309)))

(declare-fun res!3174744 () Bool)

(assert (=> d!2393786 (=> res!3174744 e!4729309)))

(assert (=> d!2393786 (= res!3174744 ((_ is Nil!74994) p2!159))))

(assert (=> d!2393786 (= (isPrefix!6869 p2!159 l!3185) lt!2721316)))

(declare-fun b!8027686 () Bool)

(assert (=> b!8027686 (= e!4729310 (isPrefix!6869 (tail!16027 p2!159) (tail!16027 l!3185)))))

(assert (= (and d!2393786 (not res!3174744)) b!8027684))

(assert (= (and b!8027684 res!3174743) b!8027685))

(assert (= (and b!8027685 res!3174742) b!8027686))

(assert (= (and d!2393786 (not res!3174745)) b!8027687))

(declare-fun m!8389796 () Bool)

(assert (=> b!8027687 m!8389796))

(assert (=> b!8027687 m!8389748))

(declare-fun m!8389798 () Bool)

(assert (=> b!8027685 m!8389798))

(declare-fun m!8389800 () Bool)

(assert (=> b!8027685 m!8389800))

(assert (=> b!8027686 m!8389756))

(assert (=> b!8027686 m!8389758))

(assert (=> b!8027686 m!8389756))

(assert (=> b!8027686 m!8389758))

(assert (=> b!8027686 m!8389760))

(assert (=> start!756024 d!2393786))

(declare-fun lt!2721324 () List!75120)

(declare-fun e!4729322 () Bool)

(declare-fun b!8027711 () Bool)

(assert (=> b!8027711 (= e!4729322 (or (not (= s1!480 Nil!74994)) (= lt!2721324 p1!159)))))

(declare-fun b!8027710 () Bool)

(declare-fun res!3174753 () Bool)

(assert (=> b!8027710 (=> (not res!3174753) (not e!4729322))))

(assert (=> b!8027710 (= res!3174753 (= (size!43729 lt!2721324) (+ (size!43729 p1!159) (size!43729 s1!480))))))

(declare-fun b!8027708 () Bool)

(declare-fun e!4729321 () List!75120)

(assert (=> b!8027708 (= e!4729321 s1!480)))

(declare-fun b!8027709 () Bool)

(assert (=> b!8027709 (= e!4729321 (Cons!74994 (h!81442 p1!159) (++!18596 (t!390876 p1!159) s1!480)))))

(declare-fun d!2393788 () Bool)

(assert (=> d!2393788 e!4729322))

(declare-fun res!3174752 () Bool)

(assert (=> d!2393788 (=> (not res!3174752) (not e!4729322))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16005 (List!75120) (InoxSet B!4409))

(assert (=> d!2393788 (= res!3174752 (= (content!16005 lt!2721324) ((_ map or) (content!16005 p1!159) (content!16005 s1!480))))))

(assert (=> d!2393788 (= lt!2721324 e!4729321)))

(declare-fun c!1472862 () Bool)

(assert (=> d!2393788 (= c!1472862 ((_ is Nil!74994) p1!159))))

(assert (=> d!2393788 (= (++!18596 p1!159 s1!480) lt!2721324)))

(assert (= (and d!2393788 c!1472862) b!8027708))

(assert (= (and d!2393788 (not c!1472862)) b!8027709))

(assert (= (and d!2393788 res!3174752) b!8027710))

(assert (= (and b!8027710 res!3174753) b!8027711))

(declare-fun m!8389818 () Bool)

(assert (=> b!8027710 m!8389818))

(assert (=> b!8027710 m!8389746))

(declare-fun m!8389820 () Bool)

(assert (=> b!8027710 m!8389820))

(declare-fun m!8389822 () Bool)

(assert (=> b!8027709 m!8389822))

(declare-fun m!8389824 () Bool)

(assert (=> d!2393788 m!8389824))

(declare-fun m!8389826 () Bool)

(assert (=> d!2393788 m!8389826))

(declare-fun m!8389828 () Bool)

(assert (=> d!2393788 m!8389828))

(assert (=> b!8027643 d!2393788))

(declare-fun b!8027716 () Bool)

(declare-fun e!4729325 () Bool)

(declare-fun tp!2402366 () Bool)

(assert (=> b!8027716 (= e!4729325 (and tp_is_empty!54313 tp!2402366))))

(assert (=> b!8027646 (= tp!2402361 e!4729325)))

(assert (= (and b!8027646 ((_ is Cons!74994) (t!390876 s1!480))) b!8027716))

(declare-fun b!8027717 () Bool)

(declare-fun e!4729326 () Bool)

(declare-fun tp!2402367 () Bool)

(assert (=> b!8027717 (= e!4729326 (and tp_is_empty!54313 tp!2402367))))

(assert (=> b!8027650 (= tp!2402362 e!4729326)))

(assert (= (and b!8027650 ((_ is Cons!74994) (t!390876 p2!159))) b!8027717))

(declare-fun b!8027718 () Bool)

(declare-fun e!4729327 () Bool)

(declare-fun tp!2402368 () Bool)

(assert (=> b!8027718 (= e!4729327 (and tp_is_empty!54313 tp!2402368))))

(assert (=> b!8027649 (= tp!2402363 e!4729327)))

(assert (= (and b!8027649 ((_ is Cons!74994) (t!390876 p1!159))) b!8027718))

(declare-fun b!8027719 () Bool)

(declare-fun e!4729328 () Bool)

(declare-fun tp!2402369 () Bool)

(assert (=> b!8027719 (= e!4729328 (and tp_is_empty!54313 tp!2402369))))

(assert (=> b!8027648 (= tp!2402360 e!4729328)))

(assert (= (and b!8027648 ((_ is Cons!74994) (t!390876 l!3185))) b!8027719))

(check-sat (not d!2393778) (not b!8027673) (not d!2393788) (not b!8027657) (not b!8027671) (not b!8027675) (not b!8027709) (not b!8027669) (not b!8027685) (not b!8027716) tp_is_empty!54313 (not b!8027687) (not b!8027710) (not b!8027670) (not b!8027717) (not b!8027674) (not b!8027718) (not b!8027719) (not b!8027659) (not b!8027686))
(check-sat)
