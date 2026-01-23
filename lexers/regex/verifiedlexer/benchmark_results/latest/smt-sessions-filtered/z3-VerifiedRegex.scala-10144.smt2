; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530902 () Bool)

(assert start!530902)

(declare-fun res!2141383 () Bool)

(declare-fun e!3137736 () Bool)

(assert (=> start!530902 (=> (not res!2141383) (not e!3137736))))

(declare-fun n!45 () Int)

(declare-datatypes ((B!3045 0))(
  ( (B!3046 (val!23364 Int)) )
))
(declare-datatypes ((List!58177 0))(
  ( (Nil!58053) (Cons!58053 (h!64501 B!3045) (t!370569 List!58177)) )
))
(declare-fun l!3169 () List!58177)

(get-info :version)

(assert (=> start!530902 (= res!2141383 (and (>= n!45 0) ((_ is Cons!58053) l!3169) (> n!45 0) (>= (- n!45 1) 0)))))

(assert (=> start!530902 e!3137736))

(assert (=> start!530902 true))

(declare-fun e!3137737 () Bool)

(assert (=> start!530902 e!3137737))

(declare-fun b!5022873 () Bool)

(declare-fun isPrefix!5374 (List!58177 List!58177) Bool)

(declare-fun take!728 (List!58177 Int) List!58177)

(assert (=> b!5022873 (= e!3137736 (not (isPrefix!5374 (take!728 l!3169 n!45) l!3169)))))

(assert (=> b!5022873 (isPrefix!5374 (take!728 (t!370569 l!3169) (- n!45 1)) (t!370569 l!3169))))

(declare-datatypes ((Unit!149267 0))(
  ( (Unit!149268) )
))
(declare-fun lt!2078710 () Unit!149267)

(declare-fun lemmaTakeIsPrefix!174 (List!58177 Int) Unit!149267)

(assert (=> b!5022873 (= lt!2078710 (lemmaTakeIsPrefix!174 (t!370569 l!3169) (- n!45 1)))))

(declare-fun b!5022874 () Bool)

(declare-fun tp_is_empty!36655 () Bool)

(declare-fun tp!1408118 () Bool)

(assert (=> b!5022874 (= e!3137737 (and tp_is_empty!36655 tp!1408118))))

(assert (= (and start!530902 res!2141383) b!5022873))

(assert (= (and start!530902 ((_ is Cons!58053) l!3169)) b!5022874))

(declare-fun m!6058012 () Bool)

(assert (=> b!5022873 m!6058012))

(declare-fun m!6058014 () Bool)

(assert (=> b!5022873 m!6058014))

(assert (=> b!5022873 m!6058014))

(declare-fun m!6058016 () Bool)

(assert (=> b!5022873 m!6058016))

(declare-fun m!6058018 () Bool)

(assert (=> b!5022873 m!6058018))

(assert (=> b!5022873 m!6058012))

(declare-fun m!6058020 () Bool)

(assert (=> b!5022873 m!6058020))

(check-sat (not b!5022873) (not b!5022874) tp_is_empty!36655)
(check-sat)
(get-model)

(declare-fun b!5022910 () Bool)

(declare-fun e!3137757 () Int)

(declare-fun e!3137759 () Int)

(assert (=> b!5022910 (= e!3137757 e!3137759)))

(declare-fun c!858857 () Bool)

(declare-fun size!38633 (List!58177) Int)

(assert (=> b!5022910 (= c!858857 (>= n!45 (size!38633 l!3169)))))

(declare-fun b!5022911 () Bool)

(declare-fun e!3137761 () List!58177)

(assert (=> b!5022911 (= e!3137761 Nil!58053)))

(declare-fun b!5022912 () Bool)

(assert (=> b!5022912 (= e!3137759 n!45)))

(declare-fun d!1616857 () Bool)

(declare-fun e!3137760 () Bool)

(assert (=> d!1616857 e!3137760))

(declare-fun res!2141389 () Bool)

(assert (=> d!1616857 (=> (not res!2141389) (not e!3137760))))

(declare-fun lt!2078716 () List!58177)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10293 (List!58177) (InoxSet B!3045))

(assert (=> d!1616857 (= res!2141389 (= ((_ map implies) (content!10293 lt!2078716) (content!10293 l!3169)) ((as const (InoxSet B!3045)) true)))))

(assert (=> d!1616857 (= lt!2078716 e!3137761)))

(declare-fun c!858858 () Bool)

(assert (=> d!1616857 (= c!858858 (or ((_ is Nil!58053) l!3169) (<= n!45 0)))))

(assert (=> d!1616857 (= (take!728 l!3169 n!45) lt!2078716)))

(declare-fun b!5022913 () Bool)

(assert (=> b!5022913 (= e!3137759 (size!38633 l!3169))))

(declare-fun b!5022914 () Bool)

(assert (=> b!5022914 (= e!3137760 (= (size!38633 lt!2078716) e!3137757))))

(declare-fun c!858856 () Bool)

(assert (=> b!5022914 (= c!858856 (<= n!45 0))))

(declare-fun b!5022915 () Bool)

(assert (=> b!5022915 (= e!3137761 (Cons!58053 (h!64501 l!3169) (take!728 (t!370569 l!3169) (- n!45 1))))))

(declare-fun b!5022916 () Bool)

(assert (=> b!5022916 (= e!3137757 0)))

(assert (= (and d!1616857 c!858858) b!5022911))

(assert (= (and d!1616857 (not c!858858)) b!5022915))

(assert (= (and d!1616857 res!2141389) b!5022914))

(assert (= (and b!5022914 c!858856) b!5022916))

(assert (= (and b!5022914 (not c!858856)) b!5022910))

(assert (= (and b!5022910 c!858857) b!5022913))

(assert (= (and b!5022910 (not c!858857)) b!5022912))

(declare-fun m!6058024 () Bool)

(assert (=> b!5022914 m!6058024))

(assert (=> b!5022915 m!6058012))

(declare-fun m!6058030 () Bool)

(assert (=> b!5022910 m!6058030))

(assert (=> b!5022913 m!6058030))

(declare-fun m!6058034 () Bool)

(assert (=> d!1616857 m!6058034))

(declare-fun m!6058036 () Bool)

(assert (=> d!1616857 m!6058036))

(assert (=> b!5022873 d!1616857))

(declare-fun b!5022933 () Bool)

(declare-fun e!3137775 () Bool)

(declare-fun e!3137774 () Bool)

(assert (=> b!5022933 (= e!3137775 e!3137774)))

(declare-fun res!2141406 () Bool)

(assert (=> b!5022933 (=> (not res!2141406) (not e!3137774))))

(assert (=> b!5022933 (= res!2141406 (not ((_ is Nil!58053) (t!370569 l!3169))))))

(declare-fun d!1616863 () Bool)

(declare-fun e!3137776 () Bool)

(assert (=> d!1616863 e!3137776))

(declare-fun res!2141407 () Bool)

(assert (=> d!1616863 (=> res!2141407 e!3137776)))

(declare-fun lt!2078721 () Bool)

(assert (=> d!1616863 (= res!2141407 (not lt!2078721))))

(assert (=> d!1616863 (= lt!2078721 e!3137775)))

(declare-fun res!2141409 () Bool)

(assert (=> d!1616863 (=> res!2141409 e!3137775)))

(assert (=> d!1616863 (= res!2141409 ((_ is Nil!58053) (take!728 (t!370569 l!3169) (- n!45 1))))))

(assert (=> d!1616863 (= (isPrefix!5374 (take!728 (t!370569 l!3169) (- n!45 1)) (t!370569 l!3169)) lt!2078721)))

(declare-fun b!5022935 () Bool)

(declare-fun tail!9898 (List!58177) List!58177)

(assert (=> b!5022935 (= e!3137774 (isPrefix!5374 (tail!9898 (take!728 (t!370569 l!3169) (- n!45 1))) (tail!9898 (t!370569 l!3169))))))

(declare-fun b!5022936 () Bool)

(assert (=> b!5022936 (= e!3137776 (>= (size!38633 (t!370569 l!3169)) (size!38633 (take!728 (t!370569 l!3169) (- n!45 1)))))))

(declare-fun b!5022934 () Bool)

(declare-fun res!2141408 () Bool)

(assert (=> b!5022934 (=> (not res!2141408) (not e!3137774))))

(declare-fun head!10765 (List!58177) B!3045)

(assert (=> b!5022934 (= res!2141408 (= (head!10765 (take!728 (t!370569 l!3169) (- n!45 1))) (head!10765 (t!370569 l!3169))))))

(assert (= (and d!1616863 (not res!2141409)) b!5022933))

(assert (= (and b!5022933 res!2141406) b!5022934))

(assert (= (and b!5022934 res!2141408) b!5022935))

(assert (= (and d!1616863 (not res!2141407)) b!5022936))

(assert (=> b!5022935 m!6058012))

(declare-fun m!6058038 () Bool)

(assert (=> b!5022935 m!6058038))

(declare-fun m!6058040 () Bool)

(assert (=> b!5022935 m!6058040))

(assert (=> b!5022935 m!6058038))

(assert (=> b!5022935 m!6058040))

(declare-fun m!6058044 () Bool)

(assert (=> b!5022935 m!6058044))

(declare-fun m!6058046 () Bool)

(assert (=> b!5022936 m!6058046))

(assert (=> b!5022936 m!6058012))

(declare-fun m!6058050 () Bool)

(assert (=> b!5022936 m!6058050))

(assert (=> b!5022934 m!6058012))

(declare-fun m!6058056 () Bool)

(assert (=> b!5022934 m!6058056))

(declare-fun m!6058058 () Bool)

(assert (=> b!5022934 m!6058058))

(assert (=> b!5022873 d!1616863))

(declare-fun d!1616865 () Bool)

(assert (=> d!1616865 (isPrefix!5374 (take!728 (t!370569 l!3169) (- n!45 1)) (t!370569 l!3169))))

(declare-fun lt!2078727 () Unit!149267)

(declare-fun choose!37162 (List!58177 Int) Unit!149267)

(assert (=> d!1616865 (= lt!2078727 (choose!37162 (t!370569 l!3169) (- n!45 1)))))

(assert (=> d!1616865 (>= (- n!45 1) 0)))

(assert (=> d!1616865 (= (lemmaTakeIsPrefix!174 (t!370569 l!3169) (- n!45 1)) lt!2078727)))

(declare-fun bs!1187665 () Bool)

(assert (= bs!1187665 d!1616865))

(assert (=> bs!1187665 m!6058012))

(assert (=> bs!1187665 m!6058012))

(assert (=> bs!1187665 m!6058020))

(declare-fun m!6058066 () Bool)

(assert (=> bs!1187665 m!6058066))

(assert (=> b!5022873 d!1616865))

(declare-fun b!5022941 () Bool)

(declare-fun e!3137780 () Int)

(declare-fun e!3137781 () Int)

(assert (=> b!5022941 (= e!3137780 e!3137781)))

(declare-fun c!858860 () Bool)

(assert (=> b!5022941 (= c!858860 (>= (- n!45 1) (size!38633 (t!370569 l!3169))))))

(declare-fun b!5022942 () Bool)

(declare-fun e!3137783 () List!58177)

(assert (=> b!5022942 (= e!3137783 Nil!58053)))

(declare-fun b!5022943 () Bool)

(assert (=> b!5022943 (= e!3137781 (- n!45 1))))

(declare-fun d!1616869 () Bool)

(declare-fun e!3137782 () Bool)

(assert (=> d!1616869 e!3137782))

(declare-fun res!2141414 () Bool)

(assert (=> d!1616869 (=> (not res!2141414) (not e!3137782))))

(declare-fun lt!2078729 () List!58177)

(assert (=> d!1616869 (= res!2141414 (= ((_ map implies) (content!10293 lt!2078729) (content!10293 (t!370569 l!3169))) ((as const (InoxSet B!3045)) true)))))

(assert (=> d!1616869 (= lt!2078729 e!3137783)))

(declare-fun c!858861 () Bool)

(assert (=> d!1616869 (= c!858861 (or ((_ is Nil!58053) (t!370569 l!3169)) (<= (- n!45 1) 0)))))

(assert (=> d!1616869 (= (take!728 (t!370569 l!3169) (- n!45 1)) lt!2078729)))

(declare-fun b!5022944 () Bool)

(assert (=> b!5022944 (= e!3137781 (size!38633 (t!370569 l!3169)))))

(declare-fun b!5022945 () Bool)

(assert (=> b!5022945 (= e!3137782 (= (size!38633 lt!2078729) e!3137780))))

(declare-fun c!858859 () Bool)

(assert (=> b!5022945 (= c!858859 (<= (- n!45 1) 0))))

(declare-fun b!5022946 () Bool)

(assert (=> b!5022946 (= e!3137783 (Cons!58053 (h!64501 (t!370569 l!3169)) (take!728 (t!370569 (t!370569 l!3169)) (- (- n!45 1) 1))))))

(declare-fun b!5022947 () Bool)

(assert (=> b!5022947 (= e!3137780 0)))

(assert (= (and d!1616869 c!858861) b!5022942))

(assert (= (and d!1616869 (not c!858861)) b!5022946))

(assert (= (and d!1616869 res!2141414) b!5022945))

(assert (= (and b!5022945 c!858859) b!5022947))

(assert (= (and b!5022945 (not c!858859)) b!5022941))

(assert (= (and b!5022941 c!858860) b!5022944))

(assert (= (and b!5022941 (not c!858860)) b!5022943))

(declare-fun m!6058070 () Bool)

(assert (=> b!5022945 m!6058070))

(declare-fun m!6058072 () Bool)

(assert (=> b!5022946 m!6058072))

(assert (=> b!5022941 m!6058046))

(assert (=> b!5022944 m!6058046))

(declare-fun m!6058078 () Bool)

(assert (=> d!1616869 m!6058078))

(declare-fun m!6058080 () Bool)

(assert (=> d!1616869 m!6058080))

(assert (=> b!5022873 d!1616869))

(declare-fun b!5022955 () Bool)

(declare-fun e!3137789 () Bool)

(declare-fun e!3137788 () Bool)

(assert (=> b!5022955 (= e!3137789 e!3137788)))

(declare-fun res!2141416 () Bool)

(assert (=> b!5022955 (=> (not res!2141416) (not e!3137788))))

(assert (=> b!5022955 (= res!2141416 (not ((_ is Nil!58053) l!3169)))))

(declare-fun d!1616873 () Bool)

(declare-fun e!3137790 () Bool)

(assert (=> d!1616873 e!3137790))

(declare-fun res!2141417 () Bool)

(assert (=> d!1616873 (=> res!2141417 e!3137790)))

(declare-fun lt!2078731 () Bool)

(assert (=> d!1616873 (= res!2141417 (not lt!2078731))))

(assert (=> d!1616873 (= lt!2078731 e!3137789)))

(declare-fun res!2141419 () Bool)

(assert (=> d!1616873 (=> res!2141419 e!3137789)))

(assert (=> d!1616873 (= res!2141419 ((_ is Nil!58053) (take!728 l!3169 n!45)))))

(assert (=> d!1616873 (= (isPrefix!5374 (take!728 l!3169 n!45) l!3169) lt!2078731)))

(declare-fun b!5022957 () Bool)

(assert (=> b!5022957 (= e!3137788 (isPrefix!5374 (tail!9898 (take!728 l!3169 n!45)) (tail!9898 l!3169)))))

(declare-fun b!5022958 () Bool)

(assert (=> b!5022958 (= e!3137790 (>= (size!38633 l!3169) (size!38633 (take!728 l!3169 n!45))))))

(declare-fun b!5022956 () Bool)

(declare-fun res!2141418 () Bool)

(assert (=> b!5022956 (=> (not res!2141418) (not e!3137788))))

(assert (=> b!5022956 (= res!2141418 (= (head!10765 (take!728 l!3169 n!45)) (head!10765 l!3169)))))

(assert (= (and d!1616873 (not res!2141419)) b!5022955))

(assert (= (and b!5022955 res!2141416) b!5022956))

(assert (= (and b!5022956 res!2141418) b!5022957))

(assert (= (and d!1616873 (not res!2141417)) b!5022958))

(assert (=> b!5022957 m!6058014))

(declare-fun m!6058086 () Bool)

(assert (=> b!5022957 m!6058086))

(declare-fun m!6058088 () Bool)

(assert (=> b!5022957 m!6058088))

(assert (=> b!5022957 m!6058086))

(assert (=> b!5022957 m!6058088))

(declare-fun m!6058092 () Bool)

(assert (=> b!5022957 m!6058092))

(assert (=> b!5022958 m!6058030))

(assert (=> b!5022958 m!6058014))

(declare-fun m!6058098 () Bool)

(assert (=> b!5022958 m!6058098))

(assert (=> b!5022956 m!6058014))

(declare-fun m!6058100 () Bool)

(assert (=> b!5022956 m!6058100))

(declare-fun m!6058104 () Bool)

(assert (=> b!5022956 m!6058104))

(assert (=> b!5022873 d!1616873))

(declare-fun b!5022971 () Bool)

(declare-fun e!3137798 () Bool)

(declare-fun tp!1408123 () Bool)

(assert (=> b!5022971 (= e!3137798 (and tp_is_empty!36655 tp!1408123))))

(assert (=> b!5022874 (= tp!1408118 e!3137798)))

(assert (= (and b!5022874 ((_ is Cons!58053) (t!370569 l!3169))) b!5022971))

(check-sat tp_is_empty!36655 (not b!5022958) (not b!5022936) (not d!1616857) (not b!5022957) (not d!1616865) (not b!5022913) (not b!5022934) (not d!1616869) (not b!5022915) (not b!5022944) (not b!5022946) (not b!5022956) (not b!5022945) (not b!5022935) (not b!5022914) (not b!5022941) (not b!5022971) (not b!5022910))
(check-sat)
(get-model)

(declare-fun d!1616877 () Bool)

(assert (=> d!1616877 (= (head!10765 (take!728 l!3169 n!45)) (h!64501 (take!728 l!3169 n!45)))))

(assert (=> b!5022956 d!1616877))

(declare-fun d!1616879 () Bool)

(assert (=> d!1616879 (= (head!10765 l!3169) (h!64501 l!3169))))

(assert (=> b!5022956 d!1616879))

(declare-fun d!1616881 () Bool)

(declare-fun lt!2078735 () Int)

(assert (=> d!1616881 (>= lt!2078735 0)))

(declare-fun e!3137802 () Int)

(assert (=> d!1616881 (= lt!2078735 e!3137802)))

(declare-fun c!858867 () Bool)

(assert (=> d!1616881 (= c!858867 ((_ is Nil!58053) l!3169))))

(assert (=> d!1616881 (= (size!38633 l!3169) lt!2078735)))

(declare-fun b!5022977 () Bool)

(assert (=> b!5022977 (= e!3137802 0)))

(declare-fun b!5022978 () Bool)

(assert (=> b!5022978 (= e!3137802 (+ 1 (size!38633 (t!370569 l!3169))))))

(assert (= (and d!1616881 c!858867) b!5022977))

(assert (= (and d!1616881 (not c!858867)) b!5022978))

(assert (=> b!5022978 m!6058046))

(assert (=> b!5022910 d!1616881))

(declare-fun b!5022979 () Bool)

(declare-fun e!3137804 () Bool)

(declare-fun e!3137803 () Bool)

(assert (=> b!5022979 (= e!3137804 e!3137803)))

(declare-fun res!2141424 () Bool)

(assert (=> b!5022979 (=> (not res!2141424) (not e!3137803))))

(assert (=> b!5022979 (= res!2141424 (not ((_ is Nil!58053) (tail!9898 l!3169))))))

(declare-fun d!1616883 () Bool)

(declare-fun e!3137805 () Bool)

(assert (=> d!1616883 e!3137805))

(declare-fun res!2141425 () Bool)

(assert (=> d!1616883 (=> res!2141425 e!3137805)))

(declare-fun lt!2078736 () Bool)

(assert (=> d!1616883 (= res!2141425 (not lt!2078736))))

(assert (=> d!1616883 (= lt!2078736 e!3137804)))

(declare-fun res!2141427 () Bool)

(assert (=> d!1616883 (=> res!2141427 e!3137804)))

(assert (=> d!1616883 (= res!2141427 ((_ is Nil!58053) (tail!9898 (take!728 l!3169 n!45))))))

(assert (=> d!1616883 (= (isPrefix!5374 (tail!9898 (take!728 l!3169 n!45)) (tail!9898 l!3169)) lt!2078736)))

(declare-fun b!5022981 () Bool)

(assert (=> b!5022981 (= e!3137803 (isPrefix!5374 (tail!9898 (tail!9898 (take!728 l!3169 n!45))) (tail!9898 (tail!9898 l!3169))))))

(declare-fun b!5022982 () Bool)

(assert (=> b!5022982 (= e!3137805 (>= (size!38633 (tail!9898 l!3169)) (size!38633 (tail!9898 (take!728 l!3169 n!45)))))))

(declare-fun b!5022980 () Bool)

(declare-fun res!2141426 () Bool)

(assert (=> b!5022980 (=> (not res!2141426) (not e!3137803))))

(assert (=> b!5022980 (= res!2141426 (= (head!10765 (tail!9898 (take!728 l!3169 n!45))) (head!10765 (tail!9898 l!3169))))))

(assert (= (and d!1616883 (not res!2141427)) b!5022979))

(assert (= (and b!5022979 res!2141424) b!5022980))

(assert (= (and b!5022980 res!2141426) b!5022981))

(assert (= (and d!1616883 (not res!2141425)) b!5022982))

(assert (=> b!5022981 m!6058086))

(declare-fun m!6058110 () Bool)

(assert (=> b!5022981 m!6058110))

(assert (=> b!5022981 m!6058088))

(declare-fun m!6058112 () Bool)

(assert (=> b!5022981 m!6058112))

(assert (=> b!5022981 m!6058110))

(assert (=> b!5022981 m!6058112))

(declare-fun m!6058114 () Bool)

(assert (=> b!5022981 m!6058114))

(assert (=> b!5022982 m!6058088))

(declare-fun m!6058116 () Bool)

(assert (=> b!5022982 m!6058116))

(assert (=> b!5022982 m!6058086))

(declare-fun m!6058118 () Bool)

(assert (=> b!5022982 m!6058118))

(assert (=> b!5022980 m!6058086))

(declare-fun m!6058120 () Bool)

(assert (=> b!5022980 m!6058120))

(assert (=> b!5022980 m!6058088))

(declare-fun m!6058122 () Bool)

(assert (=> b!5022980 m!6058122))

(assert (=> b!5022957 d!1616883))

(declare-fun d!1616885 () Bool)

(assert (=> d!1616885 (= (tail!9898 (take!728 l!3169 n!45)) (t!370569 (take!728 l!3169 n!45)))))

(assert (=> b!5022957 d!1616885))

(declare-fun d!1616887 () Bool)

(assert (=> d!1616887 (= (tail!9898 l!3169) (t!370569 l!3169))))

(assert (=> b!5022957 d!1616887))

(declare-fun d!1616889 () Bool)

(declare-fun lt!2078737 () Int)

(assert (=> d!1616889 (>= lt!2078737 0)))

(declare-fun e!3137806 () Int)

(assert (=> d!1616889 (= lt!2078737 e!3137806)))

(declare-fun c!858868 () Bool)

(assert (=> d!1616889 (= c!858868 ((_ is Nil!58053) (t!370569 l!3169)))))

(assert (=> d!1616889 (= (size!38633 (t!370569 l!3169)) lt!2078737)))

(declare-fun b!5022983 () Bool)

(assert (=> b!5022983 (= e!3137806 0)))

(declare-fun b!5022984 () Bool)

(assert (=> b!5022984 (= e!3137806 (+ 1 (size!38633 (t!370569 (t!370569 l!3169)))))))

(assert (= (and d!1616889 c!858868) b!5022983))

(assert (= (and d!1616889 (not c!858868)) b!5022984))

(declare-fun m!6058124 () Bool)

(assert (=> b!5022984 m!6058124))

(assert (=> b!5022941 d!1616889))

(declare-fun b!5022985 () Bool)

(declare-fun e!3137808 () Bool)

(declare-fun e!3137807 () Bool)

(assert (=> b!5022985 (= e!3137808 e!3137807)))

(declare-fun res!2141428 () Bool)

(assert (=> b!5022985 (=> (not res!2141428) (not e!3137807))))

(assert (=> b!5022985 (= res!2141428 (not ((_ is Nil!58053) (tail!9898 (t!370569 l!3169)))))))

(declare-fun d!1616891 () Bool)

(declare-fun e!3137809 () Bool)

(assert (=> d!1616891 e!3137809))

(declare-fun res!2141429 () Bool)

(assert (=> d!1616891 (=> res!2141429 e!3137809)))

(declare-fun lt!2078738 () Bool)

(assert (=> d!1616891 (= res!2141429 (not lt!2078738))))

(assert (=> d!1616891 (= lt!2078738 e!3137808)))

(declare-fun res!2141431 () Bool)

(assert (=> d!1616891 (=> res!2141431 e!3137808)))

(assert (=> d!1616891 (= res!2141431 ((_ is Nil!58053) (tail!9898 (take!728 (t!370569 l!3169) (- n!45 1)))))))

(assert (=> d!1616891 (= (isPrefix!5374 (tail!9898 (take!728 (t!370569 l!3169) (- n!45 1))) (tail!9898 (t!370569 l!3169))) lt!2078738)))

(declare-fun b!5022987 () Bool)

(assert (=> b!5022987 (= e!3137807 (isPrefix!5374 (tail!9898 (tail!9898 (take!728 (t!370569 l!3169) (- n!45 1)))) (tail!9898 (tail!9898 (t!370569 l!3169)))))))

(declare-fun b!5022988 () Bool)

(assert (=> b!5022988 (= e!3137809 (>= (size!38633 (tail!9898 (t!370569 l!3169))) (size!38633 (tail!9898 (take!728 (t!370569 l!3169) (- n!45 1))))))))

(declare-fun b!5022986 () Bool)

(declare-fun res!2141430 () Bool)

(assert (=> b!5022986 (=> (not res!2141430) (not e!3137807))))

(assert (=> b!5022986 (= res!2141430 (= (head!10765 (tail!9898 (take!728 (t!370569 l!3169) (- n!45 1)))) (head!10765 (tail!9898 (t!370569 l!3169)))))))

(assert (= (and d!1616891 (not res!2141431)) b!5022985))

(assert (= (and b!5022985 res!2141428) b!5022986))

(assert (= (and b!5022986 res!2141430) b!5022987))

(assert (= (and d!1616891 (not res!2141429)) b!5022988))

(assert (=> b!5022987 m!6058038))

(declare-fun m!6058126 () Bool)

(assert (=> b!5022987 m!6058126))

(assert (=> b!5022987 m!6058040))

(declare-fun m!6058128 () Bool)

(assert (=> b!5022987 m!6058128))

(assert (=> b!5022987 m!6058126))

(assert (=> b!5022987 m!6058128))

(declare-fun m!6058130 () Bool)

(assert (=> b!5022987 m!6058130))

(assert (=> b!5022988 m!6058040))

(declare-fun m!6058132 () Bool)

(assert (=> b!5022988 m!6058132))

(assert (=> b!5022988 m!6058038))

(declare-fun m!6058134 () Bool)

(assert (=> b!5022988 m!6058134))

(assert (=> b!5022986 m!6058038))

(declare-fun m!6058136 () Bool)

(assert (=> b!5022986 m!6058136))

(assert (=> b!5022986 m!6058040))

(declare-fun m!6058138 () Bool)

(assert (=> b!5022986 m!6058138))

(assert (=> b!5022935 d!1616891))

(declare-fun d!1616893 () Bool)

(assert (=> d!1616893 (= (tail!9898 (take!728 (t!370569 l!3169) (- n!45 1))) (t!370569 (take!728 (t!370569 l!3169) (- n!45 1))))))

(assert (=> b!5022935 d!1616893))

(declare-fun d!1616895 () Bool)

(assert (=> d!1616895 (= (tail!9898 (t!370569 l!3169)) (t!370569 (t!370569 l!3169)))))

(assert (=> b!5022935 d!1616895))

(assert (=> b!5022936 d!1616889))

(declare-fun d!1616897 () Bool)

(declare-fun lt!2078739 () Int)

(assert (=> d!1616897 (>= lt!2078739 0)))

(declare-fun e!3137810 () Int)

(assert (=> d!1616897 (= lt!2078739 e!3137810)))

(declare-fun c!858869 () Bool)

(assert (=> d!1616897 (= c!858869 ((_ is Nil!58053) (take!728 (t!370569 l!3169) (- n!45 1))))))

(assert (=> d!1616897 (= (size!38633 (take!728 (t!370569 l!3169) (- n!45 1))) lt!2078739)))

(declare-fun b!5022989 () Bool)

(assert (=> b!5022989 (= e!3137810 0)))

(declare-fun b!5022990 () Bool)

(assert (=> b!5022990 (= e!3137810 (+ 1 (size!38633 (t!370569 (take!728 (t!370569 l!3169) (- n!45 1))))))))

(assert (= (and d!1616897 c!858869) b!5022989))

(assert (= (and d!1616897 (not c!858869)) b!5022990))

(declare-fun m!6058140 () Bool)

(assert (=> b!5022990 m!6058140))

(assert (=> b!5022936 d!1616897))

(declare-fun d!1616899 () Bool)

(declare-fun c!858872 () Bool)

(assert (=> d!1616899 (= c!858872 ((_ is Nil!58053) lt!2078729))))

(declare-fun e!3137813 () (InoxSet B!3045))

(assert (=> d!1616899 (= (content!10293 lt!2078729) e!3137813)))

(declare-fun b!5022995 () Bool)

(assert (=> b!5022995 (= e!3137813 ((as const (Array B!3045 Bool)) false))))

(declare-fun b!5022996 () Bool)

(assert (=> b!5022996 (= e!3137813 ((_ map or) (store ((as const (Array B!3045 Bool)) false) (h!64501 lt!2078729) true) (content!10293 (t!370569 lt!2078729))))))

(assert (= (and d!1616899 c!858872) b!5022995))

(assert (= (and d!1616899 (not c!858872)) b!5022996))

(declare-fun m!6058142 () Bool)

(assert (=> b!5022996 m!6058142))

(declare-fun m!6058144 () Bool)

(assert (=> b!5022996 m!6058144))

(assert (=> d!1616869 d!1616899))

(declare-fun d!1616901 () Bool)

(declare-fun c!858873 () Bool)

(assert (=> d!1616901 (= c!858873 ((_ is Nil!58053) (t!370569 l!3169)))))

(declare-fun e!3137814 () (InoxSet B!3045))

(assert (=> d!1616901 (= (content!10293 (t!370569 l!3169)) e!3137814)))

(declare-fun b!5022997 () Bool)

(assert (=> b!5022997 (= e!3137814 ((as const (Array B!3045 Bool)) false))))

(declare-fun b!5022998 () Bool)

(assert (=> b!5022998 (= e!3137814 ((_ map or) (store ((as const (Array B!3045 Bool)) false) (h!64501 (t!370569 l!3169)) true) (content!10293 (t!370569 (t!370569 l!3169)))))))

(assert (= (and d!1616901 c!858873) b!5022997))

(assert (= (and d!1616901 (not c!858873)) b!5022998))

(declare-fun m!6058146 () Bool)

(assert (=> b!5022998 m!6058146))

(declare-fun m!6058148 () Bool)

(assert (=> b!5022998 m!6058148))

(assert (=> d!1616869 d!1616901))

(assert (=> b!5022915 d!1616869))

(declare-fun d!1616903 () Bool)

(declare-fun lt!2078740 () Int)

(assert (=> d!1616903 (>= lt!2078740 0)))

(declare-fun e!3137815 () Int)

(assert (=> d!1616903 (= lt!2078740 e!3137815)))

(declare-fun c!858874 () Bool)

(assert (=> d!1616903 (= c!858874 ((_ is Nil!58053) lt!2078729))))

(assert (=> d!1616903 (= (size!38633 lt!2078729) lt!2078740)))

(declare-fun b!5022999 () Bool)

(assert (=> b!5022999 (= e!3137815 0)))

(declare-fun b!5023000 () Bool)

(assert (=> b!5023000 (= e!3137815 (+ 1 (size!38633 (t!370569 lt!2078729))))))

(assert (= (and d!1616903 c!858874) b!5022999))

(assert (= (and d!1616903 (not c!858874)) b!5023000))

(declare-fun m!6058150 () Bool)

(assert (=> b!5023000 m!6058150))

(assert (=> b!5022945 d!1616903))

(assert (=> b!5022944 d!1616889))

(declare-fun d!1616905 () Bool)

(declare-fun c!858875 () Bool)

(assert (=> d!1616905 (= c!858875 ((_ is Nil!58053) lt!2078716))))

(declare-fun e!3137816 () (InoxSet B!3045))

(assert (=> d!1616905 (= (content!10293 lt!2078716) e!3137816)))

(declare-fun b!5023001 () Bool)

(assert (=> b!5023001 (= e!3137816 ((as const (Array B!3045 Bool)) false))))

(declare-fun b!5023002 () Bool)

(assert (=> b!5023002 (= e!3137816 ((_ map or) (store ((as const (Array B!3045 Bool)) false) (h!64501 lt!2078716) true) (content!10293 (t!370569 lt!2078716))))))

(assert (= (and d!1616905 c!858875) b!5023001))

(assert (= (and d!1616905 (not c!858875)) b!5023002))

(declare-fun m!6058152 () Bool)

(assert (=> b!5023002 m!6058152))

(declare-fun m!6058154 () Bool)

(assert (=> b!5023002 m!6058154))

(assert (=> d!1616857 d!1616905))

(declare-fun d!1616907 () Bool)

(declare-fun c!858876 () Bool)

(assert (=> d!1616907 (= c!858876 ((_ is Nil!58053) l!3169))))

(declare-fun e!3137817 () (InoxSet B!3045))

(assert (=> d!1616907 (= (content!10293 l!3169) e!3137817)))

(declare-fun b!5023003 () Bool)

(assert (=> b!5023003 (= e!3137817 ((as const (Array B!3045 Bool)) false))))

(declare-fun b!5023004 () Bool)

(assert (=> b!5023004 (= e!3137817 ((_ map or) (store ((as const (Array B!3045 Bool)) false) (h!64501 l!3169) true) (content!10293 (t!370569 l!3169))))))

(assert (= (and d!1616907 c!858876) b!5023003))

(assert (= (and d!1616907 (not c!858876)) b!5023004))

(declare-fun m!6058156 () Bool)

(assert (=> b!5023004 m!6058156))

(assert (=> b!5023004 m!6058080))

(assert (=> d!1616857 d!1616907))

(declare-fun b!5023005 () Bool)

(declare-fun e!3137818 () Int)

(declare-fun e!3137819 () Int)

(assert (=> b!5023005 (= e!3137818 e!3137819)))

(declare-fun c!858878 () Bool)

(assert (=> b!5023005 (= c!858878 (>= (- (- n!45 1) 1) (size!38633 (t!370569 (t!370569 l!3169)))))))

(declare-fun b!5023006 () Bool)

(declare-fun e!3137821 () List!58177)

(assert (=> b!5023006 (= e!3137821 Nil!58053)))

(declare-fun b!5023007 () Bool)

(assert (=> b!5023007 (= e!3137819 (- (- n!45 1) 1))))

(declare-fun d!1616909 () Bool)

(declare-fun e!3137820 () Bool)

(assert (=> d!1616909 e!3137820))

(declare-fun res!2141432 () Bool)

(assert (=> d!1616909 (=> (not res!2141432) (not e!3137820))))

(declare-fun lt!2078741 () List!58177)

(assert (=> d!1616909 (= res!2141432 (= ((_ map implies) (content!10293 lt!2078741) (content!10293 (t!370569 (t!370569 l!3169)))) ((as const (InoxSet B!3045)) true)))))

(assert (=> d!1616909 (= lt!2078741 e!3137821)))

(declare-fun c!858879 () Bool)

(assert (=> d!1616909 (= c!858879 (or ((_ is Nil!58053) (t!370569 (t!370569 l!3169))) (<= (- (- n!45 1) 1) 0)))))

(assert (=> d!1616909 (= (take!728 (t!370569 (t!370569 l!3169)) (- (- n!45 1) 1)) lt!2078741)))

(declare-fun b!5023008 () Bool)

(assert (=> b!5023008 (= e!3137819 (size!38633 (t!370569 (t!370569 l!3169))))))

(declare-fun b!5023009 () Bool)

(assert (=> b!5023009 (= e!3137820 (= (size!38633 lt!2078741) e!3137818))))

(declare-fun c!858877 () Bool)

(assert (=> b!5023009 (= c!858877 (<= (- (- n!45 1) 1) 0))))

(declare-fun b!5023010 () Bool)

(assert (=> b!5023010 (= e!3137821 (Cons!58053 (h!64501 (t!370569 (t!370569 l!3169))) (take!728 (t!370569 (t!370569 (t!370569 l!3169))) (- (- (- n!45 1) 1) 1))))))

(declare-fun b!5023011 () Bool)

(assert (=> b!5023011 (= e!3137818 0)))

(assert (= (and d!1616909 c!858879) b!5023006))

(assert (= (and d!1616909 (not c!858879)) b!5023010))

(assert (= (and d!1616909 res!2141432) b!5023009))

(assert (= (and b!5023009 c!858877) b!5023011))

(assert (= (and b!5023009 (not c!858877)) b!5023005))

(assert (= (and b!5023005 c!858878) b!5023008))

(assert (= (and b!5023005 (not c!858878)) b!5023007))

(declare-fun m!6058158 () Bool)

(assert (=> b!5023009 m!6058158))

(declare-fun m!6058160 () Bool)

(assert (=> b!5023010 m!6058160))

(assert (=> b!5023005 m!6058124))

(assert (=> b!5023008 m!6058124))

(declare-fun m!6058162 () Bool)

(assert (=> d!1616909 m!6058162))

(assert (=> d!1616909 m!6058148))

(assert (=> b!5022946 d!1616909))

(declare-fun d!1616911 () Bool)

(assert (=> d!1616911 (= (head!10765 (take!728 (t!370569 l!3169) (- n!45 1))) (h!64501 (take!728 (t!370569 l!3169) (- n!45 1))))))

(assert (=> b!5022934 d!1616911))

(declare-fun d!1616913 () Bool)

(assert (=> d!1616913 (= (head!10765 (t!370569 l!3169)) (h!64501 (t!370569 l!3169)))))

(assert (=> b!5022934 d!1616913))

(assert (=> b!5022958 d!1616881))

(declare-fun d!1616915 () Bool)

(declare-fun lt!2078742 () Int)

(assert (=> d!1616915 (>= lt!2078742 0)))

(declare-fun e!3137822 () Int)

(assert (=> d!1616915 (= lt!2078742 e!3137822)))

(declare-fun c!858880 () Bool)

(assert (=> d!1616915 (= c!858880 ((_ is Nil!58053) (take!728 l!3169 n!45)))))

(assert (=> d!1616915 (= (size!38633 (take!728 l!3169 n!45)) lt!2078742)))

(declare-fun b!5023012 () Bool)

(assert (=> b!5023012 (= e!3137822 0)))

(declare-fun b!5023013 () Bool)

(assert (=> b!5023013 (= e!3137822 (+ 1 (size!38633 (t!370569 (take!728 l!3169 n!45)))))))

(assert (= (and d!1616915 c!858880) b!5023012))

(assert (= (and d!1616915 (not c!858880)) b!5023013))

(declare-fun m!6058164 () Bool)

(assert (=> b!5023013 m!6058164))

(assert (=> b!5022958 d!1616915))

(assert (=> d!1616865 d!1616863))

(assert (=> d!1616865 d!1616869))

(declare-fun d!1616917 () Bool)

(assert (=> d!1616917 (isPrefix!5374 (take!728 (t!370569 l!3169) (- n!45 1)) (t!370569 l!3169))))

(assert (=> d!1616917 true))

(declare-fun _$48!763 () Unit!149267)

(assert (=> d!1616917 (= (choose!37162 (t!370569 l!3169) (- n!45 1)) _$48!763)))

(declare-fun bs!1187667 () Bool)

(assert (= bs!1187667 d!1616917))

(assert (=> bs!1187667 m!6058012))

(assert (=> bs!1187667 m!6058012))

(assert (=> bs!1187667 m!6058020))

(assert (=> d!1616865 d!1616917))

(declare-fun d!1616919 () Bool)

(declare-fun lt!2078743 () Int)

(assert (=> d!1616919 (>= lt!2078743 0)))

(declare-fun e!3137823 () Int)

(assert (=> d!1616919 (= lt!2078743 e!3137823)))

(declare-fun c!858881 () Bool)

(assert (=> d!1616919 (= c!858881 ((_ is Nil!58053) lt!2078716))))

(assert (=> d!1616919 (= (size!38633 lt!2078716) lt!2078743)))

(declare-fun b!5023014 () Bool)

(assert (=> b!5023014 (= e!3137823 0)))

(declare-fun b!5023015 () Bool)

(assert (=> b!5023015 (= e!3137823 (+ 1 (size!38633 (t!370569 lt!2078716))))))

(assert (= (and d!1616919 c!858881) b!5023014))

(assert (= (and d!1616919 (not c!858881)) b!5023015))

(declare-fun m!6058166 () Bool)

(assert (=> b!5023015 m!6058166))

(assert (=> b!5022914 d!1616919))

(assert (=> b!5022913 d!1616881))

(declare-fun b!5023016 () Bool)

(declare-fun e!3137824 () Bool)

(declare-fun tp!1408125 () Bool)

(assert (=> b!5023016 (= e!3137824 (and tp_is_empty!36655 tp!1408125))))

(assert (=> b!5022971 (= tp!1408123 e!3137824)))

(assert (= (and b!5022971 ((_ is Cons!58053) (t!370569 (t!370569 l!3169)))) b!5023016))

(check-sat (not b!5022982) (not b!5023010) (not b!5023008) (not b!5022998) (not b!5023004) (not b!5023005) (not b!5022996) (not b!5023002) (not b!5023015) (not b!5023009) (not b!5022978) (not b!5023016) (not b!5022980) (not b!5022988) (not b!5022990) tp_is_empty!36655 (not b!5023000) (not b!5022984) (not d!1616917) (not b!5023013) (not b!5022986) (not b!5022987) (not d!1616909) (not b!5022981))
(check-sat)
