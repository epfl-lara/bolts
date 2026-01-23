; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754994 () Bool)

(assert start!754994)

(declare-fun b!8020769 () Bool)

(declare-fun res!3171389 () Bool)

(declare-fun e!4724859 () Bool)

(assert (=> b!8020769 (=> (not res!3171389) (not e!4724859))))

(declare-datatypes ((B!4171 0))(
  ( (B!4172 (val!32475 Int)) )
))
(declare-datatypes ((List!74987 0))(
  ( (Nil!74863) (Cons!74863 (h!81311 B!4171) (t!390730 List!74987)) )
))
(declare-fun p1!173 () List!74987)

(assert (=> b!8020769 (= res!3171389 (is-Cons!74863 p1!173))))

(declare-fun b!8020771 () Bool)

(declare-fun e!4724856 () Bool)

(declare-fun tp_is_empty!54059 () Bool)

(declare-fun tp!2400582 () Bool)

(assert (=> b!8020771 (= e!4724856 (and tp_is_empty!54059 tp!2400582))))

(declare-fun b!8020772 () Bool)

(declare-fun res!3171390 () Bool)

(assert (=> b!8020772 (=> (not res!3171390) (not e!4724859))))

(declare-fun p2!173 () List!74987)

(declare-fun l!3353 () List!74987)

(declare-fun isPrefix!6794 (List!74987 List!74987) Bool)

(assert (=> b!8020772 (= res!3171390 (isPrefix!6794 p2!173 l!3353))))

(declare-fun b!8020773 () Bool)

(declare-fun res!3171391 () Bool)

(assert (=> b!8020773 (=> (not res!3171391) (not e!4724859))))

(declare-fun size!43648 (List!74987) Int)

(assert (=> b!8020773 (= res!3171391 (= (size!43648 p1!173) (size!43648 p2!173)))))

(declare-fun b!8020774 () Bool)

(declare-fun e!4724857 () Bool)

(declare-fun tp!2400581 () Bool)

(assert (=> b!8020774 (= e!4724857 (and tp_is_empty!54059 tp!2400581))))

(declare-fun b!8020775 () Bool)

(declare-fun tail!15937 (List!74987) List!74987)

(assert (=> b!8020775 (= e!4724859 (not (isPrefix!6794 (t!390730 p1!173) (tail!15937 l!3353))))))

(declare-fun res!3171392 () Bool)

(assert (=> start!754994 (=> (not res!3171392) (not e!4724859))))

(assert (=> start!754994 (= res!3171392 (isPrefix!6794 p1!173 l!3353))))

(assert (=> start!754994 e!4724859))

(assert (=> start!754994 e!4724857))

(declare-fun e!4724858 () Bool)

(assert (=> start!754994 e!4724858))

(assert (=> start!754994 e!4724856))

(declare-fun b!8020770 () Bool)

(declare-fun tp!2400583 () Bool)

(assert (=> b!8020770 (= e!4724858 (and tp_is_empty!54059 tp!2400583))))

(assert (= (and start!754994 res!3171392) b!8020772))

(assert (= (and b!8020772 res!3171390) b!8020773))

(assert (= (and b!8020773 res!3171391) b!8020769))

(assert (= (and b!8020769 res!3171389) b!8020775))

(assert (= (and start!754994 (is-Cons!74863 p1!173)) b!8020774))

(assert (= (and start!754994 (is-Cons!74863 l!3353)) b!8020770))

(assert (= (and start!754994 (is-Cons!74863 p2!173)) b!8020771))

(declare-fun m!8383666 () Bool)

(assert (=> b!8020772 m!8383666))

(declare-fun m!8383668 () Bool)

(assert (=> b!8020773 m!8383668))

(declare-fun m!8383670 () Bool)

(assert (=> b!8020773 m!8383670))

(declare-fun m!8383672 () Bool)

(assert (=> b!8020775 m!8383672))

(assert (=> b!8020775 m!8383672))

(declare-fun m!8383674 () Bool)

(assert (=> b!8020775 m!8383674))

(declare-fun m!8383676 () Bool)

(assert (=> start!754994 m!8383676))

(push 1)

(assert (not b!8020774))

(assert (not b!8020770))

(assert (not b!8020773))

(assert tp_is_empty!54059)

(assert (not start!754994))

(assert (not b!8020775))

(assert (not b!8020771))

(assert (not b!8020772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2391652 () Bool)

(declare-fun lt!2719878 () Int)

(assert (=> d!2391652 (>= lt!2719878 0)))

(declare-fun e!4724874 () Int)

(assert (=> d!2391652 (= lt!2719878 e!4724874)))

(declare-fun c!1472071 () Bool)

(assert (=> d!2391652 (= c!1472071 (is-Nil!74863 p1!173))))

(assert (=> d!2391652 (= (size!43648 p1!173) lt!2719878)))

(declare-fun b!8020801 () Bool)

(assert (=> b!8020801 (= e!4724874 0)))

(declare-fun b!8020802 () Bool)

(assert (=> b!8020802 (= e!4724874 (+ 1 (size!43648 (t!390730 p1!173))))))

(assert (= (and d!2391652 c!1472071) b!8020801))

(assert (= (and d!2391652 (not c!1472071)) b!8020802))

(declare-fun m!8383690 () Bool)

(assert (=> b!8020802 m!8383690))

(assert (=> b!8020773 d!2391652))

(declare-fun d!2391654 () Bool)

(declare-fun lt!2719879 () Int)

(assert (=> d!2391654 (>= lt!2719879 0)))

(declare-fun e!4724875 () Int)

(assert (=> d!2391654 (= lt!2719879 e!4724875)))

(declare-fun c!1472072 () Bool)

(assert (=> d!2391654 (= c!1472072 (is-Nil!74863 p2!173))))

(assert (=> d!2391654 (= (size!43648 p2!173) lt!2719879)))

(declare-fun b!8020803 () Bool)

(assert (=> b!8020803 (= e!4724875 0)))

(declare-fun b!8020804 () Bool)

(assert (=> b!8020804 (= e!4724875 (+ 1 (size!43648 (t!390730 p2!173))))))

(assert (= (and d!2391654 c!1472072) b!8020803))

(assert (= (and d!2391654 (not c!1472072)) b!8020804))

(declare-fun m!8383692 () Bool)

(assert (=> b!8020804 m!8383692))

(assert (=> b!8020773 d!2391654))

(declare-fun b!8020815 () Bool)

(declare-fun e!4724883 () Bool)

(assert (=> b!8020815 (= e!4724883 (isPrefix!6794 (tail!15937 p1!173) (tail!15937 l!3353)))))

(declare-fun b!8020813 () Bool)

(declare-fun e!4724882 () Bool)

(assert (=> b!8020813 (= e!4724882 e!4724883)))

(declare-fun res!3171415 () Bool)

(assert (=> b!8020813 (=> (not res!3171415) (not e!4724883))))

(assert (=> b!8020813 (= res!3171415 (not (is-Nil!74863 l!3353)))))

(declare-fun d!2391656 () Bool)

(declare-fun e!4724884 () Bool)

(assert (=> d!2391656 e!4724884))

(declare-fun res!3171416 () Bool)

(assert (=> d!2391656 (=> res!3171416 e!4724884)))

(declare-fun lt!2719882 () Bool)

(assert (=> d!2391656 (= res!3171416 (not lt!2719882))))

(assert (=> d!2391656 (= lt!2719882 e!4724882)))

(declare-fun res!3171413 () Bool)

(assert (=> d!2391656 (=> res!3171413 e!4724882)))

(assert (=> d!2391656 (= res!3171413 (is-Nil!74863 p1!173))))

(assert (=> d!2391656 (= (isPrefix!6794 p1!173 l!3353) lt!2719882)))

(declare-fun b!8020816 () Bool)

(assert (=> b!8020816 (= e!4724884 (>= (size!43648 l!3353) (size!43648 p1!173)))))

(declare-fun b!8020814 () Bool)

(declare-fun res!3171414 () Bool)

(assert (=> b!8020814 (=> (not res!3171414) (not e!4724883))))

(declare-fun head!16402 (List!74987) B!4171)

(assert (=> b!8020814 (= res!3171414 (= (head!16402 p1!173) (head!16402 l!3353)))))

(assert (= (and d!2391656 (not res!3171413)) b!8020813))

(assert (= (and b!8020813 res!3171415) b!8020814))

(assert (= (and b!8020814 res!3171414) b!8020815))

(assert (= (and d!2391656 (not res!3171416)) b!8020816))

(declare-fun m!8383694 () Bool)

(assert (=> b!8020815 m!8383694))

(assert (=> b!8020815 m!8383672))

(assert (=> b!8020815 m!8383694))

(assert (=> b!8020815 m!8383672))

(declare-fun m!8383696 () Bool)

(assert (=> b!8020815 m!8383696))

(declare-fun m!8383698 () Bool)

(assert (=> b!8020816 m!8383698))

(assert (=> b!8020816 m!8383668))

(declare-fun m!8383700 () Bool)

(assert (=> b!8020814 m!8383700))

(declare-fun m!8383702 () Bool)

(assert (=> b!8020814 m!8383702))

(assert (=> start!754994 d!2391656))

(declare-fun b!8020819 () Bool)

(declare-fun e!4724886 () Bool)

(assert (=> b!8020819 (= e!4724886 (isPrefix!6794 (tail!15937 p2!173) (tail!15937 l!3353)))))

(declare-fun b!8020817 () Bool)

(declare-fun e!4724885 () Bool)

(assert (=> b!8020817 (= e!4724885 e!4724886)))

(declare-fun res!3171419 () Bool)

(assert (=> b!8020817 (=> (not res!3171419) (not e!4724886))))

(assert (=> b!8020817 (= res!3171419 (not (is-Nil!74863 l!3353)))))

(declare-fun d!2391660 () Bool)

(declare-fun e!4724887 () Bool)

(assert (=> d!2391660 e!4724887))

(declare-fun res!3171420 () Bool)

(assert (=> d!2391660 (=> res!3171420 e!4724887)))

(declare-fun lt!2719883 () Bool)

(assert (=> d!2391660 (= res!3171420 (not lt!2719883))))

(assert (=> d!2391660 (= lt!2719883 e!4724885)))

(declare-fun res!3171417 () Bool)

(assert (=> d!2391660 (=> res!3171417 e!4724885)))

(assert (=> d!2391660 (= res!3171417 (is-Nil!74863 p2!173))))

(assert (=> d!2391660 (= (isPrefix!6794 p2!173 l!3353) lt!2719883)))

(declare-fun b!8020820 () Bool)

(assert (=> b!8020820 (= e!4724887 (>= (size!43648 l!3353) (size!43648 p2!173)))))

(declare-fun b!8020818 () Bool)

(declare-fun res!3171418 () Bool)

(assert (=> b!8020818 (=> (not res!3171418) (not e!4724886))))

(assert (=> b!8020818 (= res!3171418 (= (head!16402 p2!173) (head!16402 l!3353)))))

(assert (= (and d!2391660 (not res!3171417)) b!8020817))

(assert (= (and b!8020817 res!3171419) b!8020818))

(assert (= (and b!8020818 res!3171418) b!8020819))

(assert (= (and d!2391660 (not res!3171420)) b!8020820))

(declare-fun m!8383704 () Bool)

(assert (=> b!8020819 m!8383704))

(assert (=> b!8020819 m!8383672))

(assert (=> b!8020819 m!8383704))

(assert (=> b!8020819 m!8383672))

(declare-fun m!8383706 () Bool)

(assert (=> b!8020819 m!8383706))

(assert (=> b!8020820 m!8383698))

(assert (=> b!8020820 m!8383670))

(declare-fun m!8383708 () Bool)

(assert (=> b!8020818 m!8383708))

(assert (=> b!8020818 m!8383702))

(assert (=> b!8020772 d!2391660))

(declare-fun b!8020823 () Bool)

(declare-fun e!4724889 () Bool)

(assert (=> b!8020823 (= e!4724889 (isPrefix!6794 (tail!15937 (t!390730 p1!173)) (tail!15937 (tail!15937 l!3353))))))

(declare-fun b!8020821 () Bool)

(declare-fun e!4724888 () Bool)

(assert (=> b!8020821 (= e!4724888 e!4724889)))

(declare-fun res!3171423 () Bool)

(assert (=> b!8020821 (=> (not res!3171423) (not e!4724889))))

(assert (=> b!8020821 (= res!3171423 (not (is-Nil!74863 (tail!15937 l!3353))))))

(declare-fun d!2391662 () Bool)

(declare-fun e!4724890 () Bool)

(assert (=> d!2391662 e!4724890))

(declare-fun res!3171424 () Bool)

(assert (=> d!2391662 (=> res!3171424 e!4724890)))

(declare-fun lt!2719884 () Bool)

(assert (=> d!2391662 (= res!3171424 (not lt!2719884))))

(assert (=> d!2391662 (= lt!2719884 e!4724888)))

(declare-fun res!3171421 () Bool)

(assert (=> d!2391662 (=> res!3171421 e!4724888)))

(assert (=> d!2391662 (= res!3171421 (is-Nil!74863 (t!390730 p1!173)))))

(assert (=> d!2391662 (= (isPrefix!6794 (t!390730 p1!173) (tail!15937 l!3353)) lt!2719884)))

(declare-fun b!8020824 () Bool)

(assert (=> b!8020824 (= e!4724890 (>= (size!43648 (tail!15937 l!3353)) (size!43648 (t!390730 p1!173))))))

(declare-fun b!8020822 () Bool)

(declare-fun res!3171422 () Bool)

(assert (=> b!8020822 (=> (not res!3171422) (not e!4724889))))

(assert (=> b!8020822 (= res!3171422 (= (head!16402 (t!390730 p1!173)) (head!16402 (tail!15937 l!3353))))))

(assert (= (and d!2391662 (not res!3171421)) b!8020821))

(assert (= (and b!8020821 res!3171423) b!8020822))

(assert (= (and b!8020822 res!3171422) b!8020823))

(assert (= (and d!2391662 (not res!3171424)) b!8020824))

(declare-fun m!8383710 () Bool)

(assert (=> b!8020823 m!8383710))

(assert (=> b!8020823 m!8383672))

(declare-fun m!8383712 () Bool)

(assert (=> b!8020823 m!8383712))

(assert (=> b!8020823 m!8383710))

(assert (=> b!8020823 m!8383712))

(declare-fun m!8383714 () Bool)

(assert (=> b!8020823 m!8383714))

(assert (=> b!8020824 m!8383672))

(declare-fun m!8383716 () Bool)

(assert (=> b!8020824 m!8383716))

(assert (=> b!8020824 m!8383690))

(declare-fun m!8383718 () Bool)

(assert (=> b!8020822 m!8383718))

(assert (=> b!8020822 m!8383672))

(declare-fun m!8383720 () Bool)

(assert (=> b!8020822 m!8383720))

(assert (=> b!8020775 d!2391662))

(declare-fun d!2391664 () Bool)

(assert (=> d!2391664 (= (tail!15937 l!3353) (t!390730 l!3353))))

(assert (=> b!8020775 d!2391664))

(declare-fun b!8020829 () Bool)

(declare-fun e!4724893 () Bool)

(declare-fun tp!2400595 () Bool)

(assert (=> b!8020829 (= e!4724893 (and tp_is_empty!54059 tp!2400595))))

(assert (=> b!8020771 (= tp!2400582 e!4724893)))

(assert (= (and b!8020771 (is-Cons!74863 (t!390730 p2!173))) b!8020829))

(declare-fun b!8020830 () Bool)

(declare-fun e!4724894 () Bool)

(declare-fun tp!2400596 () Bool)

(assert (=> b!8020830 (= e!4724894 (and tp_is_empty!54059 tp!2400596))))

(assert (=> b!8020770 (= tp!2400583 e!4724894)))

(assert (= (and b!8020770 (is-Cons!74863 (t!390730 l!3353))) b!8020830))

(declare-fun b!8020831 () Bool)

(declare-fun e!4724895 () Bool)

(declare-fun tp!2400597 () Bool)

(assert (=> b!8020831 (= e!4724895 (and tp_is_empty!54059 tp!2400597))))

(assert (=> b!8020774 (= tp!2400581 e!4724895)))

(assert (= (and b!8020774 (is-Cons!74863 (t!390730 p1!173))) b!8020831))

(push 1)

(assert (not b!8020824))

(assert (not b!8020802))

(assert (not b!8020830))

(assert (not b!8020814))

(assert (not b!8020819))

(assert tp_is_empty!54059)

(assert (not b!8020831))

(assert (not b!8020816))

(assert (not b!8020815))

(assert (not b!8020822))

(assert (not b!8020823))

(assert (not b!8020820))

(assert (not b!8020818))

(assert (not b!8020829))

(assert (not b!8020804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2391676 () Bool)

(assert (=> d!2391676 (= (head!16402 p1!173) (h!81311 p1!173))))

(assert (=> b!8020814 d!2391676))

(declare-fun d!2391678 () Bool)

(assert (=> d!2391678 (= (head!16402 l!3353) (h!81311 l!3353))))

(assert (=> b!8020814 d!2391678))

(declare-fun d!2391680 () Bool)

(declare-fun lt!2719894 () Int)

(assert (=> d!2391680 (>= lt!2719894 0)))

(declare-fun e!4724920 () Int)

(assert (=> d!2391680 (= lt!2719894 e!4724920)))

(declare-fun c!1472077 () Bool)

(assert (=> d!2391680 (= c!1472077 (is-Nil!74863 (t!390730 p2!173)))))

(assert (=> d!2391680 (= (size!43648 (t!390730 p2!173)) lt!2719894)))

(declare-fun b!8020867 () Bool)

(assert (=> b!8020867 (= e!4724920 0)))

(declare-fun b!8020868 () Bool)

(assert (=> b!8020868 (= e!4724920 (+ 1 (size!43648 (t!390730 (t!390730 p2!173)))))))

(assert (= (and d!2391680 c!1472077) b!8020867))

(assert (= (and d!2391680 (not c!1472077)) b!8020868))

(declare-fun m!8383754 () Bool)

(assert (=> b!8020868 m!8383754))

(assert (=> b!8020804 d!2391680))

(declare-fun d!2391682 () Bool)

(assert (=> d!2391682 (= (head!16402 p2!173) (h!81311 p2!173))))

(assert (=> b!8020818 d!2391682))

(assert (=> b!8020818 d!2391678))

(declare-fun b!8020871 () Bool)

(declare-fun e!4724922 () Bool)

(assert (=> b!8020871 (= e!4724922 (isPrefix!6794 (tail!15937 (tail!15937 (t!390730 p1!173))) (tail!15937 (tail!15937 (tail!15937 l!3353)))))))

(declare-fun b!8020869 () Bool)

(declare-fun e!4724921 () Bool)

(assert (=> b!8020869 (= e!4724921 e!4724922)))

(declare-fun res!3171447 () Bool)

(assert (=> b!8020869 (=> (not res!3171447) (not e!4724922))))

(assert (=> b!8020869 (= res!3171447 (not (is-Nil!74863 (tail!15937 (tail!15937 l!3353)))))))

(declare-fun d!2391684 () Bool)

(declare-fun e!4724923 () Bool)

(assert (=> d!2391684 e!4724923))

(declare-fun res!3171448 () Bool)

(assert (=> d!2391684 (=> res!3171448 e!4724923)))

(declare-fun lt!2719895 () Bool)

(assert (=> d!2391684 (= res!3171448 (not lt!2719895))))

(assert (=> d!2391684 (= lt!2719895 e!4724921)))

(declare-fun res!3171445 () Bool)

(assert (=> d!2391684 (=> res!3171445 e!4724921)))

(assert (=> d!2391684 (= res!3171445 (is-Nil!74863 (tail!15937 (t!390730 p1!173))))))

(assert (=> d!2391684 (= (isPrefix!6794 (tail!15937 (t!390730 p1!173)) (tail!15937 (tail!15937 l!3353))) lt!2719895)))

(declare-fun b!8020872 () Bool)

(assert (=> b!8020872 (= e!4724923 (>= (size!43648 (tail!15937 (tail!15937 l!3353))) (size!43648 (tail!15937 (t!390730 p1!173)))))))

(declare-fun b!8020870 () Bool)

(declare-fun res!3171446 () Bool)

(assert (=> b!8020870 (=> (not res!3171446) (not e!4724922))))

(assert (=> b!8020870 (= res!3171446 (= (head!16402 (tail!15937 (t!390730 p1!173))) (head!16402 (tail!15937 (tail!15937 l!3353)))))))

(assert (= (and d!2391684 (not res!3171445)) b!8020869))

(assert (= (and b!8020869 res!3171447) b!8020870))

(assert (= (and b!8020870 res!3171446) b!8020871))

(assert (= (and d!2391684 (not res!3171448)) b!8020872))

(assert (=> b!8020871 m!8383710))

(declare-fun m!8383756 () Bool)

(assert (=> b!8020871 m!8383756))

(assert (=> b!8020871 m!8383712))

(declare-fun m!8383758 () Bool)

(assert (=> b!8020871 m!8383758))

(assert (=> b!8020871 m!8383756))

(assert (=> b!8020871 m!8383758))

(declare-fun m!8383760 () Bool)

(assert (=> b!8020871 m!8383760))

(assert (=> b!8020872 m!8383712))

(declare-fun m!8383762 () Bool)

(assert (=> b!8020872 m!8383762))

(assert (=> b!8020872 m!8383710))

(declare-fun m!8383764 () Bool)

(assert (=> b!8020872 m!8383764))

(assert (=> b!8020870 m!8383710))

(declare-fun m!8383766 () Bool)

(assert (=> b!8020870 m!8383766))

(assert (=> b!8020870 m!8383712))

(declare-fun m!8383768 () Bool)

(assert (=> b!8020870 m!8383768))

(assert (=> b!8020823 d!2391684))

(declare-fun d!2391686 () Bool)

(assert (=> d!2391686 (= (tail!15937 (t!390730 p1!173)) (t!390730 (t!390730 p1!173)))))

(assert (=> b!8020823 d!2391686))

(declare-fun d!2391688 () Bool)

(assert (=> d!2391688 (= (tail!15937 (tail!15937 l!3353)) (t!390730 (tail!15937 l!3353)))))

(assert (=> b!8020823 d!2391688))

(declare-fun d!2391690 () Bool)

(declare-fun lt!2719896 () Int)

(assert (=> d!2391690 (>= lt!2719896 0)))

(declare-fun e!4724924 () Int)

(assert (=> d!2391690 (= lt!2719896 e!4724924)))

(declare-fun c!1472078 () Bool)

(assert (=> d!2391690 (= c!1472078 (is-Nil!74863 l!3353))))

(assert (=> d!2391690 (= (size!43648 l!3353) lt!2719896)))

(declare-fun b!8020873 () Bool)

(assert (=> b!8020873 (= e!4724924 0)))

(declare-fun b!8020874 () Bool)

(assert (=> b!8020874 (= e!4724924 (+ 1 (size!43648 (t!390730 l!3353))))))

(assert (= (and d!2391690 c!1472078) b!8020873))

(assert (= (and d!2391690 (not c!1472078)) b!8020874))

(declare-fun m!8383770 () Bool)

(assert (=> b!8020874 m!8383770))

(assert (=> b!8020816 d!2391690))

(assert (=> b!8020816 d!2391652))

(declare-fun d!2391692 () Bool)

(assert (=> d!2391692 (= (head!16402 (t!390730 p1!173)) (h!81311 (t!390730 p1!173)))))

(assert (=> b!8020822 d!2391692))

(declare-fun d!2391694 () Bool)

(assert (=> d!2391694 (= (head!16402 (tail!15937 l!3353)) (h!81311 (tail!15937 l!3353)))))

(assert (=> b!8020822 d!2391694))

(declare-fun b!8020877 () Bool)

(declare-fun e!4724926 () Bool)

(assert (=> b!8020877 (= e!4724926 (isPrefix!6794 (tail!15937 (tail!15937 p1!173)) (tail!15937 (tail!15937 l!3353))))))

(declare-fun b!8020875 () Bool)

(declare-fun e!4724925 () Bool)

(assert (=> b!8020875 (= e!4724925 e!4724926)))

(declare-fun res!3171451 () Bool)

(assert (=> b!8020875 (=> (not res!3171451) (not e!4724926))))

(assert (=> b!8020875 (= res!3171451 (not (is-Nil!74863 (tail!15937 l!3353))))))

(declare-fun d!2391696 () Bool)

(declare-fun e!4724927 () Bool)

(assert (=> d!2391696 e!4724927))

(declare-fun res!3171452 () Bool)

(assert (=> d!2391696 (=> res!3171452 e!4724927)))

(declare-fun lt!2719897 () Bool)

(assert (=> d!2391696 (= res!3171452 (not lt!2719897))))

(assert (=> d!2391696 (= lt!2719897 e!4724925)))

(declare-fun res!3171449 () Bool)

(assert (=> d!2391696 (=> res!3171449 e!4724925)))

(assert (=> d!2391696 (= res!3171449 (is-Nil!74863 (tail!15937 p1!173)))))

(assert (=> d!2391696 (= (isPrefix!6794 (tail!15937 p1!173) (tail!15937 l!3353)) lt!2719897)))

(declare-fun b!8020878 () Bool)

(assert (=> b!8020878 (= e!4724927 (>= (size!43648 (tail!15937 l!3353)) (size!43648 (tail!15937 p1!173))))))

(declare-fun b!8020876 () Bool)

(declare-fun res!3171450 () Bool)

(assert (=> b!8020876 (=> (not res!3171450) (not e!4724926))))

(assert (=> b!8020876 (= res!3171450 (= (head!16402 (tail!15937 p1!173)) (head!16402 (tail!15937 l!3353))))))

(assert (= (and d!2391696 (not res!3171449)) b!8020875))

(assert (= (and b!8020875 res!3171451) b!8020876))

(assert (= (and b!8020876 res!3171450) b!8020877))

(assert (= (and d!2391696 (not res!3171452)) b!8020878))

(assert (=> b!8020877 m!8383694))

(declare-fun m!8383772 () Bool)

(assert (=> b!8020877 m!8383772))

(assert (=> b!8020877 m!8383672))

(assert (=> b!8020877 m!8383712))

(assert (=> b!8020877 m!8383772))

(assert (=> b!8020877 m!8383712))

(declare-fun m!8383774 () Bool)

(assert (=> b!8020877 m!8383774))

(assert (=> b!8020878 m!8383672))

(assert (=> b!8020878 m!8383716))

(assert (=> b!8020878 m!8383694))

(declare-fun m!8383776 () Bool)

(assert (=> b!8020878 m!8383776))

(assert (=> b!8020876 m!8383694))

(declare-fun m!8383778 () Bool)

(assert (=> b!8020876 m!8383778))

(assert (=> b!8020876 m!8383672))

(assert (=> b!8020876 m!8383720))

(assert (=> b!8020815 d!2391696))

(declare-fun d!2391698 () Bool)

(assert (=> d!2391698 (= (tail!15937 p1!173) (t!390730 p1!173))))

(assert (=> b!8020815 d!2391698))

(assert (=> b!8020815 d!2391664))

(declare-fun d!2391700 () Bool)

(declare-fun lt!2719898 () Int)

(assert (=> d!2391700 (>= lt!2719898 0)))

(declare-fun e!4724928 () Int)

(assert (=> d!2391700 (= lt!2719898 e!4724928)))

(declare-fun c!1472079 () Bool)

(assert (=> d!2391700 (= c!1472079 (is-Nil!74863 (t!390730 p1!173)))))

(assert (=> d!2391700 (= (size!43648 (t!390730 p1!173)) lt!2719898)))

(declare-fun b!8020879 () Bool)

(assert (=> b!8020879 (= e!4724928 0)))

(declare-fun b!8020880 () Bool)

(assert (=> b!8020880 (= e!4724928 (+ 1 (size!43648 (t!390730 (t!390730 p1!173)))))))

(assert (= (and d!2391700 c!1472079) b!8020879))

(assert (= (and d!2391700 (not c!1472079)) b!8020880))

(declare-fun m!8383780 () Bool)

(assert (=> b!8020880 m!8383780))

(assert (=> b!8020802 d!2391700))

(assert (=> b!8020820 d!2391690))

(assert (=> b!8020820 d!2391654))

(declare-fun b!8020883 () Bool)

(declare-fun e!4724930 () Bool)

(assert (=> b!8020883 (= e!4724930 (isPrefix!6794 (tail!15937 (tail!15937 p2!173)) (tail!15937 (tail!15937 l!3353))))))

(declare-fun b!8020881 () Bool)

(declare-fun e!4724929 () Bool)

(assert (=> b!8020881 (= e!4724929 e!4724930)))

(declare-fun res!3171455 () Bool)

(assert (=> b!8020881 (=> (not res!3171455) (not e!4724930))))

(assert (=> b!8020881 (= res!3171455 (not (is-Nil!74863 (tail!15937 l!3353))))))

(declare-fun d!2391702 () Bool)

(declare-fun e!4724931 () Bool)

(assert (=> d!2391702 e!4724931))

(declare-fun res!3171456 () Bool)

(assert (=> d!2391702 (=> res!3171456 e!4724931)))

(declare-fun lt!2719899 () Bool)

(assert (=> d!2391702 (= res!3171456 (not lt!2719899))))

(assert (=> d!2391702 (= lt!2719899 e!4724929)))

(declare-fun res!3171453 () Bool)

(assert (=> d!2391702 (=> res!3171453 e!4724929)))

(assert (=> d!2391702 (= res!3171453 (is-Nil!74863 (tail!15937 p2!173)))))

(assert (=> d!2391702 (= (isPrefix!6794 (tail!15937 p2!173) (tail!15937 l!3353)) lt!2719899)))

(declare-fun b!8020884 () Bool)

(assert (=> b!8020884 (= e!4724931 (>= (size!43648 (tail!15937 l!3353)) (size!43648 (tail!15937 p2!173))))))

(declare-fun b!8020882 () Bool)

(declare-fun res!3171454 () Bool)

(assert (=> b!8020882 (=> (not res!3171454) (not e!4724930))))

(assert (=> b!8020882 (= res!3171454 (= (head!16402 (tail!15937 p2!173)) (head!16402 (tail!15937 l!3353))))))

(assert (= (and d!2391702 (not res!3171453)) b!8020881))

(assert (= (and b!8020881 res!3171455) b!8020882))

(assert (= (and b!8020882 res!3171454) b!8020883))

(assert (= (and d!2391702 (not res!3171456)) b!8020884))

(assert (=> b!8020883 m!8383704))

(declare-fun m!8383782 () Bool)

(assert (=> b!8020883 m!8383782))

(assert (=> b!8020883 m!8383672))

(assert (=> b!8020883 m!8383712))

(assert (=> b!8020883 m!8383782))

(assert (=> b!8020883 m!8383712))

(declare-fun m!8383784 () Bool)

(assert (=> b!8020883 m!8383784))

(assert (=> b!8020884 m!8383672))

(assert (=> b!8020884 m!8383716))

(assert (=> b!8020884 m!8383704))

(declare-fun m!8383786 () Bool)

(assert (=> b!8020884 m!8383786))

(assert (=> b!8020882 m!8383704))

(declare-fun m!8383788 () Bool)

(assert (=> b!8020882 m!8383788))

(assert (=> b!8020882 m!8383672))

(assert (=> b!8020882 m!8383720))

(assert (=> b!8020819 d!2391702))

(declare-fun d!2391704 () Bool)

(assert (=> d!2391704 (= (tail!15937 p2!173) (t!390730 p2!173))))

(assert (=> b!8020819 d!2391704))

(assert (=> b!8020819 d!2391664))

(declare-fun d!2391706 () Bool)

(declare-fun lt!2719900 () Int)

(assert (=> d!2391706 (>= lt!2719900 0)))

(declare-fun e!4724932 () Int)

(assert (=> d!2391706 (= lt!2719900 e!4724932)))

(declare-fun c!1472080 () Bool)

(assert (=> d!2391706 (= c!1472080 (is-Nil!74863 (tail!15937 l!3353)))))

(assert (=> d!2391706 (= (size!43648 (tail!15937 l!3353)) lt!2719900)))

(declare-fun b!8020885 () Bool)

(assert (=> b!8020885 (= e!4724932 0)))

(declare-fun b!8020886 () Bool)

(assert (=> b!8020886 (= e!4724932 (+ 1 (size!43648 (t!390730 (tail!15937 l!3353)))))))

(assert (= (and d!2391706 c!1472080) b!8020885))

(assert (= (and d!2391706 (not c!1472080)) b!8020886))

(declare-fun m!8383790 () Bool)

(assert (=> b!8020886 m!8383790))

(assert (=> b!8020824 d!2391706))

(assert (=> b!8020824 d!2391700))

(declare-fun b!8020887 () Bool)

(declare-fun e!4724933 () Bool)

(declare-fun tp!2400603 () Bool)

(assert (=> b!8020887 (= e!4724933 (and tp_is_empty!54059 tp!2400603))))

(assert (=> b!8020830 (= tp!2400596 e!4724933)))

(assert (= (and b!8020830 (is-Cons!74863 (t!390730 (t!390730 l!3353)))) b!8020887))

(declare-fun b!8020888 () Bool)

(declare-fun e!4724934 () Bool)

(declare-fun tp!2400604 () Bool)

(assert (=> b!8020888 (= e!4724934 (and tp_is_empty!54059 tp!2400604))))

(assert (=> b!8020831 (= tp!2400597 e!4724934)))

(assert (= (and b!8020831 (is-Cons!74863 (t!390730 (t!390730 p1!173)))) b!8020888))

(declare-fun b!8020889 () Bool)

(declare-fun e!4724935 () Bool)

(declare-fun tp!2400605 () Bool)

(assert (=> b!8020889 (= e!4724935 (and tp_is_empty!54059 tp!2400605))))

(assert (=> b!8020829 (= tp!2400595 e!4724935)))

(assert (= (and b!8020829 (is-Cons!74863 (t!390730 (t!390730 p2!173)))) b!8020889))

(push 1)

(assert (not b!8020871))

(assert (not b!8020887))

(assert (not b!8020878))

(assert (not b!8020872))

(assert (not b!8020868))

(assert (not b!8020888))

(assert (not b!8020880))

(assert tp_is_empty!54059)

(assert (not b!8020883))

(assert (not b!8020876))

(assert (not b!8020877))

(assert (not b!8020874))

(assert (not b!8020889))

(assert (not b!8020870))

(assert (not b!8020886))

(assert (not b!8020884))

(assert (not b!8020882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

