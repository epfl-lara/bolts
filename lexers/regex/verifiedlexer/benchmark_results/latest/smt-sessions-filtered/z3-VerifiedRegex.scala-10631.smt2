; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545958 () Bool)

(assert start!545958)

(declare-fun b_free!133553 () Bool)

(declare-fun b_next!134343 () Bool)

(assert (=> start!545958 (= b_free!133553 (not b_next!134343))))

(declare-fun tp!1447908 () Bool)

(declare-fun b_and!350533 () Bool)

(assert (=> start!545958 (= tp!1447908 b_and!350533)))

(declare-fun res!2194772 () Bool)

(declare-fun e!3216544 () Bool)

(assert (=> start!545958 (=> (not res!2194772) (not e!3216544))))

(declare-datatypes ((B!3109 0))(
  ( (B!3110 (val!24338 Int)) )
))
(declare-datatypes ((List!60004 0))(
  ( (Nil!59880) (Cons!59880 (h!66328 B!3109) (t!373101 List!60004)) )
))
(declare-fun l!3049 () List!60004)

(declare-fun p!1890 () Int)

(declare-fun forall!14066 (List!60004 Int) Bool)

(assert (=> start!545958 (= res!2194772 (forall!14066 l!3049 p!1890))))

(assert (=> start!545958 e!3216544))

(declare-fun e!3216543 () Bool)

(assert (=> start!545958 e!3216543))

(assert (=> start!545958 tp!1447908))

(declare-fun b!5162453 () Bool)

(declare-fun res!2194771 () Bool)

(assert (=> b!5162453 (=> (not res!2194771) (not e!3216544))))

(get-info :version)

(assert (=> b!5162453 (= res!2194771 ((_ is Cons!59880) l!3049))))

(declare-fun b!5162454 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2122585 () (InoxSet B!3109))

(declare-fun content!10611 (List!60004) (InoxSet B!3109))

(assert (=> b!5162454 (= e!3216544 (not (= (content!10611 l!3049) ((_ map or) lt!2122585 (store ((as const (Array B!3109 Bool)) false) (h!66328 l!3049) true)))))))

(declare-fun forall!14067 ((InoxSet B!3109) Int) Bool)

(assert (=> b!5162454 (forall!14067 lt!2122585 p!1890)))

(assert (=> b!5162454 (= lt!2122585 (content!10611 (t!373101 l!3049)))))

(declare-datatypes ((Unit!151315 0))(
  ( (Unit!151316) )
))
(declare-fun lt!2122584 () Unit!151315)

(declare-fun lemmaForallThenOnContent!48 (List!60004 Int) Unit!151315)

(assert (=> b!5162454 (= lt!2122584 (lemmaForallThenOnContent!48 (t!373101 l!3049) p!1890))))

(declare-fun b!5162455 () Bool)

(declare-fun tp_is_empty!38255 () Bool)

(declare-fun tp!1447909 () Bool)

(assert (=> b!5162455 (= e!3216543 (and tp_is_empty!38255 tp!1447909))))

(assert (= (and start!545958 res!2194772) b!5162453))

(assert (= (and b!5162453 res!2194771) b!5162454))

(assert (= (and start!545958 ((_ is Cons!59880) l!3049)) b!5162455))

(declare-fun m!6213116 () Bool)

(assert (=> start!545958 m!6213116))

(declare-fun m!6213118 () Bool)

(assert (=> b!5162454 m!6213118))

(declare-fun m!6213120 () Bool)

(assert (=> b!5162454 m!6213120))

(declare-fun m!6213122 () Bool)

(assert (=> b!5162454 m!6213122))

(declare-fun m!6213124 () Bool)

(assert (=> b!5162454 m!6213124))

(declare-fun m!6213126 () Bool)

(assert (=> b!5162454 m!6213126))

(check-sat (not b!5162454) b_and!350533 (not b_next!134343) tp_is_empty!38255 (not start!545958) (not b!5162455))
(check-sat b_and!350533 (not b_next!134343))
(get-model)

(declare-fun d!1665902 () Bool)

(declare-fun res!2194783 () Bool)

(declare-fun e!3216557 () Bool)

(assert (=> d!1665902 (=> res!2194783 e!3216557)))

(assert (=> d!1665902 (= res!2194783 ((_ is Nil!59880) l!3049))))

(assert (=> d!1665902 (= (forall!14066 l!3049 p!1890) e!3216557)))

(declare-fun b!5162470 () Bool)

(declare-fun e!3216558 () Bool)

(assert (=> b!5162470 (= e!3216557 e!3216558)))

(declare-fun res!2194784 () Bool)

(assert (=> b!5162470 (=> (not res!2194784) (not e!3216558))))

(declare-fun dynLambda!23836 (Int B!3109) Bool)

(assert (=> b!5162470 (= res!2194784 (dynLambda!23836 p!1890 (h!66328 l!3049)))))

(declare-fun b!5162471 () Bool)

(assert (=> b!5162471 (= e!3216558 (forall!14066 (t!373101 l!3049) p!1890))))

(assert (= (and d!1665902 (not res!2194783)) b!5162470))

(assert (= (and b!5162470 res!2194784) b!5162471))

(declare-fun b_lambda!200635 () Bool)

(assert (=> (not b_lambda!200635) (not b!5162470)))

(declare-fun t!373105 () Bool)

(declare-fun tb!261899 () Bool)

(assert (=> (and start!545958 (= p!1890 p!1890) t!373105) tb!261899))

(declare-fun result!330362 () Bool)

(assert (=> tb!261899 (= result!330362 true)))

(assert (=> b!5162470 t!373105))

(declare-fun b_and!350537 () Bool)

(assert (= b_and!350533 (and (=> t!373105 result!330362) b_and!350537)))

(declare-fun m!6213132 () Bool)

(assert (=> b!5162470 m!6213132))

(declare-fun m!6213134 () Bool)

(assert (=> b!5162471 m!6213134))

(assert (=> start!545958 d!1665902))

(declare-fun d!1665908 () Bool)

(declare-fun c!888174 () Bool)

(assert (=> d!1665908 (= c!888174 ((_ is Nil!59880) l!3049))))

(declare-fun e!3216562 () (InoxSet B!3109))

(assert (=> d!1665908 (= (content!10611 l!3049) e!3216562)))

(declare-fun b!5162478 () Bool)

(assert (=> b!5162478 (= e!3216562 ((as const (Array B!3109 Bool)) false))))

(declare-fun b!5162479 () Bool)

(assert (=> b!5162479 (= e!3216562 ((_ map or) (store ((as const (Array B!3109 Bool)) false) (h!66328 l!3049) true) (content!10611 (t!373101 l!3049))))))

(assert (= (and d!1665908 c!888174) b!5162478))

(assert (= (and d!1665908 (not c!888174)) b!5162479))

(assert (=> b!5162479 m!6213122))

(assert (=> b!5162479 m!6213120))

(assert (=> b!5162454 d!1665908))

(declare-fun d!1665910 () Bool)

(declare-fun lt!2122591 () Bool)

(declare-fun toList!8429 ((InoxSet B!3109)) List!60004)

(assert (=> d!1665910 (= lt!2122591 (forall!14066 (toList!8429 lt!2122585) p!1890))))

(declare-fun choose!38166 ((InoxSet B!3109) Int) Bool)

(assert (=> d!1665910 (= lt!2122591 (choose!38166 lt!2122585 p!1890))))

(assert (=> d!1665910 (= (forall!14067 lt!2122585 p!1890) lt!2122591)))

(declare-fun bs!1202662 () Bool)

(assert (= bs!1202662 d!1665910))

(declare-fun m!6213146 () Bool)

(assert (=> bs!1202662 m!6213146))

(assert (=> bs!1202662 m!6213146))

(declare-fun m!6213148 () Bool)

(assert (=> bs!1202662 m!6213148))

(declare-fun m!6213150 () Bool)

(assert (=> bs!1202662 m!6213150))

(assert (=> b!5162454 d!1665910))

(declare-fun d!1665916 () Bool)

(declare-fun c!888176 () Bool)

(assert (=> d!1665916 (= c!888176 ((_ is Nil!59880) (t!373101 l!3049)))))

(declare-fun e!3216564 () (InoxSet B!3109))

(assert (=> d!1665916 (= (content!10611 (t!373101 l!3049)) e!3216564)))

(declare-fun b!5162482 () Bool)

(assert (=> b!5162482 (= e!3216564 ((as const (Array B!3109 Bool)) false))))

(declare-fun b!5162483 () Bool)

(assert (=> b!5162483 (= e!3216564 ((_ map or) (store ((as const (Array B!3109 Bool)) false) (h!66328 (t!373101 l!3049)) true) (content!10611 (t!373101 (t!373101 l!3049)))))))

(assert (= (and d!1665916 c!888176) b!5162482))

(assert (= (and d!1665916 (not c!888176)) b!5162483))

(declare-fun m!6213152 () Bool)

(assert (=> b!5162483 m!6213152))

(declare-fun m!6213154 () Bool)

(assert (=> b!5162483 m!6213154))

(assert (=> b!5162454 d!1665916))

(declare-fun d!1665918 () Bool)

(assert (=> d!1665918 (forall!14067 (content!10611 (t!373101 l!3049)) p!1890)))

(declare-fun lt!2122597 () Unit!151315)

(declare-fun choose!38168 (List!60004 Int) Unit!151315)

(assert (=> d!1665918 (= lt!2122597 (choose!38168 (t!373101 l!3049) p!1890))))

(assert (=> d!1665918 (forall!14066 (t!373101 l!3049) p!1890)))

(assert (=> d!1665918 (= (lemmaForallThenOnContent!48 (t!373101 l!3049) p!1890) lt!2122597)))

(declare-fun bs!1202664 () Bool)

(assert (= bs!1202664 d!1665918))

(assert (=> bs!1202664 m!6213120))

(assert (=> bs!1202664 m!6213120))

(declare-fun m!6213160 () Bool)

(assert (=> bs!1202664 m!6213160))

(declare-fun m!6213162 () Bool)

(assert (=> bs!1202664 m!6213162))

(assert (=> bs!1202664 m!6213134))

(assert (=> b!5162454 d!1665918))

(declare-fun b!5162493 () Bool)

(declare-fun e!3216570 () Bool)

(declare-fun tp!1447915 () Bool)

(assert (=> b!5162493 (= e!3216570 (and tp_is_empty!38255 tp!1447915))))

(assert (=> b!5162455 (= tp!1447909 e!3216570)))

(assert (= (and b!5162455 ((_ is Cons!59880) (t!373101 l!3049))) b!5162493))

(declare-fun b_lambda!200639 () Bool)

(assert (= b_lambda!200635 (or (and start!545958 b_free!133553) b_lambda!200639)))

(check-sat (not b!5162493) (not b!5162471) (not d!1665918) b_and!350537 (not b!5162479) (not d!1665910) (not b!5162483) (not b_lambda!200639) (not b_next!134343) tp_is_empty!38255)
(check-sat b_and!350537 (not b_next!134343))
