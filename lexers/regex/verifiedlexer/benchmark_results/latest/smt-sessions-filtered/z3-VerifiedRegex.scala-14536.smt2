; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754964 () Bool)

(assert start!754964)

(declare-fun b!8020523 () Bool)

(declare-fun e!4724701 () Bool)

(declare-fun tp_is_empty!54049 () Bool)

(declare-fun tp!2400518 () Bool)

(assert (=> b!8020523 (= e!4724701 (and tp_is_empty!54049 tp!2400518))))

(declare-fun b!8020524 () Bool)

(declare-fun e!4724702 () Bool)

(declare-datatypes ((B!4161 0))(
  ( (B!4162 (val!32470 Int)) )
))
(declare-datatypes ((List!74982 0))(
  ( (Nil!74858) (Cons!74858 (h!81306 B!4161) (t!390725 List!74982)) )
))
(declare-fun p1!173 () List!74982)

(declare-fun l!3353 () List!74982)

(get-info :version)

(assert (=> b!8020524 (= e!4724702 (and ((_ is Cons!74858) p1!173) (= l!3353 Nil!74858)))))

(declare-fun res!3171261 () Bool)

(assert (=> start!754964 (=> (not res!3171261) (not e!4724702))))

(declare-fun isPrefix!6789 (List!74982 List!74982) Bool)

(assert (=> start!754964 (= res!3171261 (isPrefix!6789 p1!173 l!3353))))

(assert (=> start!754964 e!4724702))

(assert (=> start!754964 e!4724701))

(declare-fun e!4724700 () Bool)

(assert (=> start!754964 e!4724700))

(declare-fun e!4724703 () Bool)

(assert (=> start!754964 e!4724703))

(declare-fun b!8020525 () Bool)

(declare-fun tp!2400516 () Bool)

(assert (=> b!8020525 (= e!4724700 (and tp_is_empty!54049 tp!2400516))))

(declare-fun b!8020526 () Bool)

(declare-fun res!3171262 () Bool)

(assert (=> b!8020526 (=> (not res!3171262) (not e!4724702))))

(declare-fun p2!173 () List!74982)

(declare-fun size!43643 (List!74982) Int)

(assert (=> b!8020526 (= res!3171262 (= (size!43643 p1!173) (size!43643 p2!173)))))

(declare-fun b!8020527 () Bool)

(declare-fun res!3171260 () Bool)

(assert (=> b!8020527 (=> (not res!3171260) (not e!4724702))))

(assert (=> b!8020527 (= res!3171260 (isPrefix!6789 p2!173 l!3353))))

(declare-fun b!8020528 () Bool)

(declare-fun tp!2400517 () Bool)

(assert (=> b!8020528 (= e!4724703 (and tp_is_empty!54049 tp!2400517))))

(assert (= (and start!754964 res!3171261) b!8020527))

(assert (= (and b!8020527 res!3171260) b!8020526))

(assert (= (and b!8020526 res!3171262) b!8020524))

(assert (= (and start!754964 ((_ is Cons!74858) p1!173)) b!8020523))

(assert (= (and start!754964 ((_ is Cons!74858) l!3353)) b!8020525))

(assert (= (and start!754964 ((_ is Cons!74858) p2!173)) b!8020528))

(declare-fun m!8383506 () Bool)

(assert (=> start!754964 m!8383506))

(declare-fun m!8383508 () Bool)

(assert (=> b!8020526 m!8383508))

(declare-fun m!8383510 () Bool)

(assert (=> b!8020526 m!8383510))

(declare-fun m!8383512 () Bool)

(assert (=> b!8020527 m!8383512))

(check-sat (not b!8020523) tp_is_empty!54049 (not b!8020527) (not b!8020526) (not start!754964) (not b!8020525) (not b!8020528))
(check-sat)
(get-model)

(declare-fun b!8020539 () Bool)

(declare-fun e!4724712 () Bool)

(declare-fun tail!15932 (List!74982) List!74982)

(assert (=> b!8020539 (= e!4724712 (isPrefix!6789 (tail!15932 p1!173) (tail!15932 l!3353)))))

(declare-fun d!2391613 () Bool)

(declare-fun e!4724710 () Bool)

(assert (=> d!2391613 e!4724710))

(declare-fun res!3171272 () Bool)

(assert (=> d!2391613 (=> res!3171272 e!4724710)))

(declare-fun lt!2719816 () Bool)

(assert (=> d!2391613 (= res!3171272 (not lt!2719816))))

(declare-fun e!4724711 () Bool)

(assert (=> d!2391613 (= lt!2719816 e!4724711)))

(declare-fun res!3171274 () Bool)

(assert (=> d!2391613 (=> res!3171274 e!4724711)))

(assert (=> d!2391613 (= res!3171274 ((_ is Nil!74858) p1!173))))

(assert (=> d!2391613 (= (isPrefix!6789 p1!173 l!3353) lt!2719816)))

(declare-fun b!8020537 () Bool)

(assert (=> b!8020537 (= e!4724711 e!4724712)))

(declare-fun res!3171273 () Bool)

(assert (=> b!8020537 (=> (not res!3171273) (not e!4724712))))

(assert (=> b!8020537 (= res!3171273 (not ((_ is Nil!74858) l!3353)))))

(declare-fun b!8020540 () Bool)

(assert (=> b!8020540 (= e!4724710 (>= (size!43643 l!3353) (size!43643 p1!173)))))

(declare-fun b!8020538 () Bool)

(declare-fun res!3171271 () Bool)

(assert (=> b!8020538 (=> (not res!3171271) (not e!4724712))))

(declare-fun head!16399 (List!74982) B!4161)

(assert (=> b!8020538 (= res!3171271 (= (head!16399 p1!173) (head!16399 l!3353)))))

(assert (= (and d!2391613 (not res!3171274)) b!8020537))

(assert (= (and b!8020537 res!3171273) b!8020538))

(assert (= (and b!8020538 res!3171271) b!8020539))

(assert (= (and d!2391613 (not res!3171272)) b!8020540))

(declare-fun m!8383514 () Bool)

(assert (=> b!8020539 m!8383514))

(declare-fun m!8383516 () Bool)

(assert (=> b!8020539 m!8383516))

(assert (=> b!8020539 m!8383514))

(assert (=> b!8020539 m!8383516))

(declare-fun m!8383518 () Bool)

(assert (=> b!8020539 m!8383518))

(declare-fun m!8383520 () Bool)

(assert (=> b!8020540 m!8383520))

(assert (=> b!8020540 m!8383508))

(declare-fun m!8383522 () Bool)

(assert (=> b!8020538 m!8383522))

(declare-fun m!8383524 () Bool)

(assert (=> b!8020538 m!8383524))

(assert (=> start!754964 d!2391613))

(declare-fun d!2391617 () Bool)

(declare-fun lt!2719821 () Int)

(assert (=> d!2391617 (>= lt!2719821 0)))

(declare-fun e!4724717 () Int)

(assert (=> d!2391617 (= lt!2719821 e!4724717)))

(declare-fun c!1472049 () Bool)

(assert (=> d!2391617 (= c!1472049 ((_ is Nil!74858) p1!173))))

(assert (=> d!2391617 (= (size!43643 p1!173) lt!2719821)))

(declare-fun b!8020547 () Bool)

(assert (=> b!8020547 (= e!4724717 0)))

(declare-fun b!8020548 () Bool)

(assert (=> b!8020548 (= e!4724717 (+ 1 (size!43643 (t!390725 p1!173))))))

(assert (= (and d!2391617 c!1472049) b!8020547))

(assert (= (and d!2391617 (not c!1472049)) b!8020548))

(declare-fun m!8383526 () Bool)

(assert (=> b!8020548 m!8383526))

(assert (=> b!8020526 d!2391617))

(declare-fun d!2391619 () Bool)

(declare-fun lt!2719822 () Int)

(assert (=> d!2391619 (>= lt!2719822 0)))

(declare-fun e!4724720 () Int)

(assert (=> d!2391619 (= lt!2719822 e!4724720)))

(declare-fun c!1472050 () Bool)

(assert (=> d!2391619 (= c!1472050 ((_ is Nil!74858) p2!173))))

(assert (=> d!2391619 (= (size!43643 p2!173) lt!2719822)))

(declare-fun b!8020553 () Bool)

(assert (=> b!8020553 (= e!4724720 0)))

(declare-fun b!8020554 () Bool)

(assert (=> b!8020554 (= e!4724720 (+ 1 (size!43643 (t!390725 p2!173))))))

(assert (= (and d!2391619 c!1472050) b!8020553))

(assert (= (and d!2391619 (not c!1472050)) b!8020554))

(declare-fun m!8383528 () Bool)

(assert (=> b!8020554 m!8383528))

(assert (=> b!8020526 d!2391619))

(declare-fun b!8020559 () Bool)

(declare-fun e!4724725 () Bool)

(assert (=> b!8020559 (= e!4724725 (isPrefix!6789 (tail!15932 p2!173) (tail!15932 l!3353)))))

(declare-fun d!2391621 () Bool)

(declare-fun e!4724723 () Bool)

(assert (=> d!2391621 e!4724723))

(declare-fun res!3171284 () Bool)

(assert (=> d!2391621 (=> res!3171284 e!4724723)))

(declare-fun lt!2719823 () Bool)

(assert (=> d!2391621 (= res!3171284 (not lt!2719823))))

(declare-fun e!4724724 () Bool)

(assert (=> d!2391621 (= lt!2719823 e!4724724)))

(declare-fun res!3171286 () Bool)

(assert (=> d!2391621 (=> res!3171286 e!4724724)))

(assert (=> d!2391621 (= res!3171286 ((_ is Nil!74858) p2!173))))

(assert (=> d!2391621 (= (isPrefix!6789 p2!173 l!3353) lt!2719823)))

(declare-fun b!8020557 () Bool)

(assert (=> b!8020557 (= e!4724724 e!4724725)))

(declare-fun res!3171285 () Bool)

(assert (=> b!8020557 (=> (not res!3171285) (not e!4724725))))

(assert (=> b!8020557 (= res!3171285 (not ((_ is Nil!74858) l!3353)))))

(declare-fun b!8020560 () Bool)

(assert (=> b!8020560 (= e!4724723 (>= (size!43643 l!3353) (size!43643 p2!173)))))

(declare-fun b!8020558 () Bool)

(declare-fun res!3171283 () Bool)

(assert (=> b!8020558 (=> (not res!3171283) (not e!4724725))))

(assert (=> b!8020558 (= res!3171283 (= (head!16399 p2!173) (head!16399 l!3353)))))

(assert (= (and d!2391621 (not res!3171286)) b!8020557))

(assert (= (and b!8020557 res!3171285) b!8020558))

(assert (= (and b!8020558 res!3171283) b!8020559))

(assert (= (and d!2391621 (not res!3171284)) b!8020560))

(declare-fun m!8383530 () Bool)

(assert (=> b!8020559 m!8383530))

(assert (=> b!8020559 m!8383516))

(assert (=> b!8020559 m!8383530))

(assert (=> b!8020559 m!8383516))

(declare-fun m!8383532 () Bool)

(assert (=> b!8020559 m!8383532))

(assert (=> b!8020560 m!8383520))

(assert (=> b!8020560 m!8383510))

(declare-fun m!8383534 () Bool)

(assert (=> b!8020558 m!8383534))

(assert (=> b!8020558 m!8383524))

(assert (=> b!8020527 d!2391621))

(declare-fun b!8020565 () Bool)

(declare-fun e!4724728 () Bool)

(declare-fun tp!2400521 () Bool)

(assert (=> b!8020565 (= e!4724728 (and tp_is_empty!54049 tp!2400521))))

(assert (=> b!8020523 (= tp!2400518 e!4724728)))

(assert (= (and b!8020523 ((_ is Cons!74858) (t!390725 p1!173))) b!8020565))

(declare-fun b!8020566 () Bool)

(declare-fun e!4724729 () Bool)

(declare-fun tp!2400522 () Bool)

(assert (=> b!8020566 (= e!4724729 (and tp_is_empty!54049 tp!2400522))))

(assert (=> b!8020528 (= tp!2400517 e!4724729)))

(assert (= (and b!8020528 ((_ is Cons!74858) (t!390725 p2!173))) b!8020566))

(declare-fun b!8020567 () Bool)

(declare-fun e!4724730 () Bool)

(declare-fun tp!2400523 () Bool)

(assert (=> b!8020567 (= e!4724730 (and tp_is_empty!54049 tp!2400523))))

(assert (=> b!8020525 (= tp!2400516 e!4724730)))

(assert (= (and b!8020525 ((_ is Cons!74858) (t!390725 l!3353))) b!8020567))

(check-sat (not b!8020567) tp_is_empty!54049 (not b!8020566) (not b!8020540) (not b!8020554) (not b!8020559) (not b!8020565) (not b!8020539) (not b!8020548) (not b!8020558) (not b!8020560) (not b!8020538))
(check-sat)
