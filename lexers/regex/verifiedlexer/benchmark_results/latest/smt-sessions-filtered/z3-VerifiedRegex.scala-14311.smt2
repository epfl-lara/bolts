; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747498 () Bool)

(assert start!747498)

(declare-fun res!3141248 () Bool)

(declare-fun e!4671876 () Bool)

(assert (=> start!747498 (=> res!3141248 e!4671876)))

(declare-datatypes ((T!145524 0))(
  ( (T!145525 (val!32020 Int)) )
))
(declare-datatypes ((List!74532 0))(
  ( (Nil!74408) (Cons!74408 (h!80856 T!145524) (t!390013 List!74532)) )
))
(declare-datatypes ((IArray!31785 0))(
  ( (IArray!31786 (innerList!15950 List!74532)) )
))
(declare-datatypes ((Conc!15862 0))(
  ( (Node!15862 (left!56813 Conc!15862) (right!57143 Conc!15862) (csize!31954 Int) (cheight!16073 Int)) (Leaf!30174 (xs!19244 IArray!31785) (csize!31955 Int)) (Empty!15862) )
))
(declare-fun lt!2689393 () Conc!15862)

(declare-fun l!2289 () List!74532)

(declare-fun list!19347 (Conc!15862) List!74532)

(assert (=> start!747498 (= res!3141248 (not (= (list!19347 lt!2689393) l!2289)))))

(declare-fun rec!45 (List!74532 Conc!15862) Conc!15862)

(assert (=> start!747498 (= lt!2689393 (rec!45 l!2289 Empty!15862))))

(assert (=> start!747498 e!4671876))

(declare-fun e!4671875 () Bool)

(assert (=> start!747498 e!4671875))

(declare-fun b!7914483 () Bool)

(declare-fun isBalanced!4488 (Conc!15862) Bool)

(assert (=> b!7914483 (= e!4671876 (not (isBalanced!4488 lt!2689393)))))

(declare-fun b!7914484 () Bool)

(declare-fun tp_is_empty!53149 () Bool)

(declare-fun tp!2357170 () Bool)

(assert (=> b!7914484 (= e!4671875 (and tp_is_empty!53149 tp!2357170))))

(assert (= (and start!747498 (not res!3141248)) b!7914483))

(get-info :version)

(assert (= (and start!747498 ((_ is Cons!74408) l!2289)) b!7914484))

(declare-fun m!8288214 () Bool)

(assert (=> start!747498 m!8288214))

(declare-fun m!8288216 () Bool)

(assert (=> start!747498 m!8288216))

(declare-fun m!8288218 () Bool)

(assert (=> b!7914483 m!8288218))

(check-sat (not b!7914483) (not start!747498) (not b!7914484) tp_is_empty!53149)
(check-sat)
(get-model)

(declare-fun b!7914515 () Bool)

(declare-fun res!3141281 () Bool)

(declare-fun e!4671888 () Bool)

(assert (=> b!7914515 (=> (not res!3141281) (not e!4671888))))

(declare-fun isEmpty!42725 (Conc!15862) Bool)

(assert (=> b!7914515 (= res!3141281 (not (isEmpty!42725 (left!56813 lt!2689393))))))

(declare-fun b!7914516 () Bool)

(declare-fun res!3141284 () Bool)

(assert (=> b!7914516 (=> (not res!3141284) (not e!4671888))))

(declare-fun height!2182 (Conc!15862) Int)

(assert (=> b!7914516 (= res!3141284 (<= (- (height!2182 (left!56813 lt!2689393)) (height!2182 (right!57143 lt!2689393))) 1))))

(declare-fun b!7914517 () Bool)

(declare-fun res!3141280 () Bool)

(assert (=> b!7914517 (=> (not res!3141280) (not e!4671888))))

(assert (=> b!7914517 (= res!3141280 (isBalanced!4488 (right!57143 lt!2689393)))))

(declare-fun b!7914518 () Bool)

(declare-fun e!4671887 () Bool)

(assert (=> b!7914518 (= e!4671887 e!4671888)))

(declare-fun res!3141282 () Bool)

(assert (=> b!7914518 (=> (not res!3141282) (not e!4671888))))

(assert (=> b!7914518 (= res!3141282 (<= (- 1) (- (height!2182 (left!56813 lt!2689393)) (height!2182 (right!57143 lt!2689393)))))))

(declare-fun b!7914519 () Bool)

(assert (=> b!7914519 (= e!4671888 (not (isEmpty!42725 (right!57143 lt!2689393))))))

(declare-fun b!7914520 () Bool)

(declare-fun res!3141283 () Bool)

(assert (=> b!7914520 (=> (not res!3141283) (not e!4671888))))

(assert (=> b!7914520 (= res!3141283 (isBalanced!4488 (left!56813 lt!2689393)))))

(declare-fun d!2361308 () Bool)

(declare-fun res!3141279 () Bool)

(assert (=> d!2361308 (=> res!3141279 e!4671887)))

(assert (=> d!2361308 (= res!3141279 (not ((_ is Node!15862) lt!2689393)))))

(assert (=> d!2361308 (= (isBalanced!4488 lt!2689393) e!4671887)))

(assert (= (and d!2361308 (not res!3141279)) b!7914518))

(assert (= (and b!7914518 res!3141282) b!7914516))

(assert (= (and b!7914516 res!3141284) b!7914520))

(assert (= (and b!7914520 res!3141283) b!7914517))

(assert (= (and b!7914517 res!3141280) b!7914515))

(assert (= (and b!7914515 res!3141281) b!7914519))

(declare-fun m!8288232 () Bool)

(assert (=> b!7914515 m!8288232))

(declare-fun m!8288234 () Bool)

(assert (=> b!7914520 m!8288234))

(declare-fun m!8288236 () Bool)

(assert (=> b!7914518 m!8288236))

(declare-fun m!8288238 () Bool)

(assert (=> b!7914518 m!8288238))

(assert (=> b!7914516 m!8288236))

(assert (=> b!7914516 m!8288238))

(declare-fun m!8288240 () Bool)

(assert (=> b!7914519 m!8288240))

(declare-fun m!8288242 () Bool)

(assert (=> b!7914517 m!8288242))

(assert (=> b!7914483 d!2361308))

(declare-fun b!7914541 () Bool)

(declare-fun e!4671899 () List!74532)

(assert (=> b!7914541 (= e!4671899 Nil!74408)))

(declare-fun d!2361312 () Bool)

(declare-fun c!1452199 () Bool)

(assert (=> d!2361312 (= c!1452199 ((_ is Empty!15862) lt!2689393))))

(assert (=> d!2361312 (= (list!19347 lt!2689393) e!4671899)))

(declare-fun b!7914544 () Bool)

(declare-fun e!4671900 () List!74532)

(declare-fun ++!18226 (List!74532 List!74532) List!74532)

(assert (=> b!7914544 (= e!4671900 (++!18226 (list!19347 (left!56813 lt!2689393)) (list!19347 (right!57143 lt!2689393))))))

(declare-fun b!7914542 () Bool)

(assert (=> b!7914542 (= e!4671899 e!4671900)))

(declare-fun c!1452200 () Bool)

(assert (=> b!7914542 (= c!1452200 ((_ is Leaf!30174) lt!2689393))))

(declare-fun b!7914543 () Bool)

(declare-fun list!19349 (IArray!31785) List!74532)

(assert (=> b!7914543 (= e!4671900 (list!19349 (xs!19244 lt!2689393)))))

(assert (= (and d!2361312 c!1452199) b!7914541))

(assert (= (and d!2361312 (not c!1452199)) b!7914542))

(assert (= (and b!7914542 c!1452200) b!7914543))

(assert (= (and b!7914542 (not c!1452200)) b!7914544))

(declare-fun m!8288252 () Bool)

(assert (=> b!7914544 m!8288252))

(declare-fun m!8288254 () Bool)

(assert (=> b!7914544 m!8288254))

(assert (=> b!7914544 m!8288252))

(assert (=> b!7914544 m!8288254))

(declare-fun m!8288256 () Bool)

(assert (=> b!7914544 m!8288256))

(declare-fun m!8288258 () Bool)

(assert (=> b!7914543 m!8288258))

(assert (=> start!747498 d!2361312))

(declare-fun d!2361316 () Bool)

(declare-fun e!4671915 () Bool)

(assert (=> d!2361316 e!4671915))

(declare-fun res!3141290 () Bool)

(assert (=> d!2361316 (=> (not res!3141290) (not e!4671915))))

(declare-fun lt!2689422 () Conc!15862)

(assert (=> d!2361316 (= res!3141290 (= (list!19347 lt!2689422) (++!18226 (list!19347 Empty!15862) l!2289)))))

(declare-fun e!4671914 () Conc!15862)

(assert (=> d!2361316 (= lt!2689422 e!4671914)))

(declare-fun c!1452208 () Bool)

(assert (=> d!2361316 (= c!1452208 ((_ is Nil!74408) l!2289))))

(assert (=> d!2361316 (isBalanced!4488 Empty!15862)))

(assert (=> d!2361316 (= (rec!45 l!2289 Empty!15862) lt!2689422)))

(declare-fun b!7914565 () Bool)

(assert (=> b!7914565 (= e!4671914 Empty!15862)))

(declare-fun b!7914566 () Bool)

(declare-fun append!1100 (Conc!15862 T!145524) Conc!15862)

(assert (=> b!7914566 (= e!4671914 (rec!45 (t!390013 l!2289) (append!1100 Empty!15862 (h!80856 l!2289))))))

(declare-fun lt!2689421 () List!74532)

(assert (=> b!7914566 (= lt!2689421 (list!19347 Empty!15862))))

(declare-fun lt!2689423 () List!74532)

(assert (=> b!7914566 (= lt!2689423 (Cons!74408 (h!80856 l!2289) Nil!74408))))

(declare-datatypes ((Unit!169521 0))(
  ( (Unit!169522) )
))
(declare-fun lt!2689419 () Unit!169521)

(declare-fun lemmaConcatAssociativity!3126 (List!74532 List!74532 List!74532) Unit!169521)

(assert (=> b!7914566 (= lt!2689419 (lemmaConcatAssociativity!3126 lt!2689421 lt!2689423 (t!390013 l!2289)))))

(assert (=> b!7914566 (= (++!18226 (++!18226 lt!2689421 lt!2689423) (t!390013 l!2289)) (++!18226 lt!2689421 (++!18226 lt!2689423 (t!390013 l!2289))))))

(declare-fun lt!2689420 () Unit!169521)

(assert (=> b!7914566 (= lt!2689420 lt!2689419)))

(declare-fun b!7914567 () Bool)

(assert (=> b!7914567 (= e!4671915 (isBalanced!4488 lt!2689422))))

(assert (= (and d!2361316 c!1452208) b!7914565))

(assert (= (and d!2361316 (not c!1452208)) b!7914566))

(assert (= (and d!2361316 res!3141290) b!7914567))

(declare-fun m!8288284 () Bool)

(assert (=> d!2361316 m!8288284))

(declare-fun m!8288286 () Bool)

(assert (=> d!2361316 m!8288286))

(assert (=> d!2361316 m!8288286))

(declare-fun m!8288288 () Bool)

(assert (=> d!2361316 m!8288288))

(declare-fun m!8288290 () Bool)

(assert (=> d!2361316 m!8288290))

(declare-fun m!8288292 () Bool)

(assert (=> b!7914566 m!8288292))

(declare-fun m!8288294 () Bool)

(assert (=> b!7914566 m!8288294))

(assert (=> b!7914566 m!8288286))

(assert (=> b!7914566 m!8288294))

(declare-fun m!8288296 () Bool)

(assert (=> b!7914566 m!8288296))

(declare-fun m!8288298 () Bool)

(assert (=> b!7914566 m!8288298))

(declare-fun m!8288300 () Bool)

(assert (=> b!7914566 m!8288300))

(declare-fun m!8288302 () Bool)

(assert (=> b!7914566 m!8288302))

(assert (=> b!7914566 m!8288298))

(assert (=> b!7914566 m!8288292))

(declare-fun m!8288304 () Bool)

(assert (=> b!7914566 m!8288304))

(declare-fun m!8288306 () Bool)

(assert (=> b!7914567 m!8288306))

(assert (=> start!747498 d!2361316))

(declare-fun b!7914572 () Bool)

(declare-fun e!4671918 () Bool)

(declare-fun tp!2357176 () Bool)

(assert (=> b!7914572 (= e!4671918 (and tp_is_empty!53149 tp!2357176))))

(assert (=> b!7914484 (= tp!2357170 e!4671918)))

(assert (= (and b!7914484 ((_ is Cons!74408) (t!390013 l!2289))) b!7914572))

(check-sat (not b!7914566) (not b!7914519) (not d!2361316) (not b!7914516) tp_is_empty!53149 (not b!7914520) (not b!7914517) (not b!7914515) (not b!7914544) (not b!7914572) (not b!7914567) (not b!7914518) (not b!7914543))
(check-sat)
(get-model)

(declare-fun d!2361320 () Bool)

(declare-fun lt!2689426 () Bool)

(declare-fun isEmpty!42726 (List!74532) Bool)

(assert (=> d!2361320 (= lt!2689426 (isEmpty!42726 (list!19347 (left!56813 lt!2689393))))))

(declare-fun size!43186 (Conc!15862) Int)

(assert (=> d!2361320 (= lt!2689426 (= (size!43186 (left!56813 lt!2689393)) 0))))

(assert (=> d!2361320 (= (isEmpty!42725 (left!56813 lt!2689393)) lt!2689426)))

(declare-fun bs!1968427 () Bool)

(assert (= bs!1968427 d!2361320))

(assert (=> bs!1968427 m!8288252))

(assert (=> bs!1968427 m!8288252))

(declare-fun m!8288320 () Bool)

(assert (=> bs!1968427 m!8288320))

(declare-fun m!8288322 () Bool)

(assert (=> bs!1968427 m!8288322))

(assert (=> b!7914515 d!2361320))

(declare-fun b!7914579 () Bool)

(declare-fun res!3141299 () Bool)

(declare-fun e!4671922 () Bool)

(assert (=> b!7914579 (=> (not res!3141299) (not e!4671922))))

(assert (=> b!7914579 (= res!3141299 (not (isEmpty!42725 (left!56813 (left!56813 lt!2689393)))))))

(declare-fun b!7914580 () Bool)

(declare-fun res!3141302 () Bool)

(assert (=> b!7914580 (=> (not res!3141302) (not e!4671922))))

(assert (=> b!7914580 (= res!3141302 (<= (- (height!2182 (left!56813 (left!56813 lt!2689393))) (height!2182 (right!57143 (left!56813 lt!2689393)))) 1))))

(declare-fun b!7914581 () Bool)

(declare-fun res!3141298 () Bool)

(assert (=> b!7914581 (=> (not res!3141298) (not e!4671922))))

(assert (=> b!7914581 (= res!3141298 (isBalanced!4488 (right!57143 (left!56813 lt!2689393))))))

(declare-fun b!7914582 () Bool)

(declare-fun e!4671921 () Bool)

(assert (=> b!7914582 (= e!4671921 e!4671922)))

(declare-fun res!3141300 () Bool)

(assert (=> b!7914582 (=> (not res!3141300) (not e!4671922))))

(assert (=> b!7914582 (= res!3141300 (<= (- 1) (- (height!2182 (left!56813 (left!56813 lt!2689393))) (height!2182 (right!57143 (left!56813 lt!2689393))))))))

(declare-fun b!7914583 () Bool)

(assert (=> b!7914583 (= e!4671922 (not (isEmpty!42725 (right!57143 (left!56813 lt!2689393)))))))

(declare-fun b!7914584 () Bool)

(declare-fun res!3141301 () Bool)

(assert (=> b!7914584 (=> (not res!3141301) (not e!4671922))))

(assert (=> b!7914584 (= res!3141301 (isBalanced!4488 (left!56813 (left!56813 lt!2689393))))))

(declare-fun d!2361328 () Bool)

(declare-fun res!3141297 () Bool)

(assert (=> d!2361328 (=> res!3141297 e!4671921)))

(assert (=> d!2361328 (= res!3141297 (not ((_ is Node!15862) (left!56813 lt!2689393))))))

(assert (=> d!2361328 (= (isBalanced!4488 (left!56813 lt!2689393)) e!4671921)))

(assert (= (and d!2361328 (not res!3141297)) b!7914582))

(assert (= (and b!7914582 res!3141300) b!7914580))

(assert (= (and b!7914580 res!3141302) b!7914584))

(assert (= (and b!7914584 res!3141301) b!7914581))

(assert (= (and b!7914581 res!3141298) b!7914579))

(assert (= (and b!7914579 res!3141299) b!7914583))

(declare-fun m!8288324 () Bool)

(assert (=> b!7914579 m!8288324))

(declare-fun m!8288326 () Bool)

(assert (=> b!7914584 m!8288326))

(declare-fun m!8288328 () Bool)

(assert (=> b!7914582 m!8288328))

(declare-fun m!8288330 () Bool)

(assert (=> b!7914582 m!8288330))

(assert (=> b!7914580 m!8288328))

(assert (=> b!7914580 m!8288330))

(declare-fun m!8288332 () Bool)

(assert (=> b!7914583 m!8288332))

(declare-fun m!8288334 () Bool)

(assert (=> b!7914581 m!8288334))

(assert (=> b!7914520 d!2361328))

(declare-fun b!7914585 () Bool)

(declare-fun res!3141305 () Bool)

(declare-fun e!4671924 () Bool)

(assert (=> b!7914585 (=> (not res!3141305) (not e!4671924))))

(assert (=> b!7914585 (= res!3141305 (not (isEmpty!42725 (left!56813 lt!2689422))))))

(declare-fun b!7914586 () Bool)

(declare-fun res!3141308 () Bool)

(assert (=> b!7914586 (=> (not res!3141308) (not e!4671924))))

(assert (=> b!7914586 (= res!3141308 (<= (- (height!2182 (left!56813 lt!2689422)) (height!2182 (right!57143 lt!2689422))) 1))))

(declare-fun b!7914587 () Bool)

(declare-fun res!3141304 () Bool)

(assert (=> b!7914587 (=> (not res!3141304) (not e!4671924))))

(assert (=> b!7914587 (= res!3141304 (isBalanced!4488 (right!57143 lt!2689422)))))

(declare-fun b!7914588 () Bool)

(declare-fun e!4671923 () Bool)

(assert (=> b!7914588 (= e!4671923 e!4671924)))

(declare-fun res!3141306 () Bool)

(assert (=> b!7914588 (=> (not res!3141306) (not e!4671924))))

(assert (=> b!7914588 (= res!3141306 (<= (- 1) (- (height!2182 (left!56813 lt!2689422)) (height!2182 (right!57143 lt!2689422)))))))

(declare-fun b!7914589 () Bool)

(assert (=> b!7914589 (= e!4671924 (not (isEmpty!42725 (right!57143 lt!2689422))))))

(declare-fun b!7914590 () Bool)

(declare-fun res!3141307 () Bool)

(assert (=> b!7914590 (=> (not res!3141307) (not e!4671924))))

(assert (=> b!7914590 (= res!3141307 (isBalanced!4488 (left!56813 lt!2689422)))))

(declare-fun d!2361330 () Bool)

(declare-fun res!3141303 () Bool)

(assert (=> d!2361330 (=> res!3141303 e!4671923)))

(assert (=> d!2361330 (= res!3141303 (not ((_ is Node!15862) lt!2689422)))))

(assert (=> d!2361330 (= (isBalanced!4488 lt!2689422) e!4671923)))

(assert (= (and d!2361330 (not res!3141303)) b!7914588))

(assert (= (and b!7914588 res!3141306) b!7914586))

(assert (= (and b!7914586 res!3141308) b!7914590))

(assert (= (and b!7914590 res!3141307) b!7914587))

(assert (= (and b!7914587 res!3141304) b!7914585))

(assert (= (and b!7914585 res!3141305) b!7914589))

(declare-fun m!8288336 () Bool)

(assert (=> b!7914585 m!8288336))

(declare-fun m!8288338 () Bool)

(assert (=> b!7914590 m!8288338))

(declare-fun m!8288340 () Bool)

(assert (=> b!7914588 m!8288340))

(declare-fun m!8288342 () Bool)

(assert (=> b!7914588 m!8288342))

(assert (=> b!7914586 m!8288340))

(assert (=> b!7914586 m!8288342))

(declare-fun m!8288344 () Bool)

(assert (=> b!7914589 m!8288344))

(declare-fun m!8288346 () Bool)

(assert (=> b!7914587 m!8288346))

(assert (=> b!7914567 d!2361330))

(declare-fun d!2361332 () Bool)

(assert (=> d!2361332 (= (height!2182 (left!56813 lt!2689393)) (ite ((_ is Empty!15862) (left!56813 lt!2689393)) 0 (ite ((_ is Leaf!30174) (left!56813 lt!2689393)) 1 (cheight!16073 (left!56813 lt!2689393)))))))

(assert (=> b!7914516 d!2361332))

(declare-fun d!2361334 () Bool)

(assert (=> d!2361334 (= (height!2182 (right!57143 lt!2689393)) (ite ((_ is Empty!15862) (right!57143 lt!2689393)) 0 (ite ((_ is Leaf!30174) (right!57143 lt!2689393)) 1 (cheight!16073 (right!57143 lt!2689393)))))))

(assert (=> b!7914516 d!2361334))

(declare-fun d!2361336 () Bool)

(declare-fun e!4671944 () Bool)

(assert (=> d!2361336 e!4671944))

(declare-fun res!3141326 () Bool)

(assert (=> d!2361336 (=> (not res!3141326) (not e!4671944))))

(declare-fun lt!2689435 () List!74532)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15758 (List!74532) (InoxSet T!145524))

(assert (=> d!2361336 (= res!3141326 (= (content!15758 lt!2689435) ((_ map or) (content!15758 lt!2689421) (content!15758 lt!2689423))))))

(declare-fun e!4671943 () List!74532)

(assert (=> d!2361336 (= lt!2689435 e!4671943)))

(declare-fun c!1452219 () Bool)

(assert (=> d!2361336 (= c!1452219 ((_ is Nil!74408) lt!2689421))))

(assert (=> d!2361336 (= (++!18226 lt!2689421 lt!2689423) lt!2689435)))

(declare-fun b!7914629 () Bool)

(declare-fun res!3141325 () Bool)

(assert (=> b!7914629 (=> (not res!3141325) (not e!4671944))))

(declare-fun size!43188 (List!74532) Int)

(assert (=> b!7914629 (= res!3141325 (= (size!43188 lt!2689435) (+ (size!43188 lt!2689421) (size!43188 lt!2689423))))))

(declare-fun b!7914627 () Bool)

(assert (=> b!7914627 (= e!4671943 lt!2689423)))

(declare-fun b!7914630 () Bool)

(assert (=> b!7914630 (= e!4671944 (or (not (= lt!2689423 Nil!74408)) (= lt!2689435 lt!2689421)))))

(declare-fun b!7914628 () Bool)

(assert (=> b!7914628 (= e!4671943 (Cons!74408 (h!80856 lt!2689421) (++!18226 (t!390013 lt!2689421) lt!2689423)))))

(assert (= (and d!2361336 c!1452219) b!7914627))

(assert (= (and d!2361336 (not c!1452219)) b!7914628))

(assert (= (and d!2361336 res!3141326) b!7914629))

(assert (= (and b!7914629 res!3141325) b!7914630))

(declare-fun m!8288400 () Bool)

(assert (=> d!2361336 m!8288400))

(declare-fun m!8288402 () Bool)

(assert (=> d!2361336 m!8288402))

(declare-fun m!8288404 () Bool)

(assert (=> d!2361336 m!8288404))

(declare-fun m!8288406 () Bool)

(assert (=> b!7914629 m!8288406))

(declare-fun m!8288408 () Bool)

(assert (=> b!7914629 m!8288408))

(declare-fun m!8288410 () Bool)

(assert (=> b!7914629 m!8288410))

(declare-fun m!8288412 () Bool)

(assert (=> b!7914628 m!8288412))

(assert (=> b!7914566 d!2361336))

(declare-fun b!7914634 () Bool)

(declare-fun e!4671947 () List!74532)

(assert (=> b!7914634 (= e!4671947 Nil!74408)))

(declare-fun d!2361348 () Bool)

(declare-fun c!1452221 () Bool)

(assert (=> d!2361348 (= c!1452221 ((_ is Empty!15862) Empty!15862))))

(assert (=> d!2361348 (= (list!19347 Empty!15862) e!4671947)))

(declare-fun b!7914637 () Bool)

(declare-fun e!4671948 () List!74532)

(assert (=> b!7914637 (= e!4671948 (++!18226 (list!19347 (left!56813 Empty!15862)) (list!19347 (right!57143 Empty!15862))))))

(declare-fun b!7914635 () Bool)

(assert (=> b!7914635 (= e!4671947 e!4671948)))

(declare-fun c!1452222 () Bool)

(assert (=> b!7914635 (= c!1452222 ((_ is Leaf!30174) Empty!15862))))

(declare-fun b!7914636 () Bool)

(assert (=> b!7914636 (= e!4671948 (list!19349 (xs!19244 Empty!15862)))))

(assert (= (and d!2361348 c!1452221) b!7914634))

(assert (= (and d!2361348 (not c!1452221)) b!7914635))

(assert (= (and b!7914635 c!1452222) b!7914636))

(assert (= (and b!7914635 (not c!1452222)) b!7914637))

(declare-fun m!8288428 () Bool)

(assert (=> b!7914637 m!8288428))

(declare-fun m!8288432 () Bool)

(assert (=> b!7914637 m!8288432))

(assert (=> b!7914637 m!8288428))

(assert (=> b!7914637 m!8288432))

(declare-fun m!8288436 () Bool)

(assert (=> b!7914637 m!8288436))

(declare-fun m!8288440 () Bool)

(assert (=> b!7914636 m!8288440))

(assert (=> b!7914566 d!2361348))

(declare-fun d!2361350 () Bool)

(declare-fun e!4671950 () Bool)

(assert (=> d!2361350 e!4671950))

(declare-fun res!3141329 () Bool)

(assert (=> d!2361350 (=> (not res!3141329) (not e!4671950))))

(declare-fun lt!2689441 () List!74532)

(assert (=> d!2361350 (= res!3141329 (= (content!15758 lt!2689441) ((_ map or) (content!15758 lt!2689423) (content!15758 (t!390013 l!2289)))))))

(declare-fun e!4671949 () List!74532)

(assert (=> d!2361350 (= lt!2689441 e!4671949)))

(declare-fun c!1452223 () Bool)

(assert (=> d!2361350 (= c!1452223 ((_ is Nil!74408) lt!2689423))))

(assert (=> d!2361350 (= (++!18226 lt!2689423 (t!390013 l!2289)) lt!2689441)))

(declare-fun b!7914640 () Bool)

(declare-fun res!3141328 () Bool)

(assert (=> b!7914640 (=> (not res!3141328) (not e!4671950))))

(assert (=> b!7914640 (= res!3141328 (= (size!43188 lt!2689441) (+ (size!43188 lt!2689423) (size!43188 (t!390013 l!2289)))))))

(declare-fun b!7914638 () Bool)

(assert (=> b!7914638 (= e!4671949 (t!390013 l!2289))))

(declare-fun b!7914641 () Bool)

(assert (=> b!7914641 (= e!4671950 (or (not (= (t!390013 l!2289) Nil!74408)) (= lt!2689441 lt!2689423)))))

(declare-fun b!7914639 () Bool)

(assert (=> b!7914639 (= e!4671949 (Cons!74408 (h!80856 lt!2689423) (++!18226 (t!390013 lt!2689423) (t!390013 l!2289))))))

(assert (= (and d!2361350 c!1452223) b!7914638))

(assert (= (and d!2361350 (not c!1452223)) b!7914639))

(assert (= (and d!2361350 res!3141329) b!7914640))

(assert (= (and b!7914640 res!3141328) b!7914641))

(declare-fun m!8288446 () Bool)

(assert (=> d!2361350 m!8288446))

(assert (=> d!2361350 m!8288404))

(declare-fun m!8288448 () Bool)

(assert (=> d!2361350 m!8288448))

(declare-fun m!8288450 () Bool)

(assert (=> b!7914640 m!8288450))

(assert (=> b!7914640 m!8288410))

(declare-fun m!8288452 () Bool)

(assert (=> b!7914640 m!8288452))

(declare-fun m!8288454 () Bool)

(assert (=> b!7914639 m!8288454))

(assert (=> b!7914566 d!2361350))

(declare-fun d!2361354 () Bool)

(declare-fun e!4671952 () Bool)

(assert (=> d!2361354 e!4671952))

(declare-fun res!3141331 () Bool)

(assert (=> d!2361354 (=> (not res!3141331) (not e!4671952))))

(declare-fun lt!2689442 () List!74532)

(assert (=> d!2361354 (= res!3141331 (= (content!15758 lt!2689442) ((_ map or) (content!15758 lt!2689421) (content!15758 (++!18226 lt!2689423 (t!390013 l!2289))))))))

(declare-fun e!4671951 () List!74532)

(assert (=> d!2361354 (= lt!2689442 e!4671951)))

(declare-fun c!1452224 () Bool)

(assert (=> d!2361354 (= c!1452224 ((_ is Nil!74408) lt!2689421))))

(assert (=> d!2361354 (= (++!18226 lt!2689421 (++!18226 lt!2689423 (t!390013 l!2289))) lt!2689442)))

(declare-fun b!7914644 () Bool)

(declare-fun res!3141330 () Bool)

(assert (=> b!7914644 (=> (not res!3141330) (not e!4671952))))

(assert (=> b!7914644 (= res!3141330 (= (size!43188 lt!2689442) (+ (size!43188 lt!2689421) (size!43188 (++!18226 lt!2689423 (t!390013 l!2289))))))))

(declare-fun b!7914642 () Bool)

(assert (=> b!7914642 (= e!4671951 (++!18226 lt!2689423 (t!390013 l!2289)))))

(declare-fun b!7914645 () Bool)

(assert (=> b!7914645 (= e!4671952 (or (not (= (++!18226 lt!2689423 (t!390013 l!2289)) Nil!74408)) (= lt!2689442 lt!2689421)))))

(declare-fun b!7914643 () Bool)

(assert (=> b!7914643 (= e!4671951 (Cons!74408 (h!80856 lt!2689421) (++!18226 (t!390013 lt!2689421) (++!18226 lt!2689423 (t!390013 l!2289)))))))

(assert (= (and d!2361354 c!1452224) b!7914642))

(assert (= (and d!2361354 (not c!1452224)) b!7914643))

(assert (= (and d!2361354 res!3141331) b!7914644))

(assert (= (and b!7914644 res!3141330) b!7914645))

(declare-fun m!8288456 () Bool)

(assert (=> d!2361354 m!8288456))

(assert (=> d!2361354 m!8288402))

(assert (=> d!2361354 m!8288292))

(declare-fun m!8288458 () Bool)

(assert (=> d!2361354 m!8288458))

(declare-fun m!8288460 () Bool)

(assert (=> b!7914644 m!8288460))

(assert (=> b!7914644 m!8288408))

(assert (=> b!7914644 m!8288292))

(declare-fun m!8288462 () Bool)

(assert (=> b!7914644 m!8288462))

(assert (=> b!7914643 m!8288292))

(declare-fun m!8288464 () Bool)

(assert (=> b!7914643 m!8288464))

(assert (=> b!7914566 d!2361354))

(declare-fun d!2361356 () Bool)

(declare-fun e!4671954 () Bool)

(assert (=> d!2361356 e!4671954))

(declare-fun res!3141332 () Bool)

(assert (=> d!2361356 (=> (not res!3141332) (not e!4671954))))

(declare-fun lt!2689446 () Conc!15862)

(assert (=> d!2361356 (= res!3141332 (= (list!19347 lt!2689446) (++!18226 (list!19347 (append!1100 Empty!15862 (h!80856 l!2289))) (t!390013 l!2289))))))

(declare-fun e!4671953 () Conc!15862)

(assert (=> d!2361356 (= lt!2689446 e!4671953)))

(declare-fun c!1452225 () Bool)

(assert (=> d!2361356 (= c!1452225 ((_ is Nil!74408) (t!390013 l!2289)))))

(assert (=> d!2361356 (isBalanced!4488 (append!1100 Empty!15862 (h!80856 l!2289)))))

(assert (=> d!2361356 (= (rec!45 (t!390013 l!2289) (append!1100 Empty!15862 (h!80856 l!2289))) lt!2689446)))

(declare-fun b!7914646 () Bool)

(assert (=> b!7914646 (= e!4671953 (append!1100 Empty!15862 (h!80856 l!2289)))))

(declare-fun b!7914647 () Bool)

(assert (=> b!7914647 (= e!4671953 (rec!45 (t!390013 (t!390013 l!2289)) (append!1100 (append!1100 Empty!15862 (h!80856 l!2289)) (h!80856 (t!390013 l!2289)))))))

(declare-fun lt!2689445 () List!74532)

(assert (=> b!7914647 (= lt!2689445 (list!19347 (append!1100 Empty!15862 (h!80856 l!2289))))))

(declare-fun lt!2689447 () List!74532)

(assert (=> b!7914647 (= lt!2689447 (Cons!74408 (h!80856 (t!390013 l!2289)) Nil!74408))))

(declare-fun lt!2689443 () Unit!169521)

(assert (=> b!7914647 (= lt!2689443 (lemmaConcatAssociativity!3126 lt!2689445 lt!2689447 (t!390013 (t!390013 l!2289))))))

(assert (=> b!7914647 (= (++!18226 (++!18226 lt!2689445 lt!2689447) (t!390013 (t!390013 l!2289))) (++!18226 lt!2689445 (++!18226 lt!2689447 (t!390013 (t!390013 l!2289)))))))

(declare-fun lt!2689444 () Unit!169521)

(assert (=> b!7914647 (= lt!2689444 lt!2689443)))

(declare-fun b!7914648 () Bool)

(assert (=> b!7914648 (= e!4671954 (isBalanced!4488 lt!2689446))))

(assert (= (and d!2361356 c!1452225) b!7914646))

(assert (= (and d!2361356 (not c!1452225)) b!7914647))

(assert (= (and d!2361356 res!3141332) b!7914648))

(declare-fun m!8288466 () Bool)

(assert (=> d!2361356 m!8288466))

(assert (=> d!2361356 m!8288294))

(declare-fun m!8288468 () Bool)

(assert (=> d!2361356 m!8288468))

(assert (=> d!2361356 m!8288468))

(declare-fun m!8288470 () Bool)

(assert (=> d!2361356 m!8288470))

(assert (=> d!2361356 m!8288294))

(declare-fun m!8288472 () Bool)

(assert (=> d!2361356 m!8288472))

(declare-fun m!8288474 () Bool)

(assert (=> b!7914647 m!8288474))

(assert (=> b!7914647 m!8288294))

(declare-fun m!8288476 () Bool)

(assert (=> b!7914647 m!8288476))

(assert (=> b!7914647 m!8288294))

(assert (=> b!7914647 m!8288468))

(assert (=> b!7914647 m!8288476))

(declare-fun m!8288478 () Bool)

(assert (=> b!7914647 m!8288478))

(declare-fun m!8288480 () Bool)

(assert (=> b!7914647 m!8288480))

(declare-fun m!8288482 () Bool)

(assert (=> b!7914647 m!8288482))

(declare-fun m!8288484 () Bool)

(assert (=> b!7914647 m!8288484))

(assert (=> b!7914647 m!8288480))

(assert (=> b!7914647 m!8288474))

(declare-fun m!8288486 () Bool)

(assert (=> b!7914647 m!8288486))

(declare-fun m!8288488 () Bool)

(assert (=> b!7914648 m!8288488))

(assert (=> b!7914566 d!2361356))

(declare-fun d!2361358 () Bool)

(assert (=> d!2361358 (= (++!18226 (++!18226 lt!2689421 lt!2689423) (t!390013 l!2289)) (++!18226 lt!2689421 (++!18226 lt!2689423 (t!390013 l!2289))))))

(declare-fun lt!2689453 () Unit!169521)

(declare-fun choose!59789 (List!74532 List!74532 List!74532) Unit!169521)

(assert (=> d!2361358 (= lt!2689453 (choose!59789 lt!2689421 lt!2689423 (t!390013 l!2289)))))

(assert (=> d!2361358 (= (lemmaConcatAssociativity!3126 lt!2689421 lt!2689423 (t!390013 l!2289)) lt!2689453)))

(declare-fun bs!1968429 () Bool)

(assert (= bs!1968429 d!2361358))

(assert (=> bs!1968429 m!8288298))

(assert (=> bs!1968429 m!8288300))

(assert (=> bs!1968429 m!8288292))

(assert (=> bs!1968429 m!8288298))

(declare-fun m!8288492 () Bool)

(assert (=> bs!1968429 m!8288492))

(assert (=> bs!1968429 m!8288292))

(assert (=> bs!1968429 m!8288304))

(assert (=> b!7914566 d!2361358))

(declare-fun d!2361362 () Bool)

(declare-fun e!4671956 () Bool)

(assert (=> d!2361362 e!4671956))

(declare-fun res!3141334 () Bool)

(assert (=> d!2361362 (=> (not res!3141334) (not e!4671956))))

(declare-fun lt!2689454 () List!74532)

(assert (=> d!2361362 (= res!3141334 (= (content!15758 lt!2689454) ((_ map or) (content!15758 (++!18226 lt!2689421 lt!2689423)) (content!15758 (t!390013 l!2289)))))))

(declare-fun e!4671955 () List!74532)

(assert (=> d!2361362 (= lt!2689454 e!4671955)))

(declare-fun c!1452226 () Bool)

(assert (=> d!2361362 (= c!1452226 ((_ is Nil!74408) (++!18226 lt!2689421 lt!2689423)))))

(assert (=> d!2361362 (= (++!18226 (++!18226 lt!2689421 lt!2689423) (t!390013 l!2289)) lt!2689454)))

(declare-fun b!7914651 () Bool)

(declare-fun res!3141333 () Bool)

(assert (=> b!7914651 (=> (not res!3141333) (not e!4671956))))

(assert (=> b!7914651 (= res!3141333 (= (size!43188 lt!2689454) (+ (size!43188 (++!18226 lt!2689421 lt!2689423)) (size!43188 (t!390013 l!2289)))))))

(declare-fun b!7914649 () Bool)

(assert (=> b!7914649 (= e!4671955 (t!390013 l!2289))))

(declare-fun b!7914652 () Bool)

(assert (=> b!7914652 (= e!4671956 (or (not (= (t!390013 l!2289) Nil!74408)) (= lt!2689454 (++!18226 lt!2689421 lt!2689423))))))

(declare-fun b!7914650 () Bool)

(assert (=> b!7914650 (= e!4671955 (Cons!74408 (h!80856 (++!18226 lt!2689421 lt!2689423)) (++!18226 (t!390013 (++!18226 lt!2689421 lt!2689423)) (t!390013 l!2289))))))

(assert (= (and d!2361362 c!1452226) b!7914649))

(assert (= (and d!2361362 (not c!1452226)) b!7914650))

(assert (= (and d!2361362 res!3141334) b!7914651))

(assert (= (and b!7914651 res!3141333) b!7914652))

(declare-fun m!8288494 () Bool)

(assert (=> d!2361362 m!8288494))

(assert (=> d!2361362 m!8288298))

(declare-fun m!8288496 () Bool)

(assert (=> d!2361362 m!8288496))

(assert (=> d!2361362 m!8288448))

(declare-fun m!8288498 () Bool)

(assert (=> b!7914651 m!8288498))

(assert (=> b!7914651 m!8288298))

(declare-fun m!8288500 () Bool)

(assert (=> b!7914651 m!8288500))

(assert (=> b!7914651 m!8288452))

(declare-fun m!8288502 () Bool)

(assert (=> b!7914650 m!8288502))

(assert (=> b!7914566 d!2361362))

(declare-fun b!7914718 () Bool)

(declare-fun c!1452254 () Bool)

(declare-fun lt!2689550 () Conc!15862)

(assert (=> b!7914718 (= c!1452254 (<= (height!2182 lt!2689550) (+ (height!2182 (left!56813 Empty!15862)) 1)))))

(assert (=> b!7914718 (= lt!2689550 (append!1100 (right!57143 Empty!15862) (h!80856 l!2289)))))

(declare-fun e!4671989 () Conc!15862)

(declare-fun e!4671988 () Conc!15862)

(assert (=> b!7914718 (= e!4671989 e!4671988)))

(declare-fun lt!2689559 () List!74532)

(declare-fun lt!2689558 () List!74532)

(declare-fun call!734290 () List!74532)

(declare-fun bm!734282 () Bool)

(declare-fun lt!2689555 () List!74532)

(declare-fun lt!2689545 () List!74532)

(assert (=> bm!734282 (= call!734290 (++!18226 (ite c!1452254 lt!2689545 lt!2689555) (ite c!1452254 lt!2689559 lt!2689558)))))

(declare-fun call!734295 () List!74532)

(declare-fun lt!2689561 () List!74532)

(declare-fun lt!2689552 () List!74532)

(declare-fun lt!2689554 () List!74532)

(declare-fun bm!734283 () Bool)

(assert (=> bm!734283 (= call!734295 (++!18226 (ite c!1452254 lt!2689552 lt!2689554) (ite c!1452254 lt!2689545 lt!2689561)))))

(declare-fun b!7914719 () Bool)

(declare-fun c!1452256 () Bool)

(assert (=> b!7914719 (= c!1452256 (< (csize!31955 Empty!15862) 512))))

(declare-fun e!4671987 () Conc!15862)

(assert (=> b!7914719 (= e!4671989 e!4671987)))

(declare-fun bm!734284 () Bool)

(declare-fun call!734293 () List!74532)

(assert (=> bm!734284 (= call!734293 (list!19347 (ite c!1452254 (left!56813 Empty!15862) (right!57143 lt!2689550))))))

(declare-fun b!7914720 () Bool)

(declare-fun e!4671991 () Bool)

(declare-fun lt!2689547 () Conc!15862)

(declare-fun $colon+!289 (List!74532 T!145524) List!74532)

(assert (=> b!7914720 (= e!4671991 (= (list!19347 lt!2689547) ($colon+!289 (list!19347 Empty!15862) (h!80856 l!2289))))))

(declare-fun b!7914721 () Bool)

(declare-fun res!3141350 () Bool)

(assert (=> b!7914721 (=> (not res!3141350) (not e!4671991))))

(assert (=> b!7914721 (= res!3141350 (<= (height!2182 Empty!15862) (height!2182 lt!2689547)))))

(declare-fun b!7914722 () Bool)

(declare-fun call!734294 () Conc!15862)

(assert (=> b!7914722 (= e!4671988 call!734294)))

(assert (=> b!7914722 (= lt!2689552 call!734293)))

(declare-fun call!734296 () List!74532)

(assert (=> b!7914722 (= lt!2689545 call!734296)))

(assert (=> b!7914722 (= lt!2689559 (Cons!74408 (h!80856 l!2289) Nil!74408))))

(declare-fun lt!2689556 () Unit!169521)

(declare-fun call!734291 () Unit!169521)

(assert (=> b!7914722 (= lt!2689556 call!734291)))

(declare-fun call!734292 () List!74532)

(declare-fun call!734289 () List!74532)

(assert (=> b!7914722 (= call!734292 call!734289)))

(declare-fun lt!2689548 () Unit!169521)

(assert (=> b!7914722 (= lt!2689548 lt!2689556)))

(declare-fun b!7914723 () Bool)

(declare-fun call!734287 () Conc!15862)

(assert (=> b!7914723 (= e!4671987 call!734287)))

(declare-fun bm!734286 () Bool)

(declare-fun c!1452252 () Bool)

(declare-fun c!1452253 () Bool)

(assert (=> bm!734286 (= c!1452252 c!1452253)))

(declare-fun e!4671992 () Conc!15862)

(declare-fun <>!404 (Conc!15862 Conc!15862) Conc!15862)

(assert (=> bm!734286 (= call!734287 (<>!404 (ite c!1452253 (left!56813 Empty!15862) Empty!15862) e!4671992))))

(declare-fun bm!734287 () Bool)

(assert (=> bm!734287 (= call!734296 (list!19347 (right!57143 Empty!15862)))))

(declare-fun bm!734288 () Bool)

(declare-fun lt!2689553 () List!74532)

(assert (=> bm!734288 (= call!734292 (++!18226 (ite c!1452254 call!734295 lt!2689561) (ite c!1452254 lt!2689559 lt!2689553)))))

(declare-fun b!7914724 () Bool)

(declare-fun e!4671990 () Conc!15862)

(assert (=> b!7914724 (= e!4671990 e!4671989)))

(assert (=> b!7914724 (= c!1452253 ((_ is Node!15862) Empty!15862))))

(declare-fun b!7914725 () Bool)

(declare-fun res!3141352 () Bool)

(assert (=> b!7914725 (=> (not res!3141352) (not e!4671991))))

(assert (=> b!7914725 (= res!3141352 (<= (height!2182 lt!2689547) (+ (height!2182 Empty!15862) 1)))))

(declare-fun b!7914726 () Bool)

(assert (=> b!7914726 (= e!4671988 (<>!404 call!734294 (right!57143 lt!2689550)))))

(assert (=> b!7914726 (= lt!2689554 (list!19347 (left!56813 Empty!15862)))))

(assert (=> b!7914726 (= lt!2689561 (list!19347 (left!56813 lt!2689550)))))

(assert (=> b!7914726 (= lt!2689553 call!734293)))

(declare-fun lt!2689546 () Unit!169521)

(assert (=> b!7914726 (= lt!2689546 call!734291)))

(assert (=> b!7914726 (= (++!18226 call!734295 lt!2689553) (++!18226 lt!2689554 call!734292))))

(declare-fun lt!2689549 () Unit!169521)

(assert (=> b!7914726 (= lt!2689549 lt!2689546)))

(assert (=> b!7914726 (= lt!2689555 (list!19347 (left!56813 Empty!15862)))))

(assert (=> b!7914726 (= lt!2689558 call!734296)))

(declare-fun lt!2689557 () List!74532)

(assert (=> b!7914726 (= lt!2689557 (Cons!74408 (h!80856 l!2289) Nil!74408))))

(declare-fun lt!2689562 () Unit!169521)

(declare-fun lemmaConcatAssociativity!3128 (List!74532 List!74532 List!74532) Unit!169521)

(assert (=> b!7914726 (= lt!2689562 (lemmaConcatAssociativity!3128 lt!2689555 lt!2689558 lt!2689557))))

(assert (=> b!7914726 (= (++!18226 call!734290 lt!2689557) (++!18226 lt!2689555 call!734289))))

(declare-fun lt!2689560 () Unit!169521)

(assert (=> b!7914726 (= lt!2689560 lt!2689562)))

(declare-fun b!7914727 () Bool)

(assert (=> b!7914727 (= e!4671992 (ite c!1452254 lt!2689550 (left!56813 lt!2689550)))))

(declare-fun b!7914728 () Bool)

(declare-fun append!1102 (IArray!31785 T!145524) IArray!31785)

(assert (=> b!7914728 (= e!4671987 (Leaf!30174 (append!1102 (xs!19244 Empty!15862) (h!80856 l!2289)) (+ (csize!31955 Empty!15862) 1)))))

(declare-fun lt!2689551 () List!74532)

(assert (=> b!7914728 (= lt!2689551 ($colon+!289 (list!19349 (xs!19244 Empty!15862)) (h!80856 l!2289)))))

(declare-fun bm!734289 () Bool)

(assert (=> bm!734289 (= call!734289 (++!18226 (ite c!1452254 lt!2689552 lt!2689558) (ite c!1452254 call!734290 lt!2689557)))))

(declare-fun bm!734285 () Bool)

(assert (=> bm!734285 (= call!734291 (lemmaConcatAssociativity!3128 (ite c!1452254 lt!2689552 lt!2689554) (ite c!1452254 lt!2689545 lt!2689561) (ite c!1452254 lt!2689559 lt!2689553)))))

(declare-fun d!2361364 () Bool)

(assert (=> d!2361364 e!4671991))

(declare-fun res!3141351 () Bool)

(assert (=> d!2361364 (=> (not res!3141351) (not e!4671991))))

(assert (=> d!2361364 (= res!3141351 (isBalanced!4488 lt!2689547))))

(assert (=> d!2361364 (= lt!2689547 e!4671990)))

(declare-fun c!1452255 () Bool)

(assert (=> d!2361364 (= c!1452255 ((_ is Empty!15862) Empty!15862))))

(assert (=> d!2361364 (isBalanced!4488 Empty!15862)))

(assert (=> d!2361364 (= (append!1100 Empty!15862 (h!80856 l!2289)) lt!2689547)))

(declare-fun bm!734290 () Bool)

(declare-fun call!734288 () IArray!31785)

(declare-fun fill!245 (Int T!145524) IArray!31785)

(assert (=> bm!734290 (= call!734288 (fill!245 1 (h!80856 l!2289)))))

(declare-fun b!7914729 () Bool)

(assert (=> b!7914729 (= e!4671990 (Leaf!30174 call!734288 1))))

(declare-fun bm!734291 () Bool)

(assert (=> bm!734291 (= call!734294 call!734287)))

(declare-fun b!7914730 () Bool)

(assert (=> b!7914730 (= e!4671992 (Leaf!30174 call!734288 1))))

(assert (= (and d!2361364 c!1452255) b!7914729))

(assert (= (and d!2361364 (not c!1452255)) b!7914724))

(assert (= (and b!7914724 c!1452253) b!7914718))

(assert (= (and b!7914724 (not c!1452253)) b!7914719))

(assert (= (and b!7914718 c!1452254) b!7914722))

(assert (= (and b!7914718 (not c!1452254)) b!7914726))

(assert (= (or b!7914722 b!7914726) bm!734285))

(assert (= (or b!7914722 b!7914726) bm!734287))

(assert (= (or b!7914722 b!7914726) bm!734291))

(assert (= (or b!7914722 b!7914726) bm!734282))

(assert (= (or b!7914722 b!7914726) bm!734283))

(assert (= (or b!7914722 b!7914726) bm!734284))

(assert (= (or b!7914722 b!7914726) bm!734289))

(assert (= (or b!7914722 b!7914726) bm!734288))

(assert (= (and b!7914719 c!1452256) b!7914728))

(assert (= (and b!7914719 (not c!1452256)) b!7914723))

(assert (= (or bm!734291 b!7914723) bm!734286))

(assert (= (and bm!734286 c!1452252) b!7914727))

(assert (= (and bm!734286 (not c!1452252)) b!7914730))

(assert (= (or b!7914729 b!7914730) bm!734290))

(assert (= (and d!2361364 res!3141351) b!7914721))

(assert (= (and b!7914721 res!3141350) b!7914725))

(assert (= (and b!7914725 res!3141352) b!7914720))

(assert (=> bm!734287 m!8288432))

(declare-fun m!8288576 () Bool)

(assert (=> b!7914728 m!8288576))

(assert (=> b!7914728 m!8288440))

(assert (=> b!7914728 m!8288440))

(declare-fun m!8288578 () Bool)

(assert (=> b!7914728 m!8288578))

(declare-fun m!8288580 () Bool)

(assert (=> bm!734283 m!8288580))

(declare-fun m!8288582 () Bool)

(assert (=> bm!734286 m!8288582))

(declare-fun m!8288584 () Bool)

(assert (=> d!2361364 m!8288584))

(assert (=> d!2361364 m!8288290))

(declare-fun m!8288588 () Bool)

(assert (=> bm!734290 m!8288588))

(declare-fun m!8288594 () Bool)

(assert (=> bm!734289 m!8288594))

(declare-fun m!8288600 () Bool)

(assert (=> b!7914721 m!8288600))

(declare-fun m!8288602 () Bool)

(assert (=> b!7914721 m!8288602))

(assert (=> b!7914725 m!8288602))

(assert (=> b!7914725 m!8288600))

(declare-fun m!8288604 () Bool)

(assert (=> bm!734282 m!8288604))

(declare-fun m!8288606 () Bool)

(assert (=> bm!734288 m!8288606))

(declare-fun m!8288608 () Bool)

(assert (=> bm!734285 m!8288608))

(assert (=> b!7914726 m!8288428))

(declare-fun m!8288610 () Bool)

(assert (=> b!7914726 m!8288610))

(declare-fun m!8288612 () Bool)

(assert (=> b!7914726 m!8288612))

(declare-fun m!8288614 () Bool)

(assert (=> b!7914726 m!8288614))

(declare-fun m!8288616 () Bool)

(assert (=> b!7914726 m!8288616))

(declare-fun m!8288618 () Bool)

(assert (=> b!7914726 m!8288618))

(declare-fun m!8288620 () Bool)

(assert (=> b!7914726 m!8288620))

(declare-fun m!8288622 () Bool)

(assert (=> b!7914726 m!8288622))

(declare-fun m!8288624 () Bool)

(assert (=> bm!734284 m!8288624))

(declare-fun m!8288626 () Bool)

(assert (=> b!7914718 m!8288626))

(declare-fun m!8288628 () Bool)

(assert (=> b!7914718 m!8288628))

(declare-fun m!8288630 () Bool)

(assert (=> b!7914718 m!8288630))

(declare-fun m!8288632 () Bool)

(assert (=> b!7914720 m!8288632))

(assert (=> b!7914720 m!8288286))

(assert (=> b!7914720 m!8288286))

(declare-fun m!8288634 () Bool)

(assert (=> b!7914720 m!8288634))

(assert (=> b!7914566 d!2361364))

(assert (=> b!7914518 d!2361332))

(assert (=> b!7914518 d!2361334))

(declare-fun d!2361376 () Bool)

(assert (=> d!2361376 (= (list!19349 (xs!19244 lt!2689393)) (innerList!15950 (xs!19244 lt!2689393)))))

(assert (=> b!7914543 d!2361376))

(declare-fun b!7914751 () Bool)

(declare-fun res!3141369 () Bool)

(declare-fun e!4672002 () Bool)

(assert (=> b!7914751 (=> (not res!3141369) (not e!4672002))))

(assert (=> b!7914751 (= res!3141369 (not (isEmpty!42725 (left!56813 (right!57143 lt!2689393)))))))

(declare-fun b!7914752 () Bool)

(declare-fun res!3141375 () Bool)

(assert (=> b!7914752 (=> (not res!3141375) (not e!4672002))))

(assert (=> b!7914752 (= res!3141375 (<= (- (height!2182 (left!56813 (right!57143 lt!2689393))) (height!2182 (right!57143 (right!57143 lt!2689393)))) 1))))

(declare-fun b!7914753 () Bool)

(declare-fun res!3141368 () Bool)

(assert (=> b!7914753 (=> (not res!3141368) (not e!4672002))))

(assert (=> b!7914753 (= res!3141368 (isBalanced!4488 (right!57143 (right!57143 lt!2689393))))))

(declare-fun b!7914754 () Bool)

(declare-fun e!4672001 () Bool)

(assert (=> b!7914754 (= e!4672001 e!4672002)))

(declare-fun res!3141371 () Bool)

(assert (=> b!7914754 (=> (not res!3141371) (not e!4672002))))

(assert (=> b!7914754 (= res!3141371 (<= (- 1) (- (height!2182 (left!56813 (right!57143 lt!2689393))) (height!2182 (right!57143 (right!57143 lt!2689393))))))))

(declare-fun b!7914755 () Bool)

(assert (=> b!7914755 (= e!4672002 (not (isEmpty!42725 (right!57143 (right!57143 lt!2689393)))))))

(declare-fun b!7914756 () Bool)

(declare-fun res!3141373 () Bool)

(assert (=> b!7914756 (=> (not res!3141373) (not e!4672002))))

(assert (=> b!7914756 (= res!3141373 (isBalanced!4488 (left!56813 (right!57143 lt!2689393))))))

(declare-fun d!2361378 () Bool)

(declare-fun res!3141367 () Bool)

(assert (=> d!2361378 (=> res!3141367 e!4672001)))

(assert (=> d!2361378 (= res!3141367 (not ((_ is Node!15862) (right!57143 lt!2689393))))))

(assert (=> d!2361378 (= (isBalanced!4488 (right!57143 lt!2689393)) e!4672001)))

(assert (= (and d!2361378 (not res!3141367)) b!7914754))

(assert (= (and b!7914754 res!3141371) b!7914752))

(assert (= (and b!7914752 res!3141375) b!7914756))

(assert (= (and b!7914756 res!3141373) b!7914753))

(assert (= (and b!7914753 res!3141368) b!7914751))

(assert (= (and b!7914751 res!3141369) b!7914755))

(declare-fun m!8288658 () Bool)

(assert (=> b!7914751 m!8288658))

(declare-fun m!8288662 () Bool)

(assert (=> b!7914756 m!8288662))

(declare-fun m!8288664 () Bool)

(assert (=> b!7914754 m!8288664))

(declare-fun m!8288666 () Bool)

(assert (=> b!7914754 m!8288666))

(assert (=> b!7914752 m!8288664))

(assert (=> b!7914752 m!8288666))

(declare-fun m!8288668 () Bool)

(assert (=> b!7914755 m!8288668))

(declare-fun m!8288670 () Bool)

(assert (=> b!7914753 m!8288670))

(assert (=> b!7914517 d!2361378))

(declare-fun d!2361384 () Bool)

(declare-fun lt!2689564 () Bool)

(assert (=> d!2361384 (= lt!2689564 (isEmpty!42726 (list!19347 (right!57143 lt!2689393))))))

(assert (=> d!2361384 (= lt!2689564 (= (size!43186 (right!57143 lt!2689393)) 0))))

(assert (=> d!2361384 (= (isEmpty!42725 (right!57143 lt!2689393)) lt!2689564)))

(declare-fun bs!1968430 () Bool)

(assert (= bs!1968430 d!2361384))

(assert (=> bs!1968430 m!8288254))

(assert (=> bs!1968430 m!8288254))

(declare-fun m!8288672 () Bool)

(assert (=> bs!1968430 m!8288672))

(declare-fun m!8288674 () Bool)

(assert (=> bs!1968430 m!8288674))

(assert (=> b!7914519 d!2361384))

(declare-fun d!2361386 () Bool)

(declare-fun e!4672006 () Bool)

(assert (=> d!2361386 e!4672006))

(declare-fun res!3141380 () Bool)

(assert (=> d!2361386 (=> (not res!3141380) (not e!4672006))))

(declare-fun lt!2689565 () List!74532)

(assert (=> d!2361386 (= res!3141380 (= (content!15758 lt!2689565) ((_ map or) (content!15758 (list!19347 (left!56813 lt!2689393))) (content!15758 (list!19347 (right!57143 lt!2689393))))))))

(declare-fun e!4672005 () List!74532)

(assert (=> d!2361386 (= lt!2689565 e!4672005)))

(declare-fun c!1452260 () Bool)

(assert (=> d!2361386 (= c!1452260 ((_ is Nil!74408) (list!19347 (left!56813 lt!2689393))))))

(assert (=> d!2361386 (= (++!18226 (list!19347 (left!56813 lt!2689393)) (list!19347 (right!57143 lt!2689393))) lt!2689565)))

(declare-fun b!7914765 () Bool)

(declare-fun res!3141379 () Bool)

(assert (=> b!7914765 (=> (not res!3141379) (not e!4672006))))

(assert (=> b!7914765 (= res!3141379 (= (size!43188 lt!2689565) (+ (size!43188 (list!19347 (left!56813 lt!2689393))) (size!43188 (list!19347 (right!57143 lt!2689393))))))))

(declare-fun b!7914763 () Bool)

(assert (=> b!7914763 (= e!4672005 (list!19347 (right!57143 lt!2689393)))))

(declare-fun b!7914766 () Bool)

(assert (=> b!7914766 (= e!4672006 (or (not (= (list!19347 (right!57143 lt!2689393)) Nil!74408)) (= lt!2689565 (list!19347 (left!56813 lt!2689393)))))))

(declare-fun b!7914764 () Bool)

(assert (=> b!7914764 (= e!4672005 (Cons!74408 (h!80856 (list!19347 (left!56813 lt!2689393))) (++!18226 (t!390013 (list!19347 (left!56813 lt!2689393))) (list!19347 (right!57143 lt!2689393)))))))

(assert (= (and d!2361386 c!1452260) b!7914763))

(assert (= (and d!2361386 (not c!1452260)) b!7914764))

(assert (= (and d!2361386 res!3141380) b!7914765))

(assert (= (and b!7914765 res!3141379) b!7914766))

(declare-fun m!8288676 () Bool)

(assert (=> d!2361386 m!8288676))

(assert (=> d!2361386 m!8288252))

(declare-fun m!8288678 () Bool)

(assert (=> d!2361386 m!8288678))

(assert (=> d!2361386 m!8288254))

(declare-fun m!8288680 () Bool)

(assert (=> d!2361386 m!8288680))

(declare-fun m!8288682 () Bool)

(assert (=> b!7914765 m!8288682))

(assert (=> b!7914765 m!8288252))

(declare-fun m!8288684 () Bool)

(assert (=> b!7914765 m!8288684))

(assert (=> b!7914765 m!8288254))

(declare-fun m!8288686 () Bool)

(assert (=> b!7914765 m!8288686))

(assert (=> b!7914764 m!8288254))

(declare-fun m!8288688 () Bool)

(assert (=> b!7914764 m!8288688))

(assert (=> b!7914544 d!2361386))

(declare-fun b!7914767 () Bool)

(declare-fun e!4672007 () List!74532)

(assert (=> b!7914767 (= e!4672007 Nil!74408)))

(declare-fun d!2361388 () Bool)

(declare-fun c!1452261 () Bool)

(assert (=> d!2361388 (= c!1452261 ((_ is Empty!15862) (left!56813 lt!2689393)))))

(assert (=> d!2361388 (= (list!19347 (left!56813 lt!2689393)) e!4672007)))

(declare-fun b!7914770 () Bool)

(declare-fun e!4672008 () List!74532)

(assert (=> b!7914770 (= e!4672008 (++!18226 (list!19347 (left!56813 (left!56813 lt!2689393))) (list!19347 (right!57143 (left!56813 lt!2689393)))))))

(declare-fun b!7914768 () Bool)

(assert (=> b!7914768 (= e!4672007 e!4672008)))

(declare-fun c!1452262 () Bool)

(assert (=> b!7914768 (= c!1452262 ((_ is Leaf!30174) (left!56813 lt!2689393)))))

(declare-fun b!7914769 () Bool)

(assert (=> b!7914769 (= e!4672008 (list!19349 (xs!19244 (left!56813 lt!2689393))))))

(assert (= (and d!2361388 c!1452261) b!7914767))

(assert (= (and d!2361388 (not c!1452261)) b!7914768))

(assert (= (and b!7914768 c!1452262) b!7914769))

(assert (= (and b!7914768 (not c!1452262)) b!7914770))

(declare-fun m!8288690 () Bool)

(assert (=> b!7914770 m!8288690))

(declare-fun m!8288692 () Bool)

(assert (=> b!7914770 m!8288692))

(assert (=> b!7914770 m!8288690))

(assert (=> b!7914770 m!8288692))

(declare-fun m!8288694 () Bool)

(assert (=> b!7914770 m!8288694))

(declare-fun m!8288696 () Bool)

(assert (=> b!7914769 m!8288696))

(assert (=> b!7914544 d!2361388))

(declare-fun b!7914771 () Bool)

(declare-fun e!4672009 () List!74532)

(assert (=> b!7914771 (= e!4672009 Nil!74408)))

(declare-fun d!2361390 () Bool)

(declare-fun c!1452263 () Bool)

(assert (=> d!2361390 (= c!1452263 ((_ is Empty!15862) (right!57143 lt!2689393)))))

(assert (=> d!2361390 (= (list!19347 (right!57143 lt!2689393)) e!4672009)))

(declare-fun b!7914774 () Bool)

(declare-fun e!4672010 () List!74532)

(assert (=> b!7914774 (= e!4672010 (++!18226 (list!19347 (left!56813 (right!57143 lt!2689393))) (list!19347 (right!57143 (right!57143 lt!2689393)))))))

(declare-fun b!7914772 () Bool)

(assert (=> b!7914772 (= e!4672009 e!4672010)))

(declare-fun c!1452264 () Bool)

(assert (=> b!7914772 (= c!1452264 ((_ is Leaf!30174) (right!57143 lt!2689393)))))

(declare-fun b!7914773 () Bool)

(assert (=> b!7914773 (= e!4672010 (list!19349 (xs!19244 (right!57143 lt!2689393))))))

(assert (= (and d!2361390 c!1452263) b!7914771))

(assert (= (and d!2361390 (not c!1452263)) b!7914772))

(assert (= (and b!7914772 c!1452264) b!7914773))

(assert (= (and b!7914772 (not c!1452264)) b!7914774))

(declare-fun m!8288698 () Bool)

(assert (=> b!7914774 m!8288698))

(declare-fun m!8288700 () Bool)

(assert (=> b!7914774 m!8288700))

(assert (=> b!7914774 m!8288698))

(assert (=> b!7914774 m!8288700))

(declare-fun m!8288702 () Bool)

(assert (=> b!7914774 m!8288702))

(declare-fun m!8288704 () Bool)

(assert (=> b!7914773 m!8288704))

(assert (=> b!7914544 d!2361390))

(declare-fun b!7914775 () Bool)

(declare-fun e!4672011 () List!74532)

(assert (=> b!7914775 (= e!4672011 Nil!74408)))

(declare-fun d!2361392 () Bool)

(declare-fun c!1452265 () Bool)

(assert (=> d!2361392 (= c!1452265 ((_ is Empty!15862) lt!2689422))))

(assert (=> d!2361392 (= (list!19347 lt!2689422) e!4672011)))

(declare-fun b!7914778 () Bool)

(declare-fun e!4672012 () List!74532)

(assert (=> b!7914778 (= e!4672012 (++!18226 (list!19347 (left!56813 lt!2689422)) (list!19347 (right!57143 lt!2689422))))))

(declare-fun b!7914776 () Bool)

(assert (=> b!7914776 (= e!4672011 e!4672012)))

(declare-fun c!1452266 () Bool)

(assert (=> b!7914776 (= c!1452266 ((_ is Leaf!30174) lt!2689422))))

(declare-fun b!7914777 () Bool)

(assert (=> b!7914777 (= e!4672012 (list!19349 (xs!19244 lt!2689422)))))

(assert (= (and d!2361392 c!1452265) b!7914775))

(assert (= (and d!2361392 (not c!1452265)) b!7914776))

(assert (= (and b!7914776 c!1452266) b!7914777))

(assert (= (and b!7914776 (not c!1452266)) b!7914778))

(declare-fun m!8288706 () Bool)

(assert (=> b!7914778 m!8288706))

(declare-fun m!8288708 () Bool)

(assert (=> b!7914778 m!8288708))

(assert (=> b!7914778 m!8288706))

(assert (=> b!7914778 m!8288708))

(declare-fun m!8288710 () Bool)

(assert (=> b!7914778 m!8288710))

(declare-fun m!8288712 () Bool)

(assert (=> b!7914777 m!8288712))

(assert (=> d!2361316 d!2361392))

(declare-fun d!2361394 () Bool)

(declare-fun e!4672016 () Bool)

(assert (=> d!2361394 e!4672016))

(declare-fun res!3141384 () Bool)

(assert (=> d!2361394 (=> (not res!3141384) (not e!4672016))))

(declare-fun lt!2689570 () List!74532)

(assert (=> d!2361394 (= res!3141384 (= (content!15758 lt!2689570) ((_ map or) (content!15758 (list!19347 Empty!15862)) (content!15758 l!2289))))))

(declare-fun e!4672015 () List!74532)

(assert (=> d!2361394 (= lt!2689570 e!4672015)))

(declare-fun c!1452268 () Bool)

(assert (=> d!2361394 (= c!1452268 ((_ is Nil!74408) (list!19347 Empty!15862)))))

(assert (=> d!2361394 (= (++!18226 (list!19347 Empty!15862) l!2289) lt!2689570)))

(declare-fun b!7914785 () Bool)

(declare-fun res!3141383 () Bool)

(assert (=> b!7914785 (=> (not res!3141383) (not e!4672016))))

(assert (=> b!7914785 (= res!3141383 (= (size!43188 lt!2689570) (+ (size!43188 (list!19347 Empty!15862)) (size!43188 l!2289))))))

(declare-fun b!7914783 () Bool)

(assert (=> b!7914783 (= e!4672015 l!2289)))

(declare-fun b!7914786 () Bool)

(assert (=> b!7914786 (= e!4672016 (or (not (= l!2289 Nil!74408)) (= lt!2689570 (list!19347 Empty!15862))))))

(declare-fun b!7914784 () Bool)

(assert (=> b!7914784 (= e!4672015 (Cons!74408 (h!80856 (list!19347 Empty!15862)) (++!18226 (t!390013 (list!19347 Empty!15862)) l!2289)))))

(assert (= (and d!2361394 c!1452268) b!7914783))

(assert (= (and d!2361394 (not c!1452268)) b!7914784))

(assert (= (and d!2361394 res!3141384) b!7914785))

(assert (= (and b!7914785 res!3141383) b!7914786))

(declare-fun m!8288718 () Bool)

(assert (=> d!2361394 m!8288718))

(assert (=> d!2361394 m!8288286))

(declare-fun m!8288722 () Bool)

(assert (=> d!2361394 m!8288722))

(declare-fun m!8288726 () Bool)

(assert (=> d!2361394 m!8288726))

(declare-fun m!8288728 () Bool)

(assert (=> b!7914785 m!8288728))

(assert (=> b!7914785 m!8288286))

(declare-fun m!8288732 () Bool)

(assert (=> b!7914785 m!8288732))

(declare-fun m!8288736 () Bool)

(assert (=> b!7914785 m!8288736))

(declare-fun m!8288740 () Bool)

(assert (=> b!7914784 m!8288740))

(assert (=> d!2361316 d!2361394))

(assert (=> d!2361316 d!2361348))

(declare-fun b!7914791 () Bool)

(declare-fun res!3141387 () Bool)

(declare-fun e!4672020 () Bool)

(assert (=> b!7914791 (=> (not res!3141387) (not e!4672020))))

(assert (=> b!7914791 (= res!3141387 (not (isEmpty!42725 (left!56813 Empty!15862))))))

(declare-fun b!7914792 () Bool)

(declare-fun res!3141390 () Bool)

(assert (=> b!7914792 (=> (not res!3141390) (not e!4672020))))

(assert (=> b!7914792 (= res!3141390 (<= (- (height!2182 (left!56813 Empty!15862)) (height!2182 (right!57143 Empty!15862))) 1))))

(declare-fun b!7914793 () Bool)

(declare-fun res!3141386 () Bool)

(assert (=> b!7914793 (=> (not res!3141386) (not e!4672020))))

(assert (=> b!7914793 (= res!3141386 (isBalanced!4488 (right!57143 Empty!15862)))))

(declare-fun b!7914794 () Bool)

(declare-fun e!4672019 () Bool)

(assert (=> b!7914794 (= e!4672019 e!4672020)))

(declare-fun res!3141388 () Bool)

(assert (=> b!7914794 (=> (not res!3141388) (not e!4672020))))

(assert (=> b!7914794 (= res!3141388 (<= (- 1) (- (height!2182 (left!56813 Empty!15862)) (height!2182 (right!57143 Empty!15862)))))))

(declare-fun b!7914795 () Bool)

(assert (=> b!7914795 (= e!4672020 (not (isEmpty!42725 (right!57143 Empty!15862))))))

(declare-fun b!7914796 () Bool)

(declare-fun res!3141389 () Bool)

(assert (=> b!7914796 (=> (not res!3141389) (not e!4672020))))

(assert (=> b!7914796 (= res!3141389 (isBalanced!4488 (left!56813 Empty!15862)))))

(declare-fun d!2361398 () Bool)

(declare-fun res!3141385 () Bool)

(assert (=> d!2361398 (=> res!3141385 e!4672019)))

(assert (=> d!2361398 (= res!3141385 (not ((_ is Node!15862) Empty!15862)))))

(assert (=> d!2361398 (= (isBalanced!4488 Empty!15862) e!4672019)))

(assert (= (and d!2361398 (not res!3141385)) b!7914794))

(assert (= (and b!7914794 res!3141388) b!7914792))

(assert (= (and b!7914792 res!3141390) b!7914796))

(assert (= (and b!7914796 res!3141389) b!7914793))

(assert (= (and b!7914793 res!3141386) b!7914791))

(assert (= (and b!7914791 res!3141387) b!7914795))

(declare-fun m!8288754 () Bool)

(assert (=> b!7914791 m!8288754))

(declare-fun m!8288756 () Bool)

(assert (=> b!7914796 m!8288756))

(assert (=> b!7914794 m!8288628))

(declare-fun m!8288760 () Bool)

(assert (=> b!7914794 m!8288760))

(assert (=> b!7914792 m!8288628))

(assert (=> b!7914792 m!8288760))

(declare-fun m!8288766 () Bool)

(assert (=> b!7914795 m!8288766))

(declare-fun m!8288768 () Bool)

(assert (=> b!7914793 m!8288768))

(assert (=> d!2361316 d!2361398))

(declare-fun b!7914801 () Bool)

(declare-fun e!4672023 () Bool)

(declare-fun tp!2357177 () Bool)

(assert (=> b!7914801 (= e!4672023 (and tp_is_empty!53149 tp!2357177))))

(assert (=> b!7914572 (= tp!2357176 e!4672023)))

(assert (= (and b!7914572 ((_ is Cons!74408) (t!390013 (t!390013 l!2289)))) b!7914801))

(check-sat (not b!7914777) (not b!7914636) (not b!7914583) (not b!7914753) (not bm!734290) (not d!2361364) (not b!7914791) (not b!7914640) (not b!7914651) (not b!7914637) (not b!7914793) (not b!7914628) (not bm!734289) (not b!7914648) (not b!7914778) (not b!7914588) (not b!7914765) (not b!7914754) (not d!2361320) (not b!7914764) (not d!2361356) (not d!2361336) (not b!7914587) (not b!7914639) (not b!7914796) (not b!7914774) (not d!2361358) (not d!2361350) (not bm!734288) (not b!7914770) (not d!2361386) (not d!2361362) (not bm!734283) (not b!7914726) (not d!2361354) (not bm!734284) (not b!7914720) (not b!7914579) (not b!7914647) (not b!7914752) (not b!7914801) (not b!7914792) (not bm!734285) (not b!7914756) (not b!7914584) (not bm!734287) (not b!7914795) (not d!2361394) (not b!7914721) (not b!7914582) (not b!7914794) (not b!7914785) (not b!7914751) (not d!2361384) (not b!7914580) (not b!7914769) (not b!7914629) (not b!7914773) (not b!7914718) (not b!7914585) (not b!7914650) (not bm!734282) (not b!7914728) (not b!7914581) (not b!7914586) tp_is_empty!53149 (not b!7914644) (not b!7914784) (not b!7914643) (not b!7914725) (not b!7914590) (not bm!734286) (not b!7914589) (not b!7914755))
(check-sat)
