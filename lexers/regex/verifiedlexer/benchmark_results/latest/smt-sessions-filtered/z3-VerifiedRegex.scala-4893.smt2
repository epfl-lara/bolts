; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250864 () Bool)

(assert start!250864)

(declare-fun res!1089143 () Bool)

(declare-fun e!1634054 () Bool)

(assert (=> start!250864 (=> (not res!1089143) (not e!1634054))))

(declare-datatypes ((B!1993 0))(
  ( (B!1994 (val!9464 Int)) )
))
(declare-datatypes ((List!29897 0))(
  ( (Nil!29797) (Cons!29797 (h!35217 B!1993) (t!212910 List!29897)) )
))
(declare-fun l!3230 () List!29897)

(declare-fun noDuplicate!345 (List!29897) Bool)

(assert (=> start!250864 (= res!1089143 (noDuplicate!345 l!3230))))

(assert (=> start!250864 e!1634054))

(declare-fun e!1634055 () Bool)

(assert (=> start!250864 e!1634055))

(declare-fun b!2590403 () Bool)

(declare-fun res!1089142 () Bool)

(assert (=> b!2590403 (=> (not res!1089142) (not e!1634054))))

(get-info :version)

(assert (=> b!2590403 (= res!1089142 ((_ is Cons!29797) l!3230))))

(declare-fun b!2590404 () Bool)

(declare-fun lt!910898 () Int)

(declare-fun size!23110 (List!29897) Int)

(assert (=> b!2590404 (= e!1634054 (not (< lt!910898 (size!23110 l!3230))))))

(assert (=> b!2590404 (= lt!910898 (size!23110 (t!212910 l!3230)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!1748 ((InoxSet B!1993)) List!29897)

(declare-fun content!4138 (List!29897) (InoxSet B!1993))

(assert (=> b!2590404 (= lt!910898 (size!23110 (toList!1748 (content!4138 (t!212910 l!3230)))))))

(declare-datatypes ((Unit!43700 0))(
  ( (Unit!43701) )
))
(declare-fun lt!910899 () Unit!43700)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!38 (List!29897) Unit!43700)

(assert (=> b!2590404 (= lt!910899 (lemmaNoDuplicateThenContentToListSameSize!38 (t!212910 l!3230)))))

(declare-fun b!2590405 () Bool)

(declare-fun tp_is_empty!13273 () Bool)

(declare-fun tp!822600 () Bool)

(assert (=> b!2590405 (= e!1634055 (and tp_is_empty!13273 tp!822600))))

(assert (= (and start!250864 res!1089143) b!2590403))

(assert (= (and b!2590403 res!1089142) b!2590404))

(assert (= (and start!250864 ((_ is Cons!29797) l!3230)) b!2590405))

(declare-fun m!2926499 () Bool)

(assert (=> start!250864 m!2926499))

(declare-fun m!2926501 () Bool)

(assert (=> b!2590404 m!2926501))

(declare-fun m!2926503 () Bool)

(assert (=> b!2590404 m!2926503))

(declare-fun m!2926505 () Bool)

(assert (=> b!2590404 m!2926505))

(declare-fun m!2926507 () Bool)

(assert (=> b!2590404 m!2926507))

(assert (=> b!2590404 m!2926501))

(assert (=> b!2590404 m!2926503))

(declare-fun m!2926509 () Bool)

(assert (=> b!2590404 m!2926509))

(declare-fun m!2926511 () Bool)

(assert (=> b!2590404 m!2926511))

(check-sat (not b!2590404) (not start!250864) (not b!2590405) tp_is_empty!13273)
(check-sat)
(get-model)

(declare-fun d!733788 () Bool)

(declare-fun lt!910902 () Int)

(assert (=> d!733788 (>= lt!910902 0)))

(declare-fun e!1634064 () Int)

(assert (=> d!733788 (= lt!910902 e!1634064)))

(declare-fun c!417613 () Bool)

(assert (=> d!733788 (= c!417613 ((_ is Nil!29797) (toList!1748 (content!4138 (t!212910 l!3230)))))))

(assert (=> d!733788 (= (size!23110 (toList!1748 (content!4138 (t!212910 l!3230)))) lt!910902)))

(declare-fun b!2590416 () Bool)

(assert (=> b!2590416 (= e!1634064 0)))

(declare-fun b!2590417 () Bool)

(assert (=> b!2590417 (= e!1634064 (+ 1 (size!23110 (t!212910 (toList!1748 (content!4138 (t!212910 l!3230)))))))))

(assert (= (and d!733788 c!417613) b!2590416))

(assert (= (and d!733788 (not c!417613)) b!2590417))

(declare-fun m!2926517 () Bool)

(assert (=> b!2590417 m!2926517))

(assert (=> b!2590404 d!733788))

(declare-fun d!733792 () Bool)

(declare-fun lt!910903 () Int)

(assert (=> d!733792 (>= lt!910903 0)))

(declare-fun e!1634065 () Int)

(assert (=> d!733792 (= lt!910903 e!1634065)))

(declare-fun c!417614 () Bool)

(assert (=> d!733792 (= c!417614 ((_ is Nil!29797) l!3230))))

(assert (=> d!733792 (= (size!23110 l!3230) lt!910903)))

(declare-fun b!2590418 () Bool)

(assert (=> b!2590418 (= e!1634065 0)))

(declare-fun b!2590419 () Bool)

(assert (=> b!2590419 (= e!1634065 (+ 1 (size!23110 (t!212910 l!3230))))))

(assert (= (and d!733792 c!417614) b!2590418))

(assert (= (and d!733792 (not c!417614)) b!2590419))

(assert (=> b!2590419 m!2926507))

(assert (=> b!2590404 d!733792))

(declare-fun d!733794 () Bool)

(declare-fun lt!910906 () Int)

(assert (=> d!733794 (>= lt!910906 0)))

(declare-fun e!1634068 () Int)

(assert (=> d!733794 (= lt!910906 e!1634068)))

(declare-fun c!417617 () Bool)

(assert (=> d!733794 (= c!417617 ((_ is Nil!29797) (t!212910 l!3230)))))

(assert (=> d!733794 (= (size!23110 (t!212910 l!3230)) lt!910906)))

(declare-fun b!2590424 () Bool)

(assert (=> b!2590424 (= e!1634068 0)))

(declare-fun b!2590425 () Bool)

(assert (=> b!2590425 (= e!1634068 (+ 1 (size!23110 (t!212910 (t!212910 l!3230)))))))

(assert (= (and d!733794 c!417617) b!2590424))

(assert (= (and d!733794 (not c!417617)) b!2590425))

(declare-fun m!2926519 () Bool)

(assert (=> b!2590425 m!2926519))

(assert (=> b!2590404 d!733794))

(declare-fun d!733796 () Bool)

(declare-fun c!417623 () Bool)

(assert (=> d!733796 (= c!417623 ((_ is Nil!29797) (t!212910 l!3230)))))

(declare-fun e!1634074 () (InoxSet B!1993))

(assert (=> d!733796 (= (content!4138 (t!212910 l!3230)) e!1634074)))

(declare-fun b!2590436 () Bool)

(assert (=> b!2590436 (= e!1634074 ((as const (Array B!1993 Bool)) false))))

(declare-fun b!2590437 () Bool)

(assert (=> b!2590437 (= e!1634074 ((_ map or) (store ((as const (Array B!1993 Bool)) false) (h!35217 (t!212910 l!3230)) true) (content!4138 (t!212910 (t!212910 l!3230)))))))

(assert (= (and d!733796 c!417623) b!2590436))

(assert (= (and d!733796 (not c!417623)) b!2590437))

(declare-fun m!2926525 () Bool)

(assert (=> b!2590437 m!2926525))

(declare-fun m!2926527 () Bool)

(assert (=> b!2590437 m!2926527))

(assert (=> b!2590404 d!733796))

(declare-fun d!733804 () Bool)

(declare-fun e!1634080 () Bool)

(assert (=> d!733804 e!1634080))

(declare-fun res!1089152 () Bool)

(assert (=> d!733804 (=> (not res!1089152) (not e!1634080))))

(declare-fun lt!910912 () List!29897)

(assert (=> d!733804 (= res!1089152 (noDuplicate!345 lt!910912))))

(declare-fun choose!15280 ((InoxSet B!1993)) List!29897)

(assert (=> d!733804 (= lt!910912 (choose!15280 (content!4138 (t!212910 l!3230))))))

(assert (=> d!733804 (= (toList!1748 (content!4138 (t!212910 l!3230))) lt!910912)))

(declare-fun b!2590446 () Bool)

(assert (=> b!2590446 (= e!1634080 (= (content!4138 lt!910912) (content!4138 (t!212910 l!3230))))))

(assert (= (and d!733804 res!1089152) b!2590446))

(declare-fun m!2926533 () Bool)

(assert (=> d!733804 m!2926533))

(assert (=> d!733804 m!2926501))

(declare-fun m!2926535 () Bool)

(assert (=> d!733804 m!2926535))

(declare-fun m!2926537 () Bool)

(assert (=> b!2590446 m!2926537))

(assert (=> b!2590404 d!733804))

(declare-fun d!733808 () Bool)

(assert (=> d!733808 (= (size!23110 (toList!1748 (content!4138 (t!212910 l!3230)))) (size!23110 (t!212910 l!3230)))))

(declare-fun lt!910918 () Unit!43700)

(declare-fun choose!15281 (List!29897) Unit!43700)

(assert (=> d!733808 (= lt!910918 (choose!15281 (t!212910 l!3230)))))

(assert (=> d!733808 (noDuplicate!345 (t!212910 l!3230))))

(assert (=> d!733808 (= (lemmaNoDuplicateThenContentToListSameSize!38 (t!212910 l!3230)) lt!910918)))

(declare-fun bs!472117 () Bool)

(assert (= bs!472117 d!733808))

(assert (=> bs!472117 m!2926503))

(assert (=> bs!472117 m!2926509))

(assert (=> bs!472117 m!2926507))

(declare-fun m!2926545 () Bool)

(assert (=> bs!472117 m!2926545))

(declare-fun m!2926547 () Bool)

(assert (=> bs!472117 m!2926547))

(assert (=> bs!472117 m!2926501))

(assert (=> bs!472117 m!2926501))

(assert (=> bs!472117 m!2926503))

(assert (=> b!2590404 d!733808))

(declare-fun d!733812 () Bool)

(declare-fun res!1089160 () Bool)

(declare-fun e!1634091 () Bool)

(assert (=> d!733812 (=> res!1089160 e!1634091)))

(assert (=> d!733812 (= res!1089160 ((_ is Nil!29797) l!3230))))

(assert (=> d!733812 (= (noDuplicate!345 l!3230) e!1634091)))

(declare-fun b!2590459 () Bool)

(declare-fun e!1634092 () Bool)

(assert (=> b!2590459 (= e!1634091 e!1634092)))

(declare-fun res!1089161 () Bool)

(assert (=> b!2590459 (=> (not res!1089161) (not e!1634092))))

(declare-fun contains!5347 (List!29897 B!1993) Bool)

(assert (=> b!2590459 (= res!1089161 (not (contains!5347 (t!212910 l!3230) (h!35217 l!3230))))))

(declare-fun b!2590460 () Bool)

(assert (=> b!2590460 (= e!1634092 (noDuplicate!345 (t!212910 l!3230)))))

(assert (= (and d!733812 (not res!1089160)) b!2590459))

(assert (= (and b!2590459 res!1089161) b!2590460))

(declare-fun m!2926551 () Bool)

(assert (=> b!2590459 m!2926551))

(assert (=> b!2590460 m!2926547))

(assert (=> start!250864 d!733812))

(declare-fun b!2590465 () Bool)

(declare-fun e!1634095 () Bool)

(declare-fun tp!822606 () Bool)

(assert (=> b!2590465 (= e!1634095 (and tp_is_empty!13273 tp!822606))))

(assert (=> b!2590405 (= tp!822600 e!1634095)))

(assert (= (and b!2590405 ((_ is Cons!29797) (t!212910 l!3230))) b!2590465))

(check-sat (not b!2590417) (not b!2590419) (not b!2590425) (not b!2590465) (not b!2590459) (not d!733808) (not b!2590460) (not b!2590437) tp_is_empty!13273 (not b!2590446) (not d!733804))
(check-sat)
