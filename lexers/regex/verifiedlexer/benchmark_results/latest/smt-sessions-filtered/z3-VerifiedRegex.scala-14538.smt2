; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754980 () Bool)

(assert start!754980)

(declare-fun b!8020675 () Bool)

(declare-fun res!3171348 () Bool)

(declare-fun e!4724799 () Bool)

(assert (=> b!8020675 (=> (not res!3171348) (not e!4724799))))

(declare-datatypes ((B!4169 0))(
  ( (B!4170 (val!32474 Int)) )
))
(declare-datatypes ((List!74986 0))(
  ( (Nil!74862) (Cons!74862 (h!81310 B!4169) (t!390729 List!74986)) )
))
(declare-fun p1!173 () List!74986)

(declare-fun p2!173 () List!74986)

(declare-fun size!43647 (List!74986) Int)

(assert (=> b!8020675 (= res!3171348 (= (size!43647 p1!173) (size!43647 p2!173)))))

(declare-fun b!8020676 () Bool)

(declare-fun e!4724796 () Bool)

(declare-fun tp_is_empty!54057 () Bool)

(declare-fun tp!2400562 () Bool)

(assert (=> b!8020676 (= e!4724796 (and tp_is_empty!54057 tp!2400562))))

(declare-fun b!8020677 () Bool)

(declare-fun ListPrimitiveSize!497 (List!74986) Int)

(assert (=> b!8020677 (= e!4724799 (< (ListPrimitiveSize!497 p1!173) 0))))

(declare-fun res!3171347 () Bool)

(assert (=> start!754980 (=> (not res!3171347) (not e!4724799))))

(declare-fun l!3353 () List!74986)

(declare-fun isPrefix!6793 (List!74986 List!74986) Bool)

(assert (=> start!754980 (= res!3171347 (isPrefix!6793 p1!173 l!3353))))

(assert (=> start!754980 e!4724799))

(declare-fun e!4724798 () Bool)

(assert (=> start!754980 e!4724798))

(declare-fun e!4724797 () Bool)

(assert (=> start!754980 e!4724797))

(assert (=> start!754980 e!4724796))

(declare-fun b!8020678 () Bool)

(declare-fun tp!2400564 () Bool)

(assert (=> b!8020678 (= e!4724797 (and tp_is_empty!54057 tp!2400564))))

(declare-fun b!8020679 () Bool)

(declare-fun tp!2400563 () Bool)

(assert (=> b!8020679 (= e!4724798 (and tp_is_empty!54057 tp!2400563))))

(declare-fun b!8020680 () Bool)

(declare-fun res!3171346 () Bool)

(assert (=> b!8020680 (=> (not res!3171346) (not e!4724799))))

(assert (=> b!8020680 (= res!3171346 (isPrefix!6793 p2!173 l!3353))))

(assert (= (and start!754980 res!3171347) b!8020680))

(assert (= (and b!8020680 res!3171346) b!8020675))

(assert (= (and b!8020675 res!3171348) b!8020677))

(get-info :version)

(assert (= (and start!754980 ((_ is Cons!74862) p1!173)) b!8020679))

(assert (= (and start!754980 ((_ is Cons!74862) l!3353)) b!8020678))

(assert (= (and start!754980 ((_ is Cons!74862) p2!173)) b!8020676))

(declare-fun m!8383608 () Bool)

(assert (=> b!8020675 m!8383608))

(declare-fun m!8383610 () Bool)

(assert (=> b!8020675 m!8383610))

(declare-fun m!8383612 () Bool)

(assert (=> b!8020677 m!8383612))

(declare-fun m!8383614 () Bool)

(assert (=> start!754980 m!8383614))

(declare-fun m!8383616 () Bool)

(assert (=> b!8020680 m!8383616))

(check-sat (not b!8020680) (not b!8020679) (not start!754980) (not b!8020678) (not b!8020677) tp_is_empty!54057 (not b!8020675) (not b!8020676))
(check-sat)
(get-model)

(declare-fun b!8020692 () Bool)

(declare-fun e!4724807 () Bool)

(assert (=> b!8020692 (= e!4724807 (>= (size!43647 l!3353) (size!43647 p2!173)))))

(declare-fun b!8020690 () Bool)

(declare-fun res!3171357 () Bool)

(declare-fun e!4724808 () Bool)

(assert (=> b!8020690 (=> (not res!3171357) (not e!4724808))))

(declare-fun head!16401 (List!74986) B!4169)

(assert (=> b!8020690 (= res!3171357 (= (head!16401 p2!173) (head!16401 l!3353)))))

(declare-fun b!8020691 () Bool)

(declare-fun tail!15936 (List!74986) List!74986)

(assert (=> b!8020691 (= e!4724808 (isPrefix!6793 (tail!15936 p2!173) (tail!15936 l!3353)))))

(declare-fun b!8020689 () Bool)

(declare-fun e!4724806 () Bool)

(assert (=> b!8020689 (= e!4724806 e!4724808)))

(declare-fun res!3171359 () Bool)

(assert (=> b!8020689 (=> (not res!3171359) (not e!4724808))))

(assert (=> b!8020689 (= res!3171359 (not ((_ is Nil!74862) l!3353)))))

(declare-fun d!2391631 () Bool)

(assert (=> d!2391631 e!4724807))

(declare-fun res!3171358 () Bool)

(assert (=> d!2391631 (=> res!3171358 e!4724807)))

(declare-fun lt!2719856 () Bool)

(assert (=> d!2391631 (= res!3171358 (not lt!2719856))))

(assert (=> d!2391631 (= lt!2719856 e!4724806)))

(declare-fun res!3171360 () Bool)

(assert (=> d!2391631 (=> res!3171360 e!4724806)))

(assert (=> d!2391631 (= res!3171360 ((_ is Nil!74862) p2!173))))

(assert (=> d!2391631 (= (isPrefix!6793 p2!173 l!3353) lt!2719856)))

(assert (= (and d!2391631 (not res!3171360)) b!8020689))

(assert (= (and b!8020689 res!3171359) b!8020690))

(assert (= (and b!8020690 res!3171357) b!8020691))

(assert (= (and d!2391631 (not res!3171358)) b!8020692))

(declare-fun m!8383618 () Bool)

(assert (=> b!8020692 m!8383618))

(assert (=> b!8020692 m!8383610))

(declare-fun m!8383620 () Bool)

(assert (=> b!8020690 m!8383620))

(declare-fun m!8383622 () Bool)

(assert (=> b!8020690 m!8383622))

(declare-fun m!8383624 () Bool)

(assert (=> b!8020691 m!8383624))

(declare-fun m!8383626 () Bool)

(assert (=> b!8020691 m!8383626))

(assert (=> b!8020691 m!8383624))

(assert (=> b!8020691 m!8383626))

(declare-fun m!8383628 () Bool)

(assert (=> b!8020691 m!8383628))

(assert (=> b!8020680 d!2391631))

(declare-fun d!2391635 () Bool)

(declare-fun lt!2719861 () Int)

(assert (=> d!2391635 (>= lt!2719861 0)))

(declare-fun e!4724813 () Int)

(assert (=> d!2391635 (= lt!2719861 e!4724813)))

(declare-fun c!1472059 () Bool)

(assert (=> d!2391635 (= c!1472059 ((_ is Nil!74862) p1!173))))

(assert (=> d!2391635 (= (size!43647 p1!173) lt!2719861)))

(declare-fun b!8020701 () Bool)

(assert (=> b!8020701 (= e!4724813 0)))

(declare-fun b!8020702 () Bool)

(assert (=> b!8020702 (= e!4724813 (+ 1 (size!43647 (t!390729 p1!173))))))

(assert (= (and d!2391635 c!1472059) b!8020701))

(assert (= (and d!2391635 (not c!1472059)) b!8020702))

(declare-fun m!8383630 () Bool)

(assert (=> b!8020702 m!8383630))

(assert (=> b!8020675 d!2391635))

(declare-fun d!2391637 () Bool)

(declare-fun lt!2719862 () Int)

(assert (=> d!2391637 (>= lt!2719862 0)))

(declare-fun e!4724814 () Int)

(assert (=> d!2391637 (= lt!2719862 e!4724814)))

(declare-fun c!1472060 () Bool)

(assert (=> d!2391637 (= c!1472060 ((_ is Nil!74862) p2!173))))

(assert (=> d!2391637 (= (size!43647 p2!173) lt!2719862)))

(declare-fun b!8020703 () Bool)

(assert (=> b!8020703 (= e!4724814 0)))

(declare-fun b!8020704 () Bool)

(assert (=> b!8020704 (= e!4724814 (+ 1 (size!43647 (t!390729 p2!173))))))

(assert (= (and d!2391637 c!1472060) b!8020703))

(assert (= (and d!2391637 (not c!1472060)) b!8020704))

(declare-fun m!8383632 () Bool)

(assert (=> b!8020704 m!8383632))

(assert (=> b!8020675 d!2391637))

(declare-fun d!2391639 () Bool)

(declare-fun lt!2719867 () Int)

(assert (=> d!2391639 (>= lt!2719867 0)))

(declare-fun e!4724819 () Int)

(assert (=> d!2391639 (= lt!2719867 e!4724819)))

(declare-fun c!1472065 () Bool)

(assert (=> d!2391639 (= c!1472065 ((_ is Nil!74862) p1!173))))

(assert (=> d!2391639 (= (ListPrimitiveSize!497 p1!173) lt!2719867)))

(declare-fun b!8020713 () Bool)

(assert (=> b!8020713 (= e!4724819 0)))

(declare-fun b!8020714 () Bool)

(assert (=> b!8020714 (= e!4724819 (+ 1 (ListPrimitiveSize!497 (t!390729 p1!173))))))

(assert (= (and d!2391639 c!1472065) b!8020713))

(assert (= (and d!2391639 (not c!1472065)) b!8020714))

(declare-fun m!8383638 () Bool)

(assert (=> b!8020714 m!8383638))

(assert (=> b!8020677 d!2391639))

(declare-fun b!8020718 () Bool)

(declare-fun e!4724821 () Bool)

(assert (=> b!8020718 (= e!4724821 (>= (size!43647 l!3353) (size!43647 p1!173)))))

(declare-fun b!8020716 () Bool)

(declare-fun res!3171361 () Bool)

(declare-fun e!4724822 () Bool)

(assert (=> b!8020716 (=> (not res!3171361) (not e!4724822))))

(assert (=> b!8020716 (= res!3171361 (= (head!16401 p1!173) (head!16401 l!3353)))))

(declare-fun b!8020717 () Bool)

(assert (=> b!8020717 (= e!4724822 (isPrefix!6793 (tail!15936 p1!173) (tail!15936 l!3353)))))

(declare-fun b!8020715 () Bool)

(declare-fun e!4724820 () Bool)

(assert (=> b!8020715 (= e!4724820 e!4724822)))

(declare-fun res!3171363 () Bool)

(assert (=> b!8020715 (=> (not res!3171363) (not e!4724822))))

(assert (=> b!8020715 (= res!3171363 (not ((_ is Nil!74862) l!3353)))))

(declare-fun d!2391645 () Bool)

(assert (=> d!2391645 e!4724821))

(declare-fun res!3171362 () Bool)

(assert (=> d!2391645 (=> res!3171362 e!4724821)))

(declare-fun lt!2719868 () Bool)

(assert (=> d!2391645 (= res!3171362 (not lt!2719868))))

(assert (=> d!2391645 (= lt!2719868 e!4724820)))

(declare-fun res!3171364 () Bool)

(assert (=> d!2391645 (=> res!3171364 e!4724820)))

(assert (=> d!2391645 (= res!3171364 ((_ is Nil!74862) p1!173))))

(assert (=> d!2391645 (= (isPrefix!6793 p1!173 l!3353) lt!2719868)))

(assert (= (and d!2391645 (not res!3171364)) b!8020715))

(assert (= (and b!8020715 res!3171363) b!8020716))

(assert (= (and b!8020716 res!3171361) b!8020717))

(assert (= (and d!2391645 (not res!3171362)) b!8020718))

(assert (=> b!8020718 m!8383618))

(assert (=> b!8020718 m!8383608))

(declare-fun m!8383640 () Bool)

(assert (=> b!8020716 m!8383640))

(assert (=> b!8020716 m!8383622))

(declare-fun m!8383642 () Bool)

(assert (=> b!8020717 m!8383642))

(assert (=> b!8020717 m!8383626))

(assert (=> b!8020717 m!8383642))

(assert (=> b!8020717 m!8383626))

(declare-fun m!8383644 () Bool)

(assert (=> b!8020717 m!8383644))

(assert (=> start!754980 d!2391645))

(declare-fun b!8020723 () Bool)

(declare-fun e!4724825 () Bool)

(declare-fun tp!2400567 () Bool)

(assert (=> b!8020723 (= e!4724825 (and tp_is_empty!54057 tp!2400567))))

(assert (=> b!8020676 (= tp!2400562 e!4724825)))

(assert (= (and b!8020676 ((_ is Cons!74862) (t!390729 p2!173))) b!8020723))

(declare-fun b!8020724 () Bool)

(declare-fun e!4724826 () Bool)

(declare-fun tp!2400568 () Bool)

(assert (=> b!8020724 (= e!4724826 (and tp_is_empty!54057 tp!2400568))))

(assert (=> b!8020678 (= tp!2400564 e!4724826)))

(assert (= (and b!8020678 ((_ is Cons!74862) (t!390729 l!3353))) b!8020724))

(declare-fun b!8020725 () Bool)

(declare-fun e!4724827 () Bool)

(declare-fun tp!2400569 () Bool)

(assert (=> b!8020725 (= e!4724827 (and tp_is_empty!54057 tp!2400569))))

(assert (=> b!8020679 (= tp!2400563 e!4724827)))

(assert (= (and b!8020679 ((_ is Cons!74862) (t!390729 p1!173))) b!8020725))

(check-sat (not b!8020725) (not b!8020690) (not b!8020692) (not b!8020716) (not b!8020723) (not b!8020704) tp_is_empty!54057 (not b!8020691) (not b!8020702) (not b!8020718) (not b!8020724) (not b!8020714) (not b!8020717))
(check-sat)
