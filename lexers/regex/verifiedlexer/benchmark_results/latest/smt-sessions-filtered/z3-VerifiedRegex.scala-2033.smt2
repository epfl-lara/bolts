; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103998 () Bool)

(assert start!103998)

(declare-fun b!1176911 () Bool)

(declare-fun res!532193 () Bool)

(declare-fun e!755250 () Bool)

(assert (=> b!1176911 (=> (not res!532193) (not e!755250))))

(declare-datatypes ((B!1245 0))(
  ( (B!1246 (val!3732 Int)) )
))
(declare-datatypes ((List!11679 0))(
  ( (Nil!11655) (Cons!11655 (h!17056 B!1245) (t!111171 List!11679)) )
))
(declare-fun l!2952 () List!11679)

(get-info :version)

(assert (=> b!1176911 (= res!532193 ((_ is Nil!11655) l!2952))))

(declare-fun res!532191 () Bool)

(assert (=> start!103998 (=> (not res!532191) (not e!755250))))

(declare-fun i!757 () Int)

(declare-fun j!89 () Int)

(assert (=> start!103998 (= res!532191 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!103998 e!755250))

(assert (=> start!103998 true))

(declare-fun e!755251 () Bool)

(assert (=> start!103998 e!755251))

(declare-fun b!1176910 () Bool)

(declare-fun res!532192 () Bool)

(assert (=> b!1176910 (=> (not res!532192) (not e!755250))))

(declare-fun size!9219 (List!11679) Int)

(assert (=> b!1176910 (= res!532192 (<= j!89 (size!9219 l!2952)))))

(declare-fun b!1176912 () Bool)

(declare-fun subseq!285 (List!11679 List!11679) Bool)

(declare-fun slice!383 (List!11679 Int Int) List!11679)

(assert (=> b!1176912 (= e!755250 (not (subseq!285 (slice!383 l!2952 i!757 j!89) l!2952)))))

(declare-fun b!1176913 () Bool)

(declare-fun tp_is_empty!5767 () Bool)

(declare-fun tp!335144 () Bool)

(assert (=> b!1176913 (= e!755251 (and tp_is_empty!5767 tp!335144))))

(assert (= (and start!103998 res!532191) b!1176910))

(assert (= (and b!1176910 res!532192) b!1176911))

(assert (= (and b!1176911 res!532193) b!1176912))

(assert (= (and start!103998 ((_ is Cons!11655) l!2952)) b!1176913))

(declare-fun m!1354299 () Bool)

(assert (=> b!1176910 m!1354299))

(declare-fun m!1354301 () Bool)

(assert (=> b!1176912 m!1354301))

(assert (=> b!1176912 m!1354301))

(declare-fun m!1354303 () Bool)

(assert (=> b!1176912 m!1354303))

(check-sat (not b!1176912) (not b!1176910) (not b!1176913) tp_is_empty!5767)
(check-sat)
(get-model)

(declare-fun d!337190 () Bool)

(declare-fun res!532217 () Bool)

(declare-fun e!755274 () Bool)

(assert (=> d!337190 (=> res!532217 e!755274)))

(assert (=> d!337190 (= res!532217 ((_ is Nil!11655) (slice!383 l!2952 i!757 j!89)))))

(assert (=> d!337190 (= (subseq!285 (slice!383 l!2952 i!757 j!89) l!2952) e!755274)))

(declare-fun b!1176934 () Bool)

(declare-fun e!755273 () Bool)

(assert (=> b!1176934 (= e!755274 e!755273)))

(declare-fun res!532216 () Bool)

(assert (=> b!1176934 (=> (not res!532216) (not e!755273))))

(assert (=> b!1176934 (= res!532216 ((_ is Cons!11655) l!2952))))

(declare-fun b!1176935 () Bool)

(declare-fun e!755275 () Bool)

(assert (=> b!1176935 (= e!755273 e!755275)))

(declare-fun res!532214 () Bool)

(assert (=> b!1176935 (=> res!532214 e!755275)))

(declare-fun e!755272 () Bool)

(assert (=> b!1176935 (= res!532214 e!755272)))

(declare-fun res!532215 () Bool)

(assert (=> b!1176935 (=> (not res!532215) (not e!755272))))

(assert (=> b!1176935 (= res!532215 (= (h!17056 (slice!383 l!2952 i!757 j!89)) (h!17056 l!2952)))))

(declare-fun b!1176936 () Bool)

(assert (=> b!1176936 (= e!755272 (subseq!285 (t!111171 (slice!383 l!2952 i!757 j!89)) (t!111171 l!2952)))))

(declare-fun b!1176937 () Bool)

(assert (=> b!1176937 (= e!755275 (subseq!285 (slice!383 l!2952 i!757 j!89) (t!111171 l!2952)))))

(assert (= (and d!337190 (not res!532217)) b!1176934))

(assert (= (and b!1176934 res!532216) b!1176935))

(assert (= (and b!1176935 res!532215) b!1176936))

(assert (= (and b!1176935 (not res!532214)) b!1176937))

(declare-fun m!1354309 () Bool)

(assert (=> b!1176936 m!1354309))

(assert (=> b!1176937 m!1354301))

(declare-fun m!1354311 () Bool)

(assert (=> b!1176937 m!1354311))

(assert (=> b!1176912 d!337190))

(declare-fun d!337194 () Bool)

(declare-fun take!91 (List!11679 Int) List!11679)

(declare-fun drop!503 (List!11679 Int) List!11679)

(assert (=> d!337194 (= (slice!383 l!2952 i!757 j!89) (take!91 (drop!503 l!2952 i!757) (- j!89 i!757)))))

(declare-fun bs!286723 () Bool)

(assert (= bs!286723 d!337194))

(declare-fun m!1354317 () Bool)

(assert (=> bs!286723 m!1354317))

(assert (=> bs!286723 m!1354317))

(declare-fun m!1354319 () Bool)

(assert (=> bs!286723 m!1354319))

(assert (=> b!1176912 d!337194))

(declare-fun d!337198 () Bool)

(declare-fun lt!405998 () Int)

(assert (=> d!337198 (>= lt!405998 0)))

(declare-fun e!755284 () Int)

(assert (=> d!337198 (= lt!405998 e!755284)))

(declare-fun c!196123 () Bool)

(assert (=> d!337198 (= c!196123 ((_ is Nil!11655) l!2952))))

(assert (=> d!337198 (= (size!9219 l!2952) lt!405998)))

(declare-fun b!1176953 () Bool)

(assert (=> b!1176953 (= e!755284 0)))

(declare-fun b!1176954 () Bool)

(assert (=> b!1176954 (= e!755284 (+ 1 (size!9219 (t!111171 l!2952))))))

(assert (= (and d!337198 c!196123) b!1176953))

(assert (= (and d!337198 (not c!196123)) b!1176954))

(declare-fun m!1354323 () Bool)

(assert (=> b!1176954 m!1354323))

(assert (=> b!1176910 d!337198))

(declare-fun b!1176959 () Bool)

(declare-fun e!755287 () Bool)

(declare-fun tp!335150 () Bool)

(assert (=> b!1176959 (= e!755287 (and tp_is_empty!5767 tp!335150))))

(assert (=> b!1176913 (= tp!335144 e!755287)))

(assert (= (and b!1176913 ((_ is Cons!11655) (t!111171 l!2952))) b!1176959))

(check-sat (not d!337194) (not b!1176937) (not b!1176954) tp_is_empty!5767 (not b!1176959) (not b!1176936))
(check-sat)
(get-model)

(declare-fun b!1176976 () Bool)

(declare-fun e!755299 () Int)

(assert (=> b!1176976 (= e!755299 (size!9219 (drop!503 l!2952 i!757)))))

(declare-fun e!755298 () List!11679)

(declare-fun b!1176977 () Bool)

(assert (=> b!1176977 (= e!755298 (Cons!11655 (h!17056 (drop!503 l!2952 i!757)) (take!91 (t!111171 (drop!503 l!2952 i!757)) (- (- j!89 i!757) 1))))))

(declare-fun d!337200 () Bool)

(declare-fun e!755297 () Bool)

(assert (=> d!337200 e!755297))

(declare-fun res!532220 () Bool)

(assert (=> d!337200 (=> (not res!532220) (not e!755297))))

(declare-fun lt!406002 () List!11679)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1623 (List!11679) (InoxSet B!1245))

(assert (=> d!337200 (= res!532220 (= ((_ map implies) (content!1623 lt!406002) (content!1623 (drop!503 l!2952 i!757))) ((as const (InoxSet B!1245)) true)))))

(assert (=> d!337200 (= lt!406002 e!755298)))

(declare-fun c!196133 () Bool)

(assert (=> d!337200 (= c!196133 (or ((_ is Nil!11655) (drop!503 l!2952 i!757)) (<= (- j!89 i!757) 0)))))

(assert (=> d!337200 (= (take!91 (drop!503 l!2952 i!757) (- j!89 i!757)) lt!406002)))

(declare-fun b!1176978 () Bool)

(declare-fun e!755300 () Int)

(assert (=> b!1176978 (= e!755297 (= (size!9219 lt!406002) e!755300))))

(declare-fun c!196132 () Bool)

(assert (=> b!1176978 (= c!196132 (<= (- j!89 i!757) 0))))

(declare-fun b!1176979 () Bool)

(assert (=> b!1176979 (= e!755299 (- j!89 i!757))))

(declare-fun b!1176980 () Bool)

(assert (=> b!1176980 (= e!755298 Nil!11655)))

(declare-fun b!1176981 () Bool)

(assert (=> b!1176981 (= e!755300 0)))

(declare-fun b!1176982 () Bool)

(assert (=> b!1176982 (= e!755300 e!755299)))

(declare-fun c!196131 () Bool)

(assert (=> b!1176982 (= c!196131 (>= (- j!89 i!757) (size!9219 (drop!503 l!2952 i!757))))))

(assert (= (and d!337200 c!196133) b!1176980))

(assert (= (and d!337200 (not c!196133)) b!1176977))

(assert (= (and d!337200 res!532220) b!1176978))

(assert (= (and b!1176978 c!196132) b!1176981))

(assert (= (and b!1176978 (not c!196132)) b!1176982))

(assert (= (and b!1176982 c!196131) b!1176976))

(assert (= (and b!1176982 (not c!196131)) b!1176979))

(assert (=> b!1176976 m!1354317))

(declare-fun m!1354327 () Bool)

(assert (=> b!1176976 m!1354327))

(declare-fun m!1354329 () Bool)

(assert (=> d!337200 m!1354329))

(assert (=> d!337200 m!1354317))

(declare-fun m!1354331 () Bool)

(assert (=> d!337200 m!1354331))

(assert (=> b!1176982 m!1354317))

(assert (=> b!1176982 m!1354327))

(declare-fun m!1354333 () Bool)

(assert (=> b!1176977 m!1354333))

(declare-fun m!1354335 () Bool)

(assert (=> b!1176978 m!1354335))

(assert (=> d!337194 d!337200))

(declare-fun b!1177022 () Bool)

(declare-fun e!755323 () List!11679)

(assert (=> b!1177022 (= e!755323 l!2952)))

(declare-fun b!1177023 () Bool)

(declare-fun e!755326 () Int)

(declare-fun call!82443 () Int)

(assert (=> b!1177023 (= e!755326 (- call!82443 i!757))))

(declare-fun b!1177024 () Bool)

(declare-fun e!755324 () Int)

(assert (=> b!1177024 (= e!755324 call!82443)))

(declare-fun bm!82438 () Bool)

(assert (=> bm!82438 (= call!82443 (size!9219 l!2952))))

(declare-fun b!1177025 () Bool)

(assert (=> b!1177025 (= e!755323 (drop!503 (t!111171 l!2952) (- i!757 1)))))

(declare-fun b!1177026 () Bool)

(assert (=> b!1177026 (= e!755324 e!755326)))

(declare-fun c!196151 () Bool)

(assert (=> b!1177026 (= c!196151 (>= i!757 call!82443))))

(declare-fun b!1177027 () Bool)

(declare-fun e!755327 () List!11679)

(assert (=> b!1177027 (= e!755327 e!755323)))

(declare-fun c!196153 () Bool)

(assert (=> b!1177027 (= c!196153 (<= i!757 0))))

(declare-fun d!337206 () Bool)

(declare-fun e!755325 () Bool)

(assert (=> d!337206 e!755325))

(declare-fun res!532226 () Bool)

(assert (=> d!337206 (=> (not res!532226) (not e!755325))))

(declare-fun lt!406008 () List!11679)

(assert (=> d!337206 (= res!532226 (= ((_ map implies) (content!1623 lt!406008) (content!1623 l!2952)) ((as const (InoxSet B!1245)) true)))))

(assert (=> d!337206 (= lt!406008 e!755327)))

(declare-fun c!196152 () Bool)

(assert (=> d!337206 (= c!196152 ((_ is Nil!11655) l!2952))))

(assert (=> d!337206 (= (drop!503 l!2952 i!757) lt!406008)))

(declare-fun b!1177028 () Bool)

(assert (=> b!1177028 (= e!755326 0)))

(declare-fun b!1177029 () Bool)

(assert (=> b!1177029 (= e!755327 Nil!11655)))

(declare-fun b!1177030 () Bool)

(assert (=> b!1177030 (= e!755325 (= (size!9219 lt!406008) e!755324))))

(declare-fun c!196154 () Bool)

(assert (=> b!1177030 (= c!196154 (<= i!757 0))))

(assert (= (and d!337206 c!196152) b!1177029))

(assert (= (and d!337206 (not c!196152)) b!1177027))

(assert (= (and b!1177027 c!196153) b!1177022))

(assert (= (and b!1177027 (not c!196153)) b!1177025))

(assert (= (and d!337206 res!532226) b!1177030))

(assert (= (and b!1177030 c!196154) b!1177024))

(assert (= (and b!1177030 (not c!196154)) b!1177026))

(assert (= (and b!1177026 c!196151) b!1177028))

(assert (= (and b!1177026 (not c!196151)) b!1177023))

(assert (= (or b!1177024 b!1177026 b!1177023) bm!82438))

(assert (=> bm!82438 m!1354299))

(declare-fun m!1354347 () Bool)

(assert (=> b!1177025 m!1354347))

(declare-fun m!1354349 () Bool)

(assert (=> d!337206 m!1354349))

(declare-fun m!1354351 () Bool)

(assert (=> d!337206 m!1354351))

(declare-fun m!1354353 () Bool)

(assert (=> b!1177030 m!1354353))

(assert (=> d!337194 d!337206))

(declare-fun d!337210 () Bool)

(declare-fun res!532230 () Bool)

(declare-fun e!755330 () Bool)

(assert (=> d!337210 (=> res!532230 e!755330)))

(assert (=> d!337210 (= res!532230 ((_ is Nil!11655) (slice!383 l!2952 i!757 j!89)))))

(assert (=> d!337210 (= (subseq!285 (slice!383 l!2952 i!757 j!89) (t!111171 l!2952)) e!755330)))

(declare-fun b!1177031 () Bool)

(declare-fun e!755329 () Bool)

(assert (=> b!1177031 (= e!755330 e!755329)))

(declare-fun res!532229 () Bool)

(assert (=> b!1177031 (=> (not res!532229) (not e!755329))))

(assert (=> b!1177031 (= res!532229 ((_ is Cons!11655) (t!111171 l!2952)))))

(declare-fun b!1177032 () Bool)

(declare-fun e!755331 () Bool)

(assert (=> b!1177032 (= e!755329 e!755331)))

(declare-fun res!532227 () Bool)

(assert (=> b!1177032 (=> res!532227 e!755331)))

(declare-fun e!755328 () Bool)

(assert (=> b!1177032 (= res!532227 e!755328)))

(declare-fun res!532228 () Bool)

(assert (=> b!1177032 (=> (not res!532228) (not e!755328))))

(assert (=> b!1177032 (= res!532228 (= (h!17056 (slice!383 l!2952 i!757 j!89)) (h!17056 (t!111171 l!2952))))))

(declare-fun b!1177033 () Bool)

(assert (=> b!1177033 (= e!755328 (subseq!285 (t!111171 (slice!383 l!2952 i!757 j!89)) (t!111171 (t!111171 l!2952))))))

(declare-fun b!1177034 () Bool)

(assert (=> b!1177034 (= e!755331 (subseq!285 (slice!383 l!2952 i!757 j!89) (t!111171 (t!111171 l!2952))))))

(assert (= (and d!337210 (not res!532230)) b!1177031))

(assert (= (and b!1177031 res!532229) b!1177032))

(assert (= (and b!1177032 res!532228) b!1177033))

(assert (= (and b!1177032 (not res!532227)) b!1177034))

(declare-fun m!1354355 () Bool)

(assert (=> b!1177033 m!1354355))

(assert (=> b!1177034 m!1354301))

(declare-fun m!1354357 () Bool)

(assert (=> b!1177034 m!1354357))

(assert (=> b!1176937 d!337210))

(declare-fun d!337212 () Bool)

(declare-fun res!532234 () Bool)

(declare-fun e!755334 () Bool)

(assert (=> d!337212 (=> res!532234 e!755334)))

(assert (=> d!337212 (= res!532234 ((_ is Nil!11655) (t!111171 (slice!383 l!2952 i!757 j!89))))))

(assert (=> d!337212 (= (subseq!285 (t!111171 (slice!383 l!2952 i!757 j!89)) (t!111171 l!2952)) e!755334)))

(declare-fun b!1177035 () Bool)

(declare-fun e!755333 () Bool)

(assert (=> b!1177035 (= e!755334 e!755333)))

(declare-fun res!532233 () Bool)

(assert (=> b!1177035 (=> (not res!532233) (not e!755333))))

(assert (=> b!1177035 (= res!532233 ((_ is Cons!11655) (t!111171 l!2952)))))

(declare-fun b!1177036 () Bool)

(declare-fun e!755335 () Bool)

(assert (=> b!1177036 (= e!755333 e!755335)))

(declare-fun res!532231 () Bool)

(assert (=> b!1177036 (=> res!532231 e!755335)))

(declare-fun e!755332 () Bool)

(assert (=> b!1177036 (= res!532231 e!755332)))

(declare-fun res!532232 () Bool)

(assert (=> b!1177036 (=> (not res!532232) (not e!755332))))

(assert (=> b!1177036 (= res!532232 (= (h!17056 (t!111171 (slice!383 l!2952 i!757 j!89))) (h!17056 (t!111171 l!2952))))))

(declare-fun b!1177037 () Bool)

(assert (=> b!1177037 (= e!755332 (subseq!285 (t!111171 (t!111171 (slice!383 l!2952 i!757 j!89))) (t!111171 (t!111171 l!2952))))))

(declare-fun b!1177038 () Bool)

(assert (=> b!1177038 (= e!755335 (subseq!285 (t!111171 (slice!383 l!2952 i!757 j!89)) (t!111171 (t!111171 l!2952))))))

(assert (= (and d!337212 (not res!532234)) b!1177035))

(assert (= (and b!1177035 res!532233) b!1177036))

(assert (= (and b!1177036 res!532232) b!1177037))

(assert (= (and b!1177036 (not res!532231)) b!1177038))

(declare-fun m!1354359 () Bool)

(assert (=> b!1177037 m!1354359))

(assert (=> b!1177038 m!1354355))

(assert (=> b!1176936 d!337212))

(declare-fun d!337214 () Bool)

(declare-fun lt!406009 () Int)

(assert (=> d!337214 (>= lt!406009 0)))

(declare-fun e!755336 () Int)

(assert (=> d!337214 (= lt!406009 e!755336)))

(declare-fun c!196155 () Bool)

(assert (=> d!337214 (= c!196155 ((_ is Nil!11655) (t!111171 l!2952)))))

(assert (=> d!337214 (= (size!9219 (t!111171 l!2952)) lt!406009)))

(declare-fun b!1177039 () Bool)

(assert (=> b!1177039 (= e!755336 0)))

(declare-fun b!1177040 () Bool)

(assert (=> b!1177040 (= e!755336 (+ 1 (size!9219 (t!111171 (t!111171 l!2952)))))))

(assert (= (and d!337214 c!196155) b!1177039))

(assert (= (and d!337214 (not c!196155)) b!1177040))

(declare-fun m!1354361 () Bool)

(assert (=> b!1177040 m!1354361))

(assert (=> b!1176954 d!337214))

(declare-fun b!1177041 () Bool)

(declare-fun e!755337 () Bool)

(declare-fun tp!335151 () Bool)

(assert (=> b!1177041 (= e!755337 (and tp_is_empty!5767 tp!335151))))

(assert (=> b!1176959 (= tp!335150 e!755337)))

(assert (= (and b!1176959 ((_ is Cons!11655) (t!111171 (t!111171 l!2952)))) b!1177041))

(check-sat (not d!337200) (not b!1177040) (not b!1177037) (not b!1176982) (not b!1176978) (not b!1177033) tp_is_empty!5767 (not b!1176976) (not d!337206) (not bm!82438) (not b!1176977) (not b!1177025) (not b!1177034) (not b!1177041) (not b!1177038) (not b!1177030))
(check-sat)
