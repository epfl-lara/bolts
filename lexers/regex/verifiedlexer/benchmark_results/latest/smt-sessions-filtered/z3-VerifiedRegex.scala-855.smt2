; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46190 () Bool)

(assert start!46190)

(declare-fun b!511102 () Bool)

(declare-fun e!305292 () Bool)

(declare-datatypes ((B!1025 0))(
  ( (B!1026 (val!1654 Int)) )
))
(declare-datatypes ((List!4627 0))(
  ( (Nil!4617) (Cons!4617 (h!10014 B!1025) (t!73145 List!4627)) )
))
(declare-fun p!1985 () List!4627)

(declare-fun l!3306 () List!4627)

(declare-fun isPrefix!549 (List!4627 List!4627) Bool)

(declare-fun removeLast!14 (List!4627) List!4627)

(assert (=> b!511102 (= e!305292 (not (isPrefix!549 p!1985 (removeLast!14 l!3306))))))

(declare-fun lt!211902 () List!4627)

(assert (=> b!511102 (isPrefix!549 (t!73145 p!1985) (removeLast!14 lt!211902))))

(declare-datatypes ((Unit!8396 0))(
  ( (Unit!8397) )
))
(declare-fun lt!211903 () Unit!8396)

(declare-fun lemmaRemoveLastPrefixStillPrefix!4 (List!4627 List!4627) Unit!8396)

(assert (=> b!511102 (= lt!211903 (lemmaRemoveLastPrefixStillPrefix!4 (t!73145 p!1985) lt!211902))))

(declare-fun b!511103 () Bool)

(declare-fun e!305291 () Bool)

(declare-fun tp_is_empty!2411 () Bool)

(declare-fun tp!158927 () Bool)

(assert (=> b!511103 (= e!305291 (and tp_is_empty!2411 tp!158927))))

(declare-fun b!511104 () Bool)

(declare-fun res!216940 () Bool)

(declare-fun e!305294 () Bool)

(assert (=> b!511104 (=> (not res!216940) (not e!305294))))

(get-info :version)

(assert (=> b!511104 (= res!216940 ((_ is Cons!4617) p!1985))))

(declare-fun b!511105 () Bool)

(declare-fun res!216943 () Bool)

(assert (=> b!511105 (=> (not res!216943) (not e!305292))))

(assert (=> b!511105 (= res!216943 (isPrefix!549 (t!73145 p!1985) lt!211902))))

(declare-fun b!511106 () Bool)

(declare-fun res!216939 () Bool)

(assert (=> b!511106 (=> (not res!216939) (not e!305292))))

(declare-fun size!3723 (List!4627) Int)

(assert (=> b!511106 (= res!216939 (< (size!3723 (t!73145 p!1985)) (size!3723 lt!211902)))))

(declare-fun b!511107 () Bool)

(assert (=> b!511107 (= e!305294 e!305292)))

(declare-fun res!216942 () Bool)

(assert (=> b!511107 (=> (not res!216942) (not e!305292))))

(declare-fun isEmpty!3571 (List!4627) Bool)

(assert (=> b!511107 (= res!216942 (not (isEmpty!3571 lt!211902)))))

(declare-fun tail!684 (List!4627) List!4627)

(assert (=> b!511107 (= lt!211902 (tail!684 l!3306))))

(declare-fun b!511108 () Bool)

(declare-fun e!305293 () Bool)

(declare-fun tp!158926 () Bool)

(assert (=> b!511108 (= e!305293 (and tp_is_empty!2411 tp!158926))))

(declare-fun res!216941 () Bool)

(assert (=> start!46190 (=> (not res!216941) (not e!305294))))

(assert (=> start!46190 (= res!216941 (not (isEmpty!3571 l!3306)))))

(assert (=> start!46190 e!305294))

(assert (=> start!46190 e!305291))

(assert (=> start!46190 e!305293))

(declare-fun b!511109 () Bool)

(declare-fun res!216944 () Bool)

(assert (=> b!511109 (=> (not res!216944) (not e!305294))))

(assert (=> b!511109 (= res!216944 (isPrefix!549 p!1985 l!3306))))

(declare-fun b!511110 () Bool)

(declare-fun res!216945 () Bool)

(assert (=> b!511110 (=> (not res!216945) (not e!305294))))

(assert (=> b!511110 (= res!216945 (< (size!3723 p!1985) (size!3723 l!3306)))))

(assert (= (and start!46190 res!216941) b!511109))

(assert (= (and b!511109 res!216944) b!511110))

(assert (= (and b!511110 res!216945) b!511104))

(assert (= (and b!511104 res!216940) b!511107))

(assert (= (and b!511107 res!216942) b!511105))

(assert (= (and b!511105 res!216943) b!511106))

(assert (= (and b!511106 res!216939) b!511102))

(assert (= (and start!46190 ((_ is Cons!4617) l!3306)) b!511103))

(assert (= (and start!46190 ((_ is Cons!4617) p!1985)) b!511108))

(declare-fun m!757819 () Bool)

(assert (=> b!511106 m!757819))

(declare-fun m!757821 () Bool)

(assert (=> b!511106 m!757821))

(declare-fun m!757823 () Bool)

(assert (=> b!511105 m!757823))

(declare-fun m!757825 () Bool)

(assert (=> b!511102 m!757825))

(declare-fun m!757827 () Bool)

(assert (=> b!511102 m!757827))

(assert (=> b!511102 m!757825))

(declare-fun m!757829 () Bool)

(assert (=> b!511102 m!757829))

(declare-fun m!757831 () Bool)

(assert (=> b!511102 m!757831))

(assert (=> b!511102 m!757831))

(declare-fun m!757833 () Bool)

(assert (=> b!511102 m!757833))

(declare-fun m!757835 () Bool)

(assert (=> start!46190 m!757835))

(declare-fun m!757837 () Bool)

(assert (=> b!511110 m!757837))

(declare-fun m!757839 () Bool)

(assert (=> b!511110 m!757839))

(declare-fun m!757841 () Bool)

(assert (=> b!511109 m!757841))

(declare-fun m!757843 () Bool)

(assert (=> b!511107 m!757843))

(declare-fun m!757845 () Bool)

(assert (=> b!511107 m!757845))

(check-sat (not b!511110) (not b!511108) (not b!511103) (not b!511109) (not start!46190) (not b!511107) (not b!511106) tp_is_empty!2411 (not b!511105) (not b!511102))
(check-sat)
(get-model)

(declare-fun d!183708 () Bool)

(declare-fun lt!211906 () Int)

(assert (=> d!183708 (>= lt!211906 0)))

(declare-fun e!305297 () Int)

(assert (=> d!183708 (= lt!211906 e!305297)))

(declare-fun c!99384 () Bool)

(assert (=> d!183708 (= c!99384 ((_ is Nil!4617) (t!73145 p!1985)))))

(assert (=> d!183708 (= (size!3723 (t!73145 p!1985)) lt!211906)))

(declare-fun b!511115 () Bool)

(assert (=> b!511115 (= e!305297 0)))

(declare-fun b!511116 () Bool)

(assert (=> b!511116 (= e!305297 (+ 1 (size!3723 (t!73145 (t!73145 p!1985)))))))

(assert (= (and d!183708 c!99384) b!511115))

(assert (= (and d!183708 (not c!99384)) b!511116))

(declare-fun m!757847 () Bool)

(assert (=> b!511116 m!757847))

(assert (=> b!511106 d!183708))

(declare-fun d!183710 () Bool)

(declare-fun lt!211907 () Int)

(assert (=> d!183710 (>= lt!211907 0)))

(declare-fun e!305298 () Int)

(assert (=> d!183710 (= lt!211907 e!305298)))

(declare-fun c!99385 () Bool)

(assert (=> d!183710 (= c!99385 ((_ is Nil!4617) lt!211902))))

(assert (=> d!183710 (= (size!3723 lt!211902) lt!211907)))

(declare-fun b!511117 () Bool)

(assert (=> b!511117 (= e!305298 0)))

(declare-fun b!511118 () Bool)

(assert (=> b!511118 (= e!305298 (+ 1 (size!3723 (t!73145 lt!211902))))))

(assert (= (and d!183710 c!99385) b!511117))

(assert (= (and d!183710 (not c!99385)) b!511118))

(declare-fun m!757849 () Bool)

(assert (=> b!511118 m!757849))

(assert (=> b!511106 d!183710))

(declare-fun d!183712 () Bool)

(declare-fun lt!211908 () Int)

(assert (=> d!183712 (>= lt!211908 0)))

(declare-fun e!305299 () Int)

(assert (=> d!183712 (= lt!211908 e!305299)))

(declare-fun c!99386 () Bool)

(assert (=> d!183712 (= c!99386 ((_ is Nil!4617) p!1985))))

(assert (=> d!183712 (= (size!3723 p!1985) lt!211908)))

(declare-fun b!511119 () Bool)

(assert (=> b!511119 (= e!305299 0)))

(declare-fun b!511120 () Bool)

(assert (=> b!511120 (= e!305299 (+ 1 (size!3723 (t!73145 p!1985))))))

(assert (= (and d!183712 c!99386) b!511119))

(assert (= (and d!183712 (not c!99386)) b!511120))

(assert (=> b!511120 m!757819))

(assert (=> b!511110 d!183712))

(declare-fun d!183716 () Bool)

(declare-fun lt!211909 () Int)

(assert (=> d!183716 (>= lt!211909 0)))

(declare-fun e!305300 () Int)

(assert (=> d!183716 (= lt!211909 e!305300)))

(declare-fun c!99387 () Bool)

(assert (=> d!183716 (= c!99387 ((_ is Nil!4617) l!3306))))

(assert (=> d!183716 (= (size!3723 l!3306) lt!211909)))

(declare-fun b!511121 () Bool)

(assert (=> b!511121 (= e!305300 0)))

(declare-fun b!511122 () Bool)

(assert (=> b!511122 (= e!305300 (+ 1 (size!3723 (t!73145 l!3306))))))

(assert (= (and d!183716 c!99387) b!511121))

(assert (= (and d!183716 (not c!99387)) b!511122))

(declare-fun m!757851 () Bool)

(assert (=> b!511122 m!757851))

(assert (=> b!511110 d!183716))

(declare-fun b!511145 () Bool)

(declare-fun e!305317 () Bool)

(assert (=> b!511145 (= e!305317 (isPrefix!549 (tail!684 (t!73145 p!1985)) (tail!684 lt!211902)))))

(declare-fun b!511146 () Bool)

(declare-fun e!305316 () Bool)

(assert (=> b!511146 (= e!305316 (>= (size!3723 lt!211902) (size!3723 (t!73145 p!1985))))))

(declare-fun b!511143 () Bool)

(declare-fun e!305318 () Bool)

(assert (=> b!511143 (= e!305318 e!305317)))

(declare-fun res!216967 () Bool)

(assert (=> b!511143 (=> (not res!216967) (not e!305317))))

(assert (=> b!511143 (= res!216967 (not ((_ is Nil!4617) lt!211902)))))

(declare-fun d!183718 () Bool)

(assert (=> d!183718 e!305316))

(declare-fun res!216968 () Bool)

(assert (=> d!183718 (=> res!216968 e!305316)))

(declare-fun lt!211915 () Bool)

(assert (=> d!183718 (= res!216968 (not lt!211915))))

(assert (=> d!183718 (= lt!211915 e!305318)))

(declare-fun res!216966 () Bool)

(assert (=> d!183718 (=> res!216966 e!305318)))

(assert (=> d!183718 (= res!216966 ((_ is Nil!4617) (t!73145 p!1985)))))

(assert (=> d!183718 (= (isPrefix!549 (t!73145 p!1985) lt!211902) lt!211915)))

(declare-fun b!511144 () Bool)

(declare-fun res!216969 () Bool)

(assert (=> b!511144 (=> (not res!216969) (not e!305317))))

(declare-fun head!1160 (List!4627) B!1025)

(assert (=> b!511144 (= res!216969 (= (head!1160 (t!73145 p!1985)) (head!1160 lt!211902)))))

(assert (= (and d!183718 (not res!216966)) b!511143))

(assert (= (and b!511143 res!216967) b!511144))

(assert (= (and b!511144 res!216969) b!511145))

(assert (= (and d!183718 (not res!216968)) b!511146))

(declare-fun m!757855 () Bool)

(assert (=> b!511145 m!757855))

(declare-fun m!757859 () Bool)

(assert (=> b!511145 m!757859))

(assert (=> b!511145 m!757855))

(assert (=> b!511145 m!757859))

(declare-fun m!757863 () Bool)

(assert (=> b!511145 m!757863))

(assert (=> b!511146 m!757821))

(assert (=> b!511146 m!757819))

(declare-fun m!757867 () Bool)

(assert (=> b!511144 m!757867))

(declare-fun m!757869 () Bool)

(assert (=> b!511144 m!757869))

(assert (=> b!511105 d!183718))

(declare-fun d!183722 () Bool)

(assert (=> d!183722 (= (isEmpty!3571 l!3306) ((_ is Nil!4617) l!3306))))

(assert (=> start!46190 d!183722))

(declare-fun b!511149 () Bool)

(declare-fun e!305320 () Bool)

(assert (=> b!511149 (= e!305320 (isPrefix!549 (tail!684 p!1985) (tail!684 l!3306)))))

(declare-fun b!511150 () Bool)

(declare-fun e!305319 () Bool)

(assert (=> b!511150 (= e!305319 (>= (size!3723 l!3306) (size!3723 p!1985)))))

(declare-fun b!511147 () Bool)

(declare-fun e!305321 () Bool)

(assert (=> b!511147 (= e!305321 e!305320)))

(declare-fun res!216971 () Bool)

(assert (=> b!511147 (=> (not res!216971) (not e!305320))))

(assert (=> b!511147 (= res!216971 (not ((_ is Nil!4617) l!3306)))))

(declare-fun d!183724 () Bool)

(assert (=> d!183724 e!305319))

(declare-fun res!216972 () Bool)

(assert (=> d!183724 (=> res!216972 e!305319)))

(declare-fun lt!211916 () Bool)

(assert (=> d!183724 (= res!216972 (not lt!211916))))

(assert (=> d!183724 (= lt!211916 e!305321)))

(declare-fun res!216970 () Bool)

(assert (=> d!183724 (=> res!216970 e!305321)))

(assert (=> d!183724 (= res!216970 ((_ is Nil!4617) p!1985))))

(assert (=> d!183724 (= (isPrefix!549 p!1985 l!3306) lt!211916)))

(declare-fun b!511148 () Bool)

(declare-fun res!216973 () Bool)

(assert (=> b!511148 (=> (not res!216973) (not e!305320))))

(assert (=> b!511148 (= res!216973 (= (head!1160 p!1985) (head!1160 l!3306)))))

(assert (= (and d!183724 (not res!216970)) b!511147))

(assert (= (and b!511147 res!216971) b!511148))

(assert (= (and b!511148 res!216973) b!511149))

(assert (= (and d!183724 (not res!216972)) b!511150))

(declare-fun m!757871 () Bool)

(assert (=> b!511149 m!757871))

(assert (=> b!511149 m!757845))

(assert (=> b!511149 m!757871))

(assert (=> b!511149 m!757845))

(declare-fun m!757873 () Bool)

(assert (=> b!511149 m!757873))

(assert (=> b!511150 m!757839))

(assert (=> b!511150 m!757837))

(declare-fun m!757875 () Bool)

(assert (=> b!511148 m!757875))

(declare-fun m!757877 () Bool)

(assert (=> b!511148 m!757877))

(assert (=> b!511109 d!183724))

(declare-fun d!183726 () Bool)

(assert (=> d!183726 (= (isEmpty!3571 lt!211902) ((_ is Nil!4617) lt!211902))))

(assert (=> b!511107 d!183726))

(declare-fun d!183728 () Bool)

(assert (=> d!183728 (= (tail!684 l!3306) (t!73145 l!3306))))

(assert (=> b!511107 d!183728))

(declare-fun b!511157 () Bool)

(declare-fun e!305325 () Bool)

(assert (=> b!511157 (= e!305325 (isPrefix!549 (tail!684 p!1985) (tail!684 (removeLast!14 l!3306))))))

(declare-fun b!511158 () Bool)

(declare-fun e!305324 () Bool)

(assert (=> b!511158 (= e!305324 (>= (size!3723 (removeLast!14 l!3306)) (size!3723 p!1985)))))

(declare-fun b!511155 () Bool)

(declare-fun e!305326 () Bool)

(assert (=> b!511155 (= e!305326 e!305325)))

(declare-fun res!216975 () Bool)

(assert (=> b!511155 (=> (not res!216975) (not e!305325))))

(assert (=> b!511155 (= res!216975 (not ((_ is Nil!4617) (removeLast!14 l!3306))))))

(declare-fun d!183730 () Bool)

(assert (=> d!183730 e!305324))

(declare-fun res!216976 () Bool)

(assert (=> d!183730 (=> res!216976 e!305324)))

(declare-fun lt!211919 () Bool)

(assert (=> d!183730 (= res!216976 (not lt!211919))))

(assert (=> d!183730 (= lt!211919 e!305326)))

(declare-fun res!216974 () Bool)

(assert (=> d!183730 (=> res!216974 e!305326)))

(assert (=> d!183730 (= res!216974 ((_ is Nil!4617) p!1985))))

(assert (=> d!183730 (= (isPrefix!549 p!1985 (removeLast!14 l!3306)) lt!211919)))

(declare-fun b!511156 () Bool)

(declare-fun res!216977 () Bool)

(assert (=> b!511156 (=> (not res!216977) (not e!305325))))

(assert (=> b!511156 (= res!216977 (= (head!1160 p!1985) (head!1160 (removeLast!14 l!3306))))))

(assert (= (and d!183730 (not res!216974)) b!511155))

(assert (= (and b!511155 res!216975) b!511156))

(assert (= (and b!511156 res!216977) b!511157))

(assert (= (and d!183730 (not res!216976)) b!511158))

(assert (=> b!511157 m!757871))

(assert (=> b!511157 m!757825))

(declare-fun m!757879 () Bool)

(assert (=> b!511157 m!757879))

(assert (=> b!511157 m!757871))

(assert (=> b!511157 m!757879))

(declare-fun m!757881 () Bool)

(assert (=> b!511157 m!757881))

(assert (=> b!511158 m!757825))

(declare-fun m!757883 () Bool)

(assert (=> b!511158 m!757883))

(assert (=> b!511158 m!757837))

(assert (=> b!511156 m!757875))

(assert (=> b!511156 m!757825))

(declare-fun m!757885 () Bool)

(assert (=> b!511156 m!757885))

(assert (=> b!511102 d!183730))

(declare-fun b!511163 () Bool)

(declare-fun e!305329 () Bool)

(assert (=> b!511163 (= e!305329 (isPrefix!549 (tail!684 (t!73145 p!1985)) (tail!684 (removeLast!14 lt!211902))))))

(declare-fun b!511164 () Bool)

(declare-fun e!305328 () Bool)

(assert (=> b!511164 (= e!305328 (>= (size!3723 (removeLast!14 lt!211902)) (size!3723 (t!73145 p!1985))))))

(declare-fun b!511161 () Bool)

(declare-fun e!305330 () Bool)

(assert (=> b!511161 (= e!305330 e!305329)))

(declare-fun res!216979 () Bool)

(assert (=> b!511161 (=> (not res!216979) (not e!305329))))

(assert (=> b!511161 (= res!216979 (not ((_ is Nil!4617) (removeLast!14 lt!211902))))))

(declare-fun d!183732 () Bool)

(assert (=> d!183732 e!305328))

(declare-fun res!216980 () Bool)

(assert (=> d!183732 (=> res!216980 e!305328)))

(declare-fun lt!211921 () Bool)

(assert (=> d!183732 (= res!216980 (not lt!211921))))

(assert (=> d!183732 (= lt!211921 e!305330)))

(declare-fun res!216978 () Bool)

(assert (=> d!183732 (=> res!216978 e!305330)))

(assert (=> d!183732 (= res!216978 ((_ is Nil!4617) (t!73145 p!1985)))))

(assert (=> d!183732 (= (isPrefix!549 (t!73145 p!1985) (removeLast!14 lt!211902)) lt!211921)))

(declare-fun b!511162 () Bool)

(declare-fun res!216981 () Bool)

(assert (=> b!511162 (=> (not res!216981) (not e!305329))))

(assert (=> b!511162 (= res!216981 (= (head!1160 (t!73145 p!1985)) (head!1160 (removeLast!14 lt!211902))))))

(assert (= (and d!183732 (not res!216978)) b!511161))

(assert (= (and b!511161 res!216979) b!511162))

(assert (= (and b!511162 res!216981) b!511163))

(assert (= (and d!183732 (not res!216980)) b!511164))

(assert (=> b!511163 m!757855))

(assert (=> b!511163 m!757831))

(declare-fun m!757891 () Bool)

(assert (=> b!511163 m!757891))

(assert (=> b!511163 m!757855))

(assert (=> b!511163 m!757891))

(declare-fun m!757893 () Bool)

(assert (=> b!511163 m!757893))

(assert (=> b!511164 m!757831))

(declare-fun m!757895 () Bool)

(assert (=> b!511164 m!757895))

(assert (=> b!511164 m!757819))

(assert (=> b!511162 m!757867))

(assert (=> b!511162 m!757831))

(declare-fun m!757897 () Bool)

(assert (=> b!511162 m!757897))

(assert (=> b!511102 d!183732))

(declare-fun d!183738 () Bool)

(assert (=> d!183738 (isPrefix!549 (t!73145 p!1985) (removeLast!14 lt!211902))))

(declare-fun lt!211928 () Unit!8396)

(declare-fun choose!3643 (List!4627 List!4627) Unit!8396)

(assert (=> d!183738 (= lt!211928 (choose!3643 (t!73145 p!1985) lt!211902))))

(assert (=> d!183738 (not (isEmpty!3571 lt!211902))))

(assert (=> d!183738 (= (lemmaRemoveLastPrefixStillPrefix!4 (t!73145 p!1985) lt!211902) lt!211928)))

(declare-fun bs!59310 () Bool)

(assert (= bs!59310 d!183738))

(assert (=> bs!59310 m!757831))

(assert (=> bs!59310 m!757831))

(assert (=> bs!59310 m!757833))

(declare-fun m!757925 () Bool)

(assert (=> bs!59310 m!757925))

(assert (=> bs!59310 m!757843))

(assert (=> b!511102 d!183738))

(declare-fun d!183750 () Bool)

(declare-fun lt!211934 () List!4627)

(declare-fun ++!1338 (List!4627 List!4627) List!4627)

(declare-fun last!42 (List!4627) B!1025)

(assert (=> d!183750 (= (++!1338 lt!211934 (Cons!4617 (last!42 l!3306) Nil!4617)) l!3306)))

(declare-fun e!305343 () List!4627)

(assert (=> d!183750 (= lt!211934 e!305343)))

(declare-fun c!99394 () Bool)

(assert (=> d!183750 (= c!99394 (and ((_ is Cons!4617) l!3306) ((_ is Nil!4617) (t!73145 l!3306))))))

(assert (=> d!183750 (not (isEmpty!3571 l!3306))))

(assert (=> d!183750 (= (removeLast!14 l!3306) lt!211934)))

(declare-fun b!511183 () Bool)

(assert (=> b!511183 (= e!305343 Nil!4617)))

(declare-fun b!511184 () Bool)

(assert (=> b!511184 (= e!305343 (Cons!4617 (h!10014 l!3306) (removeLast!14 (t!73145 l!3306))))))

(assert (= (and d!183750 c!99394) b!511183))

(assert (= (and d!183750 (not c!99394)) b!511184))

(declare-fun m!757929 () Bool)

(assert (=> d!183750 m!757929))

(declare-fun m!757931 () Bool)

(assert (=> d!183750 m!757931))

(assert (=> d!183750 m!757835))

(declare-fun m!757933 () Bool)

(assert (=> b!511184 m!757933))

(assert (=> b!511102 d!183750))

(declare-fun d!183754 () Bool)

(declare-fun lt!211935 () List!4627)

(assert (=> d!183754 (= (++!1338 lt!211935 (Cons!4617 (last!42 lt!211902) Nil!4617)) lt!211902)))

(declare-fun e!305344 () List!4627)

(assert (=> d!183754 (= lt!211935 e!305344)))

(declare-fun c!99395 () Bool)

(assert (=> d!183754 (= c!99395 (and ((_ is Cons!4617) lt!211902) ((_ is Nil!4617) (t!73145 lt!211902))))))

(assert (=> d!183754 (not (isEmpty!3571 lt!211902))))

(assert (=> d!183754 (= (removeLast!14 lt!211902) lt!211935)))

(declare-fun b!511185 () Bool)

(assert (=> b!511185 (= e!305344 Nil!4617)))

(declare-fun b!511186 () Bool)

(assert (=> b!511186 (= e!305344 (Cons!4617 (h!10014 lt!211902) (removeLast!14 (t!73145 lt!211902))))))

(assert (= (and d!183754 c!99395) b!511185))

(assert (= (and d!183754 (not c!99395)) b!511186))

(declare-fun m!757935 () Bool)

(assert (=> d!183754 m!757935))

(declare-fun m!757937 () Bool)

(assert (=> d!183754 m!757937))

(assert (=> d!183754 m!757843))

(declare-fun m!757939 () Bool)

(assert (=> b!511186 m!757939))

(assert (=> b!511102 d!183754))

(declare-fun b!511195 () Bool)

(declare-fun e!305349 () Bool)

(declare-fun tp!158930 () Bool)

(assert (=> b!511195 (= e!305349 (and tp_is_empty!2411 tp!158930))))

(assert (=> b!511103 (= tp!158927 e!305349)))

(assert (= (and b!511103 ((_ is Cons!4617) (t!73145 l!3306))) b!511195))

(declare-fun b!511196 () Bool)

(declare-fun e!305350 () Bool)

(declare-fun tp!158931 () Bool)

(assert (=> b!511196 (= e!305350 (and tp_is_empty!2411 tp!158931))))

(assert (=> b!511108 (= tp!158926 e!305350)))

(assert (= (and b!511108 ((_ is Cons!4617) (t!73145 p!1985))) b!511196))

(check-sat (not b!511148) (not d!183750) (not b!511162) (not b!511146) (not b!511157) (not b!511184) (not b!511158) (not b!511116) (not b!511120) (not b!511145) (not b!511195) (not b!511156) (not b!511144) (not b!511196) (not b!511186) (not b!511118) (not b!511122) (not b!511150) tp_is_empty!2411 (not b!511149) (not b!511163) (not d!183738) (not d!183754) (not b!511164))
(check-sat)
(get-model)

(declare-fun b!511220 () Bool)

(declare-fun e!305364 () List!4627)

(assert (=> b!511220 (= e!305364 (Cons!4617 (h!10014 lt!211935) (++!1338 (t!73145 lt!211935) (Cons!4617 (last!42 lt!211902) Nil!4617))))))

(declare-fun d!183764 () Bool)

(declare-fun e!305363 () Bool)

(assert (=> d!183764 e!305363))

(declare-fun res!216999 () Bool)

(assert (=> d!183764 (=> (not res!216999) (not e!305363))))

(declare-fun lt!211944 () List!4627)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!792 (List!4627) (InoxSet B!1025))

(assert (=> d!183764 (= res!216999 (= (content!792 lt!211944) ((_ map or) (content!792 lt!211935) (content!792 (Cons!4617 (last!42 lt!211902) Nil!4617)))))))

(assert (=> d!183764 (= lt!211944 e!305364)))

(declare-fun c!99404 () Bool)

(assert (=> d!183764 (= c!99404 ((_ is Nil!4617) lt!211935))))

(assert (=> d!183764 (= (++!1338 lt!211935 (Cons!4617 (last!42 lt!211902) Nil!4617)) lt!211944)))

(declare-fun b!511222 () Bool)

(assert (=> b!511222 (= e!305363 (or (not (= (Cons!4617 (last!42 lt!211902) Nil!4617) Nil!4617)) (= lt!211944 lt!211935)))))

(declare-fun b!511219 () Bool)

(assert (=> b!511219 (= e!305364 (Cons!4617 (last!42 lt!211902) Nil!4617))))

(declare-fun b!511221 () Bool)

(declare-fun res!216998 () Bool)

(assert (=> b!511221 (=> (not res!216998) (not e!305363))))

(assert (=> b!511221 (= res!216998 (= (size!3723 lt!211944) (+ (size!3723 lt!211935) (size!3723 (Cons!4617 (last!42 lt!211902) Nil!4617)))))))

(assert (= (and d!183764 c!99404) b!511219))

(assert (= (and d!183764 (not c!99404)) b!511220))

(assert (= (and d!183764 res!216999) b!511221))

(assert (= (and b!511221 res!216998) b!511222))

(declare-fun m!757955 () Bool)

(assert (=> b!511220 m!757955))

(declare-fun m!757957 () Bool)

(assert (=> d!183764 m!757957))

(declare-fun m!757959 () Bool)

(assert (=> d!183764 m!757959))

(declare-fun m!757961 () Bool)

(assert (=> d!183764 m!757961))

(declare-fun m!757963 () Bool)

(assert (=> b!511221 m!757963))

(declare-fun m!757965 () Bool)

(assert (=> b!511221 m!757965))

(declare-fun m!757967 () Bool)

(assert (=> b!511221 m!757967))

(assert (=> d!183754 d!183764))

(declare-fun d!183766 () Bool)

(declare-fun lt!211947 () B!1025)

(declare-fun contains!1042 (List!4627 B!1025) Bool)

(assert (=> d!183766 (contains!1042 lt!211902 lt!211947)))

(declare-fun e!305367 () B!1025)

(assert (=> d!183766 (= lt!211947 e!305367)))

(declare-fun c!99407 () Bool)

(assert (=> d!183766 (= c!99407 (and ((_ is Cons!4617) lt!211902) ((_ is Nil!4617) (t!73145 lt!211902))))))

(assert (=> d!183766 (not (isEmpty!3571 lt!211902))))

(assert (=> d!183766 (= (last!42 lt!211902) lt!211947)))

(declare-fun b!511227 () Bool)

(assert (=> b!511227 (= e!305367 (h!10014 lt!211902))))

(declare-fun b!511228 () Bool)

(assert (=> b!511228 (= e!305367 (last!42 (t!73145 lt!211902)))))

(assert (= (and d!183766 c!99407) b!511227))

(assert (= (and d!183766 (not c!99407)) b!511228))

(declare-fun m!757969 () Bool)

(assert (=> d!183766 m!757969))

(assert (=> d!183766 m!757843))

(declare-fun m!757971 () Bool)

(assert (=> b!511228 m!757971))

(assert (=> d!183754 d!183766))

(assert (=> d!183754 d!183726))

(assert (=> b!511120 d!183708))

(declare-fun d!183768 () Bool)

(declare-fun lt!211948 () Int)

(assert (=> d!183768 (>= lt!211948 0)))

(declare-fun e!305368 () Int)

(assert (=> d!183768 (= lt!211948 e!305368)))

(declare-fun c!99408 () Bool)

(assert (=> d!183768 (= c!99408 ((_ is Nil!4617) (t!73145 l!3306)))))

(assert (=> d!183768 (= (size!3723 (t!73145 l!3306)) lt!211948)))

(declare-fun b!511229 () Bool)

(assert (=> b!511229 (= e!305368 0)))

(declare-fun b!511230 () Bool)

(assert (=> b!511230 (= e!305368 (+ 1 (size!3723 (t!73145 (t!73145 l!3306)))))))

(assert (= (and d!183768 c!99408) b!511229))

(assert (= (and d!183768 (not c!99408)) b!511230))

(declare-fun m!757973 () Bool)

(assert (=> b!511230 m!757973))

(assert (=> b!511122 d!183768))

(assert (=> b!511146 d!183710))

(assert (=> b!511146 d!183708))

(declare-fun d!183770 () Bool)

(assert (=> d!183770 (= (head!1160 (t!73145 p!1985)) (h!10014 (t!73145 p!1985)))))

(assert (=> b!511144 d!183770))

(declare-fun d!183772 () Bool)

(assert (=> d!183772 (= (head!1160 lt!211902) (h!10014 lt!211902))))

(assert (=> b!511144 d!183772))

(declare-fun b!511233 () Bool)

(declare-fun e!305370 () Bool)

(assert (=> b!511233 (= e!305370 (isPrefix!549 (tail!684 (tail!684 (t!73145 p!1985))) (tail!684 (tail!684 lt!211902))))))

(declare-fun b!511234 () Bool)

(declare-fun e!305369 () Bool)

(assert (=> b!511234 (= e!305369 (>= (size!3723 (tail!684 lt!211902)) (size!3723 (tail!684 (t!73145 p!1985)))))))

(declare-fun b!511231 () Bool)

(declare-fun e!305371 () Bool)

(assert (=> b!511231 (= e!305371 e!305370)))

(declare-fun res!217001 () Bool)

(assert (=> b!511231 (=> (not res!217001) (not e!305370))))

(assert (=> b!511231 (= res!217001 (not ((_ is Nil!4617) (tail!684 lt!211902))))))

(declare-fun d!183774 () Bool)

(assert (=> d!183774 e!305369))

(declare-fun res!217002 () Bool)

(assert (=> d!183774 (=> res!217002 e!305369)))

(declare-fun lt!211949 () Bool)

(assert (=> d!183774 (= res!217002 (not lt!211949))))

(assert (=> d!183774 (= lt!211949 e!305371)))

(declare-fun res!217000 () Bool)

(assert (=> d!183774 (=> res!217000 e!305371)))

(assert (=> d!183774 (= res!217000 ((_ is Nil!4617) (tail!684 (t!73145 p!1985))))))

(assert (=> d!183774 (= (isPrefix!549 (tail!684 (t!73145 p!1985)) (tail!684 lt!211902)) lt!211949)))

(declare-fun b!511232 () Bool)

(declare-fun res!217003 () Bool)

(assert (=> b!511232 (=> (not res!217003) (not e!305370))))

(assert (=> b!511232 (= res!217003 (= (head!1160 (tail!684 (t!73145 p!1985))) (head!1160 (tail!684 lt!211902))))))

(assert (= (and d!183774 (not res!217000)) b!511231))

(assert (= (and b!511231 res!217001) b!511232))

(assert (= (and b!511232 res!217003) b!511233))

(assert (= (and d!183774 (not res!217002)) b!511234))

(assert (=> b!511233 m!757855))

(declare-fun m!757975 () Bool)

(assert (=> b!511233 m!757975))

(assert (=> b!511233 m!757859))

(declare-fun m!757977 () Bool)

(assert (=> b!511233 m!757977))

(assert (=> b!511233 m!757975))

(assert (=> b!511233 m!757977))

(declare-fun m!757979 () Bool)

(assert (=> b!511233 m!757979))

(assert (=> b!511234 m!757859))

(declare-fun m!757981 () Bool)

(assert (=> b!511234 m!757981))

(assert (=> b!511234 m!757855))

(declare-fun m!757983 () Bool)

(assert (=> b!511234 m!757983))

(assert (=> b!511232 m!757855))

(declare-fun m!757985 () Bool)

(assert (=> b!511232 m!757985))

(assert (=> b!511232 m!757859))

(declare-fun m!757987 () Bool)

(assert (=> b!511232 m!757987))

(assert (=> b!511145 d!183774))

(declare-fun d!183776 () Bool)

(assert (=> d!183776 (= (tail!684 (t!73145 p!1985)) (t!73145 (t!73145 p!1985)))))

(assert (=> b!511145 d!183776))

(declare-fun d!183778 () Bool)

(assert (=> d!183778 (= (tail!684 lt!211902) (t!73145 lt!211902))))

(assert (=> b!511145 d!183778))

(declare-fun b!511236 () Bool)

(declare-fun e!305373 () List!4627)

(assert (=> b!511236 (= e!305373 (Cons!4617 (h!10014 lt!211934) (++!1338 (t!73145 lt!211934) (Cons!4617 (last!42 l!3306) Nil!4617))))))

(declare-fun d!183780 () Bool)

(declare-fun e!305372 () Bool)

(assert (=> d!183780 e!305372))

(declare-fun res!217005 () Bool)

(assert (=> d!183780 (=> (not res!217005) (not e!305372))))

(declare-fun lt!211950 () List!4627)

(assert (=> d!183780 (= res!217005 (= (content!792 lt!211950) ((_ map or) (content!792 lt!211934) (content!792 (Cons!4617 (last!42 l!3306) Nil!4617)))))))

(assert (=> d!183780 (= lt!211950 e!305373)))

(declare-fun c!99409 () Bool)

(assert (=> d!183780 (= c!99409 ((_ is Nil!4617) lt!211934))))

(assert (=> d!183780 (= (++!1338 lt!211934 (Cons!4617 (last!42 l!3306) Nil!4617)) lt!211950)))

(declare-fun b!511238 () Bool)

(assert (=> b!511238 (= e!305372 (or (not (= (Cons!4617 (last!42 l!3306) Nil!4617) Nil!4617)) (= lt!211950 lt!211934)))))

(declare-fun b!511235 () Bool)

(assert (=> b!511235 (= e!305373 (Cons!4617 (last!42 l!3306) Nil!4617))))

(declare-fun b!511237 () Bool)

(declare-fun res!217004 () Bool)

(assert (=> b!511237 (=> (not res!217004) (not e!305372))))

(assert (=> b!511237 (= res!217004 (= (size!3723 lt!211950) (+ (size!3723 lt!211934) (size!3723 (Cons!4617 (last!42 l!3306) Nil!4617)))))))

(assert (= (and d!183780 c!99409) b!511235))

(assert (= (and d!183780 (not c!99409)) b!511236))

(assert (= (and d!183780 res!217005) b!511237))

(assert (= (and b!511237 res!217004) b!511238))

(declare-fun m!757989 () Bool)

(assert (=> b!511236 m!757989))

(declare-fun m!757991 () Bool)

(assert (=> d!183780 m!757991))

(declare-fun m!757993 () Bool)

(assert (=> d!183780 m!757993))

(declare-fun m!757995 () Bool)

(assert (=> d!183780 m!757995))

(declare-fun m!757997 () Bool)

(assert (=> b!511237 m!757997))

(declare-fun m!757999 () Bool)

(assert (=> b!511237 m!757999))

(declare-fun m!758001 () Bool)

(assert (=> b!511237 m!758001))

(assert (=> d!183750 d!183780))

(declare-fun d!183782 () Bool)

(declare-fun lt!211951 () B!1025)

(assert (=> d!183782 (contains!1042 l!3306 lt!211951)))

(declare-fun e!305374 () B!1025)

(assert (=> d!183782 (= lt!211951 e!305374)))

(declare-fun c!99410 () Bool)

(assert (=> d!183782 (= c!99410 (and ((_ is Cons!4617) l!3306) ((_ is Nil!4617) (t!73145 l!3306))))))

(assert (=> d!183782 (not (isEmpty!3571 l!3306))))

(assert (=> d!183782 (= (last!42 l!3306) lt!211951)))

(declare-fun b!511239 () Bool)

(assert (=> b!511239 (= e!305374 (h!10014 l!3306))))

(declare-fun b!511240 () Bool)

(assert (=> b!511240 (= e!305374 (last!42 (t!73145 l!3306)))))

(assert (= (and d!183782 c!99410) b!511239))

(assert (= (and d!183782 (not c!99410)) b!511240))

(declare-fun m!758003 () Bool)

(assert (=> d!183782 m!758003))

(assert (=> d!183782 m!757835))

(declare-fun m!758005 () Bool)

(assert (=> b!511240 m!758005))

(assert (=> d!183750 d!183782))

(assert (=> d!183750 d!183722))

(declare-fun d!183784 () Bool)

(declare-fun lt!211952 () List!4627)

(assert (=> d!183784 (= (++!1338 lt!211952 (Cons!4617 (last!42 (t!73145 lt!211902)) Nil!4617)) (t!73145 lt!211902))))

(declare-fun e!305375 () List!4627)

(assert (=> d!183784 (= lt!211952 e!305375)))

(declare-fun c!99411 () Bool)

(assert (=> d!183784 (= c!99411 (and ((_ is Cons!4617) (t!73145 lt!211902)) ((_ is Nil!4617) (t!73145 (t!73145 lt!211902)))))))

(assert (=> d!183784 (not (isEmpty!3571 (t!73145 lt!211902)))))

(assert (=> d!183784 (= (removeLast!14 (t!73145 lt!211902)) lt!211952)))

(declare-fun b!511241 () Bool)

(assert (=> b!511241 (= e!305375 Nil!4617)))

(declare-fun b!511242 () Bool)

(assert (=> b!511242 (= e!305375 (Cons!4617 (h!10014 (t!73145 lt!211902)) (removeLast!14 (t!73145 (t!73145 lt!211902)))))))

(assert (= (and d!183784 c!99411) b!511241))

(assert (= (and d!183784 (not c!99411)) b!511242))

(assert (=> d!183784 m!757971))

(declare-fun m!758007 () Bool)

(assert (=> d!183784 m!758007))

(declare-fun m!758009 () Bool)

(assert (=> d!183784 m!758009))

(declare-fun m!758011 () Bool)

(assert (=> b!511242 m!758011))

(assert (=> b!511186 d!183784))

(assert (=> d!183738 d!183732))

(assert (=> d!183738 d!183754))

(declare-fun d!183786 () Bool)

(assert (=> d!183786 (isPrefix!549 (t!73145 p!1985) (removeLast!14 lt!211902))))

(assert (=> d!183786 true))

(declare-fun _$57!70 () Unit!8396)

(assert (=> d!183786 (= (choose!3643 (t!73145 p!1985) lt!211902) _$57!70)))

(declare-fun bs!59312 () Bool)

(assert (= bs!59312 d!183786))

(assert (=> bs!59312 m!757831))

(assert (=> bs!59312 m!757831))

(assert (=> bs!59312 m!757833))

(assert (=> d!183738 d!183786))

(assert (=> d!183738 d!183726))

(declare-fun b!511245 () Bool)

(declare-fun e!305377 () Bool)

(assert (=> b!511245 (= e!305377 (isPrefix!549 (tail!684 (tail!684 p!1985)) (tail!684 (tail!684 l!3306))))))

(declare-fun b!511246 () Bool)

(declare-fun e!305376 () Bool)

(assert (=> b!511246 (= e!305376 (>= (size!3723 (tail!684 l!3306)) (size!3723 (tail!684 p!1985))))))

(declare-fun b!511243 () Bool)

(declare-fun e!305378 () Bool)

(assert (=> b!511243 (= e!305378 e!305377)))

(declare-fun res!217007 () Bool)

(assert (=> b!511243 (=> (not res!217007) (not e!305377))))

(assert (=> b!511243 (= res!217007 (not ((_ is Nil!4617) (tail!684 l!3306))))))

(declare-fun d!183788 () Bool)

(assert (=> d!183788 e!305376))

(declare-fun res!217008 () Bool)

(assert (=> d!183788 (=> res!217008 e!305376)))

(declare-fun lt!211953 () Bool)

(assert (=> d!183788 (= res!217008 (not lt!211953))))

(assert (=> d!183788 (= lt!211953 e!305378)))

(declare-fun res!217006 () Bool)

(assert (=> d!183788 (=> res!217006 e!305378)))

(assert (=> d!183788 (= res!217006 ((_ is Nil!4617) (tail!684 p!1985)))))

(assert (=> d!183788 (= (isPrefix!549 (tail!684 p!1985) (tail!684 l!3306)) lt!211953)))

(declare-fun b!511244 () Bool)

(declare-fun res!217009 () Bool)

(assert (=> b!511244 (=> (not res!217009) (not e!305377))))

(assert (=> b!511244 (= res!217009 (= (head!1160 (tail!684 p!1985)) (head!1160 (tail!684 l!3306))))))

(assert (= (and d!183788 (not res!217006)) b!511243))

(assert (= (and b!511243 res!217007) b!511244))

(assert (= (and b!511244 res!217009) b!511245))

(assert (= (and d!183788 (not res!217008)) b!511246))

(assert (=> b!511245 m!757871))

(declare-fun m!758013 () Bool)

(assert (=> b!511245 m!758013))

(assert (=> b!511245 m!757845))

(declare-fun m!758015 () Bool)

(assert (=> b!511245 m!758015))

(assert (=> b!511245 m!758013))

(assert (=> b!511245 m!758015))

(declare-fun m!758017 () Bool)

(assert (=> b!511245 m!758017))

(assert (=> b!511246 m!757845))

(declare-fun m!758019 () Bool)

(assert (=> b!511246 m!758019))

(assert (=> b!511246 m!757871))

(declare-fun m!758021 () Bool)

(assert (=> b!511246 m!758021))

(assert (=> b!511244 m!757871))

(declare-fun m!758023 () Bool)

(assert (=> b!511244 m!758023))

(assert (=> b!511244 m!757845))

(declare-fun m!758025 () Bool)

(assert (=> b!511244 m!758025))

(assert (=> b!511149 d!183788))

(declare-fun d!183790 () Bool)

(assert (=> d!183790 (= (tail!684 p!1985) (t!73145 p!1985))))

(assert (=> b!511149 d!183790))

(assert (=> b!511149 d!183728))

(declare-fun d!183792 () Bool)

(declare-fun lt!211954 () Int)

(assert (=> d!183792 (>= lt!211954 0)))

(declare-fun e!305379 () Int)

(assert (=> d!183792 (= lt!211954 e!305379)))

(declare-fun c!99412 () Bool)

(assert (=> d!183792 (= c!99412 ((_ is Nil!4617) (removeLast!14 l!3306)))))

(assert (=> d!183792 (= (size!3723 (removeLast!14 l!3306)) lt!211954)))

(declare-fun b!511247 () Bool)

(assert (=> b!511247 (= e!305379 0)))

(declare-fun b!511248 () Bool)

(assert (=> b!511248 (= e!305379 (+ 1 (size!3723 (t!73145 (removeLast!14 l!3306)))))))

(assert (= (and d!183792 c!99412) b!511247))

(assert (= (and d!183792 (not c!99412)) b!511248))

(declare-fun m!758027 () Bool)

(assert (=> b!511248 m!758027))

(assert (=> b!511158 d!183792))

(assert (=> b!511158 d!183712))

(declare-fun d!183794 () Bool)

(declare-fun lt!211955 () Int)

(assert (=> d!183794 (>= lt!211955 0)))

(declare-fun e!305380 () Int)

(assert (=> d!183794 (= lt!211955 e!305380)))

(declare-fun c!99413 () Bool)

(assert (=> d!183794 (= c!99413 ((_ is Nil!4617) (t!73145 (t!73145 p!1985))))))

(assert (=> d!183794 (= (size!3723 (t!73145 (t!73145 p!1985))) lt!211955)))

(declare-fun b!511249 () Bool)

(assert (=> b!511249 (= e!305380 0)))

(declare-fun b!511250 () Bool)

(assert (=> b!511250 (= e!305380 (+ 1 (size!3723 (t!73145 (t!73145 (t!73145 p!1985))))))))

(assert (= (and d!183794 c!99413) b!511249))

(assert (= (and d!183794 (not c!99413)) b!511250))

(declare-fun m!758029 () Bool)

(assert (=> b!511250 m!758029))

(assert (=> b!511116 d!183794))

(assert (=> b!511150 d!183716))

(assert (=> b!511150 d!183712))

(declare-fun d!183796 () Bool)

(declare-fun lt!211956 () Int)

(assert (=> d!183796 (>= lt!211956 0)))

(declare-fun e!305381 () Int)

(assert (=> d!183796 (= lt!211956 e!305381)))

(declare-fun c!99414 () Bool)

(assert (=> d!183796 (= c!99414 ((_ is Nil!4617) (t!73145 lt!211902)))))

(assert (=> d!183796 (= (size!3723 (t!73145 lt!211902)) lt!211956)))

(declare-fun b!511251 () Bool)

(assert (=> b!511251 (= e!305381 0)))

(declare-fun b!511252 () Bool)

(assert (=> b!511252 (= e!305381 (+ 1 (size!3723 (t!73145 (t!73145 lt!211902)))))))

(assert (= (and d!183796 c!99414) b!511251))

(assert (= (and d!183796 (not c!99414)) b!511252))

(declare-fun m!758031 () Bool)

(assert (=> b!511252 m!758031))

(assert (=> b!511118 d!183796))

(declare-fun d!183798 () Bool)

(assert (=> d!183798 (= (head!1160 p!1985) (h!10014 p!1985))))

(assert (=> b!511148 d!183798))

(declare-fun d!183800 () Bool)

(assert (=> d!183800 (= (head!1160 l!3306) (h!10014 l!3306))))

(assert (=> b!511148 d!183800))

(declare-fun d!183802 () Bool)

(declare-fun lt!211957 () Int)

(assert (=> d!183802 (>= lt!211957 0)))

(declare-fun e!305382 () Int)

(assert (=> d!183802 (= lt!211957 e!305382)))

(declare-fun c!99415 () Bool)

(assert (=> d!183802 (= c!99415 ((_ is Nil!4617) (removeLast!14 lt!211902)))))

(assert (=> d!183802 (= (size!3723 (removeLast!14 lt!211902)) lt!211957)))

(declare-fun b!511253 () Bool)

(assert (=> b!511253 (= e!305382 0)))

(declare-fun b!511254 () Bool)

(assert (=> b!511254 (= e!305382 (+ 1 (size!3723 (t!73145 (removeLast!14 lt!211902)))))))

(assert (= (and d!183802 c!99415) b!511253))

(assert (= (and d!183802 (not c!99415)) b!511254))

(declare-fun m!758033 () Bool)

(assert (=> b!511254 m!758033))

(assert (=> b!511164 d!183802))

(assert (=> b!511164 d!183708))

(declare-fun b!511257 () Bool)

(declare-fun e!305384 () Bool)

(assert (=> b!511257 (= e!305384 (isPrefix!549 (tail!684 (tail!684 p!1985)) (tail!684 (tail!684 (removeLast!14 l!3306)))))))

(declare-fun b!511258 () Bool)

(declare-fun e!305383 () Bool)

(assert (=> b!511258 (= e!305383 (>= (size!3723 (tail!684 (removeLast!14 l!3306))) (size!3723 (tail!684 p!1985))))))

(declare-fun b!511255 () Bool)

(declare-fun e!305385 () Bool)

(assert (=> b!511255 (= e!305385 e!305384)))

(declare-fun res!217011 () Bool)

(assert (=> b!511255 (=> (not res!217011) (not e!305384))))

(assert (=> b!511255 (= res!217011 (not ((_ is Nil!4617) (tail!684 (removeLast!14 l!3306)))))))

(declare-fun d!183804 () Bool)

(assert (=> d!183804 e!305383))

(declare-fun res!217012 () Bool)

(assert (=> d!183804 (=> res!217012 e!305383)))

(declare-fun lt!211958 () Bool)

(assert (=> d!183804 (= res!217012 (not lt!211958))))

(assert (=> d!183804 (= lt!211958 e!305385)))

(declare-fun res!217010 () Bool)

(assert (=> d!183804 (=> res!217010 e!305385)))

(assert (=> d!183804 (= res!217010 ((_ is Nil!4617) (tail!684 p!1985)))))

(assert (=> d!183804 (= (isPrefix!549 (tail!684 p!1985) (tail!684 (removeLast!14 l!3306))) lt!211958)))

(declare-fun b!511256 () Bool)

(declare-fun res!217013 () Bool)

(assert (=> b!511256 (=> (not res!217013) (not e!305384))))

(assert (=> b!511256 (= res!217013 (= (head!1160 (tail!684 p!1985)) (head!1160 (tail!684 (removeLast!14 l!3306)))))))

(assert (= (and d!183804 (not res!217010)) b!511255))

(assert (= (and b!511255 res!217011) b!511256))

(assert (= (and b!511256 res!217013) b!511257))

(assert (= (and d!183804 (not res!217012)) b!511258))

(assert (=> b!511257 m!757871))

(assert (=> b!511257 m!758013))

(assert (=> b!511257 m!757879))

(declare-fun m!758035 () Bool)

(assert (=> b!511257 m!758035))

(assert (=> b!511257 m!758013))

(assert (=> b!511257 m!758035))

(declare-fun m!758037 () Bool)

(assert (=> b!511257 m!758037))

(assert (=> b!511258 m!757879))

(declare-fun m!758039 () Bool)

(assert (=> b!511258 m!758039))

(assert (=> b!511258 m!757871))

(assert (=> b!511258 m!758021))

(assert (=> b!511256 m!757871))

(assert (=> b!511256 m!758023))

(assert (=> b!511256 m!757879))

(declare-fun m!758041 () Bool)

(assert (=> b!511256 m!758041))

(assert (=> b!511157 d!183804))

(assert (=> b!511157 d!183790))

(declare-fun d!183806 () Bool)

(assert (=> d!183806 (= (tail!684 (removeLast!14 l!3306)) (t!73145 (removeLast!14 l!3306)))))

(assert (=> b!511157 d!183806))

(declare-fun d!183808 () Bool)

(declare-fun lt!211959 () List!4627)

(assert (=> d!183808 (= (++!1338 lt!211959 (Cons!4617 (last!42 (t!73145 l!3306)) Nil!4617)) (t!73145 l!3306))))

(declare-fun e!305386 () List!4627)

(assert (=> d!183808 (= lt!211959 e!305386)))

(declare-fun c!99416 () Bool)

(assert (=> d!183808 (= c!99416 (and ((_ is Cons!4617) (t!73145 l!3306)) ((_ is Nil!4617) (t!73145 (t!73145 l!3306)))))))

(assert (=> d!183808 (not (isEmpty!3571 (t!73145 l!3306)))))

(assert (=> d!183808 (= (removeLast!14 (t!73145 l!3306)) lt!211959)))

(declare-fun b!511259 () Bool)

(assert (=> b!511259 (= e!305386 Nil!4617)))

(declare-fun b!511260 () Bool)

(assert (=> b!511260 (= e!305386 (Cons!4617 (h!10014 (t!73145 l!3306)) (removeLast!14 (t!73145 (t!73145 l!3306)))))))

(assert (= (and d!183808 c!99416) b!511259))

(assert (= (and d!183808 (not c!99416)) b!511260))

(assert (=> d!183808 m!758005))

(declare-fun m!758043 () Bool)

(assert (=> d!183808 m!758043))

(declare-fun m!758045 () Bool)

(assert (=> d!183808 m!758045))

(declare-fun m!758047 () Bool)

(assert (=> b!511260 m!758047))

(assert (=> b!511184 d!183808))

(assert (=> b!511162 d!183770))

(declare-fun d!183810 () Bool)

(assert (=> d!183810 (= (head!1160 (removeLast!14 lt!211902)) (h!10014 (removeLast!14 lt!211902)))))

(assert (=> b!511162 d!183810))

(declare-fun b!511263 () Bool)

(declare-fun e!305388 () Bool)

(assert (=> b!511263 (= e!305388 (isPrefix!549 (tail!684 (tail!684 (t!73145 p!1985))) (tail!684 (tail!684 (removeLast!14 lt!211902)))))))

(declare-fun b!511264 () Bool)

(declare-fun e!305387 () Bool)

(assert (=> b!511264 (= e!305387 (>= (size!3723 (tail!684 (removeLast!14 lt!211902))) (size!3723 (tail!684 (t!73145 p!1985)))))))

(declare-fun b!511261 () Bool)

(declare-fun e!305389 () Bool)

(assert (=> b!511261 (= e!305389 e!305388)))

(declare-fun res!217015 () Bool)

(assert (=> b!511261 (=> (not res!217015) (not e!305388))))

(assert (=> b!511261 (= res!217015 (not ((_ is Nil!4617) (tail!684 (removeLast!14 lt!211902)))))))

(declare-fun d!183812 () Bool)

(assert (=> d!183812 e!305387))

(declare-fun res!217016 () Bool)

(assert (=> d!183812 (=> res!217016 e!305387)))

(declare-fun lt!211960 () Bool)

(assert (=> d!183812 (= res!217016 (not lt!211960))))

(assert (=> d!183812 (= lt!211960 e!305389)))

(declare-fun res!217014 () Bool)

(assert (=> d!183812 (=> res!217014 e!305389)))

(assert (=> d!183812 (= res!217014 ((_ is Nil!4617) (tail!684 (t!73145 p!1985))))))

(assert (=> d!183812 (= (isPrefix!549 (tail!684 (t!73145 p!1985)) (tail!684 (removeLast!14 lt!211902))) lt!211960)))

(declare-fun b!511262 () Bool)

(declare-fun res!217017 () Bool)

(assert (=> b!511262 (=> (not res!217017) (not e!305388))))

(assert (=> b!511262 (= res!217017 (= (head!1160 (tail!684 (t!73145 p!1985))) (head!1160 (tail!684 (removeLast!14 lt!211902)))))))

(assert (= (and d!183812 (not res!217014)) b!511261))

(assert (= (and b!511261 res!217015) b!511262))

(assert (= (and b!511262 res!217017) b!511263))

(assert (= (and d!183812 (not res!217016)) b!511264))

(assert (=> b!511263 m!757855))

(assert (=> b!511263 m!757975))

(assert (=> b!511263 m!757891))

(declare-fun m!758049 () Bool)

(assert (=> b!511263 m!758049))

(assert (=> b!511263 m!757975))

(assert (=> b!511263 m!758049))

(declare-fun m!758051 () Bool)

(assert (=> b!511263 m!758051))

(assert (=> b!511264 m!757891))

(declare-fun m!758053 () Bool)

(assert (=> b!511264 m!758053))

(assert (=> b!511264 m!757855))

(assert (=> b!511264 m!757983))

(assert (=> b!511262 m!757855))

(assert (=> b!511262 m!757985))

(assert (=> b!511262 m!757891))

(declare-fun m!758055 () Bool)

(assert (=> b!511262 m!758055))

(assert (=> b!511163 d!183812))

(assert (=> b!511163 d!183776))

(declare-fun d!183814 () Bool)

(assert (=> d!183814 (= (tail!684 (removeLast!14 lt!211902)) (t!73145 (removeLast!14 lt!211902)))))

(assert (=> b!511163 d!183814))

(assert (=> b!511156 d!183798))

(declare-fun d!183816 () Bool)

(assert (=> d!183816 (= (head!1160 (removeLast!14 l!3306)) (h!10014 (removeLast!14 l!3306)))))

(assert (=> b!511156 d!183816))

(declare-fun b!511265 () Bool)

(declare-fun e!305390 () Bool)

(declare-fun tp!158936 () Bool)

(assert (=> b!511265 (= e!305390 (and tp_is_empty!2411 tp!158936))))

(assert (=> b!511196 (= tp!158931 e!305390)))

(assert (= (and b!511196 ((_ is Cons!4617) (t!73145 (t!73145 p!1985)))) b!511265))

(declare-fun b!511266 () Bool)

(declare-fun e!305391 () Bool)

(declare-fun tp!158937 () Bool)

(assert (=> b!511266 (= e!305391 (and tp_is_empty!2411 tp!158937))))

(assert (=> b!511195 (= tp!158930 e!305391)))

(assert (= (and b!511195 ((_ is Cons!4617) (t!73145 (t!73145 l!3306)))) b!511266))

(check-sat (not b!511245) (not b!511237) (not b!511242) (not b!511265) (not b!511258) (not b!511236) (not b!511260) (not d!183808) (not b!511234) (not b!511240) (not d!183782) (not b!511228) (not b!511246) (not b!511244) (not b!511256) (not d!183786) (not b!511230) (not b!511248) (not b!511232) (not d!183764) (not b!511220) (not d!183766) (not b!511262) (not b!511266) (not b!511221) (not d!183784) tp_is_empty!2411 (not b!511233) (not b!511263) (not b!511254) (not b!511264) (not b!511257) (not b!511252) (not b!511250) (not d!183780))
(check-sat)
