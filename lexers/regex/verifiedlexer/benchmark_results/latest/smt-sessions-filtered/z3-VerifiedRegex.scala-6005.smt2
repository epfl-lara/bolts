; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294252 () Bool)

(assert start!294252)

(declare-fun b!3101224 () Bool)

(declare-fun e!1937990 () Bool)

(declare-fun tp_is_empty!16685 () Bool)

(declare-fun tp!974733 () Bool)

(assert (=> b!3101224 (= e!1937990 (and tp_is_empty!16685 tp!974733))))

(declare-fun b!3101225 () Bool)

(declare-fun e!1937992 () Bool)

(declare-fun e!1937989 () Bool)

(assert (=> b!3101225 (= e!1937992 (not e!1937989))))

(declare-fun res!1270395 () Bool)

(assert (=> b!3101225 (=> res!1270395 e!1937989)))

(declare-fun lt!1055807 () Bool)

(declare-datatypes ((C!19308 0))(
  ( (C!19309 (val!11690 Int)) )
))
(declare-datatypes ((Regex!9561 0))(
  ( (ElementMatch!9561 (c!518185 C!19308)) (Concat!14882 (regOne!19634 Regex!9561) (regTwo!19634 Regex!9561)) (EmptyExpr!9561) (Star!9561 (reg!9890 Regex!9561)) (EmptyLang!9561) (Union!9561 (regOne!19635 Regex!9561) (regTwo!19635 Regex!9561)) )
))
(declare-fun r!17423 () Regex!9561)

(get-info :version)

(assert (=> b!3101225 (= res!1270395 (or lt!1055807 ((_ is Concat!14882) r!17423) (not ((_ is Union!9561) r!17423))))))

(declare-datatypes ((List!35426 0))(
  ( (Nil!35302) (Cons!35302 (h!40722 C!19308) (t!234491 List!35426)) )
))
(declare-fun s!11993 () List!35426)

(declare-fun matchRSpec!1698 (Regex!9561 List!35426) Bool)

(assert (=> b!3101225 (= lt!1055807 (matchRSpec!1698 r!17423 s!11993))))

(declare-fun matchR!4443 (Regex!9561 List!35426) Bool)

(assert (=> b!3101225 (= lt!1055807 (matchR!4443 r!17423 s!11993))))

(declare-datatypes ((Unit!49561 0))(
  ( (Unit!49562) )
))
(declare-fun lt!1055810 () Unit!49561)

(declare-fun mainMatchTheorem!1698 (Regex!9561 List!35426) Unit!49561)

(assert (=> b!3101225 (= lt!1055810 (mainMatchTheorem!1698 r!17423 s!11993))))

(declare-fun b!3101226 () Bool)

(declare-fun e!1937991 () Bool)

(declare-fun tp!974728 () Bool)

(assert (=> b!3101226 (= e!1937991 tp!974728)))

(declare-fun b!3101228 () Bool)

(declare-fun tp!974732 () Bool)

(declare-fun tp!974729 () Bool)

(assert (=> b!3101228 (= e!1937991 (and tp!974732 tp!974729))))

(declare-fun b!3101229 () Bool)

(assert (=> b!3101229 (= e!1937991 tp_is_empty!16685)))

(declare-fun b!3101227 () Bool)

(declare-fun e!1937993 () Bool)

(declare-fun validRegex!4294 (Regex!9561) Bool)

(assert (=> b!3101227 (= e!1937993 (validRegex!4294 (regTwo!19635 r!17423)))))

(declare-fun res!1270396 () Bool)

(assert (=> start!294252 (=> (not res!1270396) (not e!1937992))))

(assert (=> start!294252 (= res!1270396 (validRegex!4294 r!17423))))

(assert (=> start!294252 e!1937992))

(assert (=> start!294252 e!1937991))

(assert (=> start!294252 e!1937990))

(declare-fun b!3101230 () Bool)

(assert (=> b!3101230 (= e!1937989 e!1937993)))

(declare-fun res!1270394 () Bool)

(assert (=> b!3101230 (=> res!1270394 e!1937993)))

(declare-fun lt!1055808 () Regex!9561)

(declare-fun isEmptyLang!612 (Regex!9561) Bool)

(assert (=> b!3101230 (= res!1270394 (not (isEmptyLang!612 lt!1055808)))))

(declare-fun lt!1055809 () Regex!9561)

(declare-fun simplify!516 (Regex!9561) Regex!9561)

(assert (=> b!3101230 (= lt!1055809 (simplify!516 (regTwo!19635 r!17423)))))

(assert (=> b!3101230 (= lt!1055808 (simplify!516 (regOne!19635 r!17423)))))

(declare-fun b!3101231 () Bool)

(declare-fun tp!974731 () Bool)

(declare-fun tp!974730 () Bool)

(assert (=> b!3101231 (= e!1937991 (and tp!974731 tp!974730))))

(assert (= (and start!294252 res!1270396) b!3101225))

(assert (= (and b!3101225 (not res!1270395)) b!3101230))

(assert (= (and b!3101230 (not res!1270394)) b!3101227))

(assert (= (and start!294252 ((_ is ElementMatch!9561) r!17423)) b!3101229))

(assert (= (and start!294252 ((_ is Concat!14882) r!17423)) b!3101228))

(assert (= (and start!294252 ((_ is Star!9561) r!17423)) b!3101226))

(assert (= (and start!294252 ((_ is Union!9561) r!17423)) b!3101231))

(assert (= (and start!294252 ((_ is Cons!35302) s!11993)) b!3101224))

(declare-fun m!3401161 () Bool)

(assert (=> b!3101225 m!3401161))

(declare-fun m!3401163 () Bool)

(assert (=> b!3101225 m!3401163))

(declare-fun m!3401165 () Bool)

(assert (=> b!3101225 m!3401165))

(declare-fun m!3401167 () Bool)

(assert (=> b!3101227 m!3401167))

(declare-fun m!3401169 () Bool)

(assert (=> start!294252 m!3401169))

(declare-fun m!3401171 () Bool)

(assert (=> b!3101230 m!3401171))

(declare-fun m!3401173 () Bool)

(assert (=> b!3101230 m!3401173))

(declare-fun m!3401175 () Bool)

(assert (=> b!3101230 m!3401175))

(check-sat (not b!3101225) (not b!3101227) (not b!3101230) (not start!294252) (not b!3101231) (not b!3101228) (not b!3101224) tp_is_empty!16685 (not b!3101226))
(check-sat)
(get-model)

(declare-fun b!3101250 () Bool)

(declare-fun e!1938010 () Bool)

(declare-fun e!1938009 () Bool)

(assert (=> b!3101250 (= e!1938010 e!1938009)))

(declare-fun res!1270407 () Bool)

(assert (=> b!3101250 (=> (not res!1270407) (not e!1938009))))

(declare-fun call!218605 () Bool)

(assert (=> b!3101250 (= res!1270407 call!218605)))

(declare-fun d!861056 () Bool)

(declare-fun res!1270408 () Bool)

(declare-fun e!1938008 () Bool)

(assert (=> d!861056 (=> res!1270408 e!1938008)))

(assert (=> d!861056 (= res!1270408 ((_ is ElementMatch!9561) (regTwo!19635 r!17423)))))

(assert (=> d!861056 (= (validRegex!4294 (regTwo!19635 r!17423)) e!1938008)))

(declare-fun bm!218600 () Bool)

(declare-fun call!218607 () Bool)

(declare-fun call!218606 () Bool)

(assert (=> bm!218600 (= call!218607 call!218606)))

(declare-fun b!3101251 () Bool)

(declare-fun res!1270409 () Bool)

(assert (=> b!3101251 (=> res!1270409 e!1938010)))

(assert (=> b!3101251 (= res!1270409 (not ((_ is Concat!14882) (regTwo!19635 r!17423))))))

(declare-fun e!1938012 () Bool)

(assert (=> b!3101251 (= e!1938012 e!1938010)))

(declare-fun bm!218601 () Bool)

(declare-fun c!518190 () Bool)

(declare-fun c!518191 () Bool)

(assert (=> bm!218601 (= call!218606 (validRegex!4294 (ite c!518191 (reg!9890 (regTwo!19635 r!17423)) (ite c!518190 (regOne!19635 (regTwo!19635 r!17423)) (regTwo!19634 (regTwo!19635 r!17423))))))))

(declare-fun bm!218602 () Bool)

(assert (=> bm!218602 (= call!218605 (validRegex!4294 (ite c!518190 (regTwo!19635 (regTwo!19635 r!17423)) (regOne!19634 (regTwo!19635 r!17423)))))))

(declare-fun b!3101252 () Bool)

(declare-fun e!1938011 () Bool)

(assert (=> b!3101252 (= e!1938011 call!218606)))

(declare-fun b!3101253 () Bool)

(declare-fun e!1938014 () Bool)

(assert (=> b!3101253 (= e!1938008 e!1938014)))

(assert (=> b!3101253 (= c!518191 ((_ is Star!9561) (regTwo!19635 r!17423)))))

(declare-fun b!3101254 () Bool)

(assert (=> b!3101254 (= e!1938014 e!1938012)))

(assert (=> b!3101254 (= c!518190 ((_ is Union!9561) (regTwo!19635 r!17423)))))

(declare-fun b!3101255 () Bool)

(declare-fun res!1270410 () Bool)

(declare-fun e!1938013 () Bool)

(assert (=> b!3101255 (=> (not res!1270410) (not e!1938013))))

(assert (=> b!3101255 (= res!1270410 call!218607)))

(assert (=> b!3101255 (= e!1938012 e!1938013)))

(declare-fun b!3101256 () Bool)

(assert (=> b!3101256 (= e!1938013 call!218605)))

(declare-fun b!3101257 () Bool)

(assert (=> b!3101257 (= e!1938014 e!1938011)))

(declare-fun res!1270411 () Bool)

(declare-fun nullable!3207 (Regex!9561) Bool)

(assert (=> b!3101257 (= res!1270411 (not (nullable!3207 (reg!9890 (regTwo!19635 r!17423)))))))

(assert (=> b!3101257 (=> (not res!1270411) (not e!1938011))))

(declare-fun b!3101258 () Bool)

(assert (=> b!3101258 (= e!1938009 call!218607)))

(assert (= (and d!861056 (not res!1270408)) b!3101253))

(assert (= (and b!3101253 c!518191) b!3101257))

(assert (= (and b!3101253 (not c!518191)) b!3101254))

(assert (= (and b!3101257 res!1270411) b!3101252))

(assert (= (and b!3101254 c!518190) b!3101255))

(assert (= (and b!3101254 (not c!518190)) b!3101251))

(assert (= (and b!3101255 res!1270410) b!3101256))

(assert (= (and b!3101251 (not res!1270409)) b!3101250))

(assert (= (and b!3101250 res!1270407) b!3101258))

(assert (= (or b!3101255 b!3101258) bm!218600))

(assert (= (or b!3101256 b!3101250) bm!218602))

(assert (= (or b!3101252 bm!218600) bm!218601))

(declare-fun m!3401177 () Bool)

(assert (=> bm!218601 m!3401177))

(declare-fun m!3401179 () Bool)

(assert (=> bm!218602 m!3401179))

(declare-fun m!3401181 () Bool)

(assert (=> b!3101257 m!3401181))

(assert (=> b!3101227 d!861056))

(declare-fun d!861058 () Bool)

(assert (=> d!861058 (= (isEmptyLang!612 lt!1055808) ((_ is EmptyLang!9561) lt!1055808))))

(assert (=> b!3101230 d!861058))

(declare-fun b!3101427 () Bool)

(declare-fun e!1938121 () Bool)

(declare-fun call!218661 () Bool)

(assert (=> b!3101427 (= e!1938121 call!218661)))

(declare-fun b!3101428 () Bool)

(declare-fun e!1938116 () Regex!9561)

(assert (=> b!3101428 (= e!1938116 EmptyLang!9561)))

(declare-fun b!3101429 () Bool)

(declare-fun e!1938125 () Regex!9561)

(assert (=> b!3101429 (= e!1938125 EmptyExpr!9561)))

(declare-fun b!3101430 () Bool)

(declare-fun e!1938126 () Regex!9561)

(assert (=> b!3101430 (= e!1938126 e!1938116)))

(declare-fun lt!1055849 () Regex!9561)

(declare-fun call!218657 () Regex!9561)

(assert (=> b!3101430 (= lt!1055849 call!218657)))

(declare-fun lt!1055847 () Regex!9561)

(declare-fun call!218660 () Regex!9561)

(assert (=> b!3101430 (= lt!1055847 call!218660)))

(declare-fun res!1270441 () Bool)

(declare-fun call!218659 () Bool)

(assert (=> b!3101430 (= res!1270441 call!218659)))

(declare-fun e!1938114 () Bool)

(assert (=> b!3101430 (=> res!1270441 e!1938114)))

(declare-fun c!518271 () Bool)

(assert (=> b!3101430 (= c!518271 e!1938114)))

(declare-fun b!3101431 () Bool)

(declare-fun lt!1055852 () Regex!9561)

(assert (=> b!3101431 (= e!1938125 (Star!9561 lt!1055852))))

(declare-fun b!3101432 () Bool)

(declare-fun e!1938119 () Regex!9561)

(declare-fun lt!1055850 () Regex!9561)

(assert (=> b!3101432 (= e!1938119 lt!1055850)))

(declare-fun b!3101433 () Bool)

(declare-fun c!518263 () Bool)

(assert (=> b!3101433 (= c!518263 call!218659)))

(declare-fun e!1938120 () Regex!9561)

(assert (=> b!3101433 (= e!1938120 e!1938119)))

(declare-fun b!3101434 () Bool)

(declare-fun call!218662 () Bool)

(assert (=> b!3101434 (= e!1938114 call!218662)))

(declare-fun bm!218651 () Bool)

(declare-fun c!518272 () Bool)

(assert (=> bm!218651 (= call!218657 (simplify!516 (ite c!518272 (regTwo!19635 (regTwo!19635 r!17423)) (regOne!19634 (regTwo!19635 r!17423)))))))

(declare-fun b!3101435 () Bool)

(declare-fun lt!1055851 () Regex!9561)

(assert (=> b!3101435 (= e!1938120 lt!1055851)))

(declare-fun b!3101436 () Bool)

(declare-fun e!1938118 () Regex!9561)

(assert (=> b!3101436 (= e!1938118 (Concat!14882 lt!1055849 lt!1055847))))

(declare-fun bm!218652 () Bool)

(declare-fun call!218656 () Regex!9561)

(assert (=> bm!218652 (= call!218660 call!218656)))

(declare-fun b!3101437 () Bool)

(declare-fun e!1938122 () Regex!9561)

(declare-fun e!1938123 () Regex!9561)

(assert (=> b!3101437 (= e!1938122 e!1938123)))

(declare-fun c!518265 () Bool)

(assert (=> b!3101437 (= c!518265 ((_ is Star!9561) (regTwo!19635 r!17423)))))

(declare-fun b!3101438 () Bool)

(declare-fun e!1938113 () Regex!9561)

(assert (=> b!3101438 (= e!1938113 EmptyLang!9561)))

(declare-fun b!3101439 () Bool)

(declare-fun e!1938115 () Regex!9561)

(assert (=> b!3101439 (= e!1938113 e!1938115)))

(declare-fun c!518266 () Bool)

(assert (=> b!3101439 (= c!518266 ((_ is ElementMatch!9561) (regTwo!19635 r!17423)))))

(declare-fun b!3101440 () Bool)

(declare-fun c!518270 () Bool)

(assert (=> b!3101440 (= c!518270 ((_ is EmptyExpr!9561) (regTwo!19635 r!17423)))))

(assert (=> b!3101440 (= e!1938115 e!1938122)))

(declare-fun b!3101441 () Bool)

(declare-fun e!1938124 () Regex!9561)

(assert (=> b!3101441 (= e!1938124 lt!1055847)))

(declare-fun b!3101442 () Bool)

(assert (=> b!3101442 (= c!518272 ((_ is Union!9561) (regTwo!19635 r!17423)))))

(assert (=> b!3101442 (= e!1938123 e!1938126)))

(declare-fun b!3101443 () Bool)

(assert (=> b!3101443 (= e!1938119 (Union!9561 lt!1055850 lt!1055851))))

(declare-fun b!3101444 () Bool)

(assert (=> b!3101444 (= e!1938115 (regTwo!19635 r!17423))))

(declare-fun b!3101445 () Bool)

(declare-fun c!518267 () Bool)

(assert (=> b!3101445 (= c!518267 call!218661)))

(assert (=> b!3101445 (= e!1938116 e!1938124)))

(declare-fun d!861060 () Bool)

(declare-fun e!1938117 () Bool)

(assert (=> d!861060 e!1938117))

(declare-fun res!1270442 () Bool)

(assert (=> d!861060 (=> (not res!1270442) (not e!1938117))))

(declare-fun lt!1055848 () Regex!9561)

(assert (=> d!861060 (= res!1270442 (validRegex!4294 lt!1055848))))

(assert (=> d!861060 (= lt!1055848 e!1938113)))

(declare-fun c!518269 () Bool)

(assert (=> d!861060 (= c!518269 ((_ is EmptyLang!9561) (regTwo!19635 r!17423)))))

(assert (=> d!861060 (validRegex!4294 (regTwo!19635 r!17423))))

(assert (=> d!861060 (= (simplify!516 (regTwo!19635 r!17423)) lt!1055848)))

(declare-fun bm!218653 () Bool)

(declare-fun call!218658 () Bool)

(assert (=> bm!218653 (= call!218658 (isEmptyLang!612 (ite c!518265 lt!1055852 (ite c!518272 lt!1055851 lt!1055849))))))

(declare-fun bm!218654 () Bool)

(assert (=> bm!218654 (= call!218662 (isEmptyLang!612 (ite c!518272 lt!1055850 lt!1055847)))))

(declare-fun bm!218655 () Bool)

(assert (=> bm!218655 (= call!218656 (simplify!516 (ite c!518265 (reg!9890 (regTwo!19635 r!17423)) (ite c!518272 (regOne!19635 (regTwo!19635 r!17423)) (regTwo!19634 (regTwo!19635 r!17423))))))))

(declare-fun b!3101446 () Bool)

(declare-fun c!518264 () Bool)

(assert (=> b!3101446 (= c!518264 e!1938121)))

(declare-fun res!1270440 () Bool)

(assert (=> b!3101446 (=> res!1270440 e!1938121)))

(assert (=> b!3101446 (= res!1270440 call!218658)))

(assert (=> b!3101446 (= lt!1055852 call!218656)))

(assert (=> b!3101446 (= e!1938123 e!1938125)))

(declare-fun b!3101447 () Bool)

(assert (=> b!3101447 (= e!1938118 lt!1055849)))

(declare-fun bm!218656 () Bool)

(declare-fun isEmptyExpr!618 (Regex!9561) Bool)

(assert (=> bm!218656 (= call!218661 (isEmptyExpr!618 (ite c!518265 lt!1055852 lt!1055849)))))

(declare-fun b!3101448 () Bool)

(assert (=> b!3101448 (= e!1938124 e!1938118)))

(declare-fun c!518268 () Bool)

(assert (=> b!3101448 (= c!518268 (isEmptyExpr!618 lt!1055847))))

(declare-fun b!3101449 () Bool)

(assert (=> b!3101449 (= e!1938117 (= (nullable!3207 lt!1055848) (nullable!3207 (regTwo!19635 r!17423))))))

(declare-fun b!3101450 () Bool)

(assert (=> b!3101450 (= e!1938122 EmptyExpr!9561)))

(declare-fun bm!218657 () Bool)

(assert (=> bm!218657 (= call!218659 call!218658)))

(declare-fun b!3101451 () Bool)

(assert (=> b!3101451 (= e!1938126 e!1938120)))

(assert (=> b!3101451 (= lt!1055850 call!218660)))

(assert (=> b!3101451 (= lt!1055851 call!218657)))

(declare-fun c!518262 () Bool)

(assert (=> b!3101451 (= c!518262 call!218662)))

(assert (= (and d!861060 c!518269) b!3101438))

(assert (= (and d!861060 (not c!518269)) b!3101439))

(assert (= (and b!3101439 c!518266) b!3101444))

(assert (= (and b!3101439 (not c!518266)) b!3101440))

(assert (= (and b!3101440 c!518270) b!3101450))

(assert (= (and b!3101440 (not c!518270)) b!3101437))

(assert (= (and b!3101437 c!518265) b!3101446))

(assert (= (and b!3101437 (not c!518265)) b!3101442))

(assert (= (and b!3101446 (not res!1270440)) b!3101427))

(assert (= (and b!3101446 c!518264) b!3101429))

(assert (= (and b!3101446 (not c!518264)) b!3101431))

(assert (= (and b!3101442 c!518272) b!3101451))

(assert (= (and b!3101442 (not c!518272)) b!3101430))

(assert (= (and b!3101451 c!518262) b!3101435))

(assert (= (and b!3101451 (not c!518262)) b!3101433))

(assert (= (and b!3101433 c!518263) b!3101432))

(assert (= (and b!3101433 (not c!518263)) b!3101443))

(assert (= (and b!3101430 (not res!1270441)) b!3101434))

(assert (= (and b!3101430 c!518271) b!3101428))

(assert (= (and b!3101430 (not c!518271)) b!3101445))

(assert (= (and b!3101445 c!518267) b!3101441))

(assert (= (and b!3101445 (not c!518267)) b!3101448))

(assert (= (and b!3101448 c!518268) b!3101447))

(assert (= (and b!3101448 (not c!518268)) b!3101436))

(assert (= (or b!3101451 b!3101430) bm!218652))

(assert (= (or b!3101451 b!3101430) bm!218651))

(assert (= (or b!3101451 b!3101434) bm!218654))

(assert (= (or b!3101433 b!3101430) bm!218657))

(assert (= (or b!3101427 b!3101445) bm!218656))

(assert (= (or b!3101446 bm!218652) bm!218655))

(assert (= (or b!3101446 bm!218657) bm!218653))

(assert (= (and d!861060 res!1270442) b!3101449))

(declare-fun m!3401233 () Bool)

(assert (=> b!3101449 m!3401233))

(declare-fun m!3401235 () Bool)

(assert (=> b!3101449 m!3401235))

(declare-fun m!3401237 () Bool)

(assert (=> bm!218654 m!3401237))

(declare-fun m!3401239 () Bool)

(assert (=> d!861060 m!3401239))

(assert (=> d!861060 m!3401167))

(declare-fun m!3401241 () Bool)

(assert (=> bm!218653 m!3401241))

(declare-fun m!3401243 () Bool)

(assert (=> bm!218651 m!3401243))

(declare-fun m!3401245 () Bool)

(assert (=> b!3101448 m!3401245))

(declare-fun m!3401247 () Bool)

(assert (=> bm!218656 m!3401247))

(declare-fun m!3401249 () Bool)

(assert (=> bm!218655 m!3401249))

(assert (=> b!3101230 d!861060))

(declare-fun b!3101470 () Bool)

(declare-fun e!1938149 () Bool)

(declare-fun call!218674 () Bool)

(assert (=> b!3101470 (= e!1938149 call!218674)))

(declare-fun b!3101471 () Bool)

(declare-fun e!1938144 () Regex!9561)

(assert (=> b!3101471 (= e!1938144 EmptyLang!9561)))

(declare-fun b!3101472 () Bool)

(declare-fun e!1938153 () Regex!9561)

(assert (=> b!3101472 (= e!1938153 EmptyExpr!9561)))

(declare-fun b!3101473 () Bool)

(declare-fun e!1938154 () Regex!9561)

(assert (=> b!3101473 (= e!1938154 e!1938144)))

(declare-fun lt!1055855 () Regex!9561)

(declare-fun call!218670 () Regex!9561)

(assert (=> b!3101473 (= lt!1055855 call!218670)))

(declare-fun lt!1055853 () Regex!9561)

(declare-fun call!218673 () Regex!9561)

(assert (=> b!3101473 (= lt!1055853 call!218673)))

(declare-fun res!1270454 () Bool)

(declare-fun call!218672 () Bool)

(assert (=> b!3101473 (= res!1270454 call!218672)))

(declare-fun e!1938142 () Bool)

(assert (=> b!3101473 (=> res!1270454 e!1938142)))

(declare-fun c!518286 () Bool)

(assert (=> b!3101473 (= c!518286 e!1938142)))

(declare-fun b!3101474 () Bool)

(declare-fun lt!1055858 () Regex!9561)

(assert (=> b!3101474 (= e!1938153 (Star!9561 lt!1055858))))

(declare-fun b!3101475 () Bool)

(declare-fun e!1938147 () Regex!9561)

(declare-fun lt!1055856 () Regex!9561)

(assert (=> b!3101475 (= e!1938147 lt!1055856)))

(declare-fun b!3101476 () Bool)

(declare-fun c!518278 () Bool)

(assert (=> b!3101476 (= c!518278 call!218672)))

(declare-fun e!1938148 () Regex!9561)

(assert (=> b!3101476 (= e!1938148 e!1938147)))

(declare-fun b!3101477 () Bool)

(declare-fun call!218675 () Bool)

(assert (=> b!3101477 (= e!1938142 call!218675)))

(declare-fun bm!218664 () Bool)

(declare-fun c!518287 () Bool)

(assert (=> bm!218664 (= call!218670 (simplify!516 (ite c!518287 (regTwo!19635 (regOne!19635 r!17423)) (regOne!19634 (regOne!19635 r!17423)))))))

(declare-fun b!3101478 () Bool)

(declare-fun lt!1055857 () Regex!9561)

(assert (=> b!3101478 (= e!1938148 lt!1055857)))

(declare-fun b!3101479 () Bool)

(declare-fun e!1938146 () Regex!9561)

(assert (=> b!3101479 (= e!1938146 (Concat!14882 lt!1055855 lt!1055853))))

(declare-fun bm!218665 () Bool)

(declare-fun call!218669 () Regex!9561)

(assert (=> bm!218665 (= call!218673 call!218669)))

(declare-fun b!3101480 () Bool)

(declare-fun e!1938150 () Regex!9561)

(declare-fun e!1938151 () Regex!9561)

(assert (=> b!3101480 (= e!1938150 e!1938151)))

(declare-fun c!518280 () Bool)

(assert (=> b!3101480 (= c!518280 ((_ is Star!9561) (regOne!19635 r!17423)))))

(declare-fun b!3101481 () Bool)

(declare-fun e!1938141 () Regex!9561)

(assert (=> b!3101481 (= e!1938141 EmptyLang!9561)))

(declare-fun b!3101482 () Bool)

(declare-fun e!1938143 () Regex!9561)

(assert (=> b!3101482 (= e!1938141 e!1938143)))

(declare-fun c!518281 () Bool)

(assert (=> b!3101482 (= c!518281 ((_ is ElementMatch!9561) (regOne!19635 r!17423)))))

(declare-fun b!3101483 () Bool)

(declare-fun c!518285 () Bool)

(assert (=> b!3101483 (= c!518285 ((_ is EmptyExpr!9561) (regOne!19635 r!17423)))))

(assert (=> b!3101483 (= e!1938143 e!1938150)))

(declare-fun b!3101484 () Bool)

(declare-fun e!1938152 () Regex!9561)

(assert (=> b!3101484 (= e!1938152 lt!1055853)))

(declare-fun b!3101485 () Bool)

(assert (=> b!3101485 (= c!518287 ((_ is Union!9561) (regOne!19635 r!17423)))))

(assert (=> b!3101485 (= e!1938151 e!1938154)))

(declare-fun b!3101486 () Bool)

(assert (=> b!3101486 (= e!1938147 (Union!9561 lt!1055856 lt!1055857))))

(declare-fun b!3101487 () Bool)

(assert (=> b!3101487 (= e!1938143 (regOne!19635 r!17423))))

(declare-fun b!3101488 () Bool)

(declare-fun c!518282 () Bool)

(assert (=> b!3101488 (= c!518282 call!218674)))

(assert (=> b!3101488 (= e!1938144 e!1938152)))

(declare-fun d!861070 () Bool)

(declare-fun e!1938145 () Bool)

(assert (=> d!861070 e!1938145))

(declare-fun res!1270455 () Bool)

(assert (=> d!861070 (=> (not res!1270455) (not e!1938145))))

(declare-fun lt!1055854 () Regex!9561)

(assert (=> d!861070 (= res!1270455 (validRegex!4294 lt!1055854))))

(assert (=> d!861070 (= lt!1055854 e!1938141)))

(declare-fun c!518284 () Bool)

(assert (=> d!861070 (= c!518284 ((_ is EmptyLang!9561) (regOne!19635 r!17423)))))

(assert (=> d!861070 (validRegex!4294 (regOne!19635 r!17423))))

(assert (=> d!861070 (= (simplify!516 (regOne!19635 r!17423)) lt!1055854)))

(declare-fun call!218671 () Bool)

(declare-fun bm!218666 () Bool)

(assert (=> bm!218666 (= call!218671 (isEmptyLang!612 (ite c!518280 lt!1055858 (ite c!518287 lt!1055857 lt!1055855))))))

(declare-fun bm!218667 () Bool)

(assert (=> bm!218667 (= call!218675 (isEmptyLang!612 (ite c!518287 lt!1055856 lt!1055853)))))

(declare-fun bm!218668 () Bool)

(assert (=> bm!218668 (= call!218669 (simplify!516 (ite c!518280 (reg!9890 (regOne!19635 r!17423)) (ite c!518287 (regOne!19635 (regOne!19635 r!17423)) (regTwo!19634 (regOne!19635 r!17423))))))))

(declare-fun b!3101489 () Bool)

(declare-fun c!518279 () Bool)

(assert (=> b!3101489 (= c!518279 e!1938149)))

(declare-fun res!1270453 () Bool)

(assert (=> b!3101489 (=> res!1270453 e!1938149)))

(assert (=> b!3101489 (= res!1270453 call!218671)))

(assert (=> b!3101489 (= lt!1055858 call!218669)))

(assert (=> b!3101489 (= e!1938151 e!1938153)))

(declare-fun b!3101490 () Bool)

(assert (=> b!3101490 (= e!1938146 lt!1055855)))

(declare-fun bm!218669 () Bool)

(assert (=> bm!218669 (= call!218674 (isEmptyExpr!618 (ite c!518280 lt!1055858 lt!1055855)))))

(declare-fun b!3101491 () Bool)

(assert (=> b!3101491 (= e!1938152 e!1938146)))

(declare-fun c!518283 () Bool)

(assert (=> b!3101491 (= c!518283 (isEmptyExpr!618 lt!1055853))))

(declare-fun b!3101492 () Bool)

(assert (=> b!3101492 (= e!1938145 (= (nullable!3207 lt!1055854) (nullable!3207 (regOne!19635 r!17423))))))

(declare-fun b!3101493 () Bool)

(assert (=> b!3101493 (= e!1938150 EmptyExpr!9561)))

(declare-fun bm!218670 () Bool)

(assert (=> bm!218670 (= call!218672 call!218671)))

(declare-fun b!3101494 () Bool)

(assert (=> b!3101494 (= e!1938154 e!1938148)))

(assert (=> b!3101494 (= lt!1055856 call!218673)))

(assert (=> b!3101494 (= lt!1055857 call!218670)))

(declare-fun c!518277 () Bool)

(assert (=> b!3101494 (= c!518277 call!218675)))

(assert (= (and d!861070 c!518284) b!3101481))

(assert (= (and d!861070 (not c!518284)) b!3101482))

(assert (= (and b!3101482 c!518281) b!3101487))

(assert (= (and b!3101482 (not c!518281)) b!3101483))

(assert (= (and b!3101483 c!518285) b!3101493))

(assert (= (and b!3101483 (not c!518285)) b!3101480))

(assert (= (and b!3101480 c!518280) b!3101489))

(assert (= (and b!3101480 (not c!518280)) b!3101485))

(assert (= (and b!3101489 (not res!1270453)) b!3101470))

(assert (= (and b!3101489 c!518279) b!3101472))

(assert (= (and b!3101489 (not c!518279)) b!3101474))

(assert (= (and b!3101485 c!518287) b!3101494))

(assert (= (and b!3101485 (not c!518287)) b!3101473))

(assert (= (and b!3101494 c!518277) b!3101478))

(assert (= (and b!3101494 (not c!518277)) b!3101476))

(assert (= (and b!3101476 c!518278) b!3101475))

(assert (= (and b!3101476 (not c!518278)) b!3101486))

(assert (= (and b!3101473 (not res!1270454)) b!3101477))

(assert (= (and b!3101473 c!518286) b!3101471))

(assert (= (and b!3101473 (not c!518286)) b!3101488))

(assert (= (and b!3101488 c!518282) b!3101484))

(assert (= (and b!3101488 (not c!518282)) b!3101491))

(assert (= (and b!3101491 c!518283) b!3101490))

(assert (= (and b!3101491 (not c!518283)) b!3101479))

(assert (= (or b!3101494 b!3101473) bm!218665))

(assert (= (or b!3101494 b!3101473) bm!218664))

(assert (= (or b!3101494 b!3101477) bm!218667))

(assert (= (or b!3101476 b!3101473) bm!218670))

(assert (= (or b!3101470 b!3101488) bm!218669))

(assert (= (or b!3101489 bm!218665) bm!218668))

(assert (= (or b!3101489 bm!218670) bm!218666))

(assert (= (and d!861070 res!1270455) b!3101492))

(declare-fun m!3401251 () Bool)

(assert (=> b!3101492 m!3401251))

(declare-fun m!3401253 () Bool)

(assert (=> b!3101492 m!3401253))

(declare-fun m!3401255 () Bool)

(assert (=> bm!218667 m!3401255))

(declare-fun m!3401257 () Bool)

(assert (=> d!861070 m!3401257))

(declare-fun m!3401259 () Bool)

(assert (=> d!861070 m!3401259))

(declare-fun m!3401261 () Bool)

(assert (=> bm!218666 m!3401261))

(declare-fun m!3401263 () Bool)

(assert (=> bm!218664 m!3401263))

(declare-fun m!3401265 () Bool)

(assert (=> b!3101491 m!3401265))

(declare-fun m!3401267 () Bool)

(assert (=> bm!218669 m!3401267))

(declare-fun m!3401269 () Bool)

(assert (=> bm!218668 m!3401269))

(assert (=> b!3101230 d!861070))

(declare-fun b!3101661 () Bool)

(assert (=> b!3101661 true))

(assert (=> b!3101661 true))

(declare-fun bs!535692 () Bool)

(declare-fun b!3101657 () Bool)

(assert (= bs!535692 (and b!3101657 b!3101661)))

(declare-fun lambda!114892 () Int)

(declare-fun lambda!114891 () Int)

(assert (=> bs!535692 (not (= lambda!114892 lambda!114891))))

(assert (=> b!3101657 true))

(assert (=> b!3101657 true))

(declare-fun bm!218684 () Bool)

(declare-fun call!218689 () Bool)

(declare-fun isEmpty!19653 (List!35426) Bool)

(assert (=> bm!218684 (= call!218689 (isEmpty!19653 s!11993))))

(declare-fun b!3101651 () Bool)

(declare-fun e!1938235 () Bool)

(declare-fun e!1938231 () Bool)

(assert (=> b!3101651 (= e!1938235 e!1938231)))

(declare-fun res!1270517 () Bool)

(assert (=> b!3101651 (= res!1270517 (not ((_ is EmptyLang!9561) r!17423)))))

(assert (=> b!3101651 (=> (not res!1270517) (not e!1938231))))

(declare-fun b!3101652 () Bool)

(declare-fun e!1938232 () Bool)

(assert (=> b!3101652 (= e!1938232 (= s!11993 (Cons!35302 (c!518185 r!17423) Nil!35302)))))

(declare-fun c!518320 () Bool)

(declare-fun call!218690 () Bool)

(declare-fun bm!218685 () Bool)

(declare-fun Exists!1824 (Int) Bool)

(assert (=> bm!218685 (= call!218690 (Exists!1824 (ite c!518320 lambda!114891 lambda!114892)))))

(declare-fun b!3101653 () Bool)

(declare-fun c!518317 () Bool)

(assert (=> b!3101653 (= c!518317 ((_ is ElementMatch!9561) r!17423))))

(assert (=> b!3101653 (= e!1938231 e!1938232)))

(declare-fun d!861072 () Bool)

(declare-fun c!518319 () Bool)

(assert (=> d!861072 (= c!518319 ((_ is EmptyExpr!9561) r!17423))))

(assert (=> d!861072 (= (matchRSpec!1698 r!17423 s!11993) e!1938235)))

(declare-fun b!3101654 () Bool)

(declare-fun e!1938229 () Bool)

(declare-fun e!1938234 () Bool)

(assert (=> b!3101654 (= e!1938229 e!1938234)))

(assert (=> b!3101654 (= c!518320 ((_ is Star!9561) r!17423))))

(declare-fun b!3101655 () Bool)

(declare-fun e!1938230 () Bool)

(assert (=> b!3101655 (= e!1938230 (matchRSpec!1698 (regTwo!19635 r!17423) s!11993))))

(declare-fun b!3101656 () Bool)

(declare-fun res!1270516 () Bool)

(declare-fun e!1938233 () Bool)

(assert (=> b!3101656 (=> res!1270516 e!1938233)))

(assert (=> b!3101656 (= res!1270516 call!218689)))

(assert (=> b!3101656 (= e!1938234 e!1938233)))

(assert (=> b!3101657 (= e!1938234 call!218690)))

(declare-fun b!3101658 () Bool)

(assert (=> b!3101658 (= e!1938229 e!1938230)))

(declare-fun res!1270515 () Bool)

(assert (=> b!3101658 (= res!1270515 (matchRSpec!1698 (regOne!19635 r!17423) s!11993))))

(assert (=> b!3101658 (=> res!1270515 e!1938230)))

(declare-fun b!3101659 () Bool)

(declare-fun c!518318 () Bool)

(assert (=> b!3101659 (= c!518318 ((_ is Union!9561) r!17423))))

(assert (=> b!3101659 (= e!1938232 e!1938229)))

(declare-fun b!3101660 () Bool)

(assert (=> b!3101660 (= e!1938235 call!218689)))

(assert (=> b!3101661 (= e!1938233 call!218690)))

(assert (= (and d!861072 c!518319) b!3101660))

(assert (= (and d!861072 (not c!518319)) b!3101651))

(assert (= (and b!3101651 res!1270517) b!3101653))

(assert (= (and b!3101653 c!518317) b!3101652))

(assert (= (and b!3101653 (not c!518317)) b!3101659))

(assert (= (and b!3101659 c!518318) b!3101658))

(assert (= (and b!3101659 (not c!518318)) b!3101654))

(assert (= (and b!3101658 (not res!1270515)) b!3101655))

(assert (= (and b!3101654 c!518320) b!3101656))

(assert (= (and b!3101654 (not c!518320)) b!3101657))

(assert (= (and b!3101656 (not res!1270516)) b!3101661))

(assert (= (or b!3101661 b!3101657) bm!218685))

(assert (= (or b!3101660 b!3101656) bm!218684))

(declare-fun m!3401293 () Bool)

(assert (=> bm!218684 m!3401293))

(declare-fun m!3401295 () Bool)

(assert (=> bm!218685 m!3401295))

(declare-fun m!3401297 () Bool)

(assert (=> b!3101655 m!3401297))

(declare-fun m!3401299 () Bool)

(assert (=> b!3101658 m!3401299))

(assert (=> b!3101225 d!861072))

(declare-fun d!861078 () Bool)

(declare-fun e!1938256 () Bool)

(assert (=> d!861078 e!1938256))

(declare-fun c!518328 () Bool)

(assert (=> d!861078 (= c!518328 ((_ is EmptyExpr!9561) r!17423))))

(declare-fun lt!1055867 () Bool)

(declare-fun e!1938253 () Bool)

(assert (=> d!861078 (= lt!1055867 e!1938253)))

(declare-fun c!518327 () Bool)

(assert (=> d!861078 (= c!518327 (isEmpty!19653 s!11993))))

(assert (=> d!861078 (validRegex!4294 r!17423)))

(assert (=> d!861078 (= (matchR!4443 r!17423 s!11993) lt!1055867)))

(declare-fun b!3101694 () Bool)

(declare-fun e!1938254 () Bool)

(assert (=> b!3101694 (= e!1938254 (not lt!1055867))))

(declare-fun b!3101695 () Bool)

(assert (=> b!3101695 (= e!1938253 (nullable!3207 r!17423))))

(declare-fun b!3101696 () Bool)

(declare-fun res!1270535 () Bool)

(declare-fun e!1938255 () Bool)

(assert (=> b!3101696 (=> res!1270535 e!1938255)))

(assert (=> b!3101696 (= res!1270535 (not ((_ is ElementMatch!9561) r!17423)))))

(assert (=> b!3101696 (= e!1938254 e!1938255)))

(declare-fun b!3101697 () Bool)

(declare-fun e!1938252 () Bool)

(declare-fun head!6861 (List!35426) C!19308)

(assert (=> b!3101697 (= e!1938252 (= (head!6861 s!11993) (c!518185 r!17423)))))

(declare-fun b!3101698 () Bool)

(declare-fun res!1270536 () Bool)

(assert (=> b!3101698 (=> (not res!1270536) (not e!1938252))))

(declare-fun call!218693 () Bool)

(assert (=> b!3101698 (= res!1270536 (not call!218693))))

(declare-fun bm!218688 () Bool)

(assert (=> bm!218688 (= call!218693 (isEmpty!19653 s!11993))))

(declare-fun b!3101699 () Bool)

(declare-fun e!1938250 () Bool)

(assert (=> b!3101699 (= e!1938255 e!1938250)))

(declare-fun res!1270538 () Bool)

(assert (=> b!3101699 (=> (not res!1270538) (not e!1938250))))

(assert (=> b!3101699 (= res!1270538 (not lt!1055867))))

(declare-fun b!3101700 () Bool)

(assert (=> b!3101700 (= e!1938256 e!1938254)))

(declare-fun c!518329 () Bool)

(assert (=> b!3101700 (= c!518329 ((_ is EmptyLang!9561) r!17423))))

(declare-fun b!3101701 () Bool)

(declare-fun derivativeStep!2802 (Regex!9561 C!19308) Regex!9561)

(declare-fun tail!5087 (List!35426) List!35426)

(assert (=> b!3101701 (= e!1938253 (matchR!4443 (derivativeStep!2802 r!17423 (head!6861 s!11993)) (tail!5087 s!11993)))))

(declare-fun b!3101702 () Bool)

(assert (=> b!3101702 (= e!1938256 (= lt!1055867 call!218693))))

(declare-fun b!3101703 () Bool)

(declare-fun e!1938251 () Bool)

(assert (=> b!3101703 (= e!1938250 e!1938251)))

(declare-fun res!1270534 () Bool)

(assert (=> b!3101703 (=> res!1270534 e!1938251)))

(assert (=> b!3101703 (= res!1270534 call!218693)))

(declare-fun b!3101704 () Bool)

(assert (=> b!3101704 (= e!1938251 (not (= (head!6861 s!11993) (c!518185 r!17423))))))

(declare-fun b!3101705 () Bool)

(declare-fun res!1270537 () Bool)

(assert (=> b!3101705 (=> (not res!1270537) (not e!1938252))))

(assert (=> b!3101705 (= res!1270537 (isEmpty!19653 (tail!5087 s!11993)))))

(declare-fun b!3101706 () Bool)

(declare-fun res!1270541 () Bool)

(assert (=> b!3101706 (=> res!1270541 e!1938251)))

(assert (=> b!3101706 (= res!1270541 (not (isEmpty!19653 (tail!5087 s!11993))))))

(declare-fun b!3101707 () Bool)

(declare-fun res!1270540 () Bool)

(assert (=> b!3101707 (=> res!1270540 e!1938255)))

(assert (=> b!3101707 (= res!1270540 e!1938252)))

(declare-fun res!1270539 () Bool)

(assert (=> b!3101707 (=> (not res!1270539) (not e!1938252))))

(assert (=> b!3101707 (= res!1270539 lt!1055867)))

(assert (= (and d!861078 c!518327) b!3101695))

(assert (= (and d!861078 (not c!518327)) b!3101701))

(assert (= (and d!861078 c!518328) b!3101702))

(assert (= (and d!861078 (not c!518328)) b!3101700))

(assert (= (and b!3101700 c!518329) b!3101694))

(assert (= (and b!3101700 (not c!518329)) b!3101696))

(assert (= (and b!3101696 (not res!1270535)) b!3101707))

(assert (= (and b!3101707 res!1270539) b!3101698))

(assert (= (and b!3101698 res!1270536) b!3101705))

(assert (= (and b!3101705 res!1270537) b!3101697))

(assert (= (and b!3101707 (not res!1270540)) b!3101699))

(assert (= (and b!3101699 res!1270538) b!3101703))

(assert (= (and b!3101703 (not res!1270534)) b!3101706))

(assert (= (and b!3101706 (not res!1270541)) b!3101704))

(assert (= (or b!3101702 b!3101703 b!3101698) bm!218688))

(declare-fun m!3401301 () Bool)

(assert (=> b!3101695 m!3401301))

(declare-fun m!3401303 () Bool)

(assert (=> b!3101697 m!3401303))

(assert (=> b!3101704 m!3401303))

(assert (=> bm!218688 m!3401293))

(assert (=> d!861078 m!3401293))

(assert (=> d!861078 m!3401169))

(declare-fun m!3401305 () Bool)

(assert (=> b!3101706 m!3401305))

(assert (=> b!3101706 m!3401305))

(declare-fun m!3401307 () Bool)

(assert (=> b!3101706 m!3401307))

(assert (=> b!3101705 m!3401305))

(assert (=> b!3101705 m!3401305))

(assert (=> b!3101705 m!3401307))

(assert (=> b!3101701 m!3401303))

(assert (=> b!3101701 m!3401303))

(declare-fun m!3401309 () Bool)

(assert (=> b!3101701 m!3401309))

(assert (=> b!3101701 m!3401305))

(assert (=> b!3101701 m!3401309))

(assert (=> b!3101701 m!3401305))

(declare-fun m!3401311 () Bool)

(assert (=> b!3101701 m!3401311))

(assert (=> b!3101225 d!861078))

(declare-fun d!861080 () Bool)

(assert (=> d!861080 (= (matchR!4443 r!17423 s!11993) (matchRSpec!1698 r!17423 s!11993))))

(declare-fun lt!1055870 () Unit!49561)

(declare-fun choose!18351 (Regex!9561 List!35426) Unit!49561)

(assert (=> d!861080 (= lt!1055870 (choose!18351 r!17423 s!11993))))

(assert (=> d!861080 (validRegex!4294 r!17423)))

(assert (=> d!861080 (= (mainMatchTheorem!1698 r!17423 s!11993) lt!1055870)))

(declare-fun bs!535693 () Bool)

(assert (= bs!535693 d!861080))

(assert (=> bs!535693 m!3401163))

(assert (=> bs!535693 m!3401161))

(declare-fun m!3401313 () Bool)

(assert (=> bs!535693 m!3401313))

(assert (=> bs!535693 m!3401169))

(assert (=> b!3101225 d!861080))

(declare-fun b!3101708 () Bool)

(declare-fun e!1938259 () Bool)

(declare-fun e!1938258 () Bool)

(assert (=> b!3101708 (= e!1938259 e!1938258)))

(declare-fun res!1270542 () Bool)

(assert (=> b!3101708 (=> (not res!1270542) (not e!1938258))))

(declare-fun call!218694 () Bool)

(assert (=> b!3101708 (= res!1270542 call!218694)))

(declare-fun d!861082 () Bool)

(declare-fun res!1270543 () Bool)

(declare-fun e!1938257 () Bool)

(assert (=> d!861082 (=> res!1270543 e!1938257)))

(assert (=> d!861082 (= res!1270543 ((_ is ElementMatch!9561) r!17423))))

(assert (=> d!861082 (= (validRegex!4294 r!17423) e!1938257)))

(declare-fun bm!218689 () Bool)

(declare-fun call!218696 () Bool)

(declare-fun call!218695 () Bool)

(assert (=> bm!218689 (= call!218696 call!218695)))

(declare-fun b!3101709 () Bool)

(declare-fun res!1270544 () Bool)

(assert (=> b!3101709 (=> res!1270544 e!1938259)))

(assert (=> b!3101709 (= res!1270544 (not ((_ is Concat!14882) r!17423)))))

(declare-fun e!1938261 () Bool)

(assert (=> b!3101709 (= e!1938261 e!1938259)))

(declare-fun c!518330 () Bool)

(declare-fun bm!218690 () Bool)

(declare-fun c!518331 () Bool)

(assert (=> bm!218690 (= call!218695 (validRegex!4294 (ite c!518331 (reg!9890 r!17423) (ite c!518330 (regOne!19635 r!17423) (regTwo!19634 r!17423)))))))

(declare-fun bm!218691 () Bool)

(assert (=> bm!218691 (= call!218694 (validRegex!4294 (ite c!518330 (regTwo!19635 r!17423) (regOne!19634 r!17423))))))

(declare-fun b!3101710 () Bool)

(declare-fun e!1938260 () Bool)

(assert (=> b!3101710 (= e!1938260 call!218695)))

(declare-fun b!3101711 () Bool)

(declare-fun e!1938263 () Bool)

(assert (=> b!3101711 (= e!1938257 e!1938263)))

(assert (=> b!3101711 (= c!518331 ((_ is Star!9561) r!17423))))

(declare-fun b!3101712 () Bool)

(assert (=> b!3101712 (= e!1938263 e!1938261)))

(assert (=> b!3101712 (= c!518330 ((_ is Union!9561) r!17423))))

(declare-fun b!3101713 () Bool)

(declare-fun res!1270545 () Bool)

(declare-fun e!1938262 () Bool)

(assert (=> b!3101713 (=> (not res!1270545) (not e!1938262))))

(assert (=> b!3101713 (= res!1270545 call!218696)))

(assert (=> b!3101713 (= e!1938261 e!1938262)))

(declare-fun b!3101714 () Bool)

(assert (=> b!3101714 (= e!1938262 call!218694)))

(declare-fun b!3101715 () Bool)

(assert (=> b!3101715 (= e!1938263 e!1938260)))

(declare-fun res!1270546 () Bool)

(assert (=> b!3101715 (= res!1270546 (not (nullable!3207 (reg!9890 r!17423))))))

(assert (=> b!3101715 (=> (not res!1270546) (not e!1938260))))

(declare-fun b!3101716 () Bool)

(assert (=> b!3101716 (= e!1938258 call!218696)))

(assert (= (and d!861082 (not res!1270543)) b!3101711))

(assert (= (and b!3101711 c!518331) b!3101715))

(assert (= (and b!3101711 (not c!518331)) b!3101712))

(assert (= (and b!3101715 res!1270546) b!3101710))

(assert (= (and b!3101712 c!518330) b!3101713))

(assert (= (and b!3101712 (not c!518330)) b!3101709))

(assert (= (and b!3101713 res!1270545) b!3101714))

(assert (= (and b!3101709 (not res!1270544)) b!3101708))

(assert (= (and b!3101708 res!1270542) b!3101716))

(assert (= (or b!3101713 b!3101716) bm!218689))

(assert (= (or b!3101714 b!3101708) bm!218691))

(assert (= (or b!3101710 bm!218689) bm!218690))

(declare-fun m!3401315 () Bool)

(assert (=> bm!218690 m!3401315))

(declare-fun m!3401317 () Bool)

(assert (=> bm!218691 m!3401317))

(declare-fun m!3401319 () Bool)

(assert (=> b!3101715 m!3401319))

(assert (=> start!294252 d!861082))

(declare-fun b!3101730 () Bool)

(declare-fun e!1938266 () Bool)

(declare-fun tp!974785 () Bool)

(declare-fun tp!974783 () Bool)

(assert (=> b!3101730 (= e!1938266 (and tp!974785 tp!974783))))

(declare-fun b!3101728 () Bool)

(declare-fun tp!974782 () Bool)

(declare-fun tp!974786 () Bool)

(assert (=> b!3101728 (= e!1938266 (and tp!974782 tp!974786))))

(declare-fun b!3101727 () Bool)

(assert (=> b!3101727 (= e!1938266 tp_is_empty!16685)))

(assert (=> b!3101228 (= tp!974732 e!1938266)))

(declare-fun b!3101729 () Bool)

(declare-fun tp!974784 () Bool)

(assert (=> b!3101729 (= e!1938266 tp!974784)))

(assert (= (and b!3101228 ((_ is ElementMatch!9561) (regOne!19634 r!17423))) b!3101727))

(assert (= (and b!3101228 ((_ is Concat!14882) (regOne!19634 r!17423))) b!3101728))

(assert (= (and b!3101228 ((_ is Star!9561) (regOne!19634 r!17423))) b!3101729))

(assert (= (and b!3101228 ((_ is Union!9561) (regOne!19634 r!17423))) b!3101730))

(declare-fun b!3101734 () Bool)

(declare-fun e!1938267 () Bool)

(declare-fun tp!974790 () Bool)

(declare-fun tp!974788 () Bool)

(assert (=> b!3101734 (= e!1938267 (and tp!974790 tp!974788))))

(declare-fun b!3101732 () Bool)

(declare-fun tp!974787 () Bool)

(declare-fun tp!974791 () Bool)

(assert (=> b!3101732 (= e!1938267 (and tp!974787 tp!974791))))

(declare-fun b!3101731 () Bool)

(assert (=> b!3101731 (= e!1938267 tp_is_empty!16685)))

(assert (=> b!3101228 (= tp!974729 e!1938267)))

(declare-fun b!3101733 () Bool)

(declare-fun tp!974789 () Bool)

(assert (=> b!3101733 (= e!1938267 tp!974789)))

(assert (= (and b!3101228 ((_ is ElementMatch!9561) (regTwo!19634 r!17423))) b!3101731))

(assert (= (and b!3101228 ((_ is Concat!14882) (regTwo!19634 r!17423))) b!3101732))

(assert (= (and b!3101228 ((_ is Star!9561) (regTwo!19634 r!17423))) b!3101733))

(assert (= (and b!3101228 ((_ is Union!9561) (regTwo!19634 r!17423))) b!3101734))

(declare-fun b!3101738 () Bool)

(declare-fun e!1938268 () Bool)

(declare-fun tp!974795 () Bool)

(declare-fun tp!974793 () Bool)

(assert (=> b!3101738 (= e!1938268 (and tp!974795 tp!974793))))

(declare-fun b!3101736 () Bool)

(declare-fun tp!974792 () Bool)

(declare-fun tp!974796 () Bool)

(assert (=> b!3101736 (= e!1938268 (and tp!974792 tp!974796))))

(declare-fun b!3101735 () Bool)

(assert (=> b!3101735 (= e!1938268 tp_is_empty!16685)))

(assert (=> b!3101226 (= tp!974728 e!1938268)))

(declare-fun b!3101737 () Bool)

(declare-fun tp!974794 () Bool)

(assert (=> b!3101737 (= e!1938268 tp!974794)))

(assert (= (and b!3101226 ((_ is ElementMatch!9561) (reg!9890 r!17423))) b!3101735))

(assert (= (and b!3101226 ((_ is Concat!14882) (reg!9890 r!17423))) b!3101736))

(assert (= (and b!3101226 ((_ is Star!9561) (reg!9890 r!17423))) b!3101737))

(assert (= (and b!3101226 ((_ is Union!9561) (reg!9890 r!17423))) b!3101738))

(declare-fun b!3101742 () Bool)

(declare-fun e!1938269 () Bool)

(declare-fun tp!974800 () Bool)

(declare-fun tp!974798 () Bool)

(assert (=> b!3101742 (= e!1938269 (and tp!974800 tp!974798))))

(declare-fun b!3101740 () Bool)

(declare-fun tp!974797 () Bool)

(declare-fun tp!974801 () Bool)

(assert (=> b!3101740 (= e!1938269 (and tp!974797 tp!974801))))

(declare-fun b!3101739 () Bool)

(assert (=> b!3101739 (= e!1938269 tp_is_empty!16685)))

(assert (=> b!3101231 (= tp!974731 e!1938269)))

(declare-fun b!3101741 () Bool)

(declare-fun tp!974799 () Bool)

(assert (=> b!3101741 (= e!1938269 tp!974799)))

(assert (= (and b!3101231 ((_ is ElementMatch!9561) (regOne!19635 r!17423))) b!3101739))

(assert (= (and b!3101231 ((_ is Concat!14882) (regOne!19635 r!17423))) b!3101740))

(assert (= (and b!3101231 ((_ is Star!9561) (regOne!19635 r!17423))) b!3101741))

(assert (= (and b!3101231 ((_ is Union!9561) (regOne!19635 r!17423))) b!3101742))

(declare-fun b!3101746 () Bool)

(declare-fun e!1938270 () Bool)

(declare-fun tp!974805 () Bool)

(declare-fun tp!974803 () Bool)

(assert (=> b!3101746 (= e!1938270 (and tp!974805 tp!974803))))

(declare-fun b!3101744 () Bool)

(declare-fun tp!974802 () Bool)

(declare-fun tp!974806 () Bool)

(assert (=> b!3101744 (= e!1938270 (and tp!974802 tp!974806))))

(declare-fun b!3101743 () Bool)

(assert (=> b!3101743 (= e!1938270 tp_is_empty!16685)))

(assert (=> b!3101231 (= tp!974730 e!1938270)))

(declare-fun b!3101745 () Bool)

(declare-fun tp!974804 () Bool)

(assert (=> b!3101745 (= e!1938270 tp!974804)))

(assert (= (and b!3101231 ((_ is ElementMatch!9561) (regTwo!19635 r!17423))) b!3101743))

(assert (= (and b!3101231 ((_ is Concat!14882) (regTwo!19635 r!17423))) b!3101744))

(assert (= (and b!3101231 ((_ is Star!9561) (regTwo!19635 r!17423))) b!3101745))

(assert (= (and b!3101231 ((_ is Union!9561) (regTwo!19635 r!17423))) b!3101746))

(declare-fun b!3101751 () Bool)

(declare-fun e!1938273 () Bool)

(declare-fun tp!974809 () Bool)

(assert (=> b!3101751 (= e!1938273 (and tp_is_empty!16685 tp!974809))))

(assert (=> b!3101224 (= tp!974733 e!1938273)))

(assert (= (and b!3101224 ((_ is Cons!35302) (t!234491 s!11993))) b!3101751))

(check-sat (not b!3101449) (not b!3101715) (not b!3101257) (not bm!218655) (not bm!218602) (not b!3101736) (not b!3101655) (not bm!218656) (not b!3101705) (not d!861070) (not bm!218690) (not bm!218651) (not d!861060) (not b!3101701) (not b!3101741) (not bm!218601) (not bm!218666) (not bm!218684) (not bm!218685) (not b!3101697) tp_is_empty!16685 (not b!3101742) (not b!3101730) (not b!3101492) (not b!3101729) (not bm!218667) (not b!3101746) (not d!861080) (not b!3101491) (not b!3101745) (not b!3101733) (not bm!218669) (not b!3101740) (not d!861078) (not bm!218653) (not b!3101448) (not b!3101732) (not b!3101737) (not bm!218688) (not b!3101695) (not b!3101751) (not b!3101738) (not b!3101658) (not b!3101734) (not b!3101728) (not bm!218668) (not b!3101704) (not bm!218691) (not bm!218654) (not bm!218664) (not b!3101706) (not b!3101744))
(check-sat)
