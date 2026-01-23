; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754726 () Bool)

(assert start!754726)

(declare-fun res!3170571 () Bool)

(declare-fun e!4723639 () Bool)

(assert (=> start!754726 (=> (not res!3170571) (not e!4723639))))

(declare-datatypes ((B!4103 0))(
  ( (B!4104 (val!32441 Int)) )
))
(declare-datatypes ((List!74953 0))(
  ( (Nil!74829) (Cons!74829 (h!81277 B!4103) (t!390696 List!74953)) )
))
(declare-fun p!2009 () List!74953)

(declare-fun l!3435 () List!74953)

(declare-fun isPrefix!6776 (List!74953 List!74953) Bool)

(assert (=> start!754726 (= res!3170571 (isPrefix!6776 p!2009 l!3435))))

(assert (=> start!754726 e!4723639))

(declare-fun e!4723640 () Bool)

(assert (=> start!754726 e!4723640))

(declare-fun e!4723638 () Bool)

(assert (=> start!754726 e!4723638))

(declare-fun b!8018835 () Bool)

(declare-fun tail!15914 (List!74953) List!74953)

(assert (=> b!8018835 (= e!4723639 (not (isPrefix!6776 (t!390696 p!2009) (tail!15914 l!3435))))))

(declare-fun b!8018836 () Bool)

(declare-fun tp_is_empty!53991 () Bool)

(declare-fun tp!2400156 () Bool)

(assert (=> b!8018836 (= e!4723640 (and tp_is_empty!53991 tp!2400156))))

(declare-fun b!8018837 () Bool)

(declare-fun res!3170570 () Bool)

(assert (=> b!8018837 (=> (not res!3170570) (not e!4723639))))

(assert (=> b!8018837 (= res!3170570 (is-Cons!74829 p!2009))))

(declare-fun b!8018838 () Bool)

(declare-fun res!3170569 () Bool)

(assert (=> b!8018838 (=> (not res!3170569) (not e!4723639))))

(declare-fun size!43620 (List!74953) Int)

(assert (=> b!8018838 (= res!3170569 (< (size!43620 p!2009) (size!43620 l!3435)))))

(declare-fun b!8018839 () Bool)

(declare-fun tp!2400155 () Bool)

(assert (=> b!8018839 (= e!4723638 (and tp_is_empty!53991 tp!2400155))))

(assert (= (and start!754726 res!3170571) b!8018838))

(assert (= (and b!8018838 res!3170569) b!8018837))

(assert (= (and b!8018837 res!3170570) b!8018835))

(assert (= (and start!754726 (is-Cons!74829 p!2009)) b!8018836))

(assert (= (and start!754726 (is-Cons!74829 l!3435)) b!8018839))

(declare-fun m!8381808 () Bool)

(assert (=> start!754726 m!8381808))

(declare-fun m!8381810 () Bool)

(assert (=> b!8018835 m!8381810))

(assert (=> b!8018835 m!8381810))

(declare-fun m!8381812 () Bool)

(assert (=> b!8018835 m!8381812))

(declare-fun m!8381814 () Bool)

(assert (=> b!8018838 m!8381814))

(declare-fun m!8381816 () Bool)

(assert (=> b!8018838 m!8381816))

(push 1)

(assert tp_is_empty!53991)

(assert (not b!8018835))

(assert (not b!8018839))

(assert (not b!8018838))

(assert (not b!8018836))

(assert (not start!754726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2390927 () Bool)

(declare-fun lt!2719406 () Int)

(assert (=> d!2390927 (>= lt!2719406 0)))

(declare-fun e!4723652 () Int)

(assert (=> d!2390927 (= lt!2719406 e!4723652)))

(declare-fun c!1471755 () Bool)

(assert (=> d!2390927 (= c!1471755 (is-Nil!74829 p!2009))))

(assert (=> d!2390927 (= (size!43620 p!2009) lt!2719406)))

(declare-fun b!8018859 () Bool)

(assert (=> b!8018859 (= e!4723652 0)))

(declare-fun b!8018860 () Bool)

(assert (=> b!8018860 (= e!4723652 (+ 1 (size!43620 (t!390696 p!2009))))))

(assert (= (and d!2390927 c!1471755) b!8018859))

(assert (= (and d!2390927 (not c!1471755)) b!8018860))

(declare-fun m!8381828 () Bool)

(assert (=> b!8018860 m!8381828))

(assert (=> b!8018838 d!2390927))

(declare-fun d!2390929 () Bool)

(declare-fun lt!2719407 () Int)

(assert (=> d!2390929 (>= lt!2719407 0)))

(declare-fun e!4723653 () Int)

(assert (=> d!2390929 (= lt!2719407 e!4723653)))

(declare-fun c!1471756 () Bool)

(assert (=> d!2390929 (= c!1471756 (is-Nil!74829 l!3435))))

(assert (=> d!2390929 (= (size!43620 l!3435) lt!2719407)))

(declare-fun b!8018861 () Bool)

(assert (=> b!8018861 (= e!4723653 0)))

(declare-fun b!8018862 () Bool)

(assert (=> b!8018862 (= e!4723653 (+ 1 (size!43620 (t!390696 l!3435))))))

(assert (= (and d!2390929 c!1471756) b!8018861))

(assert (= (and d!2390929 (not c!1471756)) b!8018862))

(declare-fun m!8381830 () Bool)

(assert (=> b!8018862 m!8381830))

(assert (=> b!8018838 d!2390929))

(declare-fun b!8018878 () Bool)

(declare-fun e!4723662 () Bool)

(assert (=> b!8018878 (= e!4723662 (>= (size!43620 l!3435) (size!43620 p!2009)))))

(declare-fun b!8018876 () Bool)

(declare-fun res!3170591 () Bool)

(declare-fun e!4723664 () Bool)

(assert (=> b!8018876 (=> (not res!3170591) (not e!4723664))))

(declare-fun head!16387 (List!74953) B!4103)

(assert (=> b!8018876 (= res!3170591 (= (head!16387 p!2009) (head!16387 l!3435)))))

(declare-fun b!8018875 () Bool)

(declare-fun e!4723663 () Bool)

(assert (=> b!8018875 (= e!4723663 e!4723664)))

(declare-fun res!3170592 () Bool)

(assert (=> b!8018875 (=> (not res!3170592) (not e!4723664))))

(assert (=> b!8018875 (= res!3170592 (not (is-Nil!74829 l!3435)))))

(declare-fun b!8018877 () Bool)

(assert (=> b!8018877 (= e!4723664 (isPrefix!6776 (tail!15914 p!2009) (tail!15914 l!3435)))))

(declare-fun d!2390931 () Bool)

(assert (=> d!2390931 e!4723662))

(declare-fun res!3170590 () Bool)

(assert (=> d!2390931 (=> res!3170590 e!4723662)))

(declare-fun lt!2719412 () Bool)

(assert (=> d!2390931 (= res!3170590 (not lt!2719412))))

(assert (=> d!2390931 (= lt!2719412 e!4723663)))

(declare-fun res!3170589 () Bool)

(assert (=> d!2390931 (=> res!3170589 e!4723663)))

(assert (=> d!2390931 (= res!3170589 (is-Nil!74829 p!2009))))

(assert (=> d!2390931 (= (isPrefix!6776 p!2009 l!3435) lt!2719412)))

(assert (= (and d!2390931 (not res!3170589)) b!8018875))

(assert (= (and b!8018875 res!3170592) b!8018876))

(assert (= (and b!8018876 res!3170591) b!8018877))

(assert (= (and d!2390931 (not res!3170590)) b!8018878))

(assert (=> b!8018878 m!8381816))

(assert (=> b!8018878 m!8381814))

(declare-fun m!8381832 () Bool)

(assert (=> b!8018876 m!8381832))

(declare-fun m!8381834 () Bool)

(assert (=> b!8018876 m!8381834))

(declare-fun m!8381836 () Bool)

(assert (=> b!8018877 m!8381836))

(assert (=> b!8018877 m!8381810))

(assert (=> b!8018877 m!8381836))

(assert (=> b!8018877 m!8381810))

(declare-fun m!8381838 () Bool)

(assert (=> b!8018877 m!8381838))

(assert (=> start!754726 d!2390931))

(declare-fun b!8018882 () Bool)

(declare-fun e!4723665 () Bool)

(assert (=> b!8018882 (= e!4723665 (>= (size!43620 (tail!15914 l!3435)) (size!43620 (t!390696 p!2009))))))

(declare-fun b!8018880 () Bool)

(declare-fun res!3170595 () Bool)

(declare-fun e!4723667 () Bool)

(assert (=> b!8018880 (=> (not res!3170595) (not e!4723667))))

(assert (=> b!8018880 (= res!3170595 (= (head!16387 (t!390696 p!2009)) (head!16387 (tail!15914 l!3435))))))

(declare-fun b!8018879 () Bool)

(declare-fun e!4723666 () Bool)

(assert (=> b!8018879 (= e!4723666 e!4723667)))

(declare-fun res!3170596 () Bool)

(assert (=> b!8018879 (=> (not res!3170596) (not e!4723667))))

(assert (=> b!8018879 (= res!3170596 (not (is-Nil!74829 (tail!15914 l!3435))))))

(declare-fun b!8018881 () Bool)

(assert (=> b!8018881 (= e!4723667 (isPrefix!6776 (tail!15914 (t!390696 p!2009)) (tail!15914 (tail!15914 l!3435))))))

(declare-fun d!2390935 () Bool)

(assert (=> d!2390935 e!4723665))

(declare-fun res!3170594 () Bool)

(assert (=> d!2390935 (=> res!3170594 e!4723665)))

(declare-fun lt!2719413 () Bool)

(assert (=> d!2390935 (= res!3170594 (not lt!2719413))))

(assert (=> d!2390935 (= lt!2719413 e!4723666)))

(declare-fun res!3170593 () Bool)

(assert (=> d!2390935 (=> res!3170593 e!4723666)))

(assert (=> d!2390935 (= res!3170593 (is-Nil!74829 (t!390696 p!2009)))))

(assert (=> d!2390935 (= (isPrefix!6776 (t!390696 p!2009) (tail!15914 l!3435)) lt!2719413)))

(assert (= (and d!2390935 (not res!3170593)) b!8018879))

(assert (= (and b!8018879 res!3170596) b!8018880))

(assert (= (and b!8018880 res!3170595) b!8018881))

(assert (= (and d!2390935 (not res!3170594)) b!8018882))

(assert (=> b!8018882 m!8381810))

(declare-fun m!8381840 () Bool)

(assert (=> b!8018882 m!8381840))

(assert (=> b!8018882 m!8381828))

(declare-fun m!8381842 () Bool)

(assert (=> b!8018880 m!8381842))

(assert (=> b!8018880 m!8381810))

(declare-fun m!8381844 () Bool)

(assert (=> b!8018880 m!8381844))

(declare-fun m!8381846 () Bool)

(assert (=> b!8018881 m!8381846))

(assert (=> b!8018881 m!8381810))

(declare-fun m!8381850 () Bool)

(assert (=> b!8018881 m!8381850))

(assert (=> b!8018881 m!8381846))

(assert (=> b!8018881 m!8381850))

(declare-fun m!8381852 () Bool)

(assert (=> b!8018881 m!8381852))

(assert (=> b!8018835 d!2390935))

(declare-fun d!2390939 () Bool)

(assert (=> d!2390939 (= (tail!15914 l!3435) (t!390696 l!3435))))

(assert (=> b!8018835 d!2390939))

(declare-fun b!8018891 () Bool)

(declare-fun e!4723672 () Bool)

(declare-fun tp!2400165 () Bool)

(assert (=> b!8018891 (= e!4723672 (and tp_is_empty!53991 tp!2400165))))

(assert (=> b!8018839 (= tp!2400155 e!4723672)))

(assert (= (and b!8018839 (is-Cons!74829 (t!390696 l!3435))) b!8018891))

(declare-fun b!8018892 () Bool)

(declare-fun e!4723673 () Bool)

(declare-fun tp!2400166 () Bool)

(assert (=> b!8018892 (= e!4723673 (and tp_is_empty!53991 tp!2400166))))

(assert (=> b!8018836 (= tp!2400156 e!4723673)))

(assert (= (and b!8018836 (is-Cons!74829 (t!390696 p!2009))) b!8018892))

(push 1)

(assert (not b!8018880))

(assert (not b!8018891))

(assert tp_is_empty!53991)

(assert (not b!8018876))

(assert (not b!8018882))

(assert (not b!8018862))

(assert (not b!8018860))

(assert (not b!8018881))

(assert (not b!8018877))

(assert (not b!8018878))

(assert (not b!8018892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2390947 () Bool)

(declare-fun lt!2719420 () Int)

(assert (=> d!2390947 (>= lt!2719420 0)))

(declare-fun e!4723690 () Int)

(assert (=> d!2390947 (= lt!2719420 e!4723690)))

(declare-fun c!1471761 () Bool)

(assert (=> d!2390947 (= c!1471761 (is-Nil!74829 (t!390696 p!2009)))))

(assert (=> d!2390947 (= (size!43620 (t!390696 p!2009)) lt!2719420)))

(declare-fun b!8018915 () Bool)

(assert (=> b!8018915 (= e!4723690 0)))

(declare-fun b!8018916 () Bool)

(assert (=> b!8018916 (= e!4723690 (+ 1 (size!43620 (t!390696 (t!390696 p!2009)))))))

(assert (= (and d!2390947 c!1471761) b!8018915))

(assert (= (and d!2390947 (not c!1471761)) b!8018916))

(declare-fun m!8381876 () Bool)

(assert (=> b!8018916 m!8381876))

(assert (=> b!8018860 d!2390947))

(declare-fun d!2390949 () Bool)

(assert (=> d!2390949 (= (head!16387 p!2009) (h!81277 p!2009))))

(assert (=> b!8018876 d!2390949))

(declare-fun d!2390951 () Bool)

(assert (=> d!2390951 (= (head!16387 l!3435) (h!81277 l!3435))))

(assert (=> b!8018876 d!2390951))

(declare-fun d!2390953 () Bool)

(assert (=> d!2390953 (= (head!16387 (t!390696 p!2009)) (h!81277 (t!390696 p!2009)))))

(assert (=> b!8018880 d!2390953))

(declare-fun d!2390955 () Bool)

(assert (=> d!2390955 (= (head!16387 (tail!15914 l!3435)) (h!81277 (tail!15914 l!3435)))))

(assert (=> b!8018880 d!2390955))

(declare-fun b!8018920 () Bool)

(declare-fun e!4723691 () Bool)

(assert (=> b!8018920 (= e!4723691 (>= (size!43620 (tail!15914 l!3435)) (size!43620 (tail!15914 p!2009))))))

(declare-fun b!8018918 () Bool)

(declare-fun res!3170615 () Bool)

(declare-fun e!4723693 () Bool)

(assert (=> b!8018918 (=> (not res!3170615) (not e!4723693))))

(assert (=> b!8018918 (= res!3170615 (= (head!16387 (tail!15914 p!2009)) (head!16387 (tail!15914 l!3435))))))

(declare-fun b!8018917 () Bool)

(declare-fun e!4723692 () Bool)

(assert (=> b!8018917 (= e!4723692 e!4723693)))

(declare-fun res!3170616 () Bool)

(assert (=> b!8018917 (=> (not res!3170616) (not e!4723693))))

(assert (=> b!8018917 (= res!3170616 (not (is-Nil!74829 (tail!15914 l!3435))))))

(declare-fun b!8018919 () Bool)

(assert (=> b!8018919 (= e!4723693 (isPrefix!6776 (tail!15914 (tail!15914 p!2009)) (tail!15914 (tail!15914 l!3435))))))

(declare-fun d!2390957 () Bool)

(assert (=> d!2390957 e!4723691))

(declare-fun res!3170614 () Bool)

(assert (=> d!2390957 (=> res!3170614 e!4723691)))

(declare-fun lt!2719421 () Bool)

(assert (=> d!2390957 (= res!3170614 (not lt!2719421))))

(assert (=> d!2390957 (= lt!2719421 e!4723692)))

(declare-fun res!3170613 () Bool)

(assert (=> d!2390957 (=> res!3170613 e!4723692)))

(assert (=> d!2390957 (= res!3170613 (is-Nil!74829 (tail!15914 p!2009)))))

(assert (=> d!2390957 (= (isPrefix!6776 (tail!15914 p!2009) (tail!15914 l!3435)) lt!2719421)))

(assert (= (and d!2390957 (not res!3170613)) b!8018917))

(assert (= (and b!8018917 res!3170616) b!8018918))

(assert (= (and b!8018918 res!3170615) b!8018919))

(assert (= (and d!2390957 (not res!3170614)) b!8018920))

(assert (=> b!8018920 m!8381810))

(assert (=> b!8018920 m!8381840))

(assert (=> b!8018920 m!8381836))

(declare-fun m!8381878 () Bool)

(assert (=> b!8018920 m!8381878))

(assert (=> b!8018918 m!8381836))

(declare-fun m!8381880 () Bool)

(assert (=> b!8018918 m!8381880))

(assert (=> b!8018918 m!8381810))

(assert (=> b!8018918 m!8381844))

(assert (=> b!8018919 m!8381836))

(declare-fun m!8381882 () Bool)

(assert (=> b!8018919 m!8381882))

(assert (=> b!8018919 m!8381810))

(assert (=> b!8018919 m!8381850))

(assert (=> b!8018919 m!8381882))

(assert (=> b!8018919 m!8381850))

(declare-fun m!8381884 () Bool)

(assert (=> b!8018919 m!8381884))

(assert (=> b!8018877 d!2390957))

(declare-fun d!2390959 () Bool)

(assert (=> d!2390959 (= (tail!15914 p!2009) (t!390696 p!2009))))

(assert (=> b!8018877 d!2390959))

(assert (=> b!8018877 d!2390939))

(assert (=> b!8018878 d!2390929))

(assert (=> b!8018878 d!2390927))

(declare-fun d!2390961 () Bool)

(declare-fun lt!2719422 () Int)

(assert (=> d!2390961 (>= lt!2719422 0)))

(declare-fun e!4723694 () Int)

(assert (=> d!2390961 (= lt!2719422 e!4723694)))

(declare-fun c!1471762 () Bool)

(assert (=> d!2390961 (= c!1471762 (is-Nil!74829 (t!390696 l!3435)))))

(assert (=> d!2390961 (= (size!43620 (t!390696 l!3435)) lt!2719422)))

(declare-fun b!8018921 () Bool)

(assert (=> b!8018921 (= e!4723694 0)))

(declare-fun b!8018922 () Bool)

(assert (=> b!8018922 (= e!4723694 (+ 1 (size!43620 (t!390696 (t!390696 l!3435)))))))

(assert (= (and d!2390961 c!1471762) b!8018921))

(assert (= (and d!2390961 (not c!1471762)) b!8018922))

(declare-fun m!8381886 () Bool)

(assert (=> b!8018922 m!8381886))

(assert (=> b!8018862 d!2390961))

(declare-fun b!8018926 () Bool)

(declare-fun e!4723695 () Bool)

(assert (=> b!8018926 (= e!4723695 (>= (size!43620 (tail!15914 (tail!15914 l!3435))) (size!43620 (tail!15914 (t!390696 p!2009)))))))

(declare-fun b!8018924 () Bool)

(declare-fun res!3170619 () Bool)

(declare-fun e!4723697 () Bool)

(assert (=> b!8018924 (=> (not res!3170619) (not e!4723697))))

(assert (=> b!8018924 (= res!3170619 (= (head!16387 (tail!15914 (t!390696 p!2009))) (head!16387 (tail!15914 (tail!15914 l!3435)))))))

(declare-fun b!8018923 () Bool)

(declare-fun e!4723696 () Bool)

(assert (=> b!8018923 (= e!4723696 e!4723697)))

(declare-fun res!3170620 () Bool)

(assert (=> b!8018923 (=> (not res!3170620) (not e!4723697))))

(assert (=> b!8018923 (= res!3170620 (not (is-Nil!74829 (tail!15914 (tail!15914 l!3435)))))))

(declare-fun b!8018925 () Bool)

(assert (=> b!8018925 (= e!4723697 (isPrefix!6776 (tail!15914 (tail!15914 (t!390696 p!2009))) (tail!15914 (tail!15914 (tail!15914 l!3435)))))))

(declare-fun d!2390963 () Bool)

(assert (=> d!2390963 e!4723695))

(declare-fun res!3170618 () Bool)

(assert (=> d!2390963 (=> res!3170618 e!4723695)))

(declare-fun lt!2719423 () Bool)

(assert (=> d!2390963 (= res!3170618 (not lt!2719423))))

(assert (=> d!2390963 (= lt!2719423 e!4723696)))

(declare-fun res!3170617 () Bool)

(assert (=> d!2390963 (=> res!3170617 e!4723696)))

(assert (=> d!2390963 (= res!3170617 (is-Nil!74829 (tail!15914 (t!390696 p!2009))))))

(assert (=> d!2390963 (= (isPrefix!6776 (tail!15914 (t!390696 p!2009)) (tail!15914 (tail!15914 l!3435))) lt!2719423)))

(assert (= (and d!2390963 (not res!3170617)) b!8018923))

(assert (= (and b!8018923 res!3170620) b!8018924))

(assert (= (and b!8018924 res!3170619) b!8018925))

(assert (= (and d!2390963 (not res!3170618)) b!8018926))

(assert (=> b!8018926 m!8381850))

(declare-fun m!8381888 () Bool)

(assert (=> b!8018926 m!8381888))

(assert (=> b!8018926 m!8381846))

(declare-fun m!8381890 () Bool)

(assert (=> b!8018926 m!8381890))

(assert (=> b!8018924 m!8381846))

(declare-fun m!8381892 () Bool)

(assert (=> b!8018924 m!8381892))

(assert (=> b!8018924 m!8381850))

(declare-fun m!8381894 () Bool)

(assert (=> b!8018924 m!8381894))

(assert (=> b!8018925 m!8381846))

(declare-fun m!8381896 () Bool)

(assert (=> b!8018925 m!8381896))

(assert (=> b!8018925 m!8381850))

(declare-fun m!8381898 () Bool)

(assert (=> b!8018925 m!8381898))

(assert (=> b!8018925 m!8381896))

(assert (=> b!8018925 m!8381898))

(declare-fun m!8381900 () Bool)

(assert (=> b!8018925 m!8381900))

(assert (=> b!8018881 d!2390963))

(declare-fun d!2390965 () Bool)

(assert (=> d!2390965 (= (tail!15914 (t!390696 p!2009)) (t!390696 (t!390696 p!2009)))))

(assert (=> b!8018881 d!2390965))

(declare-fun d!2390967 () Bool)

(assert (=> d!2390967 (= (tail!15914 (tail!15914 l!3435)) (t!390696 (tail!15914 l!3435)))))

(assert (=> b!8018881 d!2390967))

(declare-fun d!2390969 () Bool)

(declare-fun lt!2719424 () Int)

(assert (=> d!2390969 (>= lt!2719424 0)))

(declare-fun e!4723698 () Int)

(assert (=> d!2390969 (= lt!2719424 e!4723698)))

(declare-fun c!1471763 () Bool)

(assert (=> d!2390969 (= c!1471763 (is-Nil!74829 (tail!15914 l!3435)))))

(assert (=> d!2390969 (= (size!43620 (tail!15914 l!3435)) lt!2719424)))

(declare-fun b!8018927 () Bool)

(assert (=> b!8018927 (= e!4723698 0)))

(declare-fun b!8018928 () Bool)

(assert (=> b!8018928 (= e!4723698 (+ 1 (size!43620 (t!390696 (tail!15914 l!3435)))))))

(assert (= (and d!2390969 c!1471763) b!8018927))

(assert (= (and d!2390969 (not c!1471763)) b!8018928))

(declare-fun m!8381902 () Bool)

(assert (=> b!8018928 m!8381902))

(assert (=> b!8018882 d!2390969))

(assert (=> b!8018882 d!2390947))

(declare-fun b!8018929 () Bool)

(declare-fun e!4723699 () Bool)

(declare-fun tp!2400171 () Bool)

(assert (=> b!8018929 (= e!4723699 (and tp_is_empty!53991 tp!2400171))))

(assert (=> b!8018891 (= tp!2400165 e!4723699)))

(assert (= (and b!8018891 (is-Cons!74829 (t!390696 (t!390696 l!3435)))) b!8018929))

(declare-fun b!8018930 () Bool)

(declare-fun e!4723700 () Bool)

(declare-fun tp!2400172 () Bool)

(assert (=> b!8018930 (= e!4723700 (and tp_is_empty!53991 tp!2400172))))

(assert (=> b!8018892 (= tp!2400166 e!4723700)))

(assert (= (and b!8018892 (is-Cons!74829 (t!390696 (t!390696 p!2009)))) b!8018930))

(push 1)

(assert (not b!8018928))

(assert (not b!8018919))

(assert (not b!8018920))

(assert (not b!8018926))

(assert tp_is_empty!53991)

(assert (not b!8018918))

(assert (not b!8018929))

(assert (not b!8018930))

(assert (not b!8018924))

(assert (not b!8018916))

(assert (not b!8018922))

(assert (not b!8018925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

