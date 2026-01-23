; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754764 () Bool)

(assert start!754764)

(declare-fun b!8019086 () Bool)

(declare-fun e!4723802 () Bool)

(declare-fun tp_is_empty!54001 () Bool)

(declare-fun tp!2400205 () Bool)

(assert (=> b!8019086 (= e!4723802 (and tp_is_empty!54001 tp!2400205))))

(declare-fun b!8019087 () Bool)

(declare-fun res!3170714 () Bool)

(declare-fun e!4723801 () Bool)

(assert (=> b!8019087 (=> (not res!3170714) (not e!4723801))))

(declare-datatypes ((B!4113 0))(
  ( (B!4114 (val!32446 Int)) )
))
(declare-datatypes ((List!74958 0))(
  ( (Nil!74834) (Cons!74834 (h!81282 B!4113) (t!390701 List!74958)) )
))
(declare-fun p!2009 () List!74958)

(declare-fun l!3435 () List!74958)

(declare-fun size!43625 (List!74958) Int)

(assert (=> b!8019087 (= res!3170714 (< (size!43625 p!2009) (size!43625 l!3435)))))

(declare-fun b!8019088 () Bool)

(declare-fun e!4723803 () Bool)

(declare-fun tp!2400206 () Bool)

(assert (=> b!8019088 (= e!4723803 (and tp_is_empty!54001 tp!2400206))))

(declare-fun b!8019089 () Bool)

(declare-fun e!4723800 () Bool)

(assert (=> b!8019089 (= e!4723801 e!4723800)))

(declare-fun res!3170713 () Bool)

(assert (=> b!8019089 (=> (not res!3170713) (not e!4723800))))

(declare-fun lt!2719461 () List!74958)

(declare-fun isPrefix!6781 (List!74958 List!74958) Bool)

(assert (=> b!8019089 (= res!3170713 (isPrefix!6781 (t!390701 p!2009) lt!2719461))))

(declare-fun tail!15919 (List!74958) List!74958)

(assert (=> b!8019089 (= lt!2719461 (tail!15919 l!3435))))

(declare-fun b!8019090 () Bool)

(declare-fun res!3170711 () Bool)

(assert (=> b!8019090 (=> (not res!3170711) (not e!4723801))))

(get-info :version)

(assert (=> b!8019090 (= res!3170711 ((_ is Cons!74834) p!2009))))

(declare-fun res!3170712 () Bool)

(assert (=> start!754764 (=> (not res!3170712) (not e!4723801))))

(assert (=> start!754764 (= res!3170712 (isPrefix!6781 p!2009 l!3435))))

(assert (=> start!754764 e!4723801))

(assert (=> start!754764 e!4723803))

(assert (=> start!754764 e!4723802))

(declare-fun b!8019091 () Bool)

(declare-fun ListPrimitiveSize!491 (List!74958) Int)

(assert (=> b!8019091 (= e!4723800 (>= (ListPrimitiveSize!491 (t!390701 p!2009)) (ListPrimitiveSize!491 p!2009)))))

(declare-fun b!8019092 () Bool)

(declare-fun res!3170710 () Bool)

(assert (=> b!8019092 (=> (not res!3170710) (not e!4723800))))

(assert (=> b!8019092 (= res!3170710 (< (size!43625 (t!390701 p!2009)) (size!43625 lt!2719461)))))

(assert (= (and start!754764 res!3170712) b!8019087))

(assert (= (and b!8019087 res!3170714) b!8019090))

(assert (= (and b!8019090 res!3170711) b!8019089))

(assert (= (and b!8019089 res!3170713) b!8019092))

(assert (= (and b!8019092 res!3170710) b!8019091))

(assert (= (and start!754764 ((_ is Cons!74834) p!2009)) b!8019088))

(assert (= (and start!754764 ((_ is Cons!74834) l!3435)) b!8019086))

(declare-fun m!8382026 () Bool)

(assert (=> b!8019092 m!8382026))

(declare-fun m!8382028 () Bool)

(assert (=> b!8019092 m!8382028))

(declare-fun m!8382030 () Bool)

(assert (=> b!8019087 m!8382030))

(declare-fun m!8382032 () Bool)

(assert (=> b!8019087 m!8382032))

(declare-fun m!8382034 () Bool)

(assert (=> start!754764 m!8382034))

(declare-fun m!8382036 () Bool)

(assert (=> b!8019091 m!8382036))

(declare-fun m!8382038 () Bool)

(assert (=> b!8019091 m!8382038))

(declare-fun m!8382040 () Bool)

(assert (=> b!8019089 m!8382040))

(declare-fun m!8382042 () Bool)

(assert (=> b!8019089 m!8382042))

(check-sat (not start!754764) (not b!8019086) tp_is_empty!54001 (not b!8019092) (not b!8019088) (not b!8019091) (not b!8019087) (not b!8019089))
(check-sat)
(get-model)

(declare-fun d!2391027 () Bool)

(declare-fun lt!2719468 () Int)

(assert (=> d!2391027 (>= lt!2719468 0)))

(declare-fun e!4723810 () Int)

(assert (=> d!2391027 (= lt!2719468 e!4723810)))

(declare-fun c!1471785 () Bool)

(assert (=> d!2391027 (= c!1471785 ((_ is Nil!74834) (t!390701 p!2009)))))

(assert (=> d!2391027 (= (ListPrimitiveSize!491 (t!390701 p!2009)) lt!2719468)))

(declare-fun b!8019105 () Bool)

(assert (=> b!8019105 (= e!4723810 0)))

(declare-fun b!8019106 () Bool)

(assert (=> b!8019106 (= e!4723810 (+ 1 (ListPrimitiveSize!491 (t!390701 (t!390701 p!2009)))))))

(assert (= (and d!2391027 c!1471785) b!8019105))

(assert (= (and d!2391027 (not c!1471785)) b!8019106))

(declare-fun m!8382046 () Bool)

(assert (=> b!8019106 m!8382046))

(assert (=> b!8019091 d!2391027))

(declare-fun d!2391033 () Bool)

(declare-fun lt!2719469 () Int)

(assert (=> d!2391033 (>= lt!2719469 0)))

(declare-fun e!4723811 () Int)

(assert (=> d!2391033 (= lt!2719469 e!4723811)))

(declare-fun c!1471786 () Bool)

(assert (=> d!2391033 (= c!1471786 ((_ is Nil!74834) p!2009))))

(assert (=> d!2391033 (= (ListPrimitiveSize!491 p!2009) lt!2719469)))

(declare-fun b!8019107 () Bool)

(assert (=> b!8019107 (= e!4723811 0)))

(declare-fun b!8019108 () Bool)

(assert (=> b!8019108 (= e!4723811 (+ 1 (ListPrimitiveSize!491 (t!390701 p!2009))))))

(assert (= (and d!2391033 c!1471786) b!8019107))

(assert (= (and d!2391033 (not c!1471786)) b!8019108))

(assert (=> b!8019108 m!8382036))

(assert (=> b!8019091 d!2391033))

(declare-fun b!8019132 () Bool)

(declare-fun e!4723827 () Bool)

(assert (=> b!8019132 (= e!4723827 (>= (size!43625 l!3435) (size!43625 p!2009)))))

(declare-fun d!2391035 () Bool)

(assert (=> d!2391035 e!4723827))

(declare-fun res!3170736 () Bool)

(assert (=> d!2391035 (=> res!3170736 e!4723827)))

(declare-fun lt!2719475 () Bool)

(assert (=> d!2391035 (= res!3170736 (not lt!2719475))))

(declare-fun e!4723829 () Bool)

(assert (=> d!2391035 (= lt!2719475 e!4723829)))

(declare-fun res!3170737 () Bool)

(assert (=> d!2391035 (=> res!3170737 e!4723829)))

(assert (=> d!2391035 (= res!3170737 ((_ is Nil!74834) p!2009))))

(assert (=> d!2391035 (= (isPrefix!6781 p!2009 l!3435) lt!2719475)))

(declare-fun b!8019130 () Bool)

(declare-fun res!3170735 () Bool)

(declare-fun e!4723828 () Bool)

(assert (=> b!8019130 (=> (not res!3170735) (not e!4723828))))

(declare-fun head!16392 (List!74958) B!4113)

(assert (=> b!8019130 (= res!3170735 (= (head!16392 p!2009) (head!16392 l!3435)))))

(declare-fun b!8019131 () Bool)

(assert (=> b!8019131 (= e!4723828 (isPrefix!6781 (tail!15919 p!2009) (tail!15919 l!3435)))))

(declare-fun b!8019129 () Bool)

(assert (=> b!8019129 (= e!4723829 e!4723828)))

(declare-fun res!3170738 () Bool)

(assert (=> b!8019129 (=> (not res!3170738) (not e!4723828))))

(assert (=> b!8019129 (= res!3170738 (not ((_ is Nil!74834) l!3435)))))

(assert (= (and d!2391035 (not res!3170737)) b!8019129))

(assert (= (and b!8019129 res!3170738) b!8019130))

(assert (= (and b!8019130 res!3170735) b!8019131))

(assert (= (and d!2391035 (not res!3170736)) b!8019132))

(assert (=> b!8019132 m!8382032))

(assert (=> b!8019132 m!8382030))

(declare-fun m!8382056 () Bool)

(assert (=> b!8019130 m!8382056))

(declare-fun m!8382058 () Bool)

(assert (=> b!8019130 m!8382058))

(declare-fun m!8382060 () Bool)

(assert (=> b!8019131 m!8382060))

(assert (=> b!8019131 m!8382042))

(assert (=> b!8019131 m!8382060))

(assert (=> b!8019131 m!8382042))

(declare-fun m!8382062 () Bool)

(assert (=> b!8019131 m!8382062))

(assert (=> start!754764 d!2391035))

(declare-fun d!2391039 () Bool)

(declare-fun lt!2719485 () Int)

(assert (=> d!2391039 (>= lt!2719485 0)))

(declare-fun e!4723841 () Int)

(assert (=> d!2391039 (= lt!2719485 e!4723841)))

(declare-fun c!1471795 () Bool)

(assert (=> d!2391039 (= c!1471795 ((_ is Nil!74834) (t!390701 p!2009)))))

(assert (=> d!2391039 (= (size!43625 (t!390701 p!2009)) lt!2719485)))

(declare-fun b!8019153 () Bool)

(assert (=> b!8019153 (= e!4723841 0)))

(declare-fun b!8019154 () Bool)

(assert (=> b!8019154 (= e!4723841 (+ 1 (size!43625 (t!390701 (t!390701 p!2009)))))))

(assert (= (and d!2391039 c!1471795) b!8019153))

(assert (= (and d!2391039 (not c!1471795)) b!8019154))

(declare-fun m!8382080 () Bool)

(assert (=> b!8019154 m!8382080))

(assert (=> b!8019092 d!2391039))

(declare-fun d!2391051 () Bool)

(declare-fun lt!2719486 () Int)

(assert (=> d!2391051 (>= lt!2719486 0)))

(declare-fun e!4723842 () Int)

(assert (=> d!2391051 (= lt!2719486 e!4723842)))

(declare-fun c!1471796 () Bool)

(assert (=> d!2391051 (= c!1471796 ((_ is Nil!74834) lt!2719461))))

(assert (=> d!2391051 (= (size!43625 lt!2719461) lt!2719486)))

(declare-fun b!8019155 () Bool)

(assert (=> b!8019155 (= e!4723842 0)))

(declare-fun b!8019156 () Bool)

(assert (=> b!8019156 (= e!4723842 (+ 1 (size!43625 (t!390701 lt!2719461))))))

(assert (= (and d!2391051 c!1471796) b!8019155))

(assert (= (and d!2391051 (not c!1471796)) b!8019156))

(declare-fun m!8382082 () Bool)

(assert (=> b!8019156 m!8382082))

(assert (=> b!8019092 d!2391051))

(declare-fun d!2391053 () Bool)

(declare-fun lt!2719487 () Int)

(assert (=> d!2391053 (>= lt!2719487 0)))

(declare-fun e!4723843 () Int)

(assert (=> d!2391053 (= lt!2719487 e!4723843)))

(declare-fun c!1471797 () Bool)

(assert (=> d!2391053 (= c!1471797 ((_ is Nil!74834) p!2009))))

(assert (=> d!2391053 (= (size!43625 p!2009) lt!2719487)))

(declare-fun b!8019157 () Bool)

(assert (=> b!8019157 (= e!4723843 0)))

(declare-fun b!8019158 () Bool)

(assert (=> b!8019158 (= e!4723843 (+ 1 (size!43625 (t!390701 p!2009))))))

(assert (= (and d!2391053 c!1471797) b!8019157))

(assert (= (and d!2391053 (not c!1471797)) b!8019158))

(assert (=> b!8019158 m!8382026))

(assert (=> b!8019087 d!2391053))

(declare-fun d!2391055 () Bool)

(declare-fun lt!2719488 () Int)

(assert (=> d!2391055 (>= lt!2719488 0)))

(declare-fun e!4723846 () Int)

(assert (=> d!2391055 (= lt!2719488 e!4723846)))

(declare-fun c!1471798 () Bool)

(assert (=> d!2391055 (= c!1471798 ((_ is Nil!74834) l!3435))))

(assert (=> d!2391055 (= (size!43625 l!3435) lt!2719488)))

(declare-fun b!8019163 () Bool)

(assert (=> b!8019163 (= e!4723846 0)))

(declare-fun b!8019164 () Bool)

(assert (=> b!8019164 (= e!4723846 (+ 1 (size!43625 (t!390701 l!3435))))))

(assert (= (and d!2391055 c!1471798) b!8019163))

(assert (= (and d!2391055 (not c!1471798)) b!8019164))

(declare-fun m!8382084 () Bool)

(assert (=> b!8019164 m!8382084))

(assert (=> b!8019087 d!2391055))

(declare-fun b!8019168 () Bool)

(declare-fun e!4723847 () Bool)

(assert (=> b!8019168 (= e!4723847 (>= (size!43625 lt!2719461) (size!43625 (t!390701 p!2009))))))

(declare-fun d!2391057 () Bool)

(assert (=> d!2391057 e!4723847))

(declare-fun res!3170744 () Bool)

(assert (=> d!2391057 (=> res!3170744 e!4723847)))

(declare-fun lt!2719489 () Bool)

(assert (=> d!2391057 (= res!3170744 (not lt!2719489))))

(declare-fun e!4723849 () Bool)

(assert (=> d!2391057 (= lt!2719489 e!4723849)))

(declare-fun res!3170745 () Bool)

(assert (=> d!2391057 (=> res!3170745 e!4723849)))

(assert (=> d!2391057 (= res!3170745 ((_ is Nil!74834) (t!390701 p!2009)))))

(assert (=> d!2391057 (= (isPrefix!6781 (t!390701 p!2009) lt!2719461) lt!2719489)))

(declare-fun b!8019166 () Bool)

(declare-fun res!3170743 () Bool)

(declare-fun e!4723848 () Bool)

(assert (=> b!8019166 (=> (not res!3170743) (not e!4723848))))

(assert (=> b!8019166 (= res!3170743 (= (head!16392 (t!390701 p!2009)) (head!16392 lt!2719461)))))

(declare-fun b!8019167 () Bool)

(assert (=> b!8019167 (= e!4723848 (isPrefix!6781 (tail!15919 (t!390701 p!2009)) (tail!15919 lt!2719461)))))

(declare-fun b!8019165 () Bool)

(assert (=> b!8019165 (= e!4723849 e!4723848)))

(declare-fun res!3170746 () Bool)

(assert (=> b!8019165 (=> (not res!3170746) (not e!4723848))))

(assert (=> b!8019165 (= res!3170746 (not ((_ is Nil!74834) lt!2719461)))))

(assert (= (and d!2391057 (not res!3170745)) b!8019165))

(assert (= (and b!8019165 res!3170746) b!8019166))

(assert (= (and b!8019166 res!3170743) b!8019167))

(assert (= (and d!2391057 (not res!3170744)) b!8019168))

(assert (=> b!8019168 m!8382028))

(assert (=> b!8019168 m!8382026))

(declare-fun m!8382086 () Bool)

(assert (=> b!8019166 m!8382086))

(declare-fun m!8382088 () Bool)

(assert (=> b!8019166 m!8382088))

(declare-fun m!8382090 () Bool)

(assert (=> b!8019167 m!8382090))

(declare-fun m!8382092 () Bool)

(assert (=> b!8019167 m!8382092))

(assert (=> b!8019167 m!8382090))

(assert (=> b!8019167 m!8382092))

(declare-fun m!8382094 () Bool)

(assert (=> b!8019167 m!8382094))

(assert (=> b!8019089 d!2391057))

(declare-fun d!2391059 () Bool)

(assert (=> d!2391059 (= (tail!15919 l!3435) (t!390701 l!3435))))

(assert (=> b!8019089 d!2391059))

(declare-fun b!8019175 () Bool)

(declare-fun e!4723854 () Bool)

(declare-fun tp!2400213 () Bool)

(assert (=> b!8019175 (= e!4723854 (and tp_is_empty!54001 tp!2400213))))

(assert (=> b!8019086 (= tp!2400205 e!4723854)))

(assert (= (and b!8019086 ((_ is Cons!74834) (t!390701 l!3435))) b!8019175))

(declare-fun b!8019176 () Bool)

(declare-fun e!4723855 () Bool)

(declare-fun tp!2400214 () Bool)

(assert (=> b!8019176 (= e!4723855 (and tp_is_empty!54001 tp!2400214))))

(assert (=> b!8019088 (= tp!2400206 e!4723855)))

(assert (= (and b!8019088 ((_ is Cons!74834) (t!390701 p!2009))) b!8019176))

(check-sat (not b!8019154) (not b!8019156) (not b!8019106) (not b!8019108) (not b!8019130) (not b!8019131) (not b!8019164) (not b!8019167) (not b!8019158) (not b!8019176) (not b!8019175) (not b!8019132) (not b!8019168) (not b!8019166) tp_is_empty!54001)
(check-sat)
