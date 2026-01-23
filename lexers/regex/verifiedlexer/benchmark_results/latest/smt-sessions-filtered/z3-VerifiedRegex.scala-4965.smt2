; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252312 () Bool)

(assert start!252312)

(declare-fun b!2598568 () Bool)

(declare-fun res!1094184 () Bool)

(declare-fun e!1640184 () Bool)

(assert (=> b!2598568 (=> (not res!1094184) (not e!1640184))))

(declare-datatypes ((B!2281 0))(
  ( (B!2282 (val!9608 Int)) )
))
(declare-datatypes ((List!30041 0))(
  ( (Nil!29941) (Cons!29941 (h!35361 B!2281) (t!213054 List!30041)) )
))
(declare-fun l!3796 () List!30041)

(declare-fun noDuplicate!489 (List!30041) Bool)

(assert (=> b!2598568 (= res!1094184 (noDuplicate!489 (t!213054 l!3796)))))

(declare-fun res!1094181 () Bool)

(assert (=> start!252312 (=> (not res!1094181) (not e!1640184))))

(assert (=> start!252312 (= res!1094181 (noDuplicate!489 l!3796))))

(assert (=> start!252312 e!1640184))

(declare-fun e!1640185 () Bool)

(assert (=> start!252312 e!1640185))

(declare-fun tp_is_empty!13561 () Bool)

(assert (=> start!252312 tp_is_empty!13561))

(declare-fun b!2598569 () Bool)

(declare-fun tp!823522 () Bool)

(assert (=> b!2598569 (= e!1640185 (and tp_is_empty!13561 tp!823522))))

(declare-fun b!2598570 () Bool)

(declare-fun res!1094182 () Bool)

(assert (=> b!2598570 (=> (not res!1094182) (not e!1640184))))

(declare-fun e!9468 () B!2281)

(declare-fun contains!5489 (List!30041 B!2281) Bool)

(assert (=> b!2598570 (= res!1094182 (contains!5489 (t!213054 l!3796) e!9468))))

(declare-fun b!2598571 () Bool)

(declare-fun res!1094183 () Bool)

(assert (=> b!2598571 (=> (not res!1094183) (not e!1640184))))

(get-info :version)

(assert (=> b!2598571 (= res!1094183 (and ((_ is Cons!29941) l!3796) (not (= (h!35361 l!3796) e!9468))))))

(declare-fun b!2598572 () Bool)

(declare-fun size!23232 (List!30041) Int)

(declare-fun -!194 (List!30041 B!2281) List!30041)

(assert (=> b!2598572 (= e!1640184 (not (= (size!23232 (-!194 l!3796 e!9468)) (- (size!23232 l!3796) 1))))))

(assert (=> b!2598572 (= (size!23232 (-!194 (t!213054 l!3796) e!9468)) (- (size!23232 (t!213054 l!3796)) 1))))

(declare-datatypes ((Unit!43991 0))(
  ( (Unit!43992) )
))
(declare-fun lt!914965 () Unit!43991)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!48 (List!30041 B!2281) Unit!43991)

(assert (=> b!2598572 (= lt!914965 (lemmaRemoveElmtNoDuplicateRemoveOne!48 (t!213054 l!3796) e!9468))))

(declare-fun b!2598573 () Bool)

(declare-fun res!1094185 () Bool)

(assert (=> b!2598573 (=> (not res!1094185) (not e!1640184))))

(assert (=> b!2598573 (= res!1094185 (contains!5489 l!3796 e!9468))))

(assert (= (and start!252312 res!1094181) b!2598573))

(assert (= (and b!2598573 res!1094185) b!2598571))

(assert (= (and b!2598571 res!1094183) b!2598568))

(assert (= (and b!2598568 res!1094184) b!2598570))

(assert (= (and b!2598570 res!1094182) b!2598572))

(assert (= (and start!252312 ((_ is Cons!29941) l!3796)) b!2598569))

(declare-fun m!2934599 () Bool)

(assert (=> b!2598570 m!2934599))

(declare-fun m!2934601 () Bool)

(assert (=> b!2598568 m!2934601))

(declare-fun m!2934603 () Bool)

(assert (=> b!2598572 m!2934603))

(declare-fun m!2934605 () Bool)

(assert (=> b!2598572 m!2934605))

(declare-fun m!2934607 () Bool)

(assert (=> b!2598572 m!2934607))

(assert (=> b!2598572 m!2934607))

(declare-fun m!2934609 () Bool)

(assert (=> b!2598572 m!2934609))

(declare-fun m!2934611 () Bool)

(assert (=> b!2598572 m!2934611))

(declare-fun m!2934613 () Bool)

(assert (=> b!2598572 m!2934613))

(assert (=> b!2598572 m!2934611))

(declare-fun m!2934615 () Bool)

(assert (=> b!2598572 m!2934615))

(declare-fun m!2934617 () Bool)

(assert (=> start!252312 m!2934617))

(declare-fun m!2934619 () Bool)

(assert (=> b!2598573 m!2934619))

(check-sat (not b!2598573) (not b!2598568) (not b!2598572) tp_is_empty!13561 (not start!252312) (not b!2598569) (not b!2598570))
(check-sat)
(get-model)

(declare-fun d!736310 () Bool)

(declare-fun res!1094190 () Bool)

(declare-fun e!1640190 () Bool)

(assert (=> d!736310 (=> res!1094190 e!1640190)))

(assert (=> d!736310 (= res!1094190 ((_ is Nil!29941) l!3796))))

(assert (=> d!736310 (= (noDuplicate!489 l!3796) e!1640190)))

(declare-fun b!2598578 () Bool)

(declare-fun e!1640191 () Bool)

(assert (=> b!2598578 (= e!1640190 e!1640191)))

(declare-fun res!1094191 () Bool)

(assert (=> b!2598578 (=> (not res!1094191) (not e!1640191))))

(assert (=> b!2598578 (= res!1094191 (not (contains!5489 (t!213054 l!3796) (h!35361 l!3796))))))

(declare-fun b!2598579 () Bool)

(assert (=> b!2598579 (= e!1640191 (noDuplicate!489 (t!213054 l!3796)))))

(assert (= (and d!736310 (not res!1094190)) b!2598578))

(assert (= (and b!2598578 res!1094191) b!2598579))

(declare-fun m!2934621 () Bool)

(assert (=> b!2598578 m!2934621))

(assert (=> b!2598579 m!2934601))

(assert (=> start!252312 d!736310))

(declare-fun d!736314 () Bool)

(declare-fun res!1094192 () Bool)

(declare-fun e!1640192 () Bool)

(assert (=> d!736314 (=> res!1094192 e!1640192)))

(assert (=> d!736314 (= res!1094192 ((_ is Nil!29941) (t!213054 l!3796)))))

(assert (=> d!736314 (= (noDuplicate!489 (t!213054 l!3796)) e!1640192)))

(declare-fun b!2598580 () Bool)

(declare-fun e!1640193 () Bool)

(assert (=> b!2598580 (= e!1640192 e!1640193)))

(declare-fun res!1094193 () Bool)

(assert (=> b!2598580 (=> (not res!1094193) (not e!1640193))))

(assert (=> b!2598580 (= res!1094193 (not (contains!5489 (t!213054 (t!213054 l!3796)) (h!35361 (t!213054 l!3796)))))))

(declare-fun b!2598581 () Bool)

(assert (=> b!2598581 (= e!1640193 (noDuplicate!489 (t!213054 (t!213054 l!3796))))))

(assert (= (and d!736314 (not res!1094192)) b!2598580))

(assert (= (and b!2598580 res!1094193) b!2598581))

(declare-fun m!2934623 () Bool)

(assert (=> b!2598580 m!2934623))

(declare-fun m!2934625 () Bool)

(assert (=> b!2598581 m!2934625))

(assert (=> b!2598568 d!736314))

(declare-fun d!736316 () Bool)

(declare-fun lt!914968 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4224 (List!30041) (InoxSet B!2281))

(assert (=> d!736316 (= lt!914968 (select (content!4224 l!3796) e!9468))))

(declare-fun e!1640207 () Bool)

(assert (=> d!736316 (= lt!914968 e!1640207)))

(declare-fun res!1094206 () Bool)

(assert (=> d!736316 (=> (not res!1094206) (not e!1640207))))

(assert (=> d!736316 (= res!1094206 ((_ is Cons!29941) l!3796))))

(assert (=> d!736316 (= (contains!5489 l!3796 e!9468) lt!914968)))

(declare-fun b!2598594 () Bool)

(declare-fun e!1640206 () Bool)

(assert (=> b!2598594 (= e!1640207 e!1640206)))

(declare-fun res!1094207 () Bool)

(assert (=> b!2598594 (=> res!1094207 e!1640206)))

(assert (=> b!2598594 (= res!1094207 (= (h!35361 l!3796) e!9468))))

(declare-fun b!2598595 () Bool)

(assert (=> b!2598595 (= e!1640206 (contains!5489 (t!213054 l!3796) e!9468))))

(assert (= (and d!736316 res!1094206) b!2598594))

(assert (= (and b!2598594 (not res!1094207)) b!2598595))

(declare-fun m!2934633 () Bool)

(assert (=> d!736316 m!2934633))

(declare-fun m!2934635 () Bool)

(assert (=> d!736316 m!2934635))

(assert (=> b!2598595 m!2934599))

(assert (=> b!2598573 d!736316))

(declare-fun b!2598621 () Bool)

(declare-fun e!1640225 () List!30041)

(declare-fun call!167378 () List!30041)

(assert (=> b!2598621 (= e!1640225 (Cons!29941 (h!35361 (t!213054 l!3796)) call!167378))))

(declare-fun b!2598622 () Bool)

(declare-fun e!1640227 () List!30041)

(assert (=> b!2598622 (= e!1640227 Nil!29941)))

(declare-fun bm!167373 () Bool)

(assert (=> bm!167373 (= call!167378 (-!194 (t!213054 (t!213054 l!3796)) e!9468))))

(declare-fun b!2598623 () Bool)

(assert (=> b!2598623 (= e!1640225 call!167378)))

(declare-fun d!736322 () Bool)

(declare-fun e!1640226 () Bool)

(assert (=> d!736322 e!1640226))

(declare-fun res!1094213 () Bool)

(assert (=> d!736322 (=> (not res!1094213) (not e!1640226))))

(declare-fun lt!914974 () List!30041)

(assert (=> d!736322 (= res!1094213 (<= (size!23232 lt!914974) (size!23232 (t!213054 l!3796))))))

(assert (=> d!736322 (= lt!914974 e!1640227)))

(declare-fun c!418524 () Bool)

(assert (=> d!736322 (= c!418524 ((_ is Cons!29941) (t!213054 l!3796)))))

(assert (=> d!736322 (= (-!194 (t!213054 l!3796) e!9468) lt!914974)))

(declare-fun b!2598624 () Bool)

(assert (=> b!2598624 (= e!1640227 e!1640225)))

(declare-fun c!418523 () Bool)

(assert (=> b!2598624 (= c!418523 (= e!9468 (h!35361 (t!213054 l!3796))))))

(declare-fun b!2598625 () Bool)

(assert (=> b!2598625 (= e!1640226 (= (content!4224 lt!914974) ((_ map and) (content!4224 (t!213054 l!3796)) ((_ map not) (store ((as const (Array B!2281 Bool)) false) e!9468 true)))))))

(assert (= (and d!736322 c!418524) b!2598624))

(assert (= (and d!736322 (not c!418524)) b!2598622))

(assert (= (and b!2598624 c!418523) b!2598623))

(assert (= (and b!2598624 (not c!418523)) b!2598621))

(assert (= (or b!2598623 b!2598621) bm!167373))

(assert (= (and d!736322 res!1094213) b!2598625))

(declare-fun m!2934647 () Bool)

(assert (=> bm!167373 m!2934647))

(declare-fun m!2934649 () Bool)

(assert (=> d!736322 m!2934649))

(assert (=> d!736322 m!2934615))

(declare-fun m!2934651 () Bool)

(assert (=> b!2598625 m!2934651))

(declare-fun m!2934653 () Bool)

(assert (=> b!2598625 m!2934653))

(declare-fun m!2934655 () Bool)

(assert (=> b!2598625 m!2934655))

(assert (=> b!2598572 d!736322))

(declare-fun d!736326 () Bool)

(declare-fun lt!914981 () Int)

(assert (=> d!736326 (>= lt!914981 0)))

(declare-fun e!1640234 () Int)

(assert (=> d!736326 (= lt!914981 e!1640234)))

(declare-fun c!418531 () Bool)

(assert (=> d!736326 (= c!418531 ((_ is Nil!29941) l!3796))))

(assert (=> d!736326 (= (size!23232 l!3796) lt!914981)))

(declare-fun b!2598638 () Bool)

(assert (=> b!2598638 (= e!1640234 0)))

(declare-fun b!2598639 () Bool)

(assert (=> b!2598639 (= e!1640234 (+ 1 (size!23232 (t!213054 l!3796))))))

(assert (= (and d!736326 c!418531) b!2598638))

(assert (= (and d!736326 (not c!418531)) b!2598639))

(assert (=> b!2598639 m!2934615))

(assert (=> b!2598572 d!736326))

(declare-fun d!736332 () Bool)

(declare-fun lt!914982 () Int)

(assert (=> d!736332 (>= lt!914982 0)))

(declare-fun e!1640235 () Int)

(assert (=> d!736332 (= lt!914982 e!1640235)))

(declare-fun c!418532 () Bool)

(assert (=> d!736332 (= c!418532 ((_ is Nil!29941) (t!213054 l!3796)))))

(assert (=> d!736332 (= (size!23232 (t!213054 l!3796)) lt!914982)))

(declare-fun b!2598640 () Bool)

(assert (=> b!2598640 (= e!1640235 0)))

(declare-fun b!2598641 () Bool)

(assert (=> b!2598641 (= e!1640235 (+ 1 (size!23232 (t!213054 (t!213054 l!3796)))))))

(assert (= (and d!736332 c!418532) b!2598640))

(assert (= (and d!736332 (not c!418532)) b!2598641))

(declare-fun m!2934659 () Bool)

(assert (=> b!2598641 m!2934659))

(assert (=> b!2598572 d!736332))

(declare-fun d!736334 () Bool)

(assert (=> d!736334 (= (size!23232 (-!194 (t!213054 l!3796) e!9468)) (- (size!23232 (t!213054 l!3796)) 1))))

(declare-fun lt!914989 () Unit!43991)

(declare-fun choose!15449 (List!30041 B!2281) Unit!43991)

(assert (=> d!736334 (= lt!914989 (choose!15449 (t!213054 l!3796) e!9468))))

(assert (=> d!736334 (noDuplicate!489 (t!213054 l!3796))))

(assert (=> d!736334 (= (lemmaRemoveElmtNoDuplicateRemoveOne!48 (t!213054 l!3796) e!9468) lt!914989)))

(declare-fun bs!473094 () Bool)

(assert (= bs!473094 d!736334))

(declare-fun m!2934665 () Bool)

(assert (=> bs!473094 m!2934665))

(assert (=> bs!473094 m!2934611))

(assert (=> bs!473094 m!2934613))

(assert (=> bs!473094 m!2934615))

(assert (=> bs!473094 m!2934601))

(assert (=> bs!473094 m!2934611))

(assert (=> b!2598572 d!736334))

(declare-fun d!736340 () Bool)

(declare-fun lt!914991 () Int)

(assert (=> d!736340 (>= lt!914991 0)))

(declare-fun e!1640240 () Int)

(assert (=> d!736340 (= lt!914991 e!1640240)))

(declare-fun c!418535 () Bool)

(assert (=> d!736340 (= c!418535 ((_ is Nil!29941) (-!194 l!3796 e!9468)))))

(assert (=> d!736340 (= (size!23232 (-!194 l!3796 e!9468)) lt!914991)))

(declare-fun b!2598646 () Bool)

(assert (=> b!2598646 (= e!1640240 0)))

(declare-fun b!2598647 () Bool)

(assert (=> b!2598647 (= e!1640240 (+ 1 (size!23232 (t!213054 (-!194 l!3796 e!9468)))))))

(assert (= (and d!736340 c!418535) b!2598646))

(assert (= (and d!736340 (not c!418535)) b!2598647))

(declare-fun m!2934669 () Bool)

(assert (=> b!2598647 m!2934669))

(assert (=> b!2598572 d!736340))

(declare-fun d!736344 () Bool)

(declare-fun lt!914993 () Int)

(assert (=> d!736344 (>= lt!914993 0)))

(declare-fun e!1640244 () Int)

(assert (=> d!736344 (= lt!914993 e!1640244)))

(declare-fun c!418538 () Bool)

(assert (=> d!736344 (= c!418538 ((_ is Nil!29941) (-!194 (t!213054 l!3796) e!9468)))))

(assert (=> d!736344 (= (size!23232 (-!194 (t!213054 l!3796) e!9468)) lt!914993)))

(declare-fun b!2598653 () Bool)

(assert (=> b!2598653 (= e!1640244 0)))

(declare-fun b!2598654 () Bool)

(assert (=> b!2598654 (= e!1640244 (+ 1 (size!23232 (t!213054 (-!194 (t!213054 l!3796) e!9468)))))))

(assert (= (and d!736344 c!418538) b!2598653))

(assert (= (and d!736344 (not c!418538)) b!2598654))

(declare-fun m!2934673 () Bool)

(assert (=> b!2598654 m!2934673))

(assert (=> b!2598572 d!736344))

(declare-fun b!2598655 () Bool)

(declare-fun e!1640245 () List!30041)

(declare-fun call!167380 () List!30041)

(assert (=> b!2598655 (= e!1640245 (Cons!29941 (h!35361 l!3796) call!167380))))

(declare-fun b!2598656 () Bool)

(declare-fun e!1640247 () List!30041)

(assert (=> b!2598656 (= e!1640247 Nil!29941)))

(declare-fun bm!167375 () Bool)

(assert (=> bm!167375 (= call!167380 (-!194 (t!213054 l!3796) e!9468))))

(declare-fun b!2598657 () Bool)

(assert (=> b!2598657 (= e!1640245 call!167380)))

(declare-fun d!736346 () Bool)

(declare-fun e!1640246 () Bool)

(assert (=> d!736346 e!1640246))

(declare-fun res!1094215 () Bool)

(assert (=> d!736346 (=> (not res!1094215) (not e!1640246))))

(declare-fun lt!914994 () List!30041)

(assert (=> d!736346 (= res!1094215 (<= (size!23232 lt!914994) (size!23232 l!3796)))))

(assert (=> d!736346 (= lt!914994 e!1640247)))

(declare-fun c!418540 () Bool)

(assert (=> d!736346 (= c!418540 ((_ is Cons!29941) l!3796))))

(assert (=> d!736346 (= (-!194 l!3796 e!9468) lt!914994)))

(declare-fun b!2598658 () Bool)

(assert (=> b!2598658 (= e!1640247 e!1640245)))

(declare-fun c!418539 () Bool)

(assert (=> b!2598658 (= c!418539 (= e!9468 (h!35361 l!3796)))))

(declare-fun b!2598659 () Bool)

(assert (=> b!2598659 (= e!1640246 (= (content!4224 lt!914994) ((_ map and) (content!4224 l!3796) ((_ map not) (store ((as const (Array B!2281 Bool)) false) e!9468 true)))))))

(assert (= (and d!736346 c!418540) b!2598658))

(assert (= (and d!736346 (not c!418540)) b!2598656))

(assert (= (and b!2598658 c!418539) b!2598657))

(assert (= (and b!2598658 (not c!418539)) b!2598655))

(assert (= (or b!2598657 b!2598655) bm!167375))

(assert (= (and d!736346 res!1094215) b!2598659))

(assert (=> bm!167375 m!2934611))

(declare-fun m!2934679 () Bool)

(assert (=> d!736346 m!2934679))

(assert (=> d!736346 m!2934605))

(declare-fun m!2934681 () Bool)

(assert (=> b!2598659 m!2934681))

(assert (=> b!2598659 m!2934633))

(assert (=> b!2598659 m!2934655))

(assert (=> b!2598572 d!736346))

(declare-fun d!736350 () Bool)

(declare-fun lt!914995 () Bool)

(assert (=> d!736350 (= lt!914995 (select (content!4224 (t!213054 l!3796)) e!9468))))

(declare-fun e!1640249 () Bool)

(assert (=> d!736350 (= lt!914995 e!1640249)))

(declare-fun res!1094216 () Bool)

(assert (=> d!736350 (=> (not res!1094216) (not e!1640249))))

(assert (=> d!736350 (= res!1094216 ((_ is Cons!29941) (t!213054 l!3796)))))

(assert (=> d!736350 (= (contains!5489 (t!213054 l!3796) e!9468) lt!914995)))

(declare-fun b!2598660 () Bool)

(declare-fun e!1640248 () Bool)

(assert (=> b!2598660 (= e!1640249 e!1640248)))

(declare-fun res!1094217 () Bool)

(assert (=> b!2598660 (=> res!1094217 e!1640248)))

(assert (=> b!2598660 (= res!1094217 (= (h!35361 (t!213054 l!3796)) e!9468))))

(declare-fun b!2598661 () Bool)

(assert (=> b!2598661 (= e!1640248 (contains!5489 (t!213054 (t!213054 l!3796)) e!9468))))

(assert (= (and d!736350 res!1094216) b!2598660))

(assert (= (and b!2598660 (not res!1094217)) b!2598661))

(assert (=> d!736350 m!2934653))

(declare-fun m!2934683 () Bool)

(assert (=> d!736350 m!2934683))

(declare-fun m!2934685 () Bool)

(assert (=> b!2598661 m!2934685))

(assert (=> b!2598570 d!736350))

(declare-fun b!2598666 () Bool)

(declare-fun e!1640252 () Bool)

(declare-fun tp!823525 () Bool)

(assert (=> b!2598666 (= e!1640252 (and tp_is_empty!13561 tp!823525))))

(assert (=> b!2598569 (= tp!823522 e!1640252)))

(assert (= (and b!2598569 ((_ is Cons!29941) (t!213054 l!3796))) b!2598666))

(check-sat (not b!2598580) (not b!2598578) (not b!2598666) (not b!2598654) (not b!2598581) (not bm!167373) (not b!2598595) (not d!736316) (not d!736322) (not b!2598659) (not d!736346) (not b!2598579) (not d!736350) (not b!2598641) (not b!2598647) (not b!2598625) (not bm!167375) (not d!736334) (not b!2598639) (not b!2598661) tp_is_empty!13561)
(check-sat)
