; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46326 () Bool)

(assert start!46326)

(declare-fun res!217297 () Bool)

(declare-fun e!305852 () Bool)

(assert (=> start!46326 (=> (not res!217297) (not e!305852))))

(declare-datatypes ((B!1061 0))(
  ( (B!1062 (val!1672 Int)) )
))
(declare-datatypes ((List!4645 0))(
  ( (Nil!4635) (Cons!4635 (h!10032 B!1061) (t!73163 List!4645)) )
))
(declare-fun lt!212139 () List!4645)

(declare-fun l2!1029 () List!4645)

(declare-fun l1!1060 () List!4645)

(declare-fun tot!35 () List!4645)

(declare-fun ++!1357 (List!4645 List!4645) List!4645)

(assert (=> start!46326 (= res!217297 (= (++!1357 (++!1357 l1!1060 lt!212139) l2!1029) tot!35))))

(declare-fun elmt!142 () B!1061)

(assert (=> start!46326 (= lt!212139 (Cons!4635 elmt!142 Nil!4635))))

(assert (=> start!46326 e!305852))

(declare-fun tp_is_empty!2447 () Bool)

(assert (=> start!46326 tp_is_empty!2447))

(declare-fun e!305854 () Bool)

(assert (=> start!46326 e!305854))

(declare-fun e!305853 () Bool)

(assert (=> start!46326 e!305853))

(declare-fun e!305851 () Bool)

(assert (=> start!46326 e!305851))

(declare-fun b!511978 () Bool)

(declare-fun tp!159147 () Bool)

(assert (=> b!511978 (= e!305854 (and tp_is_empty!2447 tp!159147))))

(declare-fun b!511979 () Bool)

(declare-fun res!217296 () Bool)

(assert (=> b!511979 (=> (not res!217296) (not e!305852))))

(get-info :version)

(assert (=> b!511979 (= res!217296 (not ((_ is Cons!4635) l1!1060)))))

(declare-fun b!511980 () Bool)

(declare-fun tp!159146 () Bool)

(assert (=> b!511980 (= e!305853 (and tp_is_empty!2447 tp!159146))))

(declare-fun b!511981 () Bool)

(assert (=> b!511981 (= e!305852 (not (= (++!1357 l1!1060 (++!1357 lt!212139 l2!1029)) tot!35)))))

(declare-fun b!511982 () Bool)

(declare-fun tp!159145 () Bool)

(assert (=> b!511982 (= e!305851 (and tp_is_empty!2447 tp!159145))))

(assert (= (and start!46326 res!217297) b!511979))

(assert (= (and b!511979 res!217296) b!511981))

(assert (= (and start!46326 ((_ is Cons!4635) l2!1029)) b!511978))

(assert (= (and start!46326 ((_ is Cons!4635) l1!1060)) b!511980))

(assert (= (and start!46326 ((_ is Cons!4635) tot!35)) b!511982))

(declare-fun m!758831 () Bool)

(assert (=> start!46326 m!758831))

(assert (=> start!46326 m!758831))

(declare-fun m!758833 () Bool)

(assert (=> start!46326 m!758833))

(declare-fun m!758835 () Bool)

(assert (=> b!511981 m!758835))

(assert (=> b!511981 m!758835))

(declare-fun m!758837 () Bool)

(assert (=> b!511981 m!758837))

(check-sat (not b!511978) (not b!511980) (not b!511981) (not b!511982) tp_is_empty!2447 (not start!46326))
(check-sat)
(get-model)

(declare-fun b!512001 () Bool)

(declare-fun res!217307 () Bool)

(declare-fun e!305863 () Bool)

(assert (=> b!512001 (=> (not res!217307) (not e!305863))))

(declare-fun lt!212144 () List!4645)

(declare-fun size!3736 (List!4645) Int)

(assert (=> b!512001 (= res!217307 (= (size!3736 lt!212144) (+ (size!3736 (++!1357 l1!1060 lt!212139)) (size!3736 l2!1029))))))

(declare-fun b!512002 () Bool)

(assert (=> b!512002 (= e!305863 (or (not (= l2!1029 Nil!4635)) (= lt!212144 (++!1357 l1!1060 lt!212139))))))

(declare-fun d!184011 () Bool)

(assert (=> d!184011 e!305863))

(declare-fun res!217306 () Bool)

(assert (=> d!184011 (=> (not res!217306) (not e!305863))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!805 (List!4645) (InoxSet B!1061))

(assert (=> d!184011 (= res!217306 (= (content!805 lt!212144) ((_ map or) (content!805 (++!1357 l1!1060 lt!212139)) (content!805 l2!1029))))))

(declare-fun e!305864 () List!4645)

(assert (=> d!184011 (= lt!212144 e!305864)))

(declare-fun c!99522 () Bool)

(assert (=> d!184011 (= c!99522 ((_ is Nil!4635) (++!1357 l1!1060 lt!212139)))))

(assert (=> d!184011 (= (++!1357 (++!1357 l1!1060 lt!212139) l2!1029) lt!212144)))

(declare-fun b!511999 () Bool)

(assert (=> b!511999 (= e!305864 l2!1029)))

(declare-fun b!512000 () Bool)

(assert (=> b!512000 (= e!305864 (Cons!4635 (h!10032 (++!1357 l1!1060 lt!212139)) (++!1357 (t!73163 (++!1357 l1!1060 lt!212139)) l2!1029)))))

(assert (= (and d!184011 c!99522) b!511999))

(assert (= (and d!184011 (not c!99522)) b!512000))

(assert (= (and d!184011 res!217306) b!512001))

(assert (= (and b!512001 res!217307) b!512002))

(declare-fun m!758839 () Bool)

(assert (=> b!512001 m!758839))

(assert (=> b!512001 m!758831))

(declare-fun m!758841 () Bool)

(assert (=> b!512001 m!758841))

(declare-fun m!758843 () Bool)

(assert (=> b!512001 m!758843))

(declare-fun m!758847 () Bool)

(assert (=> d!184011 m!758847))

(assert (=> d!184011 m!758831))

(declare-fun m!758851 () Bool)

(assert (=> d!184011 m!758851))

(declare-fun m!758853 () Bool)

(assert (=> d!184011 m!758853))

(declare-fun m!758857 () Bool)

(assert (=> b!512000 m!758857))

(assert (=> start!46326 d!184011))

(declare-fun b!512009 () Bool)

(declare-fun res!217311 () Bool)

(declare-fun e!305867 () Bool)

(assert (=> b!512009 (=> (not res!217311) (not e!305867))))

(declare-fun lt!212146 () List!4645)

(assert (=> b!512009 (= res!217311 (= (size!3736 lt!212146) (+ (size!3736 l1!1060) (size!3736 lt!212139))))))

(declare-fun b!512010 () Bool)

(assert (=> b!512010 (= e!305867 (or (not (= lt!212139 Nil!4635)) (= lt!212146 l1!1060)))))

(declare-fun d!184013 () Bool)

(assert (=> d!184013 e!305867))

(declare-fun res!217310 () Bool)

(assert (=> d!184013 (=> (not res!217310) (not e!305867))))

(assert (=> d!184013 (= res!217310 (= (content!805 lt!212146) ((_ map or) (content!805 l1!1060) (content!805 lt!212139))))))

(declare-fun e!305868 () List!4645)

(assert (=> d!184013 (= lt!212146 e!305868)))

(declare-fun c!99524 () Bool)

(assert (=> d!184013 (= c!99524 ((_ is Nil!4635) l1!1060))))

(assert (=> d!184013 (= (++!1357 l1!1060 lt!212139) lt!212146)))

(declare-fun b!512007 () Bool)

(assert (=> b!512007 (= e!305868 lt!212139)))

(declare-fun b!512008 () Bool)

(assert (=> b!512008 (= e!305868 (Cons!4635 (h!10032 l1!1060) (++!1357 (t!73163 l1!1060) lt!212139)))))

(assert (= (and d!184013 c!99524) b!512007))

(assert (= (and d!184013 (not c!99524)) b!512008))

(assert (= (and d!184013 res!217310) b!512009))

(assert (= (and b!512009 res!217311) b!512010))

(declare-fun m!758867 () Bool)

(assert (=> b!512009 m!758867))

(declare-fun m!758869 () Bool)

(assert (=> b!512009 m!758869))

(declare-fun m!758871 () Bool)

(assert (=> b!512009 m!758871))

(declare-fun m!758873 () Bool)

(assert (=> d!184013 m!758873))

(declare-fun m!758875 () Bool)

(assert (=> d!184013 m!758875))

(declare-fun m!758877 () Bool)

(assert (=> d!184013 m!758877))

(declare-fun m!758879 () Bool)

(assert (=> b!512008 m!758879))

(assert (=> start!46326 d!184013))

(declare-fun b!512017 () Bool)

(declare-fun res!217315 () Bool)

(declare-fun e!305871 () Bool)

(assert (=> b!512017 (=> (not res!217315) (not e!305871))))

(declare-fun lt!212148 () List!4645)

(assert (=> b!512017 (= res!217315 (= (size!3736 lt!212148) (+ (size!3736 l1!1060) (size!3736 (++!1357 lt!212139 l2!1029)))))))

(declare-fun b!512018 () Bool)

(assert (=> b!512018 (= e!305871 (or (not (= (++!1357 lt!212139 l2!1029) Nil!4635)) (= lt!212148 l1!1060)))))

(declare-fun d!184017 () Bool)

(assert (=> d!184017 e!305871))

(declare-fun res!217314 () Bool)

(assert (=> d!184017 (=> (not res!217314) (not e!305871))))

(assert (=> d!184017 (= res!217314 (= (content!805 lt!212148) ((_ map or) (content!805 l1!1060) (content!805 (++!1357 lt!212139 l2!1029)))))))

(declare-fun e!305872 () List!4645)

(assert (=> d!184017 (= lt!212148 e!305872)))

(declare-fun c!99526 () Bool)

(assert (=> d!184017 (= c!99526 ((_ is Nil!4635) l1!1060))))

(assert (=> d!184017 (= (++!1357 l1!1060 (++!1357 lt!212139 l2!1029)) lt!212148)))

(declare-fun b!512015 () Bool)

(assert (=> b!512015 (= e!305872 (++!1357 lt!212139 l2!1029))))

(declare-fun b!512016 () Bool)

(assert (=> b!512016 (= e!305872 (Cons!4635 (h!10032 l1!1060) (++!1357 (t!73163 l1!1060) (++!1357 lt!212139 l2!1029))))))

(assert (= (and d!184017 c!99526) b!512015))

(assert (= (and d!184017 (not c!99526)) b!512016))

(assert (= (and d!184017 res!217314) b!512017))

(assert (= (and b!512017 res!217315) b!512018))

(declare-fun m!758895 () Bool)

(assert (=> b!512017 m!758895))

(assert (=> b!512017 m!758869))

(assert (=> b!512017 m!758835))

(declare-fun m!758897 () Bool)

(assert (=> b!512017 m!758897))

(declare-fun m!758899 () Bool)

(assert (=> d!184017 m!758899))

(assert (=> d!184017 m!758875))

(assert (=> d!184017 m!758835))

(declare-fun m!758901 () Bool)

(assert (=> d!184017 m!758901))

(assert (=> b!512016 m!758835))

(declare-fun m!758903 () Bool)

(assert (=> b!512016 m!758903))

(assert (=> b!511981 d!184017))

(declare-fun b!512025 () Bool)

(declare-fun res!217319 () Bool)

(declare-fun e!305875 () Bool)

(assert (=> b!512025 (=> (not res!217319) (not e!305875))))

(declare-fun lt!212150 () List!4645)

(assert (=> b!512025 (= res!217319 (= (size!3736 lt!212150) (+ (size!3736 lt!212139) (size!3736 l2!1029))))))

(declare-fun b!512026 () Bool)

(assert (=> b!512026 (= e!305875 (or (not (= l2!1029 Nil!4635)) (= lt!212150 lt!212139)))))

(declare-fun d!184021 () Bool)

(assert (=> d!184021 e!305875))

(declare-fun res!217318 () Bool)

(assert (=> d!184021 (=> (not res!217318) (not e!305875))))

(assert (=> d!184021 (= res!217318 (= (content!805 lt!212150) ((_ map or) (content!805 lt!212139) (content!805 l2!1029))))))

(declare-fun e!305876 () List!4645)

(assert (=> d!184021 (= lt!212150 e!305876)))

(declare-fun c!99528 () Bool)

(assert (=> d!184021 (= c!99528 ((_ is Nil!4635) lt!212139))))

(assert (=> d!184021 (= (++!1357 lt!212139 l2!1029) lt!212150)))

(declare-fun b!512023 () Bool)

(assert (=> b!512023 (= e!305876 l2!1029)))

(declare-fun b!512024 () Bool)

(assert (=> b!512024 (= e!305876 (Cons!4635 (h!10032 lt!212139) (++!1357 (t!73163 lt!212139) l2!1029)))))

(assert (= (and d!184021 c!99528) b!512023))

(assert (= (and d!184021 (not c!99528)) b!512024))

(assert (= (and d!184021 res!217318) b!512025))

(assert (= (and b!512025 res!217319) b!512026))

(declare-fun m!758915 () Bool)

(assert (=> b!512025 m!758915))

(assert (=> b!512025 m!758871))

(assert (=> b!512025 m!758843))

(declare-fun m!758917 () Bool)

(assert (=> d!184021 m!758917))

(assert (=> d!184021 m!758877))

(assert (=> d!184021 m!758853))

(declare-fun m!758919 () Bool)

(assert (=> b!512024 m!758919))

(assert (=> b!511981 d!184021))

(declare-fun b!512037 () Bool)

(declare-fun e!305881 () Bool)

(declare-fun tp!159150 () Bool)

(assert (=> b!512037 (= e!305881 (and tp_is_empty!2447 tp!159150))))

(assert (=> b!511982 (= tp!159145 e!305881)))

(assert (= (and b!511982 ((_ is Cons!4635) (t!73163 tot!35))) b!512037))

(declare-fun b!512040 () Bool)

(declare-fun e!305884 () Bool)

(declare-fun tp!159153 () Bool)

(assert (=> b!512040 (= e!305884 (and tp_is_empty!2447 tp!159153))))

(assert (=> b!511980 (= tp!159146 e!305884)))

(assert (= (and b!511980 ((_ is Cons!4635) (t!73163 l1!1060))) b!512040))

(declare-fun b!512041 () Bool)

(declare-fun e!305885 () Bool)

(declare-fun tp!159154 () Bool)

(assert (=> b!512041 (= e!305885 (and tp_is_empty!2447 tp!159154))))

(assert (=> b!511978 (= tp!159147 e!305885)))

(assert (= (and b!511978 ((_ is Cons!4635) (t!73163 l2!1029))) b!512041))

(check-sat (not b!512025) (not b!512009) (not d!184013) (not b!512017) (not b!512024) (not b!512041) (not d!184011) (not b!512000) (not d!184021) tp_is_empty!2447 (not b!512008) (not b!512037) (not b!512040) (not b!512016) (not b!512001) (not d!184017))
(check-sat)
