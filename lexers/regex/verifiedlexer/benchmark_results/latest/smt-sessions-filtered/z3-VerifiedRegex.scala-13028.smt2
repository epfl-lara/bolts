; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714370 () Bool)

(assert start!714370)

(declare-fun b_free!134289 () Bool)

(declare-fun b_next!135079 () Bool)

(assert (=> start!714370 (= b_free!134289 (not b_next!135079))))

(declare-fun tp!2079658 () Bool)

(declare-fun b_and!351811 () Bool)

(assert (=> start!714370 (= tp!2079658 b_and!351811)))

(declare-fun b!7321603 () Bool)

(declare-fun e!4383689 () Bool)

(declare-fun tp_is_empty!48135 () Bool)

(declare-fun tp!2079659 () Bool)

(assert (=> b!7321603 (= e!4383689 (and tp_is_empty!48135 tp!2079659))))

(declare-fun b!7321600 () Bool)

(declare-fun res!2959427 () Bool)

(declare-fun e!4383688 () Bool)

(assert (=> b!7321600 (=> (not res!2959427) (not e!4383688))))

(declare-fun p!1874 () Int)

(declare-datatypes ((B!3821 0))(
  ( (B!3822 (val!29442 Int)) )
))
(declare-fun e!9239 () B!3821)

(declare-fun dynLambda!29372 (Int B!3821) Bool)

(assert (=> b!7321600 (= res!2959427 (dynLambda!29372 p!1874 e!9239))))

(declare-fun res!2959426 () Bool)

(assert (=> start!714370 (=> (not res!2959426) (not e!4383688))))

(declare-datatypes ((List!71441 0))(
  ( (Nil!71317) (Cons!71317 (h!77765 B!3821) (t!385796 List!71441)) )
))
(declare-fun l!3043 () List!71441)

(declare-fun contains!20824 (List!71441 B!3821) Bool)

(assert (=> start!714370 (= res!2959426 (contains!20824 l!3043 e!9239))))

(assert (=> start!714370 e!4383688))

(assert (=> start!714370 e!4383689))

(assert (=> start!714370 tp_is_empty!48135))

(assert (=> start!714370 tp!2079658))

(declare-fun b!7321602 () Bool)

(declare-fun exists!4715 (List!71441 Int) Bool)

(assert (=> b!7321602 (= e!4383688 (not (exists!4715 l!3043 p!1874)))))

(declare-fun b!7321601 () Bool)

(declare-fun res!2959428 () Bool)

(assert (=> b!7321601 (=> (not res!2959428) (not e!4383688))))

(get-info :version)

(assert (=> b!7321601 (= res!2959428 (and ((_ is Cons!71317) l!3043) (= (h!77765 l!3043) e!9239)))))

(assert (= (and start!714370 res!2959426) b!7321600))

(assert (= (and b!7321600 res!2959427) b!7321601))

(assert (= (and b!7321601 res!2959428) b!7321602))

(assert (= (and start!714370 ((_ is Cons!71317) l!3043)) b!7321603))

(declare-fun b_lambda!283041 () Bool)

(assert (=> (not b_lambda!283041) (not b!7321600)))

(declare-fun t!385795 () Bool)

(declare-fun tb!262365 () Bool)

(assert (=> (and start!714370 (= p!1874 p!1874) t!385795) tb!262365))

(declare-fun result!353564 () Bool)

(assert (=> tb!262365 (= result!353564 true)))

(assert (=> b!7321600 t!385795))

(declare-fun b_and!351813 () Bool)

(assert (= b_and!351811 (and (=> t!385795 result!353564) b_and!351813)))

(declare-fun m!7987348 () Bool)

(assert (=> b!7321600 m!7987348))

(declare-fun m!7987350 () Bool)

(assert (=> start!714370 m!7987350))

(declare-fun m!7987352 () Bool)

(assert (=> b!7321602 m!7987352))

(check-sat (not b_next!135079) (not b!7321603) (not start!714370) tp_is_empty!48135 (not b!7321602) (not b_lambda!283041) b_and!351813)
(check-sat b_and!351813 (not b_next!135079))
(get-model)

(declare-fun b_lambda!283045 () Bool)

(assert (= b_lambda!283041 (or (and start!714370 b_free!134289) b_lambda!283045)))

(check-sat (not b_next!135079) (not b!7321603) (not start!714370) (not b_lambda!283045) tp_is_empty!48135 (not b!7321602) b_and!351813)
(check-sat b_and!351813 (not b_next!135079))
(get-model)

(declare-fun d!2273651 () Bool)

(declare-fun lt!2604764 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14910 (List!71441) (InoxSet B!3821))

(assert (=> d!2273651 (= lt!2604764 (select (content!14910 l!3043) e!9239))))

(declare-fun e!4383700 () Bool)

(assert (=> d!2273651 (= lt!2604764 e!4383700)))

(declare-fun res!2959439 () Bool)

(assert (=> d!2273651 (=> (not res!2959439) (not e!4383700))))

(assert (=> d!2273651 (= res!2959439 ((_ is Cons!71317) l!3043))))

(assert (=> d!2273651 (= (contains!20824 l!3043 e!9239) lt!2604764)))

(declare-fun b!7321614 () Bool)

(declare-fun e!4383701 () Bool)

(assert (=> b!7321614 (= e!4383700 e!4383701)))

(declare-fun res!2959440 () Bool)

(assert (=> b!7321614 (=> res!2959440 e!4383701)))

(assert (=> b!7321614 (= res!2959440 (= (h!77765 l!3043) e!9239))))

(declare-fun b!7321615 () Bool)

(assert (=> b!7321615 (= e!4383701 (contains!20824 (t!385796 l!3043) e!9239))))

(assert (= (and d!2273651 res!2959439) b!7321614))

(assert (= (and b!7321614 (not res!2959440)) b!7321615))

(declare-fun m!7987360 () Bool)

(assert (=> d!2273651 m!7987360))

(declare-fun m!7987362 () Bool)

(assert (=> d!2273651 m!7987362))

(declare-fun m!7987364 () Bool)

(assert (=> b!7321615 m!7987364))

(assert (=> start!714370 d!2273651))

(declare-fun d!2273655 () Bool)

(assert (=> d!2273655 true))

(declare-fun order!29411 () Int)

(declare-fun lambda!453550 () Int)

(declare-fun dynLambda!29374 (Int Int) Int)

(assert (=> d!2273655 (< (dynLambda!29374 order!29411 p!1874) (dynLambda!29374 order!29411 lambda!453550))))

(declare-fun forall!17815 (List!71441 Int) Bool)

(assert (=> d!2273655 (= (exists!4715 l!3043 p!1874) (not (forall!17815 l!3043 lambda!453550)))))

(declare-fun bs!1916098 () Bool)

(assert (= bs!1916098 d!2273655))

(declare-fun m!7987368 () Bool)

(assert (=> bs!1916098 m!7987368))

(assert (=> b!7321602 d!2273655))

(declare-fun b!7321629 () Bool)

(declare-fun e!4383707 () Bool)

(declare-fun tp!2079665 () Bool)

(assert (=> b!7321629 (= e!4383707 (and tp_is_empty!48135 tp!2079665))))

(assert (=> b!7321603 (= tp!2079659 e!4383707)))

(assert (= (and b!7321603 ((_ is Cons!71317) (t!385796 l!3043))) b!7321629))

(check-sat (not b_next!135079) (not d!2273651) (not b_lambda!283045) (not d!2273655) tp_is_empty!48135 (not b!7321615) (not b!7321629) b_and!351813)
(check-sat b_and!351813 (not b_next!135079))
(get-model)

(declare-fun d!2273663 () Bool)

(declare-fun lt!2604766 () Bool)

(assert (=> d!2273663 (= lt!2604766 (select (content!14910 (t!385796 l!3043)) e!9239))))

(declare-fun e!4383716 () Bool)

(assert (=> d!2273663 (= lt!2604766 e!4383716)))

(declare-fun res!2959449 () Bool)

(assert (=> d!2273663 (=> (not res!2959449) (not e!4383716))))

(assert (=> d!2273663 (= res!2959449 ((_ is Cons!71317) (t!385796 l!3043)))))

(assert (=> d!2273663 (= (contains!20824 (t!385796 l!3043) e!9239) lt!2604766)))

(declare-fun b!7321638 () Bool)

(declare-fun e!4383717 () Bool)

(assert (=> b!7321638 (= e!4383716 e!4383717)))

(declare-fun res!2959450 () Bool)

(assert (=> b!7321638 (=> res!2959450 e!4383717)))

(assert (=> b!7321638 (= res!2959450 (= (h!77765 (t!385796 l!3043)) e!9239))))

(declare-fun b!7321639 () Bool)

(assert (=> b!7321639 (= e!4383717 (contains!20824 (t!385796 (t!385796 l!3043)) e!9239))))

(assert (= (and d!2273663 res!2959449) b!7321638))

(assert (= (and b!7321638 (not res!2959450)) b!7321639))

(declare-fun m!7987380 () Bool)

(assert (=> d!2273663 m!7987380))

(declare-fun m!7987382 () Bool)

(assert (=> d!2273663 m!7987382))

(declare-fun m!7987384 () Bool)

(assert (=> b!7321639 m!7987384))

(assert (=> b!7321615 d!2273663))

(declare-fun d!2273665 () Bool)

(declare-fun res!2959455 () Bool)

(declare-fun e!4383726 () Bool)

(assert (=> d!2273665 (=> res!2959455 e!4383726)))

(assert (=> d!2273665 (= res!2959455 ((_ is Nil!71317) l!3043))))

(assert (=> d!2273665 (= (forall!17815 l!3043 lambda!453550) e!4383726)))

(declare-fun b!7321651 () Bool)

(declare-fun e!4383727 () Bool)

(assert (=> b!7321651 (= e!4383726 e!4383727)))

(declare-fun res!2959456 () Bool)

(assert (=> b!7321651 (=> (not res!2959456) (not e!4383727))))

(assert (=> b!7321651 (= res!2959456 (dynLambda!29372 lambda!453550 (h!77765 l!3043)))))

(declare-fun b!7321652 () Bool)

(assert (=> b!7321652 (= e!4383727 (forall!17815 (t!385796 l!3043) lambda!453550))))

(assert (= (and d!2273665 (not res!2959455)) b!7321651))

(assert (= (and b!7321651 res!2959456) b!7321652))

(declare-fun b_lambda!283057 () Bool)

(assert (=> (not b_lambda!283057) (not b!7321651)))

(declare-fun m!7987390 () Bool)

(assert (=> b!7321651 m!7987390))

(declare-fun m!7987392 () Bool)

(assert (=> b!7321652 m!7987392))

(assert (=> d!2273655 d!2273665))

(declare-fun d!2273671 () Bool)

(declare-fun c!1358782 () Bool)

(assert (=> d!2273671 (= c!1358782 ((_ is Nil!71317) l!3043))))

(declare-fun e!4383730 () (InoxSet B!3821))

(assert (=> d!2273671 (= (content!14910 l!3043) e!4383730)))

(declare-fun b!7321657 () Bool)

(assert (=> b!7321657 (= e!4383730 ((as const (Array B!3821 Bool)) false))))

(declare-fun b!7321658 () Bool)

(assert (=> b!7321658 (= e!4383730 ((_ map or) (store ((as const (Array B!3821 Bool)) false) (h!77765 l!3043) true) (content!14910 (t!385796 l!3043))))))

(assert (= (and d!2273671 c!1358782) b!7321657))

(assert (= (and d!2273671 (not c!1358782)) b!7321658))

(declare-fun m!7987394 () Bool)

(assert (=> b!7321658 m!7987394))

(assert (=> b!7321658 m!7987380))

(assert (=> d!2273651 d!2273671))

(declare-fun b!7321659 () Bool)

(declare-fun e!4383731 () Bool)

(declare-fun tp!2079667 () Bool)

(assert (=> b!7321659 (= e!4383731 (and tp_is_empty!48135 tp!2079667))))

(assert (=> b!7321629 (= tp!2079665 e!4383731)))

(assert (= (and b!7321629 ((_ is Cons!71317) (t!385796 (t!385796 l!3043)))) b!7321659))

(declare-fun b_lambda!283059 () Bool)

(assert (= b_lambda!283045 (or (and d!2273655 (= lambda!453550 p!1874)) b_lambda!283059)))

(declare-fun bs!1916101 () Bool)

(declare-fun d!2273673 () Bool)

(assert (= bs!1916101 (and d!2273673 d!2273655)))

(assert (=> bs!1916101 (= (dynLambda!29372 lambda!453550 e!9239) (not (dynLambda!29372 p!1874 e!9239)))))

(declare-fun b_lambda!283063 () Bool)

(assert (=> (not b_lambda!283063) (not bs!1916101)))

(assert (=> bs!1916101 t!385795))

(declare-fun b_and!351819 () Bool)

(assert (= b_and!351813 (and (=> t!385795 result!353564) b_and!351819)))

(assert (=> bs!1916101 m!7987348))

(assert (=> (and d!2273655 (= lambda!453550 p!1874) b!7321600) d!2273673))

(declare-fun b_lambda!283061 () Bool)

(assert (= b_lambda!283057 (or d!2273655 b_lambda!283061)))

(declare-fun bs!1916102 () Bool)

(declare-fun d!2273675 () Bool)

(assert (= bs!1916102 (and d!2273675 d!2273655)))

(assert (=> bs!1916102 (= (dynLambda!29372 lambda!453550 (h!77765 l!3043)) (not (dynLambda!29372 p!1874 (h!77765 l!3043))))))

(declare-fun b_lambda!283065 () Bool)

(assert (=> (not b_lambda!283065) (not bs!1916102)))

(declare-fun t!385800 () Bool)

(declare-fun tb!262369 () Bool)

(assert (=> (and start!714370 (= p!1874 p!1874) t!385800) tb!262369))

(declare-fun result!353572 () Bool)

(assert (=> tb!262369 (= result!353572 true)))

(assert (=> bs!1916102 t!385800))

(declare-fun b_and!351821 () Bool)

(assert (= b_and!351819 (and (=> t!385800 result!353572) b_and!351821)))

(declare-fun m!7987396 () Bool)

(assert (=> bs!1916102 m!7987396))

(assert (=> b!7321651 d!2273675))

(check-sat (not b_next!135079) (not b_lambda!283059) (not b_lambda!283063) (not b_lambda!283065) (not b!7321652) b_and!351821 (not b!7321659) tp_is_empty!48135 (not b!7321658) (not b!7321639) (not b_lambda!283061) (not d!2273663))
(check-sat b_and!351821 (not b_next!135079))
