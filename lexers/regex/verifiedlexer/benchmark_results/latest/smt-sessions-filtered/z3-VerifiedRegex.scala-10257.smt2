; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534174 () Bool)

(assert start!534174)

(declare-fun b!5050148 () Bool)

(declare-fun e!3153076 () Bool)

(declare-datatypes ((T!104712 0))(
  ( (T!104713 (val!23590 Int)) )
))
(declare-datatypes ((List!58500 0))(
  ( (Nil!58376) (Cons!58376 (h!64824 T!104712) (t!371139 List!58500)) )
))
(declare-fun l!2779 () List!58500)

(declare-fun i!705 () Int)

(declare-fun take!881 (List!58500 Int) List!58500)

(declare-fun slice!903 (List!58500 Int Int) List!58500)

(assert (=> b!5050148 (= e!3153076 (not (= (take!881 l!2779 i!705) (slice!903 l!2779 0 i!705))))))

(declare-fun b!5050146 () Bool)

(declare-fun res!2150771 () Bool)

(assert (=> b!5050146 (=> (not res!2150771) (not e!3153076))))

(declare-fun size!38999 (List!58500) Int)

(assert (=> b!5050146 (= res!2150771 (<= i!705 (size!38999 l!2779)))))

(declare-fun b!5050147 () Bool)

(declare-fun res!2150772 () Bool)

(assert (=> b!5050147 (=> (not res!2150772) (not e!3153076))))

(get-info :version)

(assert (=> b!5050147 (= res!2150772 ((_ is Nil!58376) l!2779))))

(declare-fun b!5050149 () Bool)

(declare-fun e!3153075 () Bool)

(declare-fun tp_is_empty!36935 () Bool)

(declare-fun tp!1412153 () Bool)

(assert (=> b!5050149 (= e!3153075 (and tp_is_empty!36935 tp!1412153))))

(declare-fun res!2150773 () Bool)

(assert (=> start!534174 (=> (not res!2150773) (not e!3153076))))

(assert (=> start!534174 (= res!2150773 (<= 0 i!705))))

(assert (=> start!534174 e!3153076))

(assert (=> start!534174 true))

(assert (=> start!534174 e!3153075))

(assert (= (and start!534174 res!2150773) b!5050146))

(assert (= (and b!5050146 res!2150771) b!5050147))

(assert (= (and b!5050147 res!2150772) b!5050148))

(assert (= (and start!534174 ((_ is Cons!58376) l!2779)) b!5050149))

(declare-fun m!6084568 () Bool)

(assert (=> b!5050148 m!6084568))

(declare-fun m!6084570 () Bool)

(assert (=> b!5050148 m!6084570))

(declare-fun m!6084572 () Bool)

(assert (=> b!5050146 m!6084572))

(check-sat (not b!5050146) (not b!5050148) (not b!5050149) tp_is_empty!36935)
(check-sat)
(get-model)

(declare-fun d!1624932 () Bool)

(declare-fun lt!2086478 () Int)

(assert (=> d!1624932 (>= lt!2086478 0)))

(declare-fun e!3153079 () Int)

(assert (=> d!1624932 (= lt!2086478 e!3153079)))

(declare-fun c!866166 () Bool)

(assert (=> d!1624932 (= c!866166 ((_ is Nil!58376) l!2779))))

(assert (=> d!1624932 (= (size!38999 l!2779) lt!2086478)))

(declare-fun b!5050154 () Bool)

(assert (=> b!5050154 (= e!3153079 0)))

(declare-fun b!5050155 () Bool)

(assert (=> b!5050155 (= e!3153079 (+ 1 (size!38999 (t!371139 l!2779))))))

(assert (= (and d!1624932 c!866166) b!5050154))

(assert (= (and d!1624932 (not c!866166)) b!5050155))

(declare-fun m!6084574 () Bool)

(assert (=> b!5050155 m!6084574))

(assert (=> b!5050146 d!1624932))

(declare-fun b!5050195 () Bool)

(declare-fun e!3153102 () Bool)

(declare-fun lt!2086486 () List!58500)

(declare-fun e!3153105 () Int)

(assert (=> b!5050195 (= e!3153102 (= (size!38999 lt!2086486) e!3153105))))

(declare-fun c!866185 () Bool)

(assert (=> b!5050195 (= c!866185 (<= i!705 0))))

(declare-fun b!5050196 () Bool)

(declare-fun e!3153104 () Int)

(assert (=> b!5050196 (= e!3153104 (size!38999 l!2779))))

(declare-fun d!1624934 () Bool)

(assert (=> d!1624934 e!3153102))

(declare-fun res!2150779 () Bool)

(assert (=> d!1624934 (=> (not res!2150779) (not e!3153102))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10390 (List!58500) (InoxSet T!104712))

(assert (=> d!1624934 (= res!2150779 (= ((_ map implies) (content!10390 lt!2086486) (content!10390 l!2779)) ((as const (InoxSet T!104712)) true)))))

(declare-fun e!3153103 () List!58500)

(assert (=> d!1624934 (= lt!2086486 e!3153103)))

(declare-fun c!866186 () Bool)

(assert (=> d!1624934 (= c!866186 (or ((_ is Nil!58376) l!2779) (<= i!705 0)))))

(assert (=> d!1624934 (= (take!881 l!2779 i!705) lt!2086486)))

(declare-fun b!5050197 () Bool)

(assert (=> b!5050197 (= e!3153105 e!3153104)))

(declare-fun c!866184 () Bool)

(assert (=> b!5050197 (= c!866184 (>= i!705 (size!38999 l!2779)))))

(declare-fun b!5050198 () Bool)

(assert (=> b!5050198 (= e!3153103 (Cons!58376 (h!64824 l!2779) (take!881 (t!371139 l!2779) (- i!705 1))))))

(declare-fun b!5050199 () Bool)

(assert (=> b!5050199 (= e!3153104 i!705)))

(declare-fun b!5050200 () Bool)

(assert (=> b!5050200 (= e!3153103 Nil!58376)))

(declare-fun b!5050201 () Bool)

(assert (=> b!5050201 (= e!3153105 0)))

(assert (= (and d!1624934 c!866186) b!5050200))

(assert (= (and d!1624934 (not c!866186)) b!5050198))

(assert (= (and d!1624934 res!2150779) b!5050195))

(assert (= (and b!5050195 c!866185) b!5050201))

(assert (= (and b!5050195 (not c!866185)) b!5050197))

(assert (= (and b!5050197 c!866184) b!5050196))

(assert (= (and b!5050197 (not c!866184)) b!5050199))

(declare-fun m!6084588 () Bool)

(assert (=> b!5050195 m!6084588))

(declare-fun m!6084590 () Bool)

(assert (=> b!5050198 m!6084590))

(assert (=> b!5050197 m!6084572))

(assert (=> b!5050196 m!6084572))

(declare-fun m!6084592 () Bool)

(assert (=> d!1624934 m!6084592))

(declare-fun m!6084594 () Bool)

(assert (=> d!1624934 m!6084594))

(assert (=> b!5050148 d!1624934))

(declare-fun d!1624940 () Bool)

(declare-fun drop!2682 (List!58500 Int) List!58500)

(assert (=> d!1624940 (= (slice!903 l!2779 0 i!705) (take!881 (drop!2682 l!2779 0) (- i!705 0)))))

(declare-fun bs!1189247 () Bool)

(assert (= bs!1189247 d!1624940))

(declare-fun m!6084598 () Bool)

(assert (=> bs!1189247 m!6084598))

(assert (=> bs!1189247 m!6084598))

(declare-fun m!6084600 () Bool)

(assert (=> bs!1189247 m!6084600))

(assert (=> b!5050148 d!1624940))

(declare-fun b!5050213 () Bool)

(declare-fun e!3153112 () Bool)

(declare-fun tp!1412159 () Bool)

(assert (=> b!5050213 (= e!3153112 (and tp_is_empty!36935 tp!1412159))))

(assert (=> b!5050149 (= tp!1412153 e!3153112)))

(assert (= (and b!5050149 ((_ is Cons!58376) (t!371139 l!2779))) b!5050213))

(check-sat (not b!5050197) (not b!5050196) (not d!1624940) (not b!5050213) (not d!1624934) tp_is_empty!36935 (not b!5050155) (not b!5050198) (not b!5050195))
(check-sat)
(get-model)

(declare-fun d!1624942 () Bool)

(declare-fun lt!2086488 () Int)

(assert (=> d!1624942 (>= lt!2086488 0)))

(declare-fun e!3153113 () Int)

(assert (=> d!1624942 (= lt!2086488 e!3153113)))

(declare-fun c!866188 () Bool)

(assert (=> d!1624942 (= c!866188 ((_ is Nil!58376) (t!371139 l!2779)))))

(assert (=> d!1624942 (= (size!38999 (t!371139 l!2779)) lt!2086488)))

(declare-fun b!5050214 () Bool)

(assert (=> b!5050214 (= e!3153113 0)))

(declare-fun b!5050215 () Bool)

(assert (=> b!5050215 (= e!3153113 (+ 1 (size!38999 (t!371139 (t!371139 l!2779)))))))

(assert (= (and d!1624942 c!866188) b!5050214))

(assert (= (and d!1624942 (not c!866188)) b!5050215))

(declare-fun m!6084602 () Bool)

(assert (=> b!5050215 m!6084602))

(assert (=> b!5050155 d!1624942))

(assert (=> b!5050197 d!1624932))

(assert (=> b!5050196 d!1624932))

(declare-fun b!5050216 () Bool)

(declare-fun e!3153114 () Bool)

(declare-fun lt!2086489 () List!58500)

(declare-fun e!3153117 () Int)

(assert (=> b!5050216 (= e!3153114 (= (size!38999 lt!2086489) e!3153117))))

(declare-fun c!866190 () Bool)

(assert (=> b!5050216 (= c!866190 (<= (- i!705 1) 0))))

(declare-fun b!5050217 () Bool)

(declare-fun e!3153116 () Int)

(assert (=> b!5050217 (= e!3153116 (size!38999 (t!371139 l!2779)))))

(declare-fun d!1624944 () Bool)

(assert (=> d!1624944 e!3153114))

(declare-fun res!2150780 () Bool)

(assert (=> d!1624944 (=> (not res!2150780) (not e!3153114))))

(assert (=> d!1624944 (= res!2150780 (= ((_ map implies) (content!10390 lt!2086489) (content!10390 (t!371139 l!2779))) ((as const (InoxSet T!104712)) true)))))

(declare-fun e!3153115 () List!58500)

(assert (=> d!1624944 (= lt!2086489 e!3153115)))

(declare-fun c!866191 () Bool)

(assert (=> d!1624944 (= c!866191 (or ((_ is Nil!58376) (t!371139 l!2779)) (<= (- i!705 1) 0)))))

(assert (=> d!1624944 (= (take!881 (t!371139 l!2779) (- i!705 1)) lt!2086489)))

(declare-fun b!5050218 () Bool)

(assert (=> b!5050218 (= e!3153117 e!3153116)))

(declare-fun c!866189 () Bool)

(assert (=> b!5050218 (= c!866189 (>= (- i!705 1) (size!38999 (t!371139 l!2779))))))

(declare-fun b!5050219 () Bool)

(assert (=> b!5050219 (= e!3153115 (Cons!58376 (h!64824 (t!371139 l!2779)) (take!881 (t!371139 (t!371139 l!2779)) (- (- i!705 1) 1))))))

(declare-fun b!5050220 () Bool)

(assert (=> b!5050220 (= e!3153116 (- i!705 1))))

(declare-fun b!5050221 () Bool)

(assert (=> b!5050221 (= e!3153115 Nil!58376)))

(declare-fun b!5050222 () Bool)

(assert (=> b!5050222 (= e!3153117 0)))

(assert (= (and d!1624944 c!866191) b!5050221))

(assert (= (and d!1624944 (not c!866191)) b!5050219))

(assert (= (and d!1624944 res!2150780) b!5050216))

(assert (= (and b!5050216 c!866190) b!5050222))

(assert (= (and b!5050216 (not c!866190)) b!5050218))

(assert (= (and b!5050218 c!866189) b!5050217))

(assert (= (and b!5050218 (not c!866189)) b!5050220))

(declare-fun m!6084604 () Bool)

(assert (=> b!5050216 m!6084604))

(declare-fun m!6084606 () Bool)

(assert (=> b!5050219 m!6084606))

(assert (=> b!5050218 m!6084574))

(assert (=> b!5050217 m!6084574))

(declare-fun m!6084608 () Bool)

(assert (=> d!1624944 m!6084608))

(declare-fun m!6084610 () Bool)

(assert (=> d!1624944 m!6084610))

(assert (=> b!5050198 d!1624944))

(declare-fun d!1624946 () Bool)

(declare-fun c!866194 () Bool)

(assert (=> d!1624946 (= c!866194 ((_ is Nil!58376) lt!2086486))))

(declare-fun e!3153120 () (InoxSet T!104712))

(assert (=> d!1624946 (= (content!10390 lt!2086486) e!3153120)))

(declare-fun b!5050227 () Bool)

(assert (=> b!5050227 (= e!3153120 ((as const (Array T!104712 Bool)) false))))

(declare-fun b!5050228 () Bool)

(assert (=> b!5050228 (= e!3153120 ((_ map or) (store ((as const (Array T!104712 Bool)) false) (h!64824 lt!2086486) true) (content!10390 (t!371139 lt!2086486))))))

(assert (= (and d!1624946 c!866194) b!5050227))

(assert (= (and d!1624946 (not c!866194)) b!5050228))

(declare-fun m!6084612 () Bool)

(assert (=> b!5050228 m!6084612))

(declare-fun m!6084614 () Bool)

(assert (=> b!5050228 m!6084614))

(assert (=> d!1624934 d!1624946))

(declare-fun d!1624948 () Bool)

(declare-fun c!866195 () Bool)

(assert (=> d!1624948 (= c!866195 ((_ is Nil!58376) l!2779))))

(declare-fun e!3153121 () (InoxSet T!104712))

(assert (=> d!1624948 (= (content!10390 l!2779) e!3153121)))

(declare-fun b!5050229 () Bool)

(assert (=> b!5050229 (= e!3153121 ((as const (Array T!104712 Bool)) false))))

(declare-fun b!5050230 () Bool)

(assert (=> b!5050230 (= e!3153121 ((_ map or) (store ((as const (Array T!104712 Bool)) false) (h!64824 l!2779) true) (content!10390 (t!371139 l!2779))))))

(assert (= (and d!1624948 c!866195) b!5050229))

(assert (= (and d!1624948 (not c!866195)) b!5050230))

(declare-fun m!6084616 () Bool)

(assert (=> b!5050230 m!6084616))

(assert (=> b!5050230 m!6084610))

(assert (=> d!1624934 d!1624948))

(declare-fun d!1624950 () Bool)

(declare-fun lt!2086490 () Int)

(assert (=> d!1624950 (>= lt!2086490 0)))

(declare-fun e!3153122 () Int)

(assert (=> d!1624950 (= lt!2086490 e!3153122)))

(declare-fun c!866196 () Bool)

(assert (=> d!1624950 (= c!866196 ((_ is Nil!58376) lt!2086486))))

(assert (=> d!1624950 (= (size!38999 lt!2086486) lt!2086490)))

(declare-fun b!5050231 () Bool)

(assert (=> b!5050231 (= e!3153122 0)))

(declare-fun b!5050232 () Bool)

(assert (=> b!5050232 (= e!3153122 (+ 1 (size!38999 (t!371139 lt!2086486))))))

(assert (= (and d!1624950 c!866196) b!5050231))

(assert (= (and d!1624950 (not c!866196)) b!5050232))

(declare-fun m!6084618 () Bool)

(assert (=> b!5050232 m!6084618))

(assert (=> b!5050195 d!1624950))

(declare-fun b!5050233 () Bool)

(declare-fun e!3153123 () Bool)

(declare-fun lt!2086491 () List!58500)

(declare-fun e!3153126 () Int)

(assert (=> b!5050233 (= e!3153123 (= (size!38999 lt!2086491) e!3153126))))

(declare-fun c!866198 () Bool)

(assert (=> b!5050233 (= c!866198 (<= (- i!705 0) 0))))

(declare-fun b!5050234 () Bool)

(declare-fun e!3153125 () Int)

(assert (=> b!5050234 (= e!3153125 (size!38999 (drop!2682 l!2779 0)))))

(declare-fun d!1624952 () Bool)

(assert (=> d!1624952 e!3153123))

(declare-fun res!2150781 () Bool)

(assert (=> d!1624952 (=> (not res!2150781) (not e!3153123))))

(assert (=> d!1624952 (= res!2150781 (= ((_ map implies) (content!10390 lt!2086491) (content!10390 (drop!2682 l!2779 0))) ((as const (InoxSet T!104712)) true)))))

(declare-fun e!3153124 () List!58500)

(assert (=> d!1624952 (= lt!2086491 e!3153124)))

(declare-fun c!866199 () Bool)

(assert (=> d!1624952 (= c!866199 (or ((_ is Nil!58376) (drop!2682 l!2779 0)) (<= (- i!705 0) 0)))))

(assert (=> d!1624952 (= (take!881 (drop!2682 l!2779 0) (- i!705 0)) lt!2086491)))

(declare-fun b!5050235 () Bool)

(assert (=> b!5050235 (= e!3153126 e!3153125)))

(declare-fun c!866197 () Bool)

(assert (=> b!5050235 (= c!866197 (>= (- i!705 0) (size!38999 (drop!2682 l!2779 0))))))

(declare-fun b!5050236 () Bool)

(assert (=> b!5050236 (= e!3153124 (Cons!58376 (h!64824 (drop!2682 l!2779 0)) (take!881 (t!371139 (drop!2682 l!2779 0)) (- (- i!705 0) 1))))))

(declare-fun b!5050237 () Bool)

(assert (=> b!5050237 (= e!3153125 (- i!705 0))))

(declare-fun b!5050238 () Bool)

(assert (=> b!5050238 (= e!3153124 Nil!58376)))

(declare-fun b!5050239 () Bool)

(assert (=> b!5050239 (= e!3153126 0)))

(assert (= (and d!1624952 c!866199) b!5050238))

(assert (= (and d!1624952 (not c!866199)) b!5050236))

(assert (= (and d!1624952 res!2150781) b!5050233))

(assert (= (and b!5050233 c!866198) b!5050239))

(assert (= (and b!5050233 (not c!866198)) b!5050235))

(assert (= (and b!5050235 c!866197) b!5050234))

(assert (= (and b!5050235 (not c!866197)) b!5050237))

(declare-fun m!6084620 () Bool)

(assert (=> b!5050233 m!6084620))

(declare-fun m!6084622 () Bool)

(assert (=> b!5050236 m!6084622))

(assert (=> b!5050235 m!6084598))

(declare-fun m!6084624 () Bool)

(assert (=> b!5050235 m!6084624))

(assert (=> b!5050234 m!6084598))

(assert (=> b!5050234 m!6084624))

(declare-fun m!6084626 () Bool)

(assert (=> d!1624952 m!6084626))

(assert (=> d!1624952 m!6084598))

(declare-fun m!6084628 () Bool)

(assert (=> d!1624952 m!6084628))

(assert (=> d!1624940 d!1624952))

(declare-fun b!5050265 () Bool)

(declare-fun e!3153145 () Bool)

(declare-fun lt!2086495 () List!58500)

(declare-fun e!3153142 () Int)

(assert (=> b!5050265 (= e!3153145 (= (size!38999 lt!2086495) e!3153142))))

(declare-fun c!866214 () Bool)

(assert (=> b!5050265 (= c!866214 (<= 0 0))))

(declare-fun b!5050266 () Bool)

(declare-fun e!3153143 () Int)

(declare-fun call!351942 () Int)

(assert (=> b!5050266 (= e!3153143 (- call!351942 0))))

(declare-fun d!1624954 () Bool)

(assert (=> d!1624954 e!3153145))

(declare-fun res!2150785 () Bool)

(assert (=> d!1624954 (=> (not res!2150785) (not e!3153145))))

(assert (=> d!1624954 (= res!2150785 (= ((_ map implies) (content!10390 lt!2086495) (content!10390 l!2779)) ((as const (InoxSet T!104712)) true)))))

(declare-fun e!3153141 () List!58500)

(assert (=> d!1624954 (= lt!2086495 e!3153141)))

(declare-fun c!866211 () Bool)

(assert (=> d!1624954 (= c!866211 ((_ is Nil!58376) l!2779))))

(assert (=> d!1624954 (= (drop!2682 l!2779 0) lt!2086495)))

(declare-fun b!5050267 () Bool)

(declare-fun e!3153144 () List!58500)

(assert (=> b!5050267 (= e!3153141 e!3153144)))

(declare-fun c!866213 () Bool)

(assert (=> b!5050267 (= c!866213 (<= 0 0))))

(declare-fun b!5050268 () Bool)

(assert (=> b!5050268 (= e!3153142 e!3153143)))

(declare-fun c!866212 () Bool)

(assert (=> b!5050268 (= c!866212 (>= 0 call!351942))))

(declare-fun b!5050269 () Bool)

(assert (=> b!5050269 (= e!3153143 0)))

(declare-fun b!5050270 () Bool)

(assert (=> b!5050270 (= e!3153142 call!351942)))

(declare-fun b!5050271 () Bool)

(assert (=> b!5050271 (= e!3153141 Nil!58376)))

(declare-fun b!5050272 () Bool)

(assert (=> b!5050272 (= e!3153144 l!2779)))

(declare-fun bm!351937 () Bool)

(assert (=> bm!351937 (= call!351942 (size!38999 l!2779))))

(declare-fun b!5050273 () Bool)

(assert (=> b!5050273 (= e!3153144 (drop!2682 (t!371139 l!2779) (- 0 1)))))

(assert (= (and d!1624954 c!866211) b!5050271))

(assert (= (and d!1624954 (not c!866211)) b!5050267))

(assert (= (and b!5050267 c!866213) b!5050272))

(assert (= (and b!5050267 (not c!866213)) b!5050273))

(assert (= (and d!1624954 res!2150785) b!5050265))

(assert (= (and b!5050265 c!866214) b!5050270))

(assert (= (and b!5050265 (not c!866214)) b!5050268))

(assert (= (and b!5050268 c!866212) b!5050269))

(assert (= (and b!5050268 (not c!866212)) b!5050266))

(assert (= (or b!5050270 b!5050268 b!5050266) bm!351937))

(declare-fun m!6084640 () Bool)

(assert (=> b!5050265 m!6084640))

(declare-fun m!6084642 () Bool)

(assert (=> d!1624954 m!6084642))

(assert (=> d!1624954 m!6084594))

(assert (=> bm!351937 m!6084572))

(declare-fun m!6084644 () Bool)

(assert (=> b!5050273 m!6084644))

(assert (=> d!1624940 d!1624954))

(declare-fun b!5050282 () Bool)

(declare-fun e!3153150 () Bool)

(declare-fun tp!1412160 () Bool)

(assert (=> b!5050282 (= e!3153150 (and tp_is_empty!36935 tp!1412160))))

(assert (=> b!5050213 (= tp!1412159 e!3153150)))

(assert (= (and b!5050213 ((_ is Cons!58376) (t!371139 (t!371139 l!2779)))) b!5050282))

(check-sat (not b!5050218) (not b!5050233) (not b!5050234) (not b!5050216) (not b!5050235) (not b!5050217) (not b!5050265) (not b!5050282) (not d!1624952) (not bm!351937) (not b!5050228) (not b!5050230) (not b!5050215) (not b!5050219) tp_is_empty!36935 (not b!5050273) (not d!1624954) (not d!1624944) (not b!5050232) (not b!5050236))
(check-sat)
