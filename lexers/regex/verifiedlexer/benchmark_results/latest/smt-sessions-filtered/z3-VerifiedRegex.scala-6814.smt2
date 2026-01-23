; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358548 () Bool)

(assert start!358548)

(declare-datatypes ((T!69806 0))(
  ( (T!69807 (val!13308 Int)) )
))
(declare-datatypes ((List!40561 0))(
  ( (Nil!40437) (Cons!40437 (h!45857 T!69806) (t!309142 List!40561)) )
))
(declare-datatypes ((IArray!24871 0))(
  ( (IArray!24872 (innerList!12493 List!40561)) )
))
(declare-datatypes ((Conc!12433 0))(
  ( (Node!12433 (left!31295 Conc!12433) (right!31625 Conc!12433) (csize!25096 Int) (cheight!12644 Int)) (Leaf!19248 (xs!15739 IArray!24871) (csize!25097 Int)) (Empty!12433) )
))
(declare-datatypes ((BalanceConc!24460 0))(
  ( (BalanceConc!24461 (c!668169 Conc!12433)) )
))
(declare-fun thiss!5858 () BalanceConc!24460)

(declare-fun v!5448 () T!69806)

(declare-fun inv!54553 (BalanceConc!24460) Bool)

(declare-fun append!1092 (Conc!12433 T!69806) Conc!12433)

(assert (=> start!358548 (not (inv!54553 (BalanceConc!24461 (append!1092 (c!668169 thiss!5858) v!5448))))))

(declare-fun e!2366252 () Bool)

(assert (=> start!358548 (and (inv!54553 thiss!5858) e!2366252)))

(declare-fun tp_is_empty!19213 () Bool)

(assert (=> start!358548 tp_is_empty!19213))

(declare-fun b!3831778 () Bool)

(declare-fun tp!1159328 () Bool)

(declare-fun inv!54554 (Conc!12433) Bool)

(assert (=> b!3831778 (= e!2366252 (and (inv!54554 (c!668169 thiss!5858)) tp!1159328))))

(assert (= start!358548 b!3831778))

(declare-fun m!4386421 () Bool)

(assert (=> start!358548 m!4386421))

(declare-fun m!4386423 () Bool)

(assert (=> start!358548 m!4386423))

(declare-fun m!4386425 () Bool)

(assert (=> start!358548 m!4386425))

(declare-fun m!4386427 () Bool)

(assert (=> b!3831778 m!4386427))

(check-sat (not start!358548) (not b!3831778) tp_is_empty!19213)
(check-sat)
(get-model)

(declare-fun d!1137531 () Bool)

(declare-fun isBalanced!3612 (Conc!12433) Bool)

(assert (=> d!1137531 (= (inv!54553 (BalanceConc!24461 (append!1092 (c!668169 thiss!5858) v!5448))) (isBalanced!3612 (c!668169 (BalanceConc!24461 (append!1092 (c!668169 thiss!5858) v!5448)))))))

(declare-fun bs!582296 () Bool)

(assert (= bs!582296 d!1137531))

(declare-fun m!4386431 () Bool)

(assert (=> bs!582296 m!4386431))

(assert (=> start!358548 d!1137531))

(declare-fun c!668198 () Bool)

(declare-fun lt!1330442 () Conc!12433)

(declare-fun call!281729 () List!40561)

(declare-fun bm!281722 () Bool)

(declare-fun list!15073 (Conc!12433) List!40561)

(assert (=> bm!281722 (= call!281729 (list!15073 (ite c!668198 (left!31295 (c!668169 thiss!5858)) (right!31625 lt!1330442))))))

(declare-fun b!3831864 () Bool)

(declare-fun c!668199 () Bool)

(assert (=> b!3831864 (= c!668199 (< (csize!25097 (c!668169 thiss!5858)) 512))))

(declare-fun e!2366297 () Conc!12433)

(declare-fun e!2366300 () Conc!12433)

(assert (=> b!3831864 (= e!2366297 e!2366300)))

(declare-fun b!3831865 () Bool)

(declare-fun e!2366295 () Conc!12433)

(assert (=> b!3831865 (= e!2366295 e!2366297)))

(declare-fun c!668201 () Bool)

(get-info :version)

(assert (=> b!3831865 (= c!668201 ((_ is Node!12433) (c!668169 thiss!5858)))))

(declare-fun b!3831866 () Bool)

(declare-fun height!1826 (Conc!12433) Int)

(assert (=> b!3831866 (= c!668198 (<= (height!1826 lt!1330442) (+ (height!1826 (left!31295 (c!668169 thiss!5858))) 1)))))

(assert (=> b!3831866 (= lt!1330442 (append!1092 (right!31625 (c!668169 thiss!5858)) v!5448))))

(declare-fun e!2366299 () Conc!12433)

(assert (=> b!3831866 (= e!2366297 e!2366299)))

(declare-fun bm!281723 () Bool)

(declare-fun lt!1330441 () List!40561)

(declare-fun lt!1330440 () List!40561)

(declare-fun call!281733 () List!40561)

(declare-fun lt!1330430 () List!40561)

(declare-fun call!281735 () List!40561)

(declare-fun ++!10202 (List!40561 List!40561) List!40561)

(assert (=> bm!281723 (= call!281735 (++!10202 (ite c!668198 call!281733 lt!1330441) (ite c!668198 lt!1330440 lt!1330430)))))

(declare-fun call!281734 () List!40561)

(declare-fun bm!281724 () Bool)

(declare-fun lt!1330447 () List!40561)

(declare-fun call!281730 () List!40561)

(declare-fun lt!1330438 () List!40561)

(declare-fun lt!1330446 () List!40561)

(assert (=> bm!281724 (= call!281730 (++!10202 (ite c!668198 lt!1330447 lt!1330446) (ite c!668198 call!281734 lt!1330438)))))

(declare-fun bm!281725 () Bool)

(declare-fun call!281731 () List!40561)

(assert (=> bm!281725 (= call!281731 (list!15073 (right!31625 (c!668169 thiss!5858))))))

(declare-fun lt!1330439 () List!40561)

(declare-fun lt!1330431 () List!40561)

(declare-fun bm!281726 () Bool)

(assert (=> bm!281726 (= call!281733 (++!10202 (ite c!668198 lt!1330447 lt!1330438) (ite c!668198 lt!1330431 lt!1330439)))))

(declare-datatypes ((Unit!58204 0))(
  ( (Unit!58205) )
))
(declare-fun call!281727 () Unit!58204)

(declare-fun lt!1330434 () List!40561)

(declare-fun bm!281727 () Bool)

(declare-fun lemmaConcatAssociativity!2206 (List!40561 List!40561 List!40561) Unit!58204)

(assert (=> bm!281727 (= call!281727 (lemmaConcatAssociativity!2206 (ite c!668198 lt!1330447 lt!1330441) (ite c!668198 lt!1330431 lt!1330430) (ite c!668198 lt!1330440 lt!1330434)))))

(declare-fun bm!281728 () Bool)

(declare-fun call!281736 () IArray!24871)

(declare-fun fill!203 (Int T!69806) IArray!24871)

(assert (=> bm!281728 (= call!281736 (fill!203 1 v!5448))))

(declare-fun bm!281729 () Bool)

(declare-fun c!668202 () Bool)

(assert (=> bm!281729 (= c!668202 c!668201)))

(declare-fun e!2366296 () Conc!12433)

(declare-fun call!281728 () Conc!12433)

(declare-fun <>!367 (Conc!12433 Conc!12433) Conc!12433)

(assert (=> bm!281729 (= call!281728 (<>!367 (ite c!668201 (left!31295 (c!668169 thiss!5858)) (c!668169 thiss!5858)) e!2366296))))

(declare-fun b!3831868 () Bool)

(declare-fun res!1551291 () Bool)

(declare-fun e!2366298 () Bool)

(assert (=> b!3831868 (=> (not res!1551291) (not e!2366298))))

(declare-fun lt!1330444 () Conc!12433)

(assert (=> b!3831868 (= res!1551291 (<= (height!1826 lt!1330444) (+ (height!1826 (c!668169 thiss!5858)) 1)))))

(declare-fun bm!281730 () Bool)

(assert (=> bm!281730 (= call!281734 (++!10202 (ite c!668198 lt!1330431 lt!1330430) (ite c!668198 lt!1330440 lt!1330434)))))

(declare-fun b!3831869 () Bool)

(assert (=> b!3831869 (= e!2366300 call!281728)))

(declare-fun b!3831870 () Bool)

(declare-fun $colon+!285 (List!40561 T!69806) List!40561)

(assert (=> b!3831870 (= e!2366298 (= (list!15073 lt!1330444) ($colon+!285 (list!15073 (c!668169 thiss!5858)) v!5448)))))

(declare-fun b!3831871 () Bool)

(declare-fun call!281732 () Conc!12433)

(assert (=> b!3831871 (= e!2366299 call!281732)))

(assert (=> b!3831871 (= lt!1330447 call!281729)))

(assert (=> b!3831871 (= lt!1330431 call!281731)))

(assert (=> b!3831871 (= lt!1330440 (Cons!40437 v!5448 Nil!40437))))

(declare-fun lt!1330433 () Unit!58204)

(assert (=> b!3831871 (= lt!1330433 call!281727)))

(assert (=> b!3831871 (= call!281735 call!281730)))

(declare-fun lt!1330445 () Unit!58204)

(assert (=> b!3831871 (= lt!1330445 lt!1330433)))

(declare-fun b!3831867 () Bool)

(assert (=> b!3831867 (= e!2366299 (<>!367 call!281732 (right!31625 lt!1330442)))))

(assert (=> b!3831867 (= lt!1330441 (list!15073 (left!31295 (c!668169 thiss!5858))))))

(assert (=> b!3831867 (= lt!1330430 (list!15073 (left!31295 lt!1330442)))))

(assert (=> b!3831867 (= lt!1330434 call!281729)))

(declare-fun lt!1330437 () Unit!58204)

(assert (=> b!3831867 (= lt!1330437 call!281727)))

(assert (=> b!3831867 (= (++!10202 call!281735 lt!1330434) (++!10202 lt!1330441 call!281734))))

(declare-fun lt!1330435 () Unit!58204)

(assert (=> b!3831867 (= lt!1330435 lt!1330437)))

(assert (=> b!3831867 (= lt!1330446 (list!15073 (left!31295 (c!668169 thiss!5858))))))

(assert (=> b!3831867 (= lt!1330438 call!281731)))

(assert (=> b!3831867 (= lt!1330439 (Cons!40437 v!5448 Nil!40437))))

(declare-fun lt!1330436 () Unit!58204)

(assert (=> b!3831867 (= lt!1330436 (lemmaConcatAssociativity!2206 lt!1330446 lt!1330438 lt!1330439))))

(assert (=> b!3831867 (= (++!10202 call!281730 lt!1330439) (++!10202 lt!1330446 call!281733))))

(declare-fun lt!1330432 () Unit!58204)

(assert (=> b!3831867 (= lt!1330432 lt!1330436)))

(declare-fun d!1137533 () Bool)

(assert (=> d!1137533 e!2366298))

(declare-fun res!1551292 () Bool)

(assert (=> d!1137533 (=> (not res!1551292) (not e!2366298))))

(assert (=> d!1137533 (= res!1551292 (isBalanced!3612 lt!1330444))))

(assert (=> d!1137533 (= lt!1330444 e!2366295)))

(declare-fun c!668200 () Bool)

(assert (=> d!1137533 (= c!668200 ((_ is Empty!12433) (c!668169 thiss!5858)))))

(assert (=> d!1137533 (isBalanced!3612 (c!668169 thiss!5858))))

(assert (=> d!1137533 (= (append!1092 (c!668169 thiss!5858) v!5448) lt!1330444)))

(declare-fun bm!281731 () Bool)

(assert (=> bm!281731 (= call!281732 call!281728)))

(declare-fun b!3831872 () Bool)

(declare-fun res!1551293 () Bool)

(assert (=> b!3831872 (=> (not res!1551293) (not e!2366298))))

(assert (=> b!3831872 (= res!1551293 (<= (height!1826 (c!668169 thiss!5858)) (height!1826 lt!1330444)))))

(declare-fun b!3831873 () Bool)

(assert (=> b!3831873 (= e!2366296 (ite c!668198 lt!1330442 (left!31295 lt!1330442)))))

(declare-fun b!3831874 () Bool)

(assert (=> b!3831874 (= e!2366295 (Leaf!19248 call!281736 1))))

(declare-fun b!3831875 () Bool)

(assert (=> b!3831875 (= e!2366296 (Leaf!19248 call!281736 1))))

(declare-fun b!3831876 () Bool)

(declare-fun append!1094 (IArray!24871 T!69806) IArray!24871)

(assert (=> b!3831876 (= e!2366300 (Leaf!19248 (append!1094 (xs!15739 (c!668169 thiss!5858)) v!5448) (+ (csize!25097 (c!668169 thiss!5858)) 1)))))

(declare-fun lt!1330443 () List!40561)

(declare-fun list!15074 (IArray!24871) List!40561)

(assert (=> b!3831876 (= lt!1330443 ($colon+!285 (list!15074 (xs!15739 (c!668169 thiss!5858))) v!5448))))

(assert (= (and d!1137533 c!668200) b!3831874))

(assert (= (and d!1137533 (not c!668200)) b!3831865))

(assert (= (and b!3831865 c!668201) b!3831866))

(assert (= (and b!3831865 (not c!668201)) b!3831864))

(assert (= (and b!3831866 c!668198) b!3831871))

(assert (= (and b!3831866 (not c!668198)) b!3831867))

(assert (= (or b!3831871 b!3831867) bm!281730))

(assert (= (or b!3831871 b!3831867) bm!281727))

(assert (= (or b!3831871 b!3831867) bm!281722))

(assert (= (or b!3831871 b!3831867) bm!281726))

(assert (= (or b!3831871 b!3831867) bm!281725))

(assert (= (or b!3831871 b!3831867) bm!281731))

(assert (= (or b!3831871 b!3831867) bm!281723))

(assert (= (or b!3831871 b!3831867) bm!281724))

(assert (= (and b!3831864 c!668199) b!3831876))

(assert (= (and b!3831864 (not c!668199)) b!3831869))

(assert (= (or bm!281731 b!3831869) bm!281729))

(assert (= (and bm!281729 c!668202) b!3831873))

(assert (= (and bm!281729 (not c!668202)) b!3831875))

(assert (= (or b!3831874 b!3831875) bm!281728))

(assert (= (and d!1137533 res!1551292) b!3831872))

(assert (= (and b!3831872 res!1551293) b!3831868))

(assert (= (and b!3831868 res!1551291) b!3831870))

(declare-fun m!4386503 () Bool)

(assert (=> b!3831866 m!4386503))

(declare-fun m!4386505 () Bool)

(assert (=> b!3831866 m!4386505))

(declare-fun m!4386507 () Bool)

(assert (=> b!3831866 m!4386507))

(declare-fun m!4386509 () Bool)

(assert (=> b!3831872 m!4386509))

(declare-fun m!4386511 () Bool)

(assert (=> b!3831872 m!4386511))

(declare-fun m!4386513 () Bool)

(assert (=> b!3831876 m!4386513))

(declare-fun m!4386515 () Bool)

(assert (=> b!3831876 m!4386515))

(assert (=> b!3831876 m!4386515))

(declare-fun m!4386517 () Bool)

(assert (=> b!3831876 m!4386517))

(declare-fun m!4386519 () Bool)

(assert (=> b!3831870 m!4386519))

(declare-fun m!4386521 () Bool)

(assert (=> b!3831870 m!4386521))

(assert (=> b!3831870 m!4386521))

(declare-fun m!4386523 () Bool)

(assert (=> b!3831870 m!4386523))

(declare-fun m!4386525 () Bool)

(assert (=> d!1137533 m!4386525))

(declare-fun m!4386527 () Bool)

(assert (=> d!1137533 m!4386527))

(declare-fun m!4386529 () Bool)

(assert (=> bm!281730 m!4386529))

(declare-fun m!4386531 () Bool)

(assert (=> bm!281725 m!4386531))

(declare-fun m!4386533 () Bool)

(assert (=> b!3831867 m!4386533))

(declare-fun m!4386535 () Bool)

(assert (=> b!3831867 m!4386535))

(declare-fun m!4386537 () Bool)

(assert (=> b!3831867 m!4386537))

(declare-fun m!4386539 () Bool)

(assert (=> b!3831867 m!4386539))

(declare-fun m!4386541 () Bool)

(assert (=> b!3831867 m!4386541))

(declare-fun m!4386543 () Bool)

(assert (=> b!3831867 m!4386543))

(declare-fun m!4386545 () Bool)

(assert (=> b!3831867 m!4386545))

(declare-fun m!4386547 () Bool)

(assert (=> b!3831867 m!4386547))

(declare-fun m!4386549 () Bool)

(assert (=> bm!281728 m!4386549))

(declare-fun m!4386551 () Bool)

(assert (=> bm!281727 m!4386551))

(declare-fun m!4386553 () Bool)

(assert (=> bm!281726 m!4386553))

(declare-fun m!4386555 () Bool)

(assert (=> bm!281722 m!4386555))

(assert (=> b!3831868 m!4386511))

(assert (=> b!3831868 m!4386509))

(declare-fun m!4386557 () Bool)

(assert (=> bm!281729 m!4386557))

(declare-fun m!4386559 () Bool)

(assert (=> bm!281724 m!4386559))

(declare-fun m!4386561 () Bool)

(assert (=> bm!281723 m!4386561))

(assert (=> start!358548 d!1137533))

(declare-fun d!1137539 () Bool)

(assert (=> d!1137539 (= (inv!54553 thiss!5858) (isBalanced!3612 (c!668169 thiss!5858)))))

(declare-fun bs!582298 () Bool)

(assert (= bs!582298 d!1137539))

(assert (=> bs!582298 m!4386527))

(assert (=> start!358548 d!1137539))

(declare-fun d!1137541 () Bool)

(declare-fun c!668205 () Bool)

(assert (=> d!1137541 (= c!668205 ((_ is Node!12433) (c!668169 thiss!5858)))))

(declare-fun e!2366305 () Bool)

(assert (=> d!1137541 (= (inv!54554 (c!668169 thiss!5858)) e!2366305)))

(declare-fun b!3831883 () Bool)

(declare-fun inv!54558 (Conc!12433) Bool)

(assert (=> b!3831883 (= e!2366305 (inv!54558 (c!668169 thiss!5858)))))

(declare-fun b!3831884 () Bool)

(declare-fun e!2366306 () Bool)

(assert (=> b!3831884 (= e!2366305 e!2366306)))

(declare-fun res!1551296 () Bool)

(assert (=> b!3831884 (= res!1551296 (not ((_ is Leaf!19248) (c!668169 thiss!5858))))))

(assert (=> b!3831884 (=> res!1551296 e!2366306)))

(declare-fun b!3831885 () Bool)

(declare-fun inv!54559 (Conc!12433) Bool)

(assert (=> b!3831885 (= e!2366306 (inv!54559 (c!668169 thiss!5858)))))

(assert (= (and d!1137541 c!668205) b!3831883))

(assert (= (and d!1137541 (not c!668205)) b!3831884))

(assert (= (and b!3831884 (not res!1551296)) b!3831885))

(declare-fun m!4386563 () Bool)

(assert (=> b!3831883 m!4386563))

(declare-fun m!4386565 () Bool)

(assert (=> b!3831885 m!4386565))

(assert (=> b!3831778 d!1137541))

(declare-fun e!2366312 () Bool)

(declare-fun tp!1159346 () Bool)

(declare-fun tp!1159344 () Bool)

(declare-fun b!3831894 () Bool)

(assert (=> b!3831894 (= e!2366312 (and (inv!54554 (left!31295 (c!668169 thiss!5858))) tp!1159346 (inv!54554 (right!31625 (c!668169 thiss!5858))) tp!1159344))))

(declare-fun b!3831896 () Bool)

(declare-fun e!2366311 () Bool)

(declare-fun tp!1159345 () Bool)

(assert (=> b!3831896 (= e!2366311 tp!1159345)))

(declare-fun b!3831895 () Bool)

(declare-fun inv!54560 (IArray!24871) Bool)

(assert (=> b!3831895 (= e!2366312 (and (inv!54560 (xs!15739 (c!668169 thiss!5858))) e!2366311))))

(assert (=> b!3831778 (= tp!1159328 (and (inv!54554 (c!668169 thiss!5858)) e!2366312))))

(assert (= (and b!3831778 ((_ is Node!12433) (c!668169 thiss!5858))) b!3831894))

(assert (= b!3831895 b!3831896))

(assert (= (and b!3831778 ((_ is Leaf!19248) (c!668169 thiss!5858))) b!3831895))

(declare-fun m!4386567 () Bool)

(assert (=> b!3831894 m!4386567))

(declare-fun m!4386569 () Bool)

(assert (=> b!3831894 m!4386569))

(declare-fun m!4386571 () Bool)

(assert (=> b!3831895 m!4386571))

(assert (=> b!3831778 m!4386427))

(check-sat (not b!3831895) (not bm!281730) (not bm!281724) tp_is_empty!19213 (not bm!281723) (not b!3831867) (not bm!281722) (not b!3831883) (not bm!281726) (not b!3831896) (not b!3831870) (not b!3831894) (not d!1137533) (not d!1137539) (not b!3831778) (not bm!281725) (not b!3831866) (not d!1137531) (not b!3831868) (not bm!281727) (not b!3831872) (not bm!281728) (not bm!281729) (not b!3831885) (not b!3831876))
(check-sat)
