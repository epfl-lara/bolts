; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742698 () Bool)

(assert start!742698)

(declare-fun b!7841995 () Bool)

(declare-fun res!3118997 () Bool)

(declare-fun e!4636547 () Bool)

(assert (=> b!7841995 (=> (not res!3118997) (not e!4636547))))

(declare-datatypes ((B!3997 0))(
  ( (B!3998 (val!31640 Int)) )
))
(declare-datatypes ((List!73874 0))(
  ( (Nil!73750) (Cons!73750 (h!80198 B!3997) (t!388609 List!73874)) )
))
(declare-fun s2!461 () List!73874)

(get-info :version)

(assert (=> b!7841995 (= res!3118997 ((_ is Cons!73750) s2!461))))

(declare-fun res!3119000 () Bool)

(assert (=> start!742698 (=> (not res!3119000) (not e!4636547))))

(declare-fun s1!502 () List!73874)

(declare-fun l!3495 () List!73874)

(declare-fun isPrefix!6351 (List!73874 List!73874) Bool)

(assert (=> start!742698 (= res!3119000 (isPrefix!6351 s1!502 l!3495))))

(assert (=> start!742698 e!4636547))

(declare-fun e!4636548 () Bool)

(assert (=> start!742698 e!4636548))

(declare-fun e!4636549 () Bool)

(assert (=> start!742698 e!4636549))

(declare-fun e!4636546 () Bool)

(assert (=> start!742698 e!4636546))

(declare-fun b!7841996 () Bool)

(declare-fun res!3118998 () Bool)

(assert (=> b!7841996 (=> (not res!3118998) (not e!4636547))))

(assert (=> b!7841996 (= res!3118998 (isPrefix!6351 s2!461 l!3495))))

(declare-fun b!7841997 () Bool)

(declare-fun tp_is_empty!52429 () Bool)

(declare-fun tp!2321063 () Bool)

(assert (=> b!7841997 (= e!4636549 (and tp_is_empty!52429 tp!2321063))))

(declare-fun b!7841998 () Bool)

(declare-fun tp!2321062 () Bool)

(assert (=> b!7841998 (= e!4636546 (and tp_is_empty!52429 tp!2321062))))

(declare-fun b!7841999 () Bool)

(declare-fun tail!15555 (List!73874) List!73874)

(assert (=> b!7841999 (= e!4636547 (not (isPrefix!6351 (tail!15555 s1!502) (tail!15555 l!3495))))))

(declare-fun b!7842000 () Bool)

(declare-fun tp!2321061 () Bool)

(assert (=> b!7842000 (= e!4636548 (and tp_is_empty!52429 tp!2321061))))

(declare-fun b!7842001 () Bool)

(declare-fun res!3118999 () Bool)

(assert (=> b!7842001 (=> (not res!3118999) (not e!4636547))))

(declare-fun size!42799 (List!73874) Int)

(assert (=> b!7842001 (= res!3118999 (<= (size!42799 s2!461) (size!42799 s1!502)))))

(assert (= (and start!742698 res!3119000) b!7841996))

(assert (= (and b!7841996 res!3118998) b!7842001))

(assert (= (and b!7842001 res!3118999) b!7841995))

(assert (= (and b!7841995 res!3118997) b!7841999))

(assert (= (and start!742698 ((_ is Cons!73750) s1!502)) b!7842000))

(assert (= (and start!742698 ((_ is Cons!73750) l!3495)) b!7841997))

(assert (= (and start!742698 ((_ is Cons!73750) s2!461)) b!7841998))

(declare-fun m!8254172 () Bool)

(assert (=> start!742698 m!8254172))

(declare-fun m!8254174 () Bool)

(assert (=> b!7841996 m!8254174))

(declare-fun m!8254176 () Bool)

(assert (=> b!7841999 m!8254176))

(declare-fun m!8254178 () Bool)

(assert (=> b!7841999 m!8254178))

(assert (=> b!7841999 m!8254176))

(assert (=> b!7841999 m!8254178))

(declare-fun m!8254180 () Bool)

(assert (=> b!7841999 m!8254180))

(declare-fun m!8254182 () Bool)

(assert (=> b!7842001 m!8254182))

(declare-fun m!8254184 () Bool)

(assert (=> b!7842001 m!8254184))

(check-sat (not b!7841999) (not b!7842001) (not b!7841997) (not b!7841996) (not b!7841998) tp_is_empty!52429 (not b!7842000) (not start!742698))
(check-sat)
(get-model)

(declare-fun b!7842018 () Bool)

(declare-fun e!4636560 () Bool)

(declare-fun e!4636561 () Bool)

(assert (=> b!7842018 (= e!4636560 e!4636561)))

(declare-fun res!3119010 () Bool)

(assert (=> b!7842018 (=> (not res!3119010) (not e!4636561))))

(assert (=> b!7842018 (= res!3119010 (not ((_ is Nil!73750) (tail!15555 l!3495))))))

(declare-fun b!7842020 () Bool)

(assert (=> b!7842020 (= e!4636561 (isPrefix!6351 (tail!15555 (tail!15555 s1!502)) (tail!15555 (tail!15555 l!3495))))))

(declare-fun b!7842021 () Bool)

(declare-fun e!4636562 () Bool)

(assert (=> b!7842021 (= e!4636562 (>= (size!42799 (tail!15555 l!3495)) (size!42799 (tail!15555 s1!502))))))

(declare-fun b!7842019 () Bool)

(declare-fun res!3119012 () Bool)

(assert (=> b!7842019 (=> (not res!3119012) (not e!4636561))))

(declare-fun head!16011 (List!73874) B!3997)

(assert (=> b!7842019 (= res!3119012 (= (head!16011 (tail!15555 s1!502)) (head!16011 (tail!15555 l!3495))))))

(declare-fun d!2352222 () Bool)

(assert (=> d!2352222 e!4636562))

(declare-fun res!3119011 () Bool)

(assert (=> d!2352222 (=> res!3119011 e!4636562)))

(declare-fun lt!2678625 () Bool)

(assert (=> d!2352222 (= res!3119011 (not lt!2678625))))

(assert (=> d!2352222 (= lt!2678625 e!4636560)))

(declare-fun res!3119009 () Bool)

(assert (=> d!2352222 (=> res!3119009 e!4636560)))

(assert (=> d!2352222 (= res!3119009 ((_ is Nil!73750) (tail!15555 s1!502)))))

(assert (=> d!2352222 (= (isPrefix!6351 (tail!15555 s1!502) (tail!15555 l!3495)) lt!2678625)))

(assert (= (and d!2352222 (not res!3119009)) b!7842018))

(assert (= (and b!7842018 res!3119010) b!7842019))

(assert (= (and b!7842019 res!3119012) b!7842020))

(assert (= (and d!2352222 (not res!3119011)) b!7842021))

(assert (=> b!7842020 m!8254176))

(declare-fun m!8254190 () Bool)

(assert (=> b!7842020 m!8254190))

(assert (=> b!7842020 m!8254178))

(declare-fun m!8254192 () Bool)

(assert (=> b!7842020 m!8254192))

(assert (=> b!7842020 m!8254190))

(assert (=> b!7842020 m!8254192))

(declare-fun m!8254194 () Bool)

(assert (=> b!7842020 m!8254194))

(assert (=> b!7842021 m!8254178))

(declare-fun m!8254196 () Bool)

(assert (=> b!7842021 m!8254196))

(assert (=> b!7842021 m!8254176))

(declare-fun m!8254198 () Bool)

(assert (=> b!7842021 m!8254198))

(assert (=> b!7842019 m!8254176))

(declare-fun m!8254200 () Bool)

(assert (=> b!7842019 m!8254200))

(assert (=> b!7842019 m!8254178))

(declare-fun m!8254202 () Bool)

(assert (=> b!7842019 m!8254202))

(assert (=> b!7841999 d!2352222))

(declare-fun d!2352230 () Bool)

(assert (=> d!2352230 (= (tail!15555 s1!502) (t!388609 s1!502))))

(assert (=> b!7841999 d!2352230))

(declare-fun d!2352232 () Bool)

(assert (=> d!2352232 (= (tail!15555 l!3495) (t!388609 l!3495))))

(assert (=> b!7841999 d!2352232))

(declare-fun b!7842022 () Bool)

(declare-fun e!4636563 () Bool)

(declare-fun e!4636564 () Bool)

(assert (=> b!7842022 (= e!4636563 e!4636564)))

(declare-fun res!3119014 () Bool)

(assert (=> b!7842022 (=> (not res!3119014) (not e!4636564))))

(assert (=> b!7842022 (= res!3119014 (not ((_ is Nil!73750) l!3495)))))

(declare-fun b!7842024 () Bool)

(assert (=> b!7842024 (= e!4636564 (isPrefix!6351 (tail!15555 s1!502) (tail!15555 l!3495)))))

(declare-fun b!7842025 () Bool)

(declare-fun e!4636565 () Bool)

(assert (=> b!7842025 (= e!4636565 (>= (size!42799 l!3495) (size!42799 s1!502)))))

(declare-fun b!7842023 () Bool)

(declare-fun res!3119016 () Bool)

(assert (=> b!7842023 (=> (not res!3119016) (not e!4636564))))

(assert (=> b!7842023 (= res!3119016 (= (head!16011 s1!502) (head!16011 l!3495)))))

(declare-fun d!2352234 () Bool)

(assert (=> d!2352234 e!4636565))

(declare-fun res!3119015 () Bool)

(assert (=> d!2352234 (=> res!3119015 e!4636565)))

(declare-fun lt!2678626 () Bool)

(assert (=> d!2352234 (= res!3119015 (not lt!2678626))))

(assert (=> d!2352234 (= lt!2678626 e!4636563)))

(declare-fun res!3119013 () Bool)

(assert (=> d!2352234 (=> res!3119013 e!4636563)))

(assert (=> d!2352234 (= res!3119013 ((_ is Nil!73750) s1!502))))

(assert (=> d!2352234 (= (isPrefix!6351 s1!502 l!3495) lt!2678626)))

(assert (= (and d!2352234 (not res!3119013)) b!7842022))

(assert (= (and b!7842022 res!3119014) b!7842023))

(assert (= (and b!7842023 res!3119016) b!7842024))

(assert (= (and d!2352234 (not res!3119015)) b!7842025))

(assert (=> b!7842024 m!8254176))

(assert (=> b!7842024 m!8254178))

(assert (=> b!7842024 m!8254176))

(assert (=> b!7842024 m!8254178))

(assert (=> b!7842024 m!8254180))

(declare-fun m!8254204 () Bool)

(assert (=> b!7842025 m!8254204))

(assert (=> b!7842025 m!8254184))

(declare-fun m!8254206 () Bool)

(assert (=> b!7842023 m!8254206))

(declare-fun m!8254208 () Bool)

(assert (=> b!7842023 m!8254208))

(assert (=> start!742698 d!2352234))

(declare-fun b!7842026 () Bool)

(declare-fun e!4636566 () Bool)

(declare-fun e!4636567 () Bool)

(assert (=> b!7842026 (= e!4636566 e!4636567)))

(declare-fun res!3119018 () Bool)

(assert (=> b!7842026 (=> (not res!3119018) (not e!4636567))))

(assert (=> b!7842026 (= res!3119018 (not ((_ is Nil!73750) l!3495)))))

(declare-fun b!7842028 () Bool)

(assert (=> b!7842028 (= e!4636567 (isPrefix!6351 (tail!15555 s2!461) (tail!15555 l!3495)))))

(declare-fun b!7842029 () Bool)

(declare-fun e!4636568 () Bool)

(assert (=> b!7842029 (= e!4636568 (>= (size!42799 l!3495) (size!42799 s2!461)))))

(declare-fun b!7842027 () Bool)

(declare-fun res!3119020 () Bool)

(assert (=> b!7842027 (=> (not res!3119020) (not e!4636567))))

(assert (=> b!7842027 (= res!3119020 (= (head!16011 s2!461) (head!16011 l!3495)))))

(declare-fun d!2352236 () Bool)

(assert (=> d!2352236 e!4636568))

(declare-fun res!3119019 () Bool)

(assert (=> d!2352236 (=> res!3119019 e!4636568)))

(declare-fun lt!2678627 () Bool)

(assert (=> d!2352236 (= res!3119019 (not lt!2678627))))

(assert (=> d!2352236 (= lt!2678627 e!4636566)))

(declare-fun res!3119017 () Bool)

(assert (=> d!2352236 (=> res!3119017 e!4636566)))

(assert (=> d!2352236 (= res!3119017 ((_ is Nil!73750) s2!461))))

(assert (=> d!2352236 (= (isPrefix!6351 s2!461 l!3495) lt!2678627)))

(assert (= (and d!2352236 (not res!3119017)) b!7842026))

(assert (= (and b!7842026 res!3119018) b!7842027))

(assert (= (and b!7842027 res!3119020) b!7842028))

(assert (= (and d!2352236 (not res!3119019)) b!7842029))

(declare-fun m!8254210 () Bool)

(assert (=> b!7842028 m!8254210))

(assert (=> b!7842028 m!8254178))

(assert (=> b!7842028 m!8254210))

(assert (=> b!7842028 m!8254178))

(declare-fun m!8254212 () Bool)

(assert (=> b!7842028 m!8254212))

(assert (=> b!7842029 m!8254204))

(assert (=> b!7842029 m!8254182))

(declare-fun m!8254214 () Bool)

(assert (=> b!7842027 m!8254214))

(assert (=> b!7842027 m!8254208))

(assert (=> b!7841996 d!2352236))

(declare-fun d!2352238 () Bool)

(declare-fun lt!2678633 () Int)

(assert (=> d!2352238 (>= lt!2678633 0)))

(declare-fun e!4636580 () Int)

(assert (=> d!2352238 (= lt!2678633 e!4636580)))

(declare-fun c!1441673 () Bool)

(assert (=> d!2352238 (= c!1441673 ((_ is Nil!73750) s2!461))))

(assert (=> d!2352238 (= (size!42799 s2!461) lt!2678633)))

(declare-fun b!7842046 () Bool)

(assert (=> b!7842046 (= e!4636580 0)))

(declare-fun b!7842047 () Bool)

(assert (=> b!7842047 (= e!4636580 (+ 1 (size!42799 (t!388609 s2!461))))))

(assert (= (and d!2352238 c!1441673) b!7842046))

(assert (= (and d!2352238 (not c!1441673)) b!7842047))

(declare-fun m!8254216 () Bool)

(assert (=> b!7842047 m!8254216))

(assert (=> b!7842001 d!2352238))

(declare-fun d!2352240 () Bool)

(declare-fun lt!2678634 () Int)

(assert (=> d!2352240 (>= lt!2678634 0)))

(declare-fun e!4636581 () Int)

(assert (=> d!2352240 (= lt!2678634 e!4636581)))

(declare-fun c!1441674 () Bool)

(assert (=> d!2352240 (= c!1441674 ((_ is Nil!73750) s1!502))))

(assert (=> d!2352240 (= (size!42799 s1!502) lt!2678634)))

(declare-fun b!7842048 () Bool)

(assert (=> b!7842048 (= e!4636581 0)))

(declare-fun b!7842049 () Bool)

(assert (=> b!7842049 (= e!4636581 (+ 1 (size!42799 (t!388609 s1!502))))))

(assert (= (and d!2352240 c!1441674) b!7842048))

(assert (= (and d!2352240 (not c!1441674)) b!7842049))

(declare-fun m!8254230 () Bool)

(assert (=> b!7842049 m!8254230))

(assert (=> b!7842001 d!2352240))

(declare-fun b!7842054 () Bool)

(declare-fun e!4636584 () Bool)

(declare-fun tp!2321066 () Bool)

(assert (=> b!7842054 (= e!4636584 (and tp_is_empty!52429 tp!2321066))))

(assert (=> b!7841998 (= tp!2321062 e!4636584)))

(assert (= (and b!7841998 ((_ is Cons!73750) (t!388609 s2!461))) b!7842054))

(declare-fun b!7842059 () Bool)

(declare-fun e!4636588 () Bool)

(declare-fun tp!2321067 () Bool)

(assert (=> b!7842059 (= e!4636588 (and tp_is_empty!52429 tp!2321067))))

(assert (=> b!7841997 (= tp!2321063 e!4636588)))

(assert (= (and b!7841997 ((_ is Cons!73750) (t!388609 l!3495))) b!7842059))

(declare-fun b!7842060 () Bool)

(declare-fun e!4636589 () Bool)

(declare-fun tp!2321068 () Bool)

(assert (=> b!7842060 (= e!4636589 (and tp_is_empty!52429 tp!2321068))))

(assert (=> b!7842000 (= tp!2321061 e!4636589)))

(assert (= (and b!7842000 ((_ is Cons!73750) (t!388609 s1!502))) b!7842060))

(check-sat (not b!7842059) (not b!7842019) (not b!7842047) (not b!7842054) (not b!7842027) (not b!7842049) (not b!7842021) (not b!7842025) (not b!7842020) (not b!7842028) (not b!7842029) (not b!7842060) (not b!7842023) (not b!7842024) tp_is_empty!52429)
(check-sat)
(get-model)

(declare-fun d!2352250 () Bool)

(declare-fun lt!2678637 () Int)

(assert (=> d!2352250 (>= lt!2678637 0)))

(declare-fun e!4636598 () Int)

(assert (=> d!2352250 (= lt!2678637 e!4636598)))

(declare-fun c!1441675 () Bool)

(assert (=> d!2352250 (= c!1441675 ((_ is Nil!73750) (tail!15555 l!3495)))))

(assert (=> d!2352250 (= (size!42799 (tail!15555 l!3495)) lt!2678637)))

(declare-fun b!7842072 () Bool)

(assert (=> b!7842072 (= e!4636598 0)))

(declare-fun b!7842073 () Bool)

(assert (=> b!7842073 (= e!4636598 (+ 1 (size!42799 (t!388609 (tail!15555 l!3495)))))))

(assert (= (and d!2352250 c!1441675) b!7842072))

(assert (= (and d!2352250 (not c!1441675)) b!7842073))

(declare-fun m!8254246 () Bool)

(assert (=> b!7842073 m!8254246))

(assert (=> b!7842021 d!2352250))

(declare-fun d!2352252 () Bool)

(declare-fun lt!2678638 () Int)

(assert (=> d!2352252 (>= lt!2678638 0)))

(declare-fun e!4636599 () Int)

(assert (=> d!2352252 (= lt!2678638 e!4636599)))

(declare-fun c!1441676 () Bool)

(assert (=> d!2352252 (= c!1441676 ((_ is Nil!73750) (tail!15555 s1!502)))))

(assert (=> d!2352252 (= (size!42799 (tail!15555 s1!502)) lt!2678638)))

(declare-fun b!7842074 () Bool)

(assert (=> b!7842074 (= e!4636599 0)))

(declare-fun b!7842075 () Bool)

(assert (=> b!7842075 (= e!4636599 (+ 1 (size!42799 (t!388609 (tail!15555 s1!502)))))))

(assert (= (and d!2352252 c!1441676) b!7842074))

(assert (= (and d!2352252 (not c!1441676)) b!7842075))

(declare-fun m!8254248 () Bool)

(assert (=> b!7842075 m!8254248))

(assert (=> b!7842021 d!2352252))

(declare-fun d!2352254 () Bool)

(assert (=> d!2352254 (= (head!16011 s2!461) (h!80198 s2!461))))

(assert (=> b!7842027 d!2352254))

(declare-fun d!2352256 () Bool)

(assert (=> d!2352256 (= (head!16011 l!3495) (h!80198 l!3495))))

(assert (=> b!7842027 d!2352256))

(declare-fun b!7842076 () Bool)

(declare-fun e!4636600 () Bool)

(declare-fun e!4636601 () Bool)

(assert (=> b!7842076 (= e!4636600 e!4636601)))

(declare-fun res!3119042 () Bool)

(assert (=> b!7842076 (=> (not res!3119042) (not e!4636601))))

(assert (=> b!7842076 (= res!3119042 (not ((_ is Nil!73750) (tail!15555 (tail!15555 l!3495)))))))

(declare-fun b!7842078 () Bool)

(assert (=> b!7842078 (= e!4636601 (isPrefix!6351 (tail!15555 (tail!15555 (tail!15555 s1!502))) (tail!15555 (tail!15555 (tail!15555 l!3495)))))))

(declare-fun b!7842079 () Bool)

(declare-fun e!4636602 () Bool)

(assert (=> b!7842079 (= e!4636602 (>= (size!42799 (tail!15555 (tail!15555 l!3495))) (size!42799 (tail!15555 (tail!15555 s1!502)))))))

(declare-fun b!7842077 () Bool)

(declare-fun res!3119044 () Bool)

(assert (=> b!7842077 (=> (not res!3119044) (not e!4636601))))

(assert (=> b!7842077 (= res!3119044 (= (head!16011 (tail!15555 (tail!15555 s1!502))) (head!16011 (tail!15555 (tail!15555 l!3495)))))))

(declare-fun d!2352258 () Bool)

(assert (=> d!2352258 e!4636602))

(declare-fun res!3119043 () Bool)

(assert (=> d!2352258 (=> res!3119043 e!4636602)))

(declare-fun lt!2678639 () Bool)

(assert (=> d!2352258 (= res!3119043 (not lt!2678639))))

(assert (=> d!2352258 (= lt!2678639 e!4636600)))

(declare-fun res!3119041 () Bool)

(assert (=> d!2352258 (=> res!3119041 e!4636600)))

(assert (=> d!2352258 (= res!3119041 ((_ is Nil!73750) (tail!15555 (tail!15555 s1!502))))))

(assert (=> d!2352258 (= (isPrefix!6351 (tail!15555 (tail!15555 s1!502)) (tail!15555 (tail!15555 l!3495))) lt!2678639)))

(assert (= (and d!2352258 (not res!3119041)) b!7842076))

(assert (= (and b!7842076 res!3119042) b!7842077))

(assert (= (and b!7842077 res!3119044) b!7842078))

(assert (= (and d!2352258 (not res!3119043)) b!7842079))

(assert (=> b!7842078 m!8254190))

(declare-fun m!8254250 () Bool)

(assert (=> b!7842078 m!8254250))

(assert (=> b!7842078 m!8254192))

(declare-fun m!8254252 () Bool)

(assert (=> b!7842078 m!8254252))

(assert (=> b!7842078 m!8254250))

(assert (=> b!7842078 m!8254252))

(declare-fun m!8254254 () Bool)

(assert (=> b!7842078 m!8254254))

(assert (=> b!7842079 m!8254192))

(declare-fun m!8254256 () Bool)

(assert (=> b!7842079 m!8254256))

(assert (=> b!7842079 m!8254190))

(declare-fun m!8254258 () Bool)

(assert (=> b!7842079 m!8254258))

(assert (=> b!7842077 m!8254190))

(declare-fun m!8254260 () Bool)

(assert (=> b!7842077 m!8254260))

(assert (=> b!7842077 m!8254192))

(declare-fun m!8254262 () Bool)

(assert (=> b!7842077 m!8254262))

(assert (=> b!7842020 d!2352258))

(declare-fun d!2352260 () Bool)

(assert (=> d!2352260 (= (tail!15555 (tail!15555 s1!502)) (t!388609 (tail!15555 s1!502)))))

(assert (=> b!7842020 d!2352260))

(declare-fun d!2352262 () Bool)

(assert (=> d!2352262 (= (tail!15555 (tail!15555 l!3495)) (t!388609 (tail!15555 l!3495)))))

(assert (=> b!7842020 d!2352262))

(declare-fun d!2352264 () Bool)

(declare-fun lt!2678640 () Int)

(assert (=> d!2352264 (>= lt!2678640 0)))

(declare-fun e!4636603 () Int)

(assert (=> d!2352264 (= lt!2678640 e!4636603)))

(declare-fun c!1441677 () Bool)

(assert (=> d!2352264 (= c!1441677 ((_ is Nil!73750) (t!388609 s1!502)))))

(assert (=> d!2352264 (= (size!42799 (t!388609 s1!502)) lt!2678640)))

(declare-fun b!7842080 () Bool)

(assert (=> b!7842080 (= e!4636603 0)))

(declare-fun b!7842081 () Bool)

(assert (=> b!7842081 (= e!4636603 (+ 1 (size!42799 (t!388609 (t!388609 s1!502)))))))

(assert (= (and d!2352264 c!1441677) b!7842080))

(assert (= (and d!2352264 (not c!1441677)) b!7842081))

(declare-fun m!8254264 () Bool)

(assert (=> b!7842081 m!8254264))

(assert (=> b!7842049 d!2352264))

(declare-fun d!2352266 () Bool)

(declare-fun lt!2678641 () Int)

(assert (=> d!2352266 (>= lt!2678641 0)))

(declare-fun e!4636604 () Int)

(assert (=> d!2352266 (= lt!2678641 e!4636604)))

(declare-fun c!1441678 () Bool)

(assert (=> d!2352266 (= c!1441678 ((_ is Nil!73750) (t!388609 s2!461)))))

(assert (=> d!2352266 (= (size!42799 (t!388609 s2!461)) lt!2678641)))

(declare-fun b!7842082 () Bool)

(assert (=> b!7842082 (= e!4636604 0)))

(declare-fun b!7842083 () Bool)

(assert (=> b!7842083 (= e!4636604 (+ 1 (size!42799 (t!388609 (t!388609 s2!461)))))))

(assert (= (and d!2352266 c!1441678) b!7842082))

(assert (= (and d!2352266 (not c!1441678)) b!7842083))

(declare-fun m!8254266 () Bool)

(assert (=> b!7842083 m!8254266))

(assert (=> b!7842047 d!2352266))

(declare-fun d!2352268 () Bool)

(assert (=> d!2352268 (= (head!16011 (tail!15555 s1!502)) (h!80198 (tail!15555 s1!502)))))

(assert (=> b!7842019 d!2352268))

(declare-fun d!2352270 () Bool)

(assert (=> d!2352270 (= (head!16011 (tail!15555 l!3495)) (h!80198 (tail!15555 l!3495)))))

(assert (=> b!7842019 d!2352270))

(declare-fun d!2352272 () Bool)

(declare-fun lt!2678642 () Int)

(assert (=> d!2352272 (>= lt!2678642 0)))

(declare-fun e!4636605 () Int)

(assert (=> d!2352272 (= lt!2678642 e!4636605)))

(declare-fun c!1441679 () Bool)

(assert (=> d!2352272 (= c!1441679 ((_ is Nil!73750) l!3495))))

(assert (=> d!2352272 (= (size!42799 l!3495) lt!2678642)))

(declare-fun b!7842084 () Bool)

(assert (=> b!7842084 (= e!4636605 0)))

(declare-fun b!7842085 () Bool)

(assert (=> b!7842085 (= e!4636605 (+ 1 (size!42799 (t!388609 l!3495))))))

(assert (= (and d!2352272 c!1441679) b!7842084))

(assert (= (and d!2352272 (not c!1441679)) b!7842085))

(declare-fun m!8254268 () Bool)

(assert (=> b!7842085 m!8254268))

(assert (=> b!7842025 d!2352272))

(assert (=> b!7842025 d!2352240))

(assert (=> b!7842024 d!2352222))

(assert (=> b!7842024 d!2352230))

(assert (=> b!7842024 d!2352232))

(assert (=> b!7842029 d!2352272))

(assert (=> b!7842029 d!2352238))

(declare-fun d!2352274 () Bool)

(assert (=> d!2352274 (= (head!16011 s1!502) (h!80198 s1!502))))

(assert (=> b!7842023 d!2352274))

(assert (=> b!7842023 d!2352256))

(declare-fun b!7842086 () Bool)

(declare-fun e!4636606 () Bool)

(declare-fun e!4636607 () Bool)

(assert (=> b!7842086 (= e!4636606 e!4636607)))

(declare-fun res!3119046 () Bool)

(assert (=> b!7842086 (=> (not res!3119046) (not e!4636607))))

(assert (=> b!7842086 (= res!3119046 (not ((_ is Nil!73750) (tail!15555 l!3495))))))

(declare-fun b!7842088 () Bool)

(assert (=> b!7842088 (= e!4636607 (isPrefix!6351 (tail!15555 (tail!15555 s2!461)) (tail!15555 (tail!15555 l!3495))))))

(declare-fun b!7842089 () Bool)

(declare-fun e!4636608 () Bool)

(assert (=> b!7842089 (= e!4636608 (>= (size!42799 (tail!15555 l!3495)) (size!42799 (tail!15555 s2!461))))))

(declare-fun b!7842087 () Bool)

(declare-fun res!3119048 () Bool)

(assert (=> b!7842087 (=> (not res!3119048) (not e!4636607))))

(assert (=> b!7842087 (= res!3119048 (= (head!16011 (tail!15555 s2!461)) (head!16011 (tail!15555 l!3495))))))

(declare-fun d!2352276 () Bool)

(assert (=> d!2352276 e!4636608))

(declare-fun res!3119047 () Bool)

(assert (=> d!2352276 (=> res!3119047 e!4636608)))

(declare-fun lt!2678643 () Bool)

(assert (=> d!2352276 (= res!3119047 (not lt!2678643))))

(assert (=> d!2352276 (= lt!2678643 e!4636606)))

(declare-fun res!3119045 () Bool)

(assert (=> d!2352276 (=> res!3119045 e!4636606)))

(assert (=> d!2352276 (= res!3119045 ((_ is Nil!73750) (tail!15555 s2!461)))))

(assert (=> d!2352276 (= (isPrefix!6351 (tail!15555 s2!461) (tail!15555 l!3495)) lt!2678643)))

(assert (= (and d!2352276 (not res!3119045)) b!7842086))

(assert (= (and b!7842086 res!3119046) b!7842087))

(assert (= (and b!7842087 res!3119048) b!7842088))

(assert (= (and d!2352276 (not res!3119047)) b!7842089))

(assert (=> b!7842088 m!8254210))

(declare-fun m!8254270 () Bool)

(assert (=> b!7842088 m!8254270))

(assert (=> b!7842088 m!8254178))

(assert (=> b!7842088 m!8254192))

(assert (=> b!7842088 m!8254270))

(assert (=> b!7842088 m!8254192))

(declare-fun m!8254272 () Bool)

(assert (=> b!7842088 m!8254272))

(assert (=> b!7842089 m!8254178))

(assert (=> b!7842089 m!8254196))

(assert (=> b!7842089 m!8254210))

(declare-fun m!8254274 () Bool)

(assert (=> b!7842089 m!8254274))

(assert (=> b!7842087 m!8254210))

(declare-fun m!8254276 () Bool)

(assert (=> b!7842087 m!8254276))

(assert (=> b!7842087 m!8254178))

(assert (=> b!7842087 m!8254202))

(assert (=> b!7842028 d!2352276))

(declare-fun d!2352278 () Bool)

(assert (=> d!2352278 (= (tail!15555 s2!461) (t!388609 s2!461))))

(assert (=> b!7842028 d!2352278))

(assert (=> b!7842028 d!2352232))

(declare-fun b!7842090 () Bool)

(declare-fun e!4636609 () Bool)

(declare-fun tp!2321074 () Bool)

(assert (=> b!7842090 (= e!4636609 (and tp_is_empty!52429 tp!2321074))))

(assert (=> b!7842059 (= tp!2321067 e!4636609)))

(assert (= (and b!7842059 ((_ is Cons!73750) (t!388609 (t!388609 l!3495)))) b!7842090))

(declare-fun b!7842091 () Bool)

(declare-fun e!4636610 () Bool)

(declare-fun tp!2321075 () Bool)

(assert (=> b!7842091 (= e!4636610 (and tp_is_empty!52429 tp!2321075))))

(assert (=> b!7842060 (= tp!2321068 e!4636610)))

(assert (= (and b!7842060 ((_ is Cons!73750) (t!388609 (t!388609 s1!502)))) b!7842091))

(declare-fun b!7842092 () Bool)

(declare-fun e!4636611 () Bool)

(declare-fun tp!2321076 () Bool)

(assert (=> b!7842092 (= e!4636611 (and tp_is_empty!52429 tp!2321076))))

(assert (=> b!7842054 (= tp!2321066 e!4636611)))

(assert (= (and b!7842054 ((_ is Cons!73750) (t!388609 (t!388609 s2!461)))) b!7842092))

(check-sat (not b!7842091) (not b!7842092) (not b!7842075) (not b!7842090) (not b!7842073) tp_is_empty!52429 (not b!7842079) (not b!7842077) (not b!7842088) (not b!7842085) (not b!7842078) (not b!7842083) (not b!7842087) (not b!7842089) (not b!7842081))
(check-sat)
