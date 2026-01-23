; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754824 () Bool)

(assert start!754824)

(declare-fun b!8019520 () Bool)

(declare-fun res!3170904 () Bool)

(declare-fun e!4724059 () Bool)

(assert (=> b!8019520 (=> (not res!3170904) (not e!4724059))))

(declare-datatypes ((B!4121 0))(
  ( (B!4122 (val!32450 Int)) )
))
(declare-datatypes ((List!74962 0))(
  ( (Nil!74838) (Cons!74838 (h!81286 B!4121) (t!390705 List!74962)) )
))
(declare-fun p!2009 () List!74962)

(get-info :version)

(assert (=> b!8019520 (= res!3170904 (not ((_ is Cons!74838) p!2009)))))

(declare-fun b!8019521 () Bool)

(declare-fun l!3435 () List!74962)

(declare-fun isPrefix!6785 (List!74962 List!74962) Bool)

(declare-fun ++!18528 (List!74962 List!74962) List!74962)

(declare-fun head!16396 (List!74962) B!4121)

(declare-fun getSuffix!3950 (List!74962 List!74962) List!74962)

(assert (=> b!8019521 (= e!4724059 (not (isPrefix!6785 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)) l!3435)))))

(declare-fun res!3170905 () Bool)

(assert (=> start!754824 (=> (not res!3170905) (not e!4724059))))

(assert (=> start!754824 (= res!3170905 (isPrefix!6785 p!2009 l!3435))))

(assert (=> start!754824 e!4724059))

(declare-fun e!4724057 () Bool)

(assert (=> start!754824 e!4724057))

(declare-fun e!4724058 () Bool)

(assert (=> start!754824 e!4724058))

(declare-fun b!8019522 () Bool)

(declare-fun tp_is_empty!54009 () Bool)

(declare-fun tp!2400250 () Bool)

(assert (=> b!8019522 (= e!4724058 (and tp_is_empty!54009 tp!2400250))))

(declare-fun b!8019523 () Bool)

(declare-fun tp!2400249 () Bool)

(assert (=> b!8019523 (= e!4724057 (and tp_is_empty!54009 tp!2400249))))

(declare-fun b!8019524 () Bool)

(declare-fun res!3170906 () Bool)

(assert (=> b!8019524 (=> (not res!3170906) (not e!4724059))))

(declare-fun size!43629 (List!74962) Int)

(assert (=> b!8019524 (= res!3170906 (< (size!43629 p!2009) (size!43629 l!3435)))))

(assert (= (and start!754824 res!3170905) b!8019524))

(assert (= (and b!8019524 res!3170906) b!8019520))

(assert (= (and b!8019520 res!3170904) b!8019521))

(assert (= (and start!754824 ((_ is Cons!74838) p!2009)) b!8019523))

(assert (= (and start!754824 ((_ is Cons!74838) l!3435)) b!8019522))

(declare-fun m!8382570 () Bool)

(assert (=> b!8019521 m!8382570))

(assert (=> b!8019521 m!8382570))

(declare-fun m!8382572 () Bool)

(assert (=> b!8019521 m!8382572))

(declare-fun m!8382574 () Bool)

(assert (=> b!8019521 m!8382574))

(assert (=> b!8019521 m!8382574))

(declare-fun m!8382576 () Bool)

(assert (=> b!8019521 m!8382576))

(declare-fun m!8382578 () Bool)

(assert (=> start!754824 m!8382578))

(declare-fun m!8382580 () Bool)

(assert (=> b!8019524 m!8382580))

(declare-fun m!8382582 () Bool)

(assert (=> b!8019524 m!8382582))

(check-sat (not b!8019521) (not b!8019522) (not b!8019524) tp_is_empty!54009 (not b!8019523) (not start!754824))
(check-sat)
(get-model)

(declare-fun b!8019545 () Bool)

(declare-fun e!4724077 () Bool)

(declare-fun e!4724075 () Bool)

(assert (=> b!8019545 (= e!4724077 e!4724075)))

(declare-fun res!3170927 () Bool)

(assert (=> b!8019545 (=> (not res!3170927) (not e!4724075))))

(assert (=> b!8019545 (= res!3170927 (not ((_ is Nil!74838) l!3435)))))

(declare-fun b!8019546 () Bool)

(declare-fun res!3170928 () Bool)

(assert (=> b!8019546 (=> (not res!3170928) (not e!4724075))))

(assert (=> b!8019546 (= res!3170928 (= (head!16396 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))) (head!16396 l!3435)))))

(declare-fun b!8019547 () Bool)

(declare-fun tail!15922 (List!74962) List!74962)

(assert (=> b!8019547 (= e!4724075 (isPrefix!6785 (tail!15922 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))) (tail!15922 l!3435)))))

(declare-fun d!2391277 () Bool)

(declare-fun e!4724076 () Bool)

(assert (=> d!2391277 e!4724076))

(declare-fun res!3170930 () Bool)

(assert (=> d!2391277 (=> res!3170930 e!4724076)))

(declare-fun lt!2719591 () Bool)

(assert (=> d!2391277 (= res!3170930 (not lt!2719591))))

(assert (=> d!2391277 (= lt!2719591 e!4724077)))

(declare-fun res!3170929 () Bool)

(assert (=> d!2391277 (=> res!3170929 e!4724077)))

(assert (=> d!2391277 (= res!3170929 ((_ is Nil!74838) (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))))))

(assert (=> d!2391277 (= (isPrefix!6785 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)) l!3435) lt!2719591)))

(declare-fun b!8019548 () Bool)

(assert (=> b!8019548 (= e!4724076 (>= (size!43629 l!3435) (size!43629 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))))))

(assert (= (and d!2391277 (not res!3170929)) b!8019545))

(assert (= (and b!8019545 res!3170927) b!8019546))

(assert (= (and b!8019546 res!3170928) b!8019547))

(assert (= (and d!2391277 (not res!3170930)) b!8019548))

(assert (=> b!8019546 m!8382574))

(declare-fun m!8382590 () Bool)

(assert (=> b!8019546 m!8382590))

(declare-fun m!8382592 () Bool)

(assert (=> b!8019546 m!8382592))

(assert (=> b!8019547 m!8382574))

(declare-fun m!8382594 () Bool)

(assert (=> b!8019547 m!8382594))

(declare-fun m!8382598 () Bool)

(assert (=> b!8019547 m!8382598))

(assert (=> b!8019547 m!8382594))

(assert (=> b!8019547 m!8382598))

(declare-fun m!8382604 () Bool)

(assert (=> b!8019547 m!8382604))

(assert (=> b!8019548 m!8382582))

(assert (=> b!8019548 m!8382574))

(declare-fun m!8382606 () Bool)

(assert (=> b!8019548 m!8382606))

(assert (=> b!8019521 d!2391277))

(declare-fun d!2391281 () Bool)

(declare-fun e!4724089 () Bool)

(assert (=> d!2391281 e!4724089))

(declare-fun res!3170942 () Bool)

(assert (=> d!2391281 (=> (not res!3170942) (not e!4724089))))

(declare-fun lt!2719597 () List!74962)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15927 (List!74962) (InoxSet B!4121))

(assert (=> d!2391281 (= res!3170942 (= (content!15927 lt!2719597) ((_ map or) (content!15927 p!2009) (content!15927 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))))))

(declare-fun e!4724088 () List!74962)

(assert (=> d!2391281 (= lt!2719597 e!4724088)))

(declare-fun c!1471878 () Bool)

(assert (=> d!2391281 (= c!1471878 ((_ is Nil!74838) p!2009))))

(assert (=> d!2391281 (= (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)) lt!2719597)))

(declare-fun b!8019570 () Bool)

(assert (=> b!8019570 (= e!4724088 (Cons!74838 (h!81286 p!2009) (++!18528 (t!390705 p!2009) (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))))))

(declare-fun b!8019569 () Bool)

(assert (=> b!8019569 (= e!4724088 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))))

(declare-fun b!8019572 () Bool)

(assert (=> b!8019572 (= e!4724089 (or (not (= (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838) Nil!74838)) (= lt!2719597 p!2009)))))

(declare-fun b!8019571 () Bool)

(declare-fun res!3170941 () Bool)

(assert (=> b!8019571 (=> (not res!3170941) (not e!4724089))))

(assert (=> b!8019571 (= res!3170941 (= (size!43629 lt!2719597) (+ (size!43629 p!2009) (size!43629 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))))))

(assert (= (and d!2391281 c!1471878) b!8019569))

(assert (= (and d!2391281 (not c!1471878)) b!8019570))

(assert (= (and d!2391281 res!3170942) b!8019571))

(assert (= (and b!8019571 res!3170941) b!8019572))

(declare-fun m!8382618 () Bool)

(assert (=> d!2391281 m!8382618))

(declare-fun m!8382622 () Bool)

(assert (=> d!2391281 m!8382622))

(declare-fun m!8382624 () Bool)

(assert (=> d!2391281 m!8382624))

(declare-fun m!8382626 () Bool)

(assert (=> b!8019570 m!8382626))

(declare-fun m!8382628 () Bool)

(assert (=> b!8019571 m!8382628))

(assert (=> b!8019571 m!8382580))

(declare-fun m!8382630 () Bool)

(assert (=> b!8019571 m!8382630))

(assert (=> b!8019521 d!2391281))

(declare-fun d!2391285 () Bool)

(assert (=> d!2391285 (= (head!16396 (getSuffix!3950 l!3435 p!2009)) (h!81286 (getSuffix!3950 l!3435 p!2009)))))

(assert (=> b!8019521 d!2391285))

(declare-fun d!2391289 () Bool)

(declare-fun lt!2719603 () List!74962)

(assert (=> d!2391289 (= (++!18528 p!2009 lt!2719603) l!3435)))

(declare-fun e!4724095 () List!74962)

(assert (=> d!2391289 (= lt!2719603 e!4724095)))

(declare-fun c!1471884 () Bool)

(assert (=> d!2391289 (= c!1471884 ((_ is Cons!74838) p!2009))))

(assert (=> d!2391289 (>= (size!43629 l!3435) (size!43629 p!2009))))

(assert (=> d!2391289 (= (getSuffix!3950 l!3435 p!2009) lt!2719603)))

(declare-fun b!8019583 () Bool)

(assert (=> b!8019583 (= e!4724095 (getSuffix!3950 (tail!15922 l!3435) (t!390705 p!2009)))))

(declare-fun b!8019584 () Bool)

(assert (=> b!8019584 (= e!4724095 l!3435)))

(assert (= (and d!2391289 c!1471884) b!8019583))

(assert (= (and d!2391289 (not c!1471884)) b!8019584))

(declare-fun m!8382634 () Bool)

(assert (=> d!2391289 m!8382634))

(assert (=> d!2391289 m!8382582))

(assert (=> d!2391289 m!8382580))

(assert (=> b!8019583 m!8382598))

(assert (=> b!8019583 m!8382598))

(declare-fun m!8382638 () Bool)

(assert (=> b!8019583 m!8382638))

(assert (=> b!8019521 d!2391289))

(declare-fun b!8019589 () Bool)

(declare-fun e!4724101 () Bool)

(declare-fun e!4724099 () Bool)

(assert (=> b!8019589 (= e!4724101 e!4724099)))

(declare-fun res!3170947 () Bool)

(assert (=> b!8019589 (=> (not res!3170947) (not e!4724099))))

(assert (=> b!8019589 (= res!3170947 (not ((_ is Nil!74838) l!3435)))))

(declare-fun b!8019590 () Bool)

(declare-fun res!3170948 () Bool)

(assert (=> b!8019590 (=> (not res!3170948) (not e!4724099))))

(assert (=> b!8019590 (= res!3170948 (= (head!16396 p!2009) (head!16396 l!3435)))))

(declare-fun b!8019591 () Bool)

(assert (=> b!8019591 (= e!4724099 (isPrefix!6785 (tail!15922 p!2009) (tail!15922 l!3435)))))

(declare-fun d!2391293 () Bool)

(declare-fun e!4724100 () Bool)

(assert (=> d!2391293 e!4724100))

(declare-fun res!3170950 () Bool)

(assert (=> d!2391293 (=> res!3170950 e!4724100)))

(declare-fun lt!2719605 () Bool)

(assert (=> d!2391293 (= res!3170950 (not lt!2719605))))

(assert (=> d!2391293 (= lt!2719605 e!4724101)))

(declare-fun res!3170949 () Bool)

(assert (=> d!2391293 (=> res!3170949 e!4724101)))

(assert (=> d!2391293 (= res!3170949 ((_ is Nil!74838) p!2009))))

(assert (=> d!2391293 (= (isPrefix!6785 p!2009 l!3435) lt!2719605)))

(declare-fun b!8019592 () Bool)

(assert (=> b!8019592 (= e!4724100 (>= (size!43629 l!3435) (size!43629 p!2009)))))

(assert (= (and d!2391293 (not res!3170949)) b!8019589))

(assert (= (and b!8019589 res!3170947) b!8019590))

(assert (= (and b!8019590 res!3170948) b!8019591))

(assert (= (and d!2391293 (not res!3170950)) b!8019592))

(declare-fun m!8382642 () Bool)

(assert (=> b!8019590 m!8382642))

(assert (=> b!8019590 m!8382592))

(declare-fun m!8382648 () Bool)

(assert (=> b!8019591 m!8382648))

(assert (=> b!8019591 m!8382598))

(assert (=> b!8019591 m!8382648))

(assert (=> b!8019591 m!8382598))

(declare-fun m!8382650 () Bool)

(assert (=> b!8019591 m!8382650))

(assert (=> b!8019592 m!8382582))

(assert (=> b!8019592 m!8382580))

(assert (=> start!754824 d!2391293))

(declare-fun d!2391297 () Bool)

(declare-fun lt!2719611 () Int)

(assert (=> d!2391297 (>= lt!2719611 0)))

(declare-fun e!4724107 () Int)

(assert (=> d!2391297 (= lt!2719611 e!4724107)))

(declare-fun c!1471890 () Bool)

(assert (=> d!2391297 (= c!1471890 ((_ is Nil!74838) p!2009))))

(assert (=> d!2391297 (= (size!43629 p!2009) lt!2719611)))

(declare-fun b!8019603 () Bool)

(assert (=> b!8019603 (= e!4724107 0)))

(declare-fun b!8019604 () Bool)

(assert (=> b!8019604 (= e!4724107 (+ 1 (size!43629 (t!390705 p!2009))))))

(assert (= (and d!2391297 c!1471890) b!8019603))

(assert (= (and d!2391297 (not c!1471890)) b!8019604))

(declare-fun m!8382654 () Bool)

(assert (=> b!8019604 m!8382654))

(assert (=> b!8019524 d!2391297))

(declare-fun d!2391301 () Bool)

(declare-fun lt!2719613 () Int)

(assert (=> d!2391301 (>= lt!2719613 0)))

(declare-fun e!4724109 () Int)

(assert (=> d!2391301 (= lt!2719613 e!4724109)))

(declare-fun c!1471892 () Bool)

(assert (=> d!2391301 (= c!1471892 ((_ is Nil!74838) l!3435))))

(assert (=> d!2391301 (= (size!43629 l!3435) lt!2719613)))

(declare-fun b!8019607 () Bool)

(assert (=> b!8019607 (= e!4724109 0)))

(declare-fun b!8019608 () Bool)

(assert (=> b!8019608 (= e!4724109 (+ 1 (size!43629 (t!390705 l!3435))))))

(assert (= (and d!2391301 c!1471892) b!8019607))

(assert (= (and d!2391301 (not c!1471892)) b!8019608))

(declare-fun m!8382658 () Bool)

(assert (=> b!8019608 m!8382658))

(assert (=> b!8019524 d!2391301))

(declare-fun b!8019618 () Bool)

(declare-fun e!4724115 () Bool)

(declare-fun tp!2400256 () Bool)

(assert (=> b!8019618 (= e!4724115 (and tp_is_empty!54009 tp!2400256))))

(assert (=> b!8019522 (= tp!2400250 e!4724115)))

(assert (= (and b!8019522 ((_ is Cons!74838) (t!390705 l!3435))) b!8019618))

(declare-fun b!8019620 () Bool)

(declare-fun e!4724117 () Bool)

(declare-fun tp!2400258 () Bool)

(assert (=> b!8019620 (= e!4724117 (and tp_is_empty!54009 tp!2400258))))

(assert (=> b!8019523 (= tp!2400249 e!4724117)))

(assert (= (and b!8019523 ((_ is Cons!74838) (t!390705 p!2009))) b!8019620))

(check-sat (not b!8019546) (not b!8019570) (not b!8019604) (not b!8019547) (not d!2391289) (not b!8019548) (not b!8019620) (not b!8019583) (not b!8019618) (not b!8019608) (not d!2391281) tp_is_empty!54009 (not b!8019571) (not b!8019592) (not b!8019591) (not b!8019590))
(check-sat)
(get-model)

(declare-fun d!2391303 () Bool)

(declare-fun lt!2719614 () Int)

(assert (=> d!2391303 (>= lt!2719614 0)))

(declare-fun e!4724118 () Int)

(assert (=> d!2391303 (= lt!2719614 e!4724118)))

(declare-fun c!1471893 () Bool)

(assert (=> d!2391303 (= c!1471893 ((_ is Nil!74838) lt!2719597))))

(assert (=> d!2391303 (= (size!43629 lt!2719597) lt!2719614)))

(declare-fun b!8019621 () Bool)

(assert (=> b!8019621 (= e!4724118 0)))

(declare-fun b!8019622 () Bool)

(assert (=> b!8019622 (= e!4724118 (+ 1 (size!43629 (t!390705 lt!2719597))))))

(assert (= (and d!2391303 c!1471893) b!8019621))

(assert (= (and d!2391303 (not c!1471893)) b!8019622))

(declare-fun m!8382660 () Bool)

(assert (=> b!8019622 m!8382660))

(assert (=> b!8019571 d!2391303))

(assert (=> b!8019571 d!2391297))

(declare-fun d!2391305 () Bool)

(declare-fun lt!2719615 () Int)

(assert (=> d!2391305 (>= lt!2719615 0)))

(declare-fun e!4724119 () Int)

(assert (=> d!2391305 (= lt!2719615 e!4724119)))

(declare-fun c!1471894 () Bool)

(assert (=> d!2391305 (= c!1471894 ((_ is Nil!74838) (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))))

(assert (=> d!2391305 (= (size!43629 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)) lt!2719615)))

(declare-fun b!8019623 () Bool)

(assert (=> b!8019623 (= e!4724119 0)))

(declare-fun b!8019624 () Bool)

(assert (=> b!8019624 (= e!4724119 (+ 1 (size!43629 (t!390705 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))))))

(assert (= (and d!2391305 c!1471894) b!8019623))

(assert (= (and d!2391305 (not c!1471894)) b!8019624))

(declare-fun m!8382662 () Bool)

(assert (=> b!8019624 m!8382662))

(assert (=> b!8019571 d!2391305))

(declare-fun b!8019625 () Bool)

(declare-fun e!4724122 () Bool)

(declare-fun e!4724120 () Bool)

(assert (=> b!8019625 (= e!4724122 e!4724120)))

(declare-fun res!3170951 () Bool)

(assert (=> b!8019625 (=> (not res!3170951) (not e!4724120))))

(assert (=> b!8019625 (= res!3170951 (not ((_ is Nil!74838) (tail!15922 l!3435))))))

(declare-fun b!8019626 () Bool)

(declare-fun res!3170952 () Bool)

(assert (=> b!8019626 (=> (not res!3170952) (not e!4724120))))

(assert (=> b!8019626 (= res!3170952 (= (head!16396 (tail!15922 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))) (head!16396 (tail!15922 l!3435))))))

(declare-fun b!8019627 () Bool)

(assert (=> b!8019627 (= e!4724120 (isPrefix!6785 (tail!15922 (tail!15922 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))) (tail!15922 (tail!15922 l!3435))))))

(declare-fun d!2391307 () Bool)

(declare-fun e!4724121 () Bool)

(assert (=> d!2391307 e!4724121))

(declare-fun res!3170954 () Bool)

(assert (=> d!2391307 (=> res!3170954 e!4724121)))

(declare-fun lt!2719616 () Bool)

(assert (=> d!2391307 (= res!3170954 (not lt!2719616))))

(assert (=> d!2391307 (= lt!2719616 e!4724122)))

(declare-fun res!3170953 () Bool)

(assert (=> d!2391307 (=> res!3170953 e!4724122)))

(assert (=> d!2391307 (= res!3170953 ((_ is Nil!74838) (tail!15922 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))))))

(assert (=> d!2391307 (= (isPrefix!6785 (tail!15922 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))) (tail!15922 l!3435)) lt!2719616)))

(declare-fun b!8019628 () Bool)

(assert (=> b!8019628 (= e!4724121 (>= (size!43629 (tail!15922 l!3435)) (size!43629 (tail!15922 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))))))))

(assert (= (and d!2391307 (not res!3170953)) b!8019625))

(assert (= (and b!8019625 res!3170951) b!8019626))

(assert (= (and b!8019626 res!3170952) b!8019627))

(assert (= (and d!2391307 (not res!3170954)) b!8019628))

(assert (=> b!8019626 m!8382594))

(declare-fun m!8382664 () Bool)

(assert (=> b!8019626 m!8382664))

(assert (=> b!8019626 m!8382598))

(declare-fun m!8382666 () Bool)

(assert (=> b!8019626 m!8382666))

(assert (=> b!8019627 m!8382594))

(declare-fun m!8382668 () Bool)

(assert (=> b!8019627 m!8382668))

(assert (=> b!8019627 m!8382598))

(declare-fun m!8382670 () Bool)

(assert (=> b!8019627 m!8382670))

(assert (=> b!8019627 m!8382668))

(assert (=> b!8019627 m!8382670))

(declare-fun m!8382672 () Bool)

(assert (=> b!8019627 m!8382672))

(assert (=> b!8019628 m!8382598))

(declare-fun m!8382674 () Bool)

(assert (=> b!8019628 m!8382674))

(assert (=> b!8019628 m!8382594))

(declare-fun m!8382676 () Bool)

(assert (=> b!8019628 m!8382676))

(assert (=> b!8019547 d!2391307))

(declare-fun d!2391309 () Bool)

(assert (=> d!2391309 (= (tail!15922 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))) (t!390705 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))))))

(assert (=> b!8019547 d!2391309))

(declare-fun d!2391311 () Bool)

(assert (=> d!2391311 (= (tail!15922 l!3435) (t!390705 l!3435))))

(assert (=> b!8019547 d!2391311))

(assert (=> b!8019548 d!2391301))

(declare-fun d!2391313 () Bool)

(declare-fun lt!2719617 () Int)

(assert (=> d!2391313 (>= lt!2719617 0)))

(declare-fun e!4724123 () Int)

(assert (=> d!2391313 (= lt!2719617 e!4724123)))

(declare-fun c!1471895 () Bool)

(assert (=> d!2391313 (= c!1471895 ((_ is Nil!74838) (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))))))

(assert (=> d!2391313 (= (size!43629 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))) lt!2719617)))

(declare-fun b!8019629 () Bool)

(assert (=> b!8019629 (= e!4724123 0)))

(declare-fun b!8019630 () Bool)

(assert (=> b!8019630 (= e!4724123 (+ 1 (size!43629 (t!390705 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))))))))

(assert (= (and d!2391313 c!1471895) b!8019629))

(assert (= (and d!2391313 (not c!1471895)) b!8019630))

(declare-fun m!8382678 () Bool)

(assert (=> b!8019630 m!8382678))

(assert (=> b!8019548 d!2391313))

(declare-fun d!2391315 () Bool)

(declare-fun e!4724125 () Bool)

(assert (=> d!2391315 e!4724125))

(declare-fun res!3170956 () Bool)

(assert (=> d!2391315 (=> (not res!3170956) (not e!4724125))))

(declare-fun lt!2719618 () List!74962)

(assert (=> d!2391315 (= res!3170956 (= (content!15927 lt!2719618) ((_ map or) (content!15927 (t!390705 p!2009)) (content!15927 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))))))

(declare-fun e!4724124 () List!74962)

(assert (=> d!2391315 (= lt!2719618 e!4724124)))

(declare-fun c!1471896 () Bool)

(assert (=> d!2391315 (= c!1471896 ((_ is Nil!74838) (t!390705 p!2009)))))

(assert (=> d!2391315 (= (++!18528 (t!390705 p!2009) (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)) lt!2719618)))

(declare-fun b!8019632 () Bool)

(assert (=> b!8019632 (= e!4724124 (Cons!74838 (h!81286 (t!390705 p!2009)) (++!18528 (t!390705 (t!390705 p!2009)) (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))))))

(declare-fun b!8019631 () Bool)

(assert (=> b!8019631 (= e!4724124 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))))

(declare-fun b!8019634 () Bool)

(assert (=> b!8019634 (= e!4724125 (or (not (= (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838) Nil!74838)) (= lt!2719618 (t!390705 p!2009))))))

(declare-fun b!8019633 () Bool)

(declare-fun res!3170955 () Bool)

(assert (=> b!8019633 (=> (not res!3170955) (not e!4724125))))

(assert (=> b!8019633 (= res!3170955 (= (size!43629 lt!2719618) (+ (size!43629 (t!390705 p!2009)) (size!43629 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))))))

(assert (= (and d!2391315 c!1471896) b!8019631))

(assert (= (and d!2391315 (not c!1471896)) b!8019632))

(assert (= (and d!2391315 res!3170956) b!8019633))

(assert (= (and b!8019633 res!3170955) b!8019634))

(declare-fun m!8382680 () Bool)

(assert (=> d!2391315 m!8382680))

(declare-fun m!8382682 () Bool)

(assert (=> d!2391315 m!8382682))

(assert (=> d!2391315 m!8382624))

(declare-fun m!8382684 () Bool)

(assert (=> b!8019632 m!8382684))

(declare-fun m!8382686 () Bool)

(assert (=> b!8019633 m!8382686))

(assert (=> b!8019633 m!8382654))

(assert (=> b!8019633 m!8382630))

(assert (=> b!8019570 d!2391315))

(declare-fun d!2391317 () Bool)

(assert (=> d!2391317 (= (head!16396 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))) (h!81286 (++!18528 p!2009 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838))))))

(assert (=> b!8019546 d!2391317))

(declare-fun d!2391319 () Bool)

(assert (=> d!2391319 (= (head!16396 l!3435) (h!81286 l!3435))))

(assert (=> b!8019546 d!2391319))

(declare-fun d!2391321 () Bool)

(declare-fun e!4724127 () Bool)

(assert (=> d!2391321 e!4724127))

(declare-fun res!3170958 () Bool)

(assert (=> d!2391321 (=> (not res!3170958) (not e!4724127))))

(declare-fun lt!2719619 () List!74962)

(assert (=> d!2391321 (= res!3170958 (= (content!15927 lt!2719619) ((_ map or) (content!15927 p!2009) (content!15927 lt!2719603))))))

(declare-fun e!4724126 () List!74962)

(assert (=> d!2391321 (= lt!2719619 e!4724126)))

(declare-fun c!1471897 () Bool)

(assert (=> d!2391321 (= c!1471897 ((_ is Nil!74838) p!2009))))

(assert (=> d!2391321 (= (++!18528 p!2009 lt!2719603) lt!2719619)))

(declare-fun b!8019636 () Bool)

(assert (=> b!8019636 (= e!4724126 (Cons!74838 (h!81286 p!2009) (++!18528 (t!390705 p!2009) lt!2719603)))))

(declare-fun b!8019635 () Bool)

(assert (=> b!8019635 (= e!4724126 lt!2719603)))

(declare-fun b!8019638 () Bool)

(assert (=> b!8019638 (= e!4724127 (or (not (= lt!2719603 Nil!74838)) (= lt!2719619 p!2009)))))

(declare-fun b!8019637 () Bool)

(declare-fun res!3170957 () Bool)

(assert (=> b!8019637 (=> (not res!3170957) (not e!4724127))))

(assert (=> b!8019637 (= res!3170957 (= (size!43629 lt!2719619) (+ (size!43629 p!2009) (size!43629 lt!2719603))))))

(assert (= (and d!2391321 c!1471897) b!8019635))

(assert (= (and d!2391321 (not c!1471897)) b!8019636))

(assert (= (and d!2391321 res!3170958) b!8019637))

(assert (= (and b!8019637 res!3170957) b!8019638))

(declare-fun m!8382688 () Bool)

(assert (=> d!2391321 m!8382688))

(assert (=> d!2391321 m!8382622))

(declare-fun m!8382690 () Bool)

(assert (=> d!2391321 m!8382690))

(declare-fun m!8382692 () Bool)

(assert (=> b!8019636 m!8382692))

(declare-fun m!8382694 () Bool)

(assert (=> b!8019637 m!8382694))

(assert (=> b!8019637 m!8382580))

(declare-fun m!8382696 () Bool)

(assert (=> b!8019637 m!8382696))

(assert (=> d!2391289 d!2391321))

(assert (=> d!2391289 d!2391301))

(assert (=> d!2391289 d!2391297))

(declare-fun d!2391323 () Bool)

(declare-fun c!1471900 () Bool)

(assert (=> d!2391323 (= c!1471900 ((_ is Nil!74838) lt!2719597))))

(declare-fun e!4724130 () (InoxSet B!4121))

(assert (=> d!2391323 (= (content!15927 lt!2719597) e!4724130)))

(declare-fun b!8019643 () Bool)

(assert (=> b!8019643 (= e!4724130 ((as const (Array B!4121 Bool)) false))))

(declare-fun b!8019644 () Bool)

(assert (=> b!8019644 (= e!4724130 ((_ map or) (store ((as const (Array B!4121 Bool)) false) (h!81286 lt!2719597) true) (content!15927 (t!390705 lt!2719597))))))

(assert (= (and d!2391323 c!1471900) b!8019643))

(assert (= (and d!2391323 (not c!1471900)) b!8019644))

(declare-fun m!8382698 () Bool)

(assert (=> b!8019644 m!8382698))

(declare-fun m!8382700 () Bool)

(assert (=> b!8019644 m!8382700))

(assert (=> d!2391281 d!2391323))

(declare-fun d!2391325 () Bool)

(declare-fun c!1471901 () Bool)

(assert (=> d!2391325 (= c!1471901 ((_ is Nil!74838) p!2009))))

(declare-fun e!4724131 () (InoxSet B!4121))

(assert (=> d!2391325 (= (content!15927 p!2009) e!4724131)))

(declare-fun b!8019645 () Bool)

(assert (=> b!8019645 (= e!4724131 ((as const (Array B!4121 Bool)) false))))

(declare-fun b!8019646 () Bool)

(assert (=> b!8019646 (= e!4724131 ((_ map or) (store ((as const (Array B!4121 Bool)) false) (h!81286 p!2009) true) (content!15927 (t!390705 p!2009))))))

(assert (= (and d!2391325 c!1471901) b!8019645))

(assert (= (and d!2391325 (not c!1471901)) b!8019646))

(declare-fun m!8382702 () Bool)

(assert (=> b!8019646 m!8382702))

(assert (=> b!8019646 m!8382682))

(assert (=> d!2391281 d!2391325))

(declare-fun d!2391327 () Bool)

(declare-fun c!1471902 () Bool)

(assert (=> d!2391327 (= c!1471902 ((_ is Nil!74838) (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))))

(declare-fun e!4724132 () (InoxSet B!4121))

(assert (=> d!2391327 (= (content!15927 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)) e!4724132)))

(declare-fun b!8019647 () Bool)

(assert (=> b!8019647 (= e!4724132 ((as const (Array B!4121 Bool)) false))))

(declare-fun b!8019648 () Bool)

(assert (=> b!8019648 (= e!4724132 ((_ map or) (store ((as const (Array B!4121 Bool)) false) (h!81286 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)) true) (content!15927 (t!390705 (Cons!74838 (head!16396 (getSuffix!3950 l!3435 p!2009)) Nil!74838)))))))

(assert (= (and d!2391327 c!1471902) b!8019647))

(assert (= (and d!2391327 (not c!1471902)) b!8019648))

(declare-fun m!8382704 () Bool)

(assert (=> b!8019648 m!8382704))

(declare-fun m!8382706 () Bool)

(assert (=> b!8019648 m!8382706))

(assert (=> d!2391281 d!2391327))

(declare-fun b!8019649 () Bool)

(declare-fun e!4724135 () Bool)

(declare-fun e!4724133 () Bool)

(assert (=> b!8019649 (= e!4724135 e!4724133)))

(declare-fun res!3170959 () Bool)

(assert (=> b!8019649 (=> (not res!3170959) (not e!4724133))))

(assert (=> b!8019649 (= res!3170959 (not ((_ is Nil!74838) (tail!15922 l!3435))))))

(declare-fun b!8019650 () Bool)

(declare-fun res!3170960 () Bool)

(assert (=> b!8019650 (=> (not res!3170960) (not e!4724133))))

(assert (=> b!8019650 (= res!3170960 (= (head!16396 (tail!15922 p!2009)) (head!16396 (tail!15922 l!3435))))))

(declare-fun b!8019651 () Bool)

(assert (=> b!8019651 (= e!4724133 (isPrefix!6785 (tail!15922 (tail!15922 p!2009)) (tail!15922 (tail!15922 l!3435))))))

(declare-fun d!2391329 () Bool)

(declare-fun e!4724134 () Bool)

(assert (=> d!2391329 e!4724134))

(declare-fun res!3170962 () Bool)

(assert (=> d!2391329 (=> res!3170962 e!4724134)))

(declare-fun lt!2719620 () Bool)

(assert (=> d!2391329 (= res!3170962 (not lt!2719620))))

(assert (=> d!2391329 (= lt!2719620 e!4724135)))

(declare-fun res!3170961 () Bool)

(assert (=> d!2391329 (=> res!3170961 e!4724135)))

(assert (=> d!2391329 (= res!3170961 ((_ is Nil!74838) (tail!15922 p!2009)))))

(assert (=> d!2391329 (= (isPrefix!6785 (tail!15922 p!2009) (tail!15922 l!3435)) lt!2719620)))

(declare-fun b!8019652 () Bool)

(assert (=> b!8019652 (= e!4724134 (>= (size!43629 (tail!15922 l!3435)) (size!43629 (tail!15922 p!2009))))))

(assert (= (and d!2391329 (not res!3170961)) b!8019649))

(assert (= (and b!8019649 res!3170959) b!8019650))

(assert (= (and b!8019650 res!3170960) b!8019651))

(assert (= (and d!2391329 (not res!3170962)) b!8019652))

(assert (=> b!8019650 m!8382648))

(declare-fun m!8382708 () Bool)

(assert (=> b!8019650 m!8382708))

(assert (=> b!8019650 m!8382598))

(assert (=> b!8019650 m!8382666))

(assert (=> b!8019651 m!8382648))

(declare-fun m!8382710 () Bool)

(assert (=> b!8019651 m!8382710))

(assert (=> b!8019651 m!8382598))

(assert (=> b!8019651 m!8382670))

(assert (=> b!8019651 m!8382710))

(assert (=> b!8019651 m!8382670))

(declare-fun m!8382712 () Bool)

(assert (=> b!8019651 m!8382712))

(assert (=> b!8019652 m!8382598))

(assert (=> b!8019652 m!8382674))

(assert (=> b!8019652 m!8382648))

(declare-fun m!8382714 () Bool)

(assert (=> b!8019652 m!8382714))

(assert (=> b!8019591 d!2391329))

(declare-fun d!2391331 () Bool)

(assert (=> d!2391331 (= (tail!15922 p!2009) (t!390705 p!2009))))

(assert (=> b!8019591 d!2391331))

(assert (=> b!8019591 d!2391311))

(assert (=> b!8019592 d!2391301))

(assert (=> b!8019592 d!2391297))

(declare-fun d!2391333 () Bool)

(assert (=> d!2391333 (= (head!16396 p!2009) (h!81286 p!2009))))

(assert (=> b!8019590 d!2391333))

(assert (=> b!8019590 d!2391319))

(declare-fun d!2391335 () Bool)

(declare-fun lt!2719621 () Int)

(assert (=> d!2391335 (>= lt!2719621 0)))

(declare-fun e!4724136 () Int)

(assert (=> d!2391335 (= lt!2719621 e!4724136)))

(declare-fun c!1471903 () Bool)

(assert (=> d!2391335 (= c!1471903 ((_ is Nil!74838) (t!390705 p!2009)))))

(assert (=> d!2391335 (= (size!43629 (t!390705 p!2009)) lt!2719621)))

(declare-fun b!8019653 () Bool)

(assert (=> b!8019653 (= e!4724136 0)))

(declare-fun b!8019654 () Bool)

(assert (=> b!8019654 (= e!4724136 (+ 1 (size!43629 (t!390705 (t!390705 p!2009)))))))

(assert (= (and d!2391335 c!1471903) b!8019653))

(assert (= (and d!2391335 (not c!1471903)) b!8019654))

(declare-fun m!8382716 () Bool)

(assert (=> b!8019654 m!8382716))

(assert (=> b!8019604 d!2391335))

(declare-fun d!2391337 () Bool)

(declare-fun lt!2719622 () Int)

(assert (=> d!2391337 (>= lt!2719622 0)))

(declare-fun e!4724137 () Int)

(assert (=> d!2391337 (= lt!2719622 e!4724137)))

(declare-fun c!1471904 () Bool)

(assert (=> d!2391337 (= c!1471904 ((_ is Nil!74838) (t!390705 l!3435)))))

(assert (=> d!2391337 (= (size!43629 (t!390705 l!3435)) lt!2719622)))

(declare-fun b!8019655 () Bool)

(assert (=> b!8019655 (= e!4724137 0)))

(declare-fun b!8019656 () Bool)

(assert (=> b!8019656 (= e!4724137 (+ 1 (size!43629 (t!390705 (t!390705 l!3435)))))))

(assert (= (and d!2391337 c!1471904) b!8019655))

(assert (= (and d!2391337 (not c!1471904)) b!8019656))

(declare-fun m!8382718 () Bool)

(assert (=> b!8019656 m!8382718))

(assert (=> b!8019608 d!2391337))

(declare-fun d!2391339 () Bool)

(declare-fun lt!2719623 () List!74962)

(assert (=> d!2391339 (= (++!18528 (t!390705 p!2009) lt!2719623) (tail!15922 l!3435))))

(declare-fun e!4724138 () List!74962)

(assert (=> d!2391339 (= lt!2719623 e!4724138)))

(declare-fun c!1471905 () Bool)

(assert (=> d!2391339 (= c!1471905 ((_ is Cons!74838) (t!390705 p!2009)))))

(assert (=> d!2391339 (>= (size!43629 (tail!15922 l!3435)) (size!43629 (t!390705 p!2009)))))

(assert (=> d!2391339 (= (getSuffix!3950 (tail!15922 l!3435) (t!390705 p!2009)) lt!2719623)))

(declare-fun b!8019657 () Bool)

(assert (=> b!8019657 (= e!4724138 (getSuffix!3950 (tail!15922 (tail!15922 l!3435)) (t!390705 (t!390705 p!2009))))))

(declare-fun b!8019658 () Bool)

(assert (=> b!8019658 (= e!4724138 (tail!15922 l!3435))))

(assert (= (and d!2391339 c!1471905) b!8019657))

(assert (= (and d!2391339 (not c!1471905)) b!8019658))

(declare-fun m!8382720 () Bool)

(assert (=> d!2391339 m!8382720))

(assert (=> d!2391339 m!8382598))

(assert (=> d!2391339 m!8382674))

(assert (=> d!2391339 m!8382654))

(assert (=> b!8019657 m!8382598))

(assert (=> b!8019657 m!8382670))

(assert (=> b!8019657 m!8382670))

(declare-fun m!8382722 () Bool)

(assert (=> b!8019657 m!8382722))

(assert (=> b!8019583 d!2391339))

(assert (=> b!8019583 d!2391311))

(declare-fun b!8019659 () Bool)

(declare-fun e!4724139 () Bool)

(declare-fun tp!2400259 () Bool)

(assert (=> b!8019659 (= e!4724139 (and tp_is_empty!54009 tp!2400259))))

(assert (=> b!8019620 (= tp!2400258 e!4724139)))

(assert (= (and b!8019620 ((_ is Cons!74838) (t!390705 (t!390705 p!2009)))) b!8019659))

(declare-fun b!8019660 () Bool)

(declare-fun e!4724140 () Bool)

(declare-fun tp!2400260 () Bool)

(assert (=> b!8019660 (= e!4724140 (and tp_is_empty!54009 tp!2400260))))

(assert (=> b!8019618 (= tp!2400256 e!4724140)))

(assert (= (and b!8019618 ((_ is Cons!74838) (t!390705 (t!390705 l!3435)))) b!8019660))

(check-sat (not b!8019644) (not b!8019630) (not b!8019646) (not b!8019633) (not b!8019626) (not b!8019627) (not b!8019660) tp_is_empty!54009 (not b!8019637) (not b!8019632) (not d!2391339) (not b!8019659) (not b!8019657) (not b!8019652) (not d!2391315) (not b!8019656) (not b!8019648) (not b!8019624) (not b!8019622) (not d!2391321) (not b!8019650) (not b!8019636) (not b!8019628) (not b!8019651) (not b!8019654))
(check-sat)
