; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104022 () Bool)

(assert start!104022)

(declare-fun b!1177098 () Bool)

(declare-fun res!532261 () Bool)

(declare-fun e!755372 () Bool)

(assert (=> b!1177098 (=> (not res!532261) (not e!755372))))

(declare-fun j!89 () Int)

(declare-datatypes ((B!1249 0))(
  ( (B!1250 (val!3734 Int)) )
))
(declare-datatypes ((List!11681 0))(
  ( (Nil!11657) (Cons!11657 (h!17058 B!1249) (t!111173 List!11681)) )
))
(declare-fun l!2952 () List!11681)

(declare-fun size!9221 (List!11681) Int)

(assert (=> b!1177098 (= res!532261 (<= j!89 (size!9221 l!2952)))))

(declare-fun b!1177101 () Bool)

(declare-fun e!755373 () Bool)

(declare-fun tp_is_empty!5771 () Bool)

(declare-fun tp!335158 () Bool)

(assert (=> b!1177101 (= e!755373 (and tp_is_empty!5771 tp!335158))))

(declare-fun b!1177099 () Bool)

(declare-fun res!532263 () Bool)

(assert (=> b!1177099 (=> (not res!532263) (not e!755372))))

(declare-fun i!757 () Int)

(get-info :version)

(assert (=> b!1177099 (= res!532263 (and (not ((_ is Nil!11657) l!2952)) (= i!757 0) (= j!89 0)))))

(declare-fun res!532262 () Bool)

(assert (=> start!104022 (=> (not res!532262) (not e!755372))))

(assert (=> start!104022 (= res!532262 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!104022 e!755372))

(assert (=> start!104022 true))

(assert (=> start!104022 e!755373))

(declare-fun b!1177100 () Bool)

(declare-fun subseq!287 (List!11681 List!11681) Bool)

(declare-fun slice!385 (List!11681 Int Int) List!11681)

(assert (=> b!1177100 (= e!755372 (not (subseq!287 (slice!385 l!2952 i!757 j!89) l!2952)))))

(assert (= (and start!104022 res!532262) b!1177098))

(assert (= (and b!1177098 res!532261) b!1177099))

(assert (= (and b!1177099 res!532263) b!1177100))

(assert (= (and start!104022 ((_ is Cons!11657) l!2952)) b!1177101))

(declare-fun m!1354383 () Bool)

(assert (=> b!1177098 m!1354383))

(declare-fun m!1354385 () Bool)

(assert (=> b!1177100 m!1354385))

(assert (=> b!1177100 m!1354385))

(declare-fun m!1354387 () Bool)

(assert (=> b!1177100 m!1354387))

(check-sat (not b!1177098) (not b!1177100) (not b!1177101) tp_is_empty!5771)
(check-sat)
(get-model)

(declare-fun d!337223 () Bool)

(declare-fun lt!406015 () Int)

(assert (=> d!337223 (>= lt!406015 0)))

(declare-fun e!755388 () Int)

(assert (=> d!337223 (= lt!406015 e!755388)))

(declare-fun c!196170 () Bool)

(assert (=> d!337223 (= c!196170 ((_ is Nil!11657) l!2952))))

(assert (=> d!337223 (= (size!9221 l!2952) lt!406015)))

(declare-fun b!1177118 () Bool)

(assert (=> b!1177118 (= e!755388 0)))

(declare-fun b!1177119 () Bool)

(assert (=> b!1177119 (= e!755388 (+ 1 (size!9221 (t!111173 l!2952))))))

(assert (= (and d!337223 c!196170) b!1177118))

(assert (= (and d!337223 (not c!196170)) b!1177119))

(declare-fun m!1354389 () Bool)

(assert (=> b!1177119 m!1354389))

(assert (=> b!1177098 d!337223))

(declare-fun b!1177136 () Bool)

(declare-fun e!755401 () Bool)

(assert (=> b!1177136 (= e!755401 (subseq!287 (t!111173 (slice!385 l!2952 i!757 j!89)) (t!111173 l!2952)))))

(declare-fun e!755403 () Bool)

(declare-fun b!1177137 () Bool)

(assert (=> b!1177137 (= e!755403 (subseq!287 (slice!385 l!2952 i!757 j!89) (t!111173 l!2952)))))

(declare-fun b!1177135 () Bool)

(declare-fun e!755400 () Bool)

(assert (=> b!1177135 (= e!755400 e!755403)))

(declare-fun res!532287 () Bool)

(assert (=> b!1177135 (=> res!532287 e!755403)))

(assert (=> b!1177135 (= res!532287 e!755401)))

(declare-fun res!532284 () Bool)

(assert (=> b!1177135 (=> (not res!532284) (not e!755401))))

(assert (=> b!1177135 (= res!532284 (= (h!17058 (slice!385 l!2952 i!757 j!89)) (h!17058 l!2952)))))

(declare-fun b!1177134 () Bool)

(declare-fun e!755402 () Bool)

(assert (=> b!1177134 (= e!755402 e!755400)))

(declare-fun res!532285 () Bool)

(assert (=> b!1177134 (=> (not res!532285) (not e!755400))))

(assert (=> b!1177134 (= res!532285 ((_ is Cons!11657) l!2952))))

(declare-fun d!337225 () Bool)

(declare-fun res!532286 () Bool)

(assert (=> d!337225 (=> res!532286 e!755402)))

(assert (=> d!337225 (= res!532286 ((_ is Nil!11657) (slice!385 l!2952 i!757 j!89)))))

(assert (=> d!337225 (= (subseq!287 (slice!385 l!2952 i!757 j!89) l!2952) e!755402)))

(assert (= (and d!337225 (not res!532286)) b!1177134))

(assert (= (and b!1177134 res!532285) b!1177135))

(assert (= (and b!1177135 res!532284) b!1177136))

(assert (= (and b!1177135 (not res!532287)) b!1177137))

(declare-fun m!1354401 () Bool)

(assert (=> b!1177136 m!1354401))

(assert (=> b!1177137 m!1354385))

(declare-fun m!1354403 () Bool)

(assert (=> b!1177137 m!1354403))

(assert (=> b!1177100 d!337225))

(declare-fun d!337231 () Bool)

(declare-fun take!93 (List!11681 Int) List!11681)

(declare-fun drop!505 (List!11681 Int) List!11681)

(assert (=> d!337231 (= (slice!385 l!2952 i!757 j!89) (take!93 (drop!505 l!2952 i!757) (- j!89 i!757)))))

(declare-fun bs!286727 () Bool)

(assert (= bs!286727 d!337231))

(declare-fun m!1354405 () Bool)

(assert (=> bs!286727 m!1354405))

(assert (=> bs!286727 m!1354405))

(declare-fun m!1354407 () Bool)

(assert (=> bs!286727 m!1354407))

(assert (=> b!1177100 d!337231))

(declare-fun b!1177147 () Bool)

(declare-fun e!755409 () Bool)

(declare-fun tp!335164 () Bool)

(assert (=> b!1177147 (= e!755409 (and tp_is_empty!5771 tp!335164))))

(assert (=> b!1177101 (= tp!335158 e!755409)))

(assert (= (and b!1177101 ((_ is Cons!11657) (t!111173 l!2952))) b!1177147))

(check-sat (not b!1177136) (not b!1177137) (not b!1177119) (not b!1177147) tp_is_empty!5771 (not d!337231))
(check-sat)
(get-model)

(declare-fun e!755411 () Bool)

(declare-fun b!1177150 () Bool)

(assert (=> b!1177150 (= e!755411 (subseq!287 (t!111173 (t!111173 (slice!385 l!2952 i!757 j!89))) (t!111173 (t!111173 l!2952))))))

(declare-fun b!1177151 () Bool)

(declare-fun e!755413 () Bool)

(assert (=> b!1177151 (= e!755413 (subseq!287 (t!111173 (slice!385 l!2952 i!757 j!89)) (t!111173 (t!111173 l!2952))))))

(declare-fun b!1177149 () Bool)

(declare-fun e!755410 () Bool)

(assert (=> b!1177149 (= e!755410 e!755413)))

(declare-fun res!532291 () Bool)

(assert (=> b!1177149 (=> res!532291 e!755413)))

(assert (=> b!1177149 (= res!532291 e!755411)))

(declare-fun res!532288 () Bool)

(assert (=> b!1177149 (=> (not res!532288) (not e!755411))))

(assert (=> b!1177149 (= res!532288 (= (h!17058 (t!111173 (slice!385 l!2952 i!757 j!89))) (h!17058 (t!111173 l!2952))))))

(declare-fun b!1177148 () Bool)

(declare-fun e!755412 () Bool)

(assert (=> b!1177148 (= e!755412 e!755410)))

(declare-fun res!532289 () Bool)

(assert (=> b!1177148 (=> (not res!532289) (not e!755410))))

(assert (=> b!1177148 (= res!532289 ((_ is Cons!11657) (t!111173 l!2952)))))

(declare-fun d!337233 () Bool)

(declare-fun res!532290 () Bool)

(assert (=> d!337233 (=> res!532290 e!755412)))

(assert (=> d!337233 (= res!532290 ((_ is Nil!11657) (t!111173 (slice!385 l!2952 i!757 j!89))))))

(assert (=> d!337233 (= (subseq!287 (t!111173 (slice!385 l!2952 i!757 j!89)) (t!111173 l!2952)) e!755412)))

(assert (= (and d!337233 (not res!532290)) b!1177148))

(assert (= (and b!1177148 res!532289) b!1177149))

(assert (= (and b!1177149 res!532288) b!1177150))

(assert (= (and b!1177149 (not res!532291)) b!1177151))

(declare-fun m!1354409 () Bool)

(assert (=> b!1177150 m!1354409))

(declare-fun m!1354411 () Bool)

(assert (=> b!1177151 m!1354411))

(assert (=> b!1177136 d!337233))

(declare-fun b!1177166 () Bool)

(declare-fun e!755423 () List!11681)

(assert (=> b!1177166 (= e!755423 (Cons!11657 (h!17058 (drop!505 l!2952 i!757)) (take!93 (t!111173 (drop!505 l!2952 i!757)) (- (- j!89 i!757) 1))))))

(declare-fun b!1177167 () Bool)

(assert (=> b!1177167 (= e!755423 Nil!11657)))

(declare-fun d!337235 () Bool)

(declare-fun e!755424 () Bool)

(assert (=> d!337235 e!755424))

(declare-fun res!532294 () Bool)

(assert (=> d!337235 (=> (not res!532294) (not e!755424))))

(declare-fun lt!406021 () List!11681)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1625 (List!11681) (InoxSet B!1249))

(assert (=> d!337235 (= res!532294 (= ((_ map implies) (content!1625 lt!406021) (content!1625 (drop!505 l!2952 i!757))) ((as const (InoxSet B!1249)) true)))))

(assert (=> d!337235 (= lt!406021 e!755423)))

(declare-fun c!196181 () Bool)

(assert (=> d!337235 (= c!196181 (or ((_ is Nil!11657) (drop!505 l!2952 i!757)) (<= (- j!89 i!757) 0)))))

(assert (=> d!337235 (= (take!93 (drop!505 l!2952 i!757) (- j!89 i!757)) lt!406021)))

(declare-fun b!1177168 () Bool)

(declare-fun e!755422 () Int)

(declare-fun e!755425 () Int)

(assert (=> b!1177168 (= e!755422 e!755425)))

(declare-fun c!196182 () Bool)

(assert (=> b!1177168 (= c!196182 (>= (- j!89 i!757) (size!9221 (drop!505 l!2952 i!757))))))

(declare-fun b!1177169 () Bool)

(assert (=> b!1177169 (= e!755425 (- j!89 i!757))))

(declare-fun b!1177170 () Bool)

(assert (=> b!1177170 (= e!755425 (size!9221 (drop!505 l!2952 i!757)))))

(declare-fun b!1177171 () Bool)

(assert (=> b!1177171 (= e!755422 0)))

(declare-fun b!1177172 () Bool)

(assert (=> b!1177172 (= e!755424 (= (size!9221 lt!406021) e!755422))))

(declare-fun c!196180 () Bool)

(assert (=> b!1177172 (= c!196180 (<= (- j!89 i!757) 0))))

(assert (= (and d!337235 c!196181) b!1177167))

(assert (= (and d!337235 (not c!196181)) b!1177166))

(assert (= (and d!337235 res!532294) b!1177172))

(assert (= (and b!1177172 c!196180) b!1177171))

(assert (= (and b!1177172 (not c!196180)) b!1177168))

(assert (= (and b!1177168 c!196182) b!1177170))

(assert (= (and b!1177168 (not c!196182)) b!1177169))

(assert (=> b!1177168 m!1354405))

(declare-fun m!1354413 () Bool)

(assert (=> b!1177168 m!1354413))

(assert (=> b!1177170 m!1354405))

(assert (=> b!1177170 m!1354413))

(declare-fun m!1354415 () Bool)

(assert (=> d!337235 m!1354415))

(assert (=> d!337235 m!1354405))

(declare-fun m!1354417 () Bool)

(assert (=> d!337235 m!1354417))

(declare-fun m!1354419 () Bool)

(assert (=> b!1177172 m!1354419))

(declare-fun m!1354421 () Bool)

(assert (=> b!1177166 m!1354421))

(assert (=> d!337231 d!337235))

(declare-fun b!1177212 () Bool)

(declare-fun e!755451 () Int)

(declare-fun call!82449 () Int)

(assert (=> b!1177212 (= e!755451 call!82449)))

(declare-fun b!1177213 () Bool)

(declare-fun e!755448 () Bool)

(declare-fun lt!406027 () List!11681)

(assert (=> b!1177213 (= e!755448 (= (size!9221 lt!406027) e!755451))))

(declare-fun c!196200 () Bool)

(assert (=> b!1177213 (= c!196200 (<= i!757 0))))

(declare-fun b!1177214 () Bool)

(declare-fun e!755450 () Int)

(assert (=> b!1177214 (= e!755451 e!755450)))

(declare-fun c!196202 () Bool)

(assert (=> b!1177214 (= c!196202 (>= i!757 call!82449))))

(declare-fun b!1177215 () Bool)

(declare-fun e!755452 () List!11681)

(assert (=> b!1177215 (= e!755452 (drop!505 (t!111173 l!2952) (- i!757 1)))))

(declare-fun b!1177216 () Bool)

(declare-fun e!755449 () List!11681)

(assert (=> b!1177216 (= e!755449 e!755452)))

(declare-fun c!196203 () Bool)

(assert (=> b!1177216 (= c!196203 (<= i!757 0))))

(declare-fun d!337239 () Bool)

(assert (=> d!337239 e!755448))

(declare-fun res!532300 () Bool)

(assert (=> d!337239 (=> (not res!532300) (not e!755448))))

(assert (=> d!337239 (= res!532300 (= ((_ map implies) (content!1625 lt!406027) (content!1625 l!2952)) ((as const (InoxSet B!1249)) true)))))

(assert (=> d!337239 (= lt!406027 e!755449)))

(declare-fun c!196201 () Bool)

(assert (=> d!337239 (= c!196201 ((_ is Nil!11657) l!2952))))

(assert (=> d!337239 (= (drop!505 l!2952 i!757) lt!406027)))

(declare-fun b!1177217 () Bool)

(assert (=> b!1177217 (= e!755449 Nil!11657)))

(declare-fun b!1177218 () Bool)

(assert (=> b!1177218 (= e!755450 (- call!82449 i!757))))

(declare-fun b!1177219 () Bool)

(assert (=> b!1177219 (= e!755450 0)))

(declare-fun b!1177220 () Bool)

(assert (=> b!1177220 (= e!755452 l!2952)))

(declare-fun bm!82444 () Bool)

(assert (=> bm!82444 (= call!82449 (size!9221 l!2952))))

(assert (= (and d!337239 c!196201) b!1177217))

(assert (= (and d!337239 (not c!196201)) b!1177216))

(assert (= (and b!1177216 c!196203) b!1177220))

(assert (= (and b!1177216 (not c!196203)) b!1177215))

(assert (= (and d!337239 res!532300) b!1177213))

(assert (= (and b!1177213 c!196200) b!1177212))

(assert (= (and b!1177213 (not c!196200)) b!1177214))

(assert (= (and b!1177214 c!196202) b!1177219))

(assert (= (and b!1177214 (not c!196202)) b!1177218))

(assert (= (or b!1177212 b!1177214 b!1177218) bm!82444))

(declare-fun m!1354433 () Bool)

(assert (=> b!1177213 m!1354433))

(declare-fun m!1354435 () Bool)

(assert (=> b!1177215 m!1354435))

(declare-fun m!1354437 () Bool)

(assert (=> d!337239 m!1354437))

(declare-fun m!1354439 () Bool)

(assert (=> d!337239 m!1354439))

(assert (=> bm!82444 m!1354383))

(assert (=> d!337231 d!337239))

(declare-fun d!337243 () Bool)

(declare-fun lt!406028 () Int)

(assert (=> d!337243 (>= lt!406028 0)))

(declare-fun e!755453 () Int)

(assert (=> d!337243 (= lt!406028 e!755453)))

(declare-fun c!196204 () Bool)

(assert (=> d!337243 (= c!196204 ((_ is Nil!11657) (t!111173 l!2952)))))

(assert (=> d!337243 (= (size!9221 (t!111173 l!2952)) lt!406028)))

(declare-fun b!1177221 () Bool)

(assert (=> b!1177221 (= e!755453 0)))

(declare-fun b!1177222 () Bool)

(assert (=> b!1177222 (= e!755453 (+ 1 (size!9221 (t!111173 (t!111173 l!2952)))))))

(assert (= (and d!337243 c!196204) b!1177221))

(assert (= (and d!337243 (not c!196204)) b!1177222))

(declare-fun m!1354441 () Bool)

(assert (=> b!1177222 m!1354441))

(assert (=> b!1177119 d!337243))

(declare-fun b!1177225 () Bool)

(declare-fun e!755455 () Bool)

(assert (=> b!1177225 (= e!755455 (subseq!287 (t!111173 (slice!385 l!2952 i!757 j!89)) (t!111173 (t!111173 l!2952))))))

(declare-fun e!755457 () Bool)

(declare-fun b!1177226 () Bool)

(assert (=> b!1177226 (= e!755457 (subseq!287 (slice!385 l!2952 i!757 j!89) (t!111173 (t!111173 l!2952))))))

(declare-fun b!1177224 () Bool)

(declare-fun e!755454 () Bool)

(assert (=> b!1177224 (= e!755454 e!755457)))

(declare-fun res!532304 () Bool)

(assert (=> b!1177224 (=> res!532304 e!755457)))

(assert (=> b!1177224 (= res!532304 e!755455)))

(declare-fun res!532301 () Bool)

(assert (=> b!1177224 (=> (not res!532301) (not e!755455))))

(assert (=> b!1177224 (= res!532301 (= (h!17058 (slice!385 l!2952 i!757 j!89)) (h!17058 (t!111173 l!2952))))))

(declare-fun b!1177223 () Bool)

(declare-fun e!755456 () Bool)

(assert (=> b!1177223 (= e!755456 e!755454)))

(declare-fun res!532302 () Bool)

(assert (=> b!1177223 (=> (not res!532302) (not e!755454))))

(assert (=> b!1177223 (= res!532302 ((_ is Cons!11657) (t!111173 l!2952)))))

(declare-fun d!337245 () Bool)

(declare-fun res!532303 () Bool)

(assert (=> d!337245 (=> res!532303 e!755456)))

(assert (=> d!337245 (= res!532303 ((_ is Nil!11657) (slice!385 l!2952 i!757 j!89)))))

(assert (=> d!337245 (= (subseq!287 (slice!385 l!2952 i!757 j!89) (t!111173 l!2952)) e!755456)))

(assert (= (and d!337245 (not res!532303)) b!1177223))

(assert (= (and b!1177223 res!532302) b!1177224))

(assert (= (and b!1177224 res!532301) b!1177225))

(assert (= (and b!1177224 (not res!532304)) b!1177226))

(assert (=> b!1177225 m!1354411))

(assert (=> b!1177226 m!1354385))

(declare-fun m!1354443 () Bool)

(assert (=> b!1177226 m!1354443))

(assert (=> b!1177137 d!337245))

(declare-fun b!1177227 () Bool)

(declare-fun e!755458 () Bool)

(declare-fun tp!335165 () Bool)

(assert (=> b!1177227 (= e!755458 (and tp_is_empty!5771 tp!335165))))

(assert (=> b!1177147 (= tp!335164 e!755458)))

(assert (= (and b!1177147 ((_ is Cons!11657) (t!111173 (t!111173 l!2952)))) b!1177227))

(check-sat (not b!1177227) (not b!1177215) tp_is_empty!5771 (not b!1177226) (not b!1177222) (not b!1177225) (not b!1177168) (not b!1177151) (not b!1177150) (not d!337235) (not b!1177172) (not d!337239) (not b!1177166) (not b!1177213) (not b!1177170) (not bm!82444))
(check-sat)
