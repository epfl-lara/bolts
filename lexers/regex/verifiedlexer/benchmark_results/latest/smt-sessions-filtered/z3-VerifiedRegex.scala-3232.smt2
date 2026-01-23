; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187494 () Bool)

(assert start!187494)

(declare-fun b!1872073 () Bool)

(declare-fun e!1194307 () Bool)

(declare-datatypes ((T!33522 0))(
  ( (T!33523 (val!6000 Int)) )
))
(declare-datatypes ((List!20817 0))(
  ( (Nil!20735) (Cons!20735 (h!26136 T!33522) (t!173034 List!20817)) )
))
(declare-fun lt!719609 () List!20817)

(declare-fun lt!719610 () Int)

(declare-fun lt!719611 () List!20817)

(assert (=> b!1872073 (= e!1194307 (and (<= lt!719610 0) (not (= lt!719611 lt!719609))))))

(declare-fun b!1872072 () Bool)

(declare-fun e!1194309 () Bool)

(assert (=> b!1872072 (= e!1194309 e!1194307)))

(declare-fun res!837896 () Bool)

(assert (=> b!1872072 (=> (not res!837896) (not e!1194307))))

(declare-fun l!2791 () List!20817)

(declare-fun slice!609 (List!20817 Int Int) List!20817)

(assert (=> b!1872072 (= res!837896 (= lt!719609 (slice!609 (t!173034 l!2791) 0 lt!719610)))))

(declare-fun lt!719608 () Int)

(assert (=> b!1872072 (= lt!719609 (slice!609 l!2791 1 lt!719608))))

(declare-fun size!16468 (List!20817) Int)

(assert (=> b!1872072 (= lt!719610 (size!16468 (t!173034 l!2791)))))

(declare-fun b!1872071 () Bool)

(declare-fun e!1194306 () Bool)

(assert (=> b!1872071 (= e!1194306 e!1194309)))

(declare-fun res!837897 () Bool)

(assert (=> b!1872071 (=> (not res!837897) (not e!1194309))))

(assert (=> b!1872071 (= res!837897 (= lt!719611 (t!173034 l!2791)))))

(declare-fun tail!2871 (List!20817) List!20817)

(assert (=> b!1872071 (= lt!719611 (tail!2871 l!2791))))

(declare-fun res!837895 () Bool)

(assert (=> start!187494 (=> (not res!837895) (not e!1194306))))

(get-info :version)

(assert (=> start!187494 (= res!837895 (and (> lt!719608 0) (not ((_ is Nil!20735) l!2791))))))

(assert (=> start!187494 (= lt!719608 (size!16468 l!2791))))

(assert (=> start!187494 e!1194306))

(declare-fun e!1194308 () Bool)

(assert (=> start!187494 e!1194308))

(declare-fun b!1872074 () Bool)

(declare-fun tp_is_empty!8779 () Bool)

(declare-fun tp!532421 () Bool)

(assert (=> b!1872074 (= e!1194308 (and tp_is_empty!8779 tp!532421))))

(assert (= (and start!187494 res!837895) b!1872071))

(assert (= (and b!1872071 res!837897) b!1872072))

(assert (= (and b!1872072 res!837896) b!1872073))

(assert (= (and start!187494 ((_ is Cons!20735) l!2791)) b!1872074))

(declare-fun m!2297931 () Bool)

(assert (=> b!1872072 m!2297931))

(declare-fun m!2297933 () Bool)

(assert (=> b!1872072 m!2297933))

(declare-fun m!2297935 () Bool)

(assert (=> b!1872072 m!2297935))

(declare-fun m!2297937 () Bool)

(assert (=> b!1872071 m!2297937))

(declare-fun m!2297939 () Bool)

(assert (=> start!187494 m!2297939))

(check-sat (not b!1872074) (not b!1872071) tp_is_empty!8779 (not b!1872072) (not start!187494))
(check-sat)
(get-model)

(declare-fun d!572351 () Bool)

(declare-fun take!175 (List!20817 Int) List!20817)

(declare-fun drop!1002 (List!20817 Int) List!20817)

(assert (=> d!572351 (= (slice!609 (t!173034 l!2791) 0 lt!719610) (take!175 (drop!1002 (t!173034 l!2791) 0) (- lt!719610 0)))))

(declare-fun bs!412040 () Bool)

(assert (= bs!412040 d!572351))

(declare-fun m!2297949 () Bool)

(assert (=> bs!412040 m!2297949))

(assert (=> bs!412040 m!2297949))

(declare-fun m!2297951 () Bool)

(assert (=> bs!412040 m!2297951))

(assert (=> b!1872072 d!572351))

(declare-fun d!572357 () Bool)

(assert (=> d!572357 (= (slice!609 l!2791 1 lt!719608) (take!175 (drop!1002 l!2791 1) (- lt!719608 1)))))

(declare-fun bs!412041 () Bool)

(assert (= bs!412041 d!572357))

(declare-fun m!2297953 () Bool)

(assert (=> bs!412041 m!2297953))

(assert (=> bs!412041 m!2297953))

(declare-fun m!2297955 () Bool)

(assert (=> bs!412041 m!2297955))

(assert (=> b!1872072 d!572357))

(declare-fun d!572359 () Bool)

(declare-fun lt!719618 () Int)

(assert (=> d!572359 (>= lt!719618 0)))

(declare-fun e!1194319 () Int)

(assert (=> d!572359 (= lt!719618 e!1194319)))

(declare-fun c!305184 () Bool)

(assert (=> d!572359 (= c!305184 ((_ is Nil!20735) (t!173034 l!2791)))))

(assert (=> d!572359 (= (size!16468 (t!173034 l!2791)) lt!719618)))

(declare-fun b!1872092 () Bool)

(assert (=> b!1872092 (= e!1194319 0)))

(declare-fun b!1872093 () Bool)

(assert (=> b!1872093 (= e!1194319 (+ 1 (size!16468 (t!173034 (t!173034 l!2791)))))))

(assert (= (and d!572359 c!305184) b!1872092))

(assert (= (and d!572359 (not c!305184)) b!1872093))

(declare-fun m!2297959 () Bool)

(assert (=> b!1872093 m!2297959))

(assert (=> b!1872072 d!572359))

(declare-fun d!572363 () Bool)

(declare-fun lt!719619 () Int)

(assert (=> d!572363 (>= lt!719619 0)))

(declare-fun e!1194320 () Int)

(assert (=> d!572363 (= lt!719619 e!1194320)))

(declare-fun c!305185 () Bool)

(assert (=> d!572363 (= c!305185 ((_ is Nil!20735) l!2791))))

(assert (=> d!572363 (= (size!16468 l!2791) lt!719619)))

(declare-fun b!1872094 () Bool)

(assert (=> b!1872094 (= e!1194320 0)))

(declare-fun b!1872095 () Bool)

(assert (=> b!1872095 (= e!1194320 (+ 1 (size!16468 (t!173034 l!2791))))))

(assert (= (and d!572363 c!305185) b!1872094))

(assert (= (and d!572363 (not c!305185)) b!1872095))

(assert (=> b!1872095 m!2297935))

(assert (=> start!187494 d!572363))

(declare-fun d!572365 () Bool)

(assert (=> d!572365 (= (tail!2871 l!2791) (t!173034 l!2791))))

(assert (=> b!1872071 d!572365))

(declare-fun b!1872100 () Bool)

(declare-fun e!1194323 () Bool)

(declare-fun tp!532427 () Bool)

(assert (=> b!1872100 (= e!1194323 (and tp_is_empty!8779 tp!532427))))

(assert (=> b!1872074 (= tp!532421 e!1194323)))

(assert (= (and b!1872074 ((_ is Cons!20735) (t!173034 l!2791))) b!1872100))

(check-sat (not b!1872095) (not b!1872093) (not d!572351) (not d!572357) tp_is_empty!8779 (not b!1872100))
(check-sat)
(get-model)

(declare-fun b!1872136 () Bool)

(declare-fun e!1194346 () Int)

(assert (=> b!1872136 (= e!1194346 (size!16468 (drop!1002 l!2791 1)))))

(declare-fun b!1872137 () Bool)

(declare-fun e!1194344 () Bool)

(declare-fun lt!719625 () List!20817)

(declare-fun e!1194345 () Int)

(assert (=> b!1872137 (= e!1194344 (= (size!16468 lt!719625) e!1194345))))

(declare-fun c!305202 () Bool)

(assert (=> b!1872137 (= c!305202 (<= (- lt!719608 1) 0))))

(declare-fun b!1872138 () Bool)

(declare-fun e!1194347 () List!20817)

(assert (=> b!1872138 (= e!1194347 Nil!20735)))

(declare-fun d!572369 () Bool)

(assert (=> d!572369 e!1194344))

(declare-fun res!837903 () Bool)

(assert (=> d!572369 (=> (not res!837903) (not e!1194344))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3092 (List!20817) (InoxSet T!33522))

(assert (=> d!572369 (= res!837903 (= ((_ map implies) (content!3092 lt!719625) (content!3092 (drop!1002 l!2791 1))) ((as const (InoxSet T!33522)) true)))))

(assert (=> d!572369 (= lt!719625 e!1194347)))

(declare-fun c!305203 () Bool)

(assert (=> d!572369 (= c!305203 (or ((_ is Nil!20735) (drop!1002 l!2791 1)) (<= (- lt!719608 1) 0)))))

(assert (=> d!572369 (= (take!175 (drop!1002 l!2791 1) (- lt!719608 1)) lt!719625)))

(declare-fun b!1872139 () Bool)

(assert (=> b!1872139 (= e!1194345 e!1194346)))

(declare-fun c!305201 () Bool)

(assert (=> b!1872139 (= c!305201 (>= (- lt!719608 1) (size!16468 (drop!1002 l!2791 1))))))

(declare-fun b!1872140 () Bool)

(assert (=> b!1872140 (= e!1194346 (- lt!719608 1))))

(declare-fun b!1872141 () Bool)

(assert (=> b!1872141 (= e!1194345 0)))

(declare-fun b!1872142 () Bool)

(assert (=> b!1872142 (= e!1194347 (Cons!20735 (h!26136 (drop!1002 l!2791 1)) (take!175 (t!173034 (drop!1002 l!2791 1)) (- (- lt!719608 1) 1))))))

(assert (= (and d!572369 c!305203) b!1872138))

(assert (= (and d!572369 (not c!305203)) b!1872142))

(assert (= (and d!572369 res!837903) b!1872137))

(assert (= (and b!1872137 c!305202) b!1872141))

(assert (= (and b!1872137 (not c!305202)) b!1872139))

(assert (= (and b!1872139 c!305201) b!1872136))

(assert (= (and b!1872139 (not c!305201)) b!1872140))

(declare-fun m!2297971 () Bool)

(assert (=> d!572369 m!2297971))

(assert (=> d!572369 m!2297953))

(declare-fun m!2297973 () Bool)

(assert (=> d!572369 m!2297973))

(declare-fun m!2297975 () Bool)

(assert (=> b!1872142 m!2297975))

(assert (=> b!1872139 m!2297953))

(declare-fun m!2297977 () Bool)

(assert (=> b!1872139 m!2297977))

(declare-fun m!2297979 () Bool)

(assert (=> b!1872137 m!2297979))

(assert (=> b!1872136 m!2297953))

(assert (=> b!1872136 m!2297977))

(assert (=> d!572357 d!572369))

(declare-fun b!1872206 () Bool)

(declare-fun e!1194383 () List!20817)

(assert (=> b!1872206 (= e!1194383 Nil!20735)))

(declare-fun b!1872207 () Bool)

(declare-fun e!1194384 () List!20817)

(assert (=> b!1872207 (= e!1194384 (drop!1002 (t!173034 l!2791) (- 1 1)))))

(declare-fun b!1872208 () Bool)

(assert (=> b!1872208 (= e!1194383 e!1194384)))

(declare-fun c!305234 () Bool)

(assert (=> b!1872208 (= c!305234 (<= 1 0))))

(declare-fun b!1872209 () Bool)

(declare-fun e!1194387 () Bool)

(declare-fun lt!719634 () List!20817)

(declare-fun e!1194386 () Int)

(assert (=> b!1872209 (= e!1194387 (= (size!16468 lt!719634) e!1194386))))

(declare-fun c!305235 () Bool)

(assert (=> b!1872209 (= c!305235 (<= 1 0))))

(declare-fun d!572373 () Bool)

(assert (=> d!572373 e!1194387))

(declare-fun res!837911 () Bool)

(assert (=> d!572373 (=> (not res!837911) (not e!1194387))))

(assert (=> d!572373 (= res!837911 (= ((_ map implies) (content!3092 lt!719634) (content!3092 l!2791)) ((as const (InoxSet T!33522)) true)))))

(assert (=> d!572373 (= lt!719634 e!1194383)))

(declare-fun c!305233 () Bool)

(assert (=> d!572373 (= c!305233 ((_ is Nil!20735) l!2791))))

(assert (=> d!572373 (= (drop!1002 l!2791 1) lt!719634)))

(declare-fun b!1872210 () Bool)

(declare-fun call!116088 () Int)

(assert (=> b!1872210 (= e!1194386 call!116088)))

(declare-fun b!1872211 () Bool)

(declare-fun e!1194385 () Int)

(assert (=> b!1872211 (= e!1194386 e!1194385)))

(declare-fun c!305232 () Bool)

(assert (=> b!1872211 (= c!305232 (>= 1 call!116088))))

(declare-fun bm!116083 () Bool)

(assert (=> bm!116083 (= call!116088 (size!16468 l!2791))))

(declare-fun b!1872212 () Bool)

(assert (=> b!1872212 (= e!1194384 l!2791)))

(declare-fun b!1872213 () Bool)

(assert (=> b!1872213 (= e!1194385 (- call!116088 1))))

(declare-fun b!1872214 () Bool)

(assert (=> b!1872214 (= e!1194385 0)))

(assert (= (and d!572373 c!305233) b!1872206))

(assert (= (and d!572373 (not c!305233)) b!1872208))

(assert (= (and b!1872208 c!305234) b!1872212))

(assert (= (and b!1872208 (not c!305234)) b!1872207))

(assert (= (and d!572373 res!837911) b!1872209))

(assert (= (and b!1872209 c!305235) b!1872210))

(assert (= (and b!1872209 (not c!305235)) b!1872211))

(assert (= (and b!1872211 c!305232) b!1872214))

(assert (= (and b!1872211 (not c!305232)) b!1872213))

(assert (= (or b!1872210 b!1872211 b!1872213) bm!116083))

(declare-fun m!2298009 () Bool)

(assert (=> b!1872207 m!2298009))

(declare-fun m!2298011 () Bool)

(assert (=> b!1872209 m!2298011))

(declare-fun m!2298013 () Bool)

(assert (=> d!572373 m!2298013))

(declare-fun m!2298015 () Bool)

(assert (=> d!572373 m!2298015))

(assert (=> bm!116083 m!2297939))

(assert (=> d!572357 d!572373))

(assert (=> b!1872095 d!572359))

(declare-fun d!572381 () Bool)

(declare-fun lt!719635 () Int)

(assert (=> d!572381 (>= lt!719635 0)))

(declare-fun e!1194389 () Int)

(assert (=> d!572381 (= lt!719635 e!1194389)))

(declare-fun c!305236 () Bool)

(assert (=> d!572381 (= c!305236 ((_ is Nil!20735) (t!173034 (t!173034 l!2791))))))

(assert (=> d!572381 (= (size!16468 (t!173034 (t!173034 l!2791))) lt!719635)))

(declare-fun b!1872216 () Bool)

(assert (=> b!1872216 (= e!1194389 0)))

(declare-fun b!1872217 () Bool)

(assert (=> b!1872217 (= e!1194389 (+ 1 (size!16468 (t!173034 (t!173034 (t!173034 l!2791))))))))

(assert (= (and d!572381 c!305236) b!1872216))

(assert (= (and d!572381 (not c!305236)) b!1872217))

(declare-fun m!2298017 () Bool)

(assert (=> b!1872217 m!2298017))

(assert (=> b!1872093 d!572381))

(declare-fun b!1872218 () Bool)

(declare-fun e!1194392 () Int)

(assert (=> b!1872218 (= e!1194392 (size!16468 (drop!1002 (t!173034 l!2791) 0)))))

(declare-fun b!1872219 () Bool)

(declare-fun e!1194390 () Bool)

(declare-fun lt!719636 () List!20817)

(declare-fun e!1194391 () Int)

(assert (=> b!1872219 (= e!1194390 (= (size!16468 lt!719636) e!1194391))))

(declare-fun c!305238 () Bool)

(assert (=> b!1872219 (= c!305238 (<= (- lt!719610 0) 0))))

(declare-fun b!1872220 () Bool)

(declare-fun e!1194393 () List!20817)

(assert (=> b!1872220 (= e!1194393 Nil!20735)))

(declare-fun d!572383 () Bool)

(assert (=> d!572383 e!1194390))

(declare-fun res!837912 () Bool)

(assert (=> d!572383 (=> (not res!837912) (not e!1194390))))

(assert (=> d!572383 (= res!837912 (= ((_ map implies) (content!3092 lt!719636) (content!3092 (drop!1002 (t!173034 l!2791) 0))) ((as const (InoxSet T!33522)) true)))))

(assert (=> d!572383 (= lt!719636 e!1194393)))

(declare-fun c!305239 () Bool)

(assert (=> d!572383 (= c!305239 (or ((_ is Nil!20735) (drop!1002 (t!173034 l!2791) 0)) (<= (- lt!719610 0) 0)))))

(assert (=> d!572383 (= (take!175 (drop!1002 (t!173034 l!2791) 0) (- lt!719610 0)) lt!719636)))

(declare-fun b!1872221 () Bool)

(assert (=> b!1872221 (= e!1194391 e!1194392)))

(declare-fun c!305237 () Bool)

(assert (=> b!1872221 (= c!305237 (>= (- lt!719610 0) (size!16468 (drop!1002 (t!173034 l!2791) 0))))))

(declare-fun b!1872222 () Bool)

(assert (=> b!1872222 (= e!1194392 (- lt!719610 0))))

(declare-fun b!1872223 () Bool)

(assert (=> b!1872223 (= e!1194391 0)))

(declare-fun b!1872224 () Bool)

(assert (=> b!1872224 (= e!1194393 (Cons!20735 (h!26136 (drop!1002 (t!173034 l!2791) 0)) (take!175 (t!173034 (drop!1002 (t!173034 l!2791) 0)) (- (- lt!719610 0) 1))))))

(assert (= (and d!572383 c!305239) b!1872220))

(assert (= (and d!572383 (not c!305239)) b!1872224))

(assert (= (and d!572383 res!837912) b!1872219))

(assert (= (and b!1872219 c!305238) b!1872223))

(assert (= (and b!1872219 (not c!305238)) b!1872221))

(assert (= (and b!1872221 c!305237) b!1872218))

(assert (= (and b!1872221 (not c!305237)) b!1872222))

(declare-fun m!2298019 () Bool)

(assert (=> d!572383 m!2298019))

(assert (=> d!572383 m!2297949))

(declare-fun m!2298021 () Bool)

(assert (=> d!572383 m!2298021))

(declare-fun m!2298023 () Bool)

(assert (=> b!1872224 m!2298023))

(assert (=> b!1872221 m!2297949))

(declare-fun m!2298025 () Bool)

(assert (=> b!1872221 m!2298025))

(declare-fun m!2298027 () Bool)

(assert (=> b!1872219 m!2298027))

(assert (=> b!1872218 m!2297949))

(assert (=> b!1872218 m!2298025))

(assert (=> d!572351 d!572383))

(declare-fun b!1872225 () Bool)

(declare-fun e!1194394 () List!20817)

(assert (=> b!1872225 (= e!1194394 Nil!20735)))

(declare-fun b!1872226 () Bool)

(declare-fun e!1194395 () List!20817)

(assert (=> b!1872226 (= e!1194395 (drop!1002 (t!173034 (t!173034 l!2791)) (- 0 1)))))

(declare-fun b!1872227 () Bool)

(assert (=> b!1872227 (= e!1194394 e!1194395)))

(declare-fun c!305242 () Bool)

(assert (=> b!1872227 (= c!305242 (<= 0 0))))

(declare-fun b!1872228 () Bool)

(declare-fun e!1194398 () Bool)

(declare-fun lt!719637 () List!20817)

(declare-fun e!1194397 () Int)

(assert (=> b!1872228 (= e!1194398 (= (size!16468 lt!719637) e!1194397))))

(declare-fun c!305243 () Bool)

(assert (=> b!1872228 (= c!305243 (<= 0 0))))

(declare-fun d!572385 () Bool)

(assert (=> d!572385 e!1194398))

(declare-fun res!837913 () Bool)

(assert (=> d!572385 (=> (not res!837913) (not e!1194398))))

(assert (=> d!572385 (= res!837913 (= ((_ map implies) (content!3092 lt!719637) (content!3092 (t!173034 l!2791))) ((as const (InoxSet T!33522)) true)))))

(assert (=> d!572385 (= lt!719637 e!1194394)))

(declare-fun c!305241 () Bool)

(assert (=> d!572385 (= c!305241 ((_ is Nil!20735) (t!173034 l!2791)))))

(assert (=> d!572385 (= (drop!1002 (t!173034 l!2791) 0) lt!719637)))

(declare-fun b!1872229 () Bool)

(declare-fun call!116089 () Int)

(assert (=> b!1872229 (= e!1194397 call!116089)))

(declare-fun b!1872230 () Bool)

(declare-fun e!1194396 () Int)

(assert (=> b!1872230 (= e!1194397 e!1194396)))

(declare-fun c!305240 () Bool)

(assert (=> b!1872230 (= c!305240 (>= 0 call!116089))))

(declare-fun bm!116084 () Bool)

(assert (=> bm!116084 (= call!116089 (size!16468 (t!173034 l!2791)))))

(declare-fun b!1872231 () Bool)

(assert (=> b!1872231 (= e!1194395 (t!173034 l!2791))))

(declare-fun b!1872232 () Bool)

(assert (=> b!1872232 (= e!1194396 (- call!116089 0))))

(declare-fun b!1872233 () Bool)

(assert (=> b!1872233 (= e!1194396 0)))

(assert (= (and d!572385 c!305241) b!1872225))

(assert (= (and d!572385 (not c!305241)) b!1872227))

(assert (= (and b!1872227 c!305242) b!1872231))

(assert (= (and b!1872227 (not c!305242)) b!1872226))

(assert (= (and d!572385 res!837913) b!1872228))

(assert (= (and b!1872228 c!305243) b!1872229))

(assert (= (and b!1872228 (not c!305243)) b!1872230))

(assert (= (and b!1872230 c!305240) b!1872233))

(assert (= (and b!1872230 (not c!305240)) b!1872232))

(assert (= (or b!1872229 b!1872230 b!1872232) bm!116084))

(declare-fun m!2298029 () Bool)

(assert (=> b!1872226 m!2298029))

(declare-fun m!2298031 () Bool)

(assert (=> b!1872228 m!2298031))

(declare-fun m!2298033 () Bool)

(assert (=> d!572385 m!2298033))

(declare-fun m!2298035 () Bool)

(assert (=> d!572385 m!2298035))

(assert (=> bm!116084 m!2297935))

(assert (=> d!572351 d!572385))

(declare-fun b!1872234 () Bool)

(declare-fun e!1194399 () Bool)

(declare-fun tp!532429 () Bool)

(assert (=> b!1872234 (= e!1194399 (and tp_is_empty!8779 tp!532429))))

(assert (=> b!1872100 (= tp!532427 e!1194399)))

(assert (= (and b!1872100 ((_ is Cons!20735) (t!173034 (t!173034 l!2791)))) b!1872234))

(check-sat (not b!1872139) (not b!1872217) (not b!1872228) (not b!1872142) (not d!572369) (not b!1872137) (not b!1872136) (not d!572373) (not b!1872234) (not d!572385) (not bm!116084) (not b!1872218) (not b!1872226) (not d!572383) (not b!1872207) (not bm!116083) (not b!1872224) tp_is_empty!8779 (not b!1872209) (not b!1872221) (not b!1872219))
(check-sat)
