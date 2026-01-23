; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107796 () Bool)

(assert start!107796)

(declare-fun b!1210134 () Bool)

(declare-fun e!776299 () Bool)

(declare-datatypes ((B!1317 0))(
  ( (B!1318 (val!4016 Int)) )
))
(declare-datatypes ((List!12263 0))(
  ( (Nil!12205) (Cons!12205 (h!17606 B!1317) (t!112647 List!12263)) )
))
(declare-fun lt!414139 () List!12263)

(declare-fun isEmpty!7289 (List!12263) Bool)

(assert (=> b!1210134 (= e!776299 (not (isEmpty!7289 (t!112647 lt!414139))))))

(declare-fun b!1210135 () Bool)

(declare-fun e!776301 () Bool)

(declare-fun lt!414141 () List!12263)

(assert (=> b!1210135 (= e!776301 (not (or (not (= lt!414139 (Cons!12205 (h!17606 lt!414139) (t!112647 lt!414139)))) (= lt!414141 (t!112647 lt!414139)))))))

(declare-fun tail!1770 (List!12263) List!12263)

(assert (=> b!1210135 (= lt!414141 (tail!1770 lt!414139))))

(declare-fun -!80 (List!12263 B!1317) List!12263)

(assert (=> b!1210135 (= lt!414141 (-!80 lt!414139 (h!17606 lt!414139)))))

(declare-datatypes ((Unit!18584 0))(
  ( (Unit!18585) )
))
(declare-fun lt!414138 () Unit!18584)

(declare-fun lemmaNoDuplicateMinusHeadSameAsTail!8 (List!12263 B!1317) Unit!18584)

(assert (=> b!1210135 (= lt!414138 (lemmaNoDuplicateMinusHeadSameAsTail!8 lt!414139 (h!17606 lt!414139)))))

(declare-fun res!544153 () Bool)

(declare-fun e!776300 () Bool)

(assert (=> start!107796 (=> (not res!544153) (not e!776300))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1510 () (InoxSet B!1317))

(assert (=> start!107796 (= res!544153 (not (= s!1510 ((as const (Array B!1317 Bool)) false))))))

(assert (=> start!107796 e!776300))

(declare-fun condSetEmpty!7876 () Bool)

(assert (=> start!107796 (= condSetEmpty!7876 (= s!1510 ((as const (Array B!1317 Bool)) false)))))

(declare-fun setRes!7876 () Bool)

(assert (=> start!107796 setRes!7876))

(declare-fun setIsEmpty!7876 () Bool)

(assert (=> setIsEmpty!7876 setRes!7876))

(declare-fun b!1210136 () Bool)

(assert (=> b!1210136 (= e!776300 e!776301)))

(declare-fun res!544155 () Bool)

(assert (=> b!1210136 (=> (not res!544155) (not e!776301))))

(assert (=> b!1210136 (= res!544155 e!776299)))

(declare-fun res!544154 () Bool)

(assert (=> b!1210136 (=> res!544154 e!776299)))

(declare-fun lt!414140 () Bool)

(assert (=> b!1210136 (= res!544154 lt!414140)))

(get-info :version)

(assert (=> b!1210136 (= lt!414140 (not ((_ is Cons!12205) lt!414139)))))

(declare-fun toList!677 ((InoxSet B!1317)) List!12263)

(assert (=> b!1210136 (= lt!414139 (toList!677 s!1510))))

(declare-fun setNonEmpty!7876 () Bool)

(declare-fun tp!342791 () Bool)

(declare-fun tp_is_empty!6175 () Bool)

(assert (=> setNonEmpty!7876 (= setRes!7876 (and tp!342791 tp_is_empty!6175))))

(declare-fun setElem!7876 () B!1317)

(declare-fun setRest!7876 () (InoxSet B!1317))

(assert (=> setNonEmpty!7876 (= s!1510 ((_ map or) (store ((as const (Array B!1317 Bool)) false) setElem!7876 true) setRest!7876))))

(declare-fun b!1210137 () Bool)

(declare-fun res!544152 () Bool)

(assert (=> b!1210137 (=> (not res!544152) (not e!776301))))

(assert (=> b!1210137 (= res!544152 (not lt!414140))))

(assert (= (and start!107796 res!544153) b!1210136))

(assert (= (and b!1210136 (not res!544154)) b!1210134))

(assert (= (and b!1210136 res!544155) b!1210137))

(assert (= (and b!1210137 res!544152) b!1210135))

(assert (= (and start!107796 condSetEmpty!7876) setIsEmpty!7876))

(assert (= (and start!107796 (not condSetEmpty!7876)) setNonEmpty!7876))

(declare-fun m!1386109 () Bool)

(assert (=> b!1210134 m!1386109))

(declare-fun m!1386111 () Bool)

(assert (=> b!1210135 m!1386111))

(declare-fun m!1386113 () Bool)

(assert (=> b!1210135 m!1386113))

(declare-fun m!1386115 () Bool)

(assert (=> b!1210135 m!1386115))

(declare-fun m!1386117 () Bool)

(assert (=> b!1210136 m!1386117))

(check-sat (not setNonEmpty!7876) tp_is_empty!6175 (not b!1210135) (not b!1210136) (not b!1210134))
(check-sat)
(get-model)

(declare-fun d!346227 () Bool)

(declare-fun e!776304 () Bool)

(assert (=> d!346227 e!776304))

(declare-fun res!544158 () Bool)

(assert (=> d!346227 (=> (not res!544158) (not e!776304))))

(declare-fun lt!414144 () List!12263)

(declare-fun noDuplicate!201 (List!12263) Bool)

(assert (=> d!346227 (= res!544158 (noDuplicate!201 lt!414144))))

(declare-fun choose!7763 ((InoxSet B!1317)) List!12263)

(assert (=> d!346227 (= lt!414144 (choose!7763 s!1510))))

(assert (=> d!346227 (= (toList!677 s!1510) lt!414144)))

(declare-fun b!1210140 () Bool)

(declare-fun content!1728 (List!12263) (InoxSet B!1317))

(assert (=> b!1210140 (= e!776304 (= (content!1728 lt!414144) s!1510))))

(assert (= (and d!346227 res!544158) b!1210140))

(declare-fun m!1386119 () Bool)

(assert (=> d!346227 m!1386119))

(declare-fun m!1386121 () Bool)

(assert (=> d!346227 m!1386121))

(declare-fun m!1386123 () Bool)

(assert (=> b!1210140 m!1386123))

(assert (=> b!1210136 d!346227))

(declare-fun d!346231 () Bool)

(assert (=> d!346231 (= (tail!1770 lt!414139) (t!112647 lt!414139))))

(assert (=> b!1210135 d!346231))

(declare-fun d!346233 () Bool)

(declare-fun e!776325 () Bool)

(assert (=> d!346233 e!776325))

(declare-fun res!544164 () Bool)

(assert (=> d!346233 (=> (not res!544164) (not e!776325))))

(declare-fun lt!414153 () List!12263)

(declare-fun size!9737 (List!12263) Int)

(assert (=> d!346233 (= res!544164 (<= (size!9737 lt!414153) (size!9737 lt!414139)))))

(declare-fun e!776324 () List!12263)

(assert (=> d!346233 (= lt!414153 e!776324)))

(declare-fun c!202736 () Bool)

(assert (=> d!346233 (= c!202736 ((_ is Cons!12205) lt!414139))))

(assert (=> d!346233 (= (-!80 lt!414139 (h!17606 lt!414139)) lt!414153)))

(declare-fun b!1210166 () Bool)

(declare-fun e!776323 () List!12263)

(declare-fun call!84433 () List!12263)

(assert (=> b!1210166 (= e!776323 (Cons!12205 (h!17606 lt!414139) call!84433))))

(declare-fun bm!84428 () Bool)

(assert (=> bm!84428 (= call!84433 (-!80 (t!112647 lt!414139) (h!17606 lt!414139)))))

(declare-fun b!1210167 () Bool)

(assert (=> b!1210167 (= e!776325 (= (content!1728 lt!414153) ((_ map and) (content!1728 lt!414139) ((_ map not) (store ((as const (Array B!1317 Bool)) false) (h!17606 lt!414139) true)))))))

(declare-fun b!1210168 () Bool)

(assert (=> b!1210168 (= e!776324 Nil!12205)))

(declare-fun b!1210169 () Bool)

(assert (=> b!1210169 (= e!776323 call!84433)))

(declare-fun b!1210170 () Bool)

(assert (=> b!1210170 (= e!776324 e!776323)))

(declare-fun c!202735 () Bool)

(assert (=> b!1210170 (= c!202735 (= (h!17606 lt!414139) (h!17606 lt!414139)))))

(assert (= (and d!346233 c!202736) b!1210170))

(assert (= (and d!346233 (not c!202736)) b!1210168))

(assert (= (and b!1210170 c!202735) b!1210169))

(assert (= (and b!1210170 (not c!202735)) b!1210166))

(assert (= (or b!1210169 b!1210166) bm!84428))

(assert (= (and d!346233 res!544164) b!1210167))

(declare-fun m!1386141 () Bool)

(assert (=> d!346233 m!1386141))

(declare-fun m!1386143 () Bool)

(assert (=> d!346233 m!1386143))

(declare-fun m!1386145 () Bool)

(assert (=> bm!84428 m!1386145))

(declare-fun m!1386147 () Bool)

(assert (=> b!1210167 m!1386147))

(declare-fun m!1386149 () Bool)

(assert (=> b!1210167 m!1386149))

(declare-fun m!1386151 () Bool)

(assert (=> b!1210167 m!1386151))

(assert (=> b!1210135 d!346233))

(declare-fun d!346239 () Bool)

(assert (=> d!346239 (= (-!80 lt!414139 (h!17606 lt!414139)) (tail!1770 lt!414139))))

(declare-fun lt!414159 () Unit!18584)

(declare-fun choose!7765 (List!12263 B!1317) Unit!18584)

(assert (=> d!346239 (= lt!414159 (choose!7765 lt!414139 (h!17606 lt!414139)))))

(assert (=> d!346239 (noDuplicate!201 lt!414139)))

(assert (=> d!346239 (= (lemmaNoDuplicateMinusHeadSameAsTail!8 lt!414139 (h!17606 lt!414139)) lt!414159)))

(declare-fun bs!288594 () Bool)

(assert (= bs!288594 d!346239))

(assert (=> bs!288594 m!1386113))

(assert (=> bs!288594 m!1386111))

(declare-fun m!1386159 () Bool)

(assert (=> bs!288594 m!1386159))

(declare-fun m!1386161 () Bool)

(assert (=> bs!288594 m!1386161))

(assert (=> b!1210135 d!346239))

(declare-fun d!346243 () Bool)

(assert (=> d!346243 (= (isEmpty!7289 (t!112647 lt!414139)) ((_ is Nil!12205) (t!112647 lt!414139)))))

(assert (=> b!1210134 d!346243))

(declare-fun condSetEmpty!7882 () Bool)

(assert (=> setNonEmpty!7876 (= condSetEmpty!7882 (= setRest!7876 ((as const (Array B!1317 Bool)) false)))))

(declare-fun setRes!7882 () Bool)

(assert (=> setNonEmpty!7876 (= tp!342791 setRes!7882)))

(declare-fun setIsEmpty!7882 () Bool)

(assert (=> setIsEmpty!7882 setRes!7882))

(declare-fun setNonEmpty!7882 () Bool)

(declare-fun tp!342797 () Bool)

(assert (=> setNonEmpty!7882 (= setRes!7882 (and tp!342797 tp_is_empty!6175))))

(declare-fun setElem!7882 () B!1317)

(declare-fun setRest!7882 () (InoxSet B!1317))

(assert (=> setNonEmpty!7882 (= setRest!7876 ((_ map or) (store ((as const (Array B!1317 Bool)) false) setElem!7882 true) setRest!7882))))

(assert (= (and setNonEmpty!7876 condSetEmpty!7882) setIsEmpty!7882))

(assert (= (and setNonEmpty!7876 (not condSetEmpty!7882)) setNonEmpty!7882))

(check-sat (not b!1210140) tp_is_empty!6175 (not d!346227) (not b!1210167) (not setNonEmpty!7882) (not bm!84428) (not d!346239) (not d!346233))
(check-sat)
