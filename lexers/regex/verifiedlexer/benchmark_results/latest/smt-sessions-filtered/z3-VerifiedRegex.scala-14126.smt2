; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742798 () Bool)

(assert start!742798)

(declare-fun b!7842834 () Bool)

(declare-fun e!4637080 () Bool)

(declare-datatypes ((B!4017 0))(
  ( (B!4018 (val!31650 Int)) )
))
(declare-datatypes ((List!73884 0))(
  ( (Nil!73760) (Cons!73760 (h!80208 B!4017) (t!388619 List!73884)) )
))
(declare-fun s2!461 () List!73884)

(declare-fun s1!502 () List!73884)

(declare-fun isPrefix!6361 (List!73884 List!73884) Bool)

(assert (=> b!7842834 (= e!4637080 (not (isPrefix!6361 s2!461 s1!502)))))

(declare-fun b!7842835 () Bool)

(declare-fun res!3119492 () Bool)

(assert (=> b!7842835 (=> (not res!3119492) (not e!4637080))))

(declare-fun l!3495 () List!73884)

(assert (=> b!7842835 (= res!3119492 (isPrefix!6361 s2!461 l!3495))))

(declare-fun b!7842836 () Bool)

(declare-fun res!3119491 () Bool)

(assert (=> b!7842836 (=> (not res!3119491) (not e!4637080))))

(declare-fun size!42809 (List!73884) Int)

(assert (=> b!7842836 (= res!3119491 (<= (size!42809 s2!461) (size!42809 s1!502)))))

(declare-fun b!7842837 () Bool)

(declare-fun e!4637083 () Bool)

(declare-fun tp_is_empty!52449 () Bool)

(declare-fun tp!2321218 () Bool)

(assert (=> b!7842837 (= e!4637083 (and tp_is_empty!52449 tp!2321218))))

(declare-fun b!7842839 () Bool)

(declare-fun e!4637082 () Bool)

(declare-fun tp!2321217 () Bool)

(assert (=> b!7842839 (= e!4637082 (and tp_is_empty!52449 tp!2321217))))

(declare-fun b!7842840 () Bool)

(declare-fun res!3119494 () Bool)

(assert (=> b!7842840 (=> (not res!3119494) (not e!4637080))))

(get-info :version)

(assert (=> b!7842840 (= res!3119494 (not ((_ is Cons!73760) s2!461)))))

(declare-fun b!7842838 () Bool)

(declare-fun e!4637081 () Bool)

(declare-fun tp!2321216 () Bool)

(assert (=> b!7842838 (= e!4637081 (and tp_is_empty!52449 tp!2321216))))

(declare-fun res!3119493 () Bool)

(assert (=> start!742798 (=> (not res!3119493) (not e!4637080))))

(assert (=> start!742798 (= res!3119493 (isPrefix!6361 s1!502 l!3495))))

(assert (=> start!742798 e!4637080))

(assert (=> start!742798 e!4637082))

(assert (=> start!742798 e!4637083))

(assert (=> start!742798 e!4637081))

(assert (= (and start!742798 res!3119493) b!7842835))

(assert (= (and b!7842835 res!3119492) b!7842836))

(assert (= (and b!7842836 res!3119491) b!7842840))

(assert (= (and b!7842840 res!3119494) b!7842834))

(assert (= (and start!742798 ((_ is Cons!73760) s1!502)) b!7842839))

(assert (= (and start!742798 ((_ is Cons!73760) l!3495)) b!7842837))

(assert (= (and start!742798 ((_ is Cons!73760) s2!461)) b!7842838))

(declare-fun m!8254966 () Bool)

(assert (=> b!7842834 m!8254966))

(declare-fun m!8254968 () Bool)

(assert (=> b!7842835 m!8254968))

(declare-fun m!8254970 () Bool)

(assert (=> b!7842836 m!8254970))

(declare-fun m!8254972 () Bool)

(assert (=> b!7842836 m!8254972))

(declare-fun m!8254974 () Bool)

(assert (=> start!742798 m!8254974))

(check-sat tp_is_empty!52449 (not b!7842839) (not b!7842836) (not b!7842838) (not b!7842837) (not b!7842835) (not b!7842834) (not start!742798))
(check-sat)
(get-model)

(declare-fun d!2352607 () Bool)

(declare-fun lt!2678840 () Int)

(assert (=> d!2352607 (>= lt!2678840 0)))

(declare-fun e!4637086 () Int)

(assert (=> d!2352607 (= lt!2678840 e!4637086)))

(declare-fun c!1441754 () Bool)

(assert (=> d!2352607 (= c!1441754 ((_ is Nil!73760) s2!461))))

(assert (=> d!2352607 (= (size!42809 s2!461) lt!2678840)))

(declare-fun b!7842845 () Bool)

(assert (=> b!7842845 (= e!4637086 0)))

(declare-fun b!7842846 () Bool)

(assert (=> b!7842846 (= e!4637086 (+ 1 (size!42809 (t!388619 s2!461))))))

(assert (= (and d!2352607 c!1441754) b!7842845))

(assert (= (and d!2352607 (not c!1441754)) b!7842846))

(declare-fun m!8254976 () Bool)

(assert (=> b!7842846 m!8254976))

(assert (=> b!7842836 d!2352607))

(declare-fun d!2352609 () Bool)

(declare-fun lt!2678841 () Int)

(assert (=> d!2352609 (>= lt!2678841 0)))

(declare-fun e!4637087 () Int)

(assert (=> d!2352609 (= lt!2678841 e!4637087)))

(declare-fun c!1441755 () Bool)

(assert (=> d!2352609 (= c!1441755 ((_ is Nil!73760) s1!502))))

(assert (=> d!2352609 (= (size!42809 s1!502) lt!2678841)))

(declare-fun b!7842847 () Bool)

(assert (=> b!7842847 (= e!4637087 0)))

(declare-fun b!7842848 () Bool)

(assert (=> b!7842848 (= e!4637087 (+ 1 (size!42809 (t!388619 s1!502))))))

(assert (= (and d!2352609 c!1441755) b!7842847))

(assert (= (and d!2352609 (not c!1441755)) b!7842848))

(declare-fun m!8254978 () Bool)

(assert (=> b!7842848 m!8254978))

(assert (=> b!7842836 d!2352609))

(declare-fun b!7842860 () Bool)

(declare-fun e!4637094 () Bool)

(assert (=> b!7842860 (= e!4637094 (>= (size!42809 l!3495) (size!42809 s1!502)))))

(declare-fun d!2352611 () Bool)

(assert (=> d!2352611 e!4637094))

(declare-fun res!3119506 () Bool)

(assert (=> d!2352611 (=> res!3119506 e!4637094)))

(declare-fun lt!2678844 () Bool)

(assert (=> d!2352611 (= res!3119506 (not lt!2678844))))

(declare-fun e!4637096 () Bool)

(assert (=> d!2352611 (= lt!2678844 e!4637096)))

(declare-fun res!3119504 () Bool)

(assert (=> d!2352611 (=> res!3119504 e!4637096)))

(assert (=> d!2352611 (= res!3119504 ((_ is Nil!73760) s1!502))))

(assert (=> d!2352611 (= (isPrefix!6361 s1!502 l!3495) lt!2678844)))

(declare-fun b!7842859 () Bool)

(declare-fun e!4637095 () Bool)

(declare-fun tail!15564 (List!73884) List!73884)

(assert (=> b!7842859 (= e!4637095 (isPrefix!6361 (tail!15564 s1!502) (tail!15564 l!3495)))))

(declare-fun b!7842858 () Bool)

(declare-fun res!3119503 () Bool)

(assert (=> b!7842858 (=> (not res!3119503) (not e!4637095))))

(declare-fun head!16021 (List!73884) B!4017)

(assert (=> b!7842858 (= res!3119503 (= (head!16021 s1!502) (head!16021 l!3495)))))

(declare-fun b!7842857 () Bool)

(assert (=> b!7842857 (= e!4637096 e!4637095)))

(declare-fun res!3119505 () Bool)

(assert (=> b!7842857 (=> (not res!3119505) (not e!4637095))))

(assert (=> b!7842857 (= res!3119505 (not ((_ is Nil!73760) l!3495)))))

(assert (= (and d!2352611 (not res!3119504)) b!7842857))

(assert (= (and b!7842857 res!3119505) b!7842858))

(assert (= (and b!7842858 res!3119503) b!7842859))

(assert (= (and d!2352611 (not res!3119506)) b!7842860))

(declare-fun m!8254980 () Bool)

(assert (=> b!7842860 m!8254980))

(assert (=> b!7842860 m!8254972))

(declare-fun m!8254982 () Bool)

(assert (=> b!7842859 m!8254982))

(declare-fun m!8254984 () Bool)

(assert (=> b!7842859 m!8254984))

(assert (=> b!7842859 m!8254982))

(assert (=> b!7842859 m!8254984))

(declare-fun m!8254986 () Bool)

(assert (=> b!7842859 m!8254986))

(declare-fun m!8254988 () Bool)

(assert (=> b!7842858 m!8254988))

(declare-fun m!8254990 () Bool)

(assert (=> b!7842858 m!8254990))

(assert (=> start!742798 d!2352611))

(declare-fun b!7842864 () Bool)

(declare-fun e!4637097 () Bool)

(assert (=> b!7842864 (= e!4637097 (>= (size!42809 s1!502) (size!42809 s2!461)))))

(declare-fun d!2352615 () Bool)

(assert (=> d!2352615 e!4637097))

(declare-fun res!3119510 () Bool)

(assert (=> d!2352615 (=> res!3119510 e!4637097)))

(declare-fun lt!2678845 () Bool)

(assert (=> d!2352615 (= res!3119510 (not lt!2678845))))

(declare-fun e!4637099 () Bool)

(assert (=> d!2352615 (= lt!2678845 e!4637099)))

(declare-fun res!3119508 () Bool)

(assert (=> d!2352615 (=> res!3119508 e!4637099)))

(assert (=> d!2352615 (= res!3119508 ((_ is Nil!73760) s2!461))))

(assert (=> d!2352615 (= (isPrefix!6361 s2!461 s1!502) lt!2678845)))

(declare-fun b!7842863 () Bool)

(declare-fun e!4637098 () Bool)

(assert (=> b!7842863 (= e!4637098 (isPrefix!6361 (tail!15564 s2!461) (tail!15564 s1!502)))))

(declare-fun b!7842862 () Bool)

(declare-fun res!3119507 () Bool)

(assert (=> b!7842862 (=> (not res!3119507) (not e!4637098))))

(assert (=> b!7842862 (= res!3119507 (= (head!16021 s2!461) (head!16021 s1!502)))))

(declare-fun b!7842861 () Bool)

(assert (=> b!7842861 (= e!4637099 e!4637098)))

(declare-fun res!3119509 () Bool)

(assert (=> b!7842861 (=> (not res!3119509) (not e!4637098))))

(assert (=> b!7842861 (= res!3119509 (not ((_ is Nil!73760) s1!502)))))

(assert (= (and d!2352615 (not res!3119508)) b!7842861))

(assert (= (and b!7842861 res!3119509) b!7842862))

(assert (= (and b!7842862 res!3119507) b!7842863))

(assert (= (and d!2352615 (not res!3119510)) b!7842864))

(assert (=> b!7842864 m!8254972))

(assert (=> b!7842864 m!8254970))

(declare-fun m!8254992 () Bool)

(assert (=> b!7842863 m!8254992))

(assert (=> b!7842863 m!8254982))

(assert (=> b!7842863 m!8254992))

(assert (=> b!7842863 m!8254982))

(declare-fun m!8254994 () Bool)

(assert (=> b!7842863 m!8254994))

(declare-fun m!8254996 () Bool)

(assert (=> b!7842862 m!8254996))

(assert (=> b!7842862 m!8254988))

(assert (=> b!7842834 d!2352615))

(declare-fun b!7842868 () Bool)

(declare-fun e!4637100 () Bool)

(assert (=> b!7842868 (= e!4637100 (>= (size!42809 l!3495) (size!42809 s2!461)))))

(declare-fun d!2352617 () Bool)

(assert (=> d!2352617 e!4637100))

(declare-fun res!3119514 () Bool)

(assert (=> d!2352617 (=> res!3119514 e!4637100)))

(declare-fun lt!2678846 () Bool)

(assert (=> d!2352617 (= res!3119514 (not lt!2678846))))

(declare-fun e!4637102 () Bool)

(assert (=> d!2352617 (= lt!2678846 e!4637102)))

(declare-fun res!3119512 () Bool)

(assert (=> d!2352617 (=> res!3119512 e!4637102)))

(assert (=> d!2352617 (= res!3119512 ((_ is Nil!73760) s2!461))))

(assert (=> d!2352617 (= (isPrefix!6361 s2!461 l!3495) lt!2678846)))

(declare-fun b!7842867 () Bool)

(declare-fun e!4637101 () Bool)

(assert (=> b!7842867 (= e!4637101 (isPrefix!6361 (tail!15564 s2!461) (tail!15564 l!3495)))))

(declare-fun b!7842866 () Bool)

(declare-fun res!3119511 () Bool)

(assert (=> b!7842866 (=> (not res!3119511) (not e!4637101))))

(assert (=> b!7842866 (= res!3119511 (= (head!16021 s2!461) (head!16021 l!3495)))))

(declare-fun b!7842865 () Bool)

(assert (=> b!7842865 (= e!4637102 e!4637101)))

(declare-fun res!3119513 () Bool)

(assert (=> b!7842865 (=> (not res!3119513) (not e!4637101))))

(assert (=> b!7842865 (= res!3119513 (not ((_ is Nil!73760) l!3495)))))

(assert (= (and d!2352617 (not res!3119512)) b!7842865))

(assert (= (and b!7842865 res!3119513) b!7842866))

(assert (= (and b!7842866 res!3119511) b!7842867))

(assert (= (and d!2352617 (not res!3119514)) b!7842868))

(assert (=> b!7842868 m!8254980))

(assert (=> b!7842868 m!8254970))

(assert (=> b!7842867 m!8254992))

(assert (=> b!7842867 m!8254984))

(assert (=> b!7842867 m!8254992))

(assert (=> b!7842867 m!8254984))

(declare-fun m!8254998 () Bool)

(assert (=> b!7842867 m!8254998))

(assert (=> b!7842866 m!8254996))

(assert (=> b!7842866 m!8254990))

(assert (=> b!7842835 d!2352617))

(declare-fun b!7842873 () Bool)

(declare-fun e!4637105 () Bool)

(declare-fun tp!2321221 () Bool)

(assert (=> b!7842873 (= e!4637105 (and tp_is_empty!52449 tp!2321221))))

(assert (=> b!7842837 (= tp!2321218 e!4637105)))

(assert (= (and b!7842837 ((_ is Cons!73760) (t!388619 l!3495))) b!7842873))

(declare-fun b!7842874 () Bool)

(declare-fun e!4637106 () Bool)

(declare-fun tp!2321222 () Bool)

(assert (=> b!7842874 (= e!4637106 (and tp_is_empty!52449 tp!2321222))))

(assert (=> b!7842838 (= tp!2321216 e!4637106)))

(assert (= (and b!7842838 ((_ is Cons!73760) (t!388619 s2!461))) b!7842874))

(declare-fun b!7842875 () Bool)

(declare-fun e!4637107 () Bool)

(declare-fun tp!2321223 () Bool)

(assert (=> b!7842875 (= e!4637107 (and tp_is_empty!52449 tp!2321223))))

(assert (=> b!7842839 (= tp!2321217 e!4637107)))

(assert (= (and b!7842839 ((_ is Cons!73760) (t!388619 s1!502))) b!7842875))

(check-sat (not b!7842860) tp_is_empty!52449 (not b!7842862) (not b!7842858) (not b!7842864) (not b!7842866) (not b!7842867) (not b!7842875) (not b!7842868) (not b!7842863) (not b!7842859) (not b!7842873) (not b!7842848) (not b!7842846) (not b!7842874))
(check-sat)
