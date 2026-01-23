; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545978 () Bool)

(assert start!545978)

(declare-fun b_free!133557 () Bool)

(declare-fun b_next!134347 () Bool)

(assert (=> start!545978 (= b_free!133557 (not b_next!134347))))

(declare-fun tp!1447927 () Bool)

(declare-fun b_and!350543 () Bool)

(assert (=> start!545978 (= tp!1447927 b_and!350543)))

(declare-fun res!2194802 () Bool)

(declare-fun e!3216586 () Bool)

(assert (=> start!545978 (=> (not res!2194802) (not e!3216586))))

(declare-datatypes ((B!3113 0))(
  ( (B!3114 (val!24340 Int)) )
))
(declare-datatypes ((List!60006 0))(
  ( (Nil!59882) (Cons!59882 (h!66330 B!3113) (t!373111 List!60006)) )
))
(declare-fun l!3049 () List!60006)

(declare-fun p!1890 () Int)

(declare-fun forall!14070 (List!60006 Int) Bool)

(assert (=> start!545978 (= res!2194802 (forall!14070 l!3049 p!1890))))

(assert (=> start!545978 e!3216586))

(declare-fun e!3216588 () Bool)

(assert (=> start!545978 e!3216588))

(assert (=> start!545978 tp!1447927))

(declare-fun b!5162514 () Bool)

(declare-fun res!2194801 () Bool)

(assert (=> b!5162514 (=> (not res!2194801) (not e!3216586))))

(get-info :version)

(assert (=> b!5162514 (= res!2194801 ((_ is Cons!59882) l!3049))))

(declare-fun b!5162516 () Bool)

(declare-fun e!3216587 () Bool)

(declare-fun dynLambda!23838 (Int B!3113) Bool)

(assert (=> b!5162516 (= e!3216587 (dynLambda!23838 p!1890 (h!66330 l!3049)))))

(declare-fun b!5162517 () Bool)

(declare-fun tp_is_empty!38259 () Bool)

(declare-fun tp!1447926 () Bool)

(assert (=> b!5162517 (= e!3216588 (and tp_is_empty!38259 tp!1447926))))

(declare-fun b!5162515 () Bool)

(assert (=> b!5162515 (= e!3216586 (not e!3216587))))

(declare-fun res!2194800 () Bool)

(assert (=> b!5162515 (=> res!2194800 e!3216587)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2122608 () (InoxSet B!3113))

(declare-fun content!10613 (List!60006) (InoxSet B!3113))

(assert (=> b!5162515 (= res!2194800 (not (= (content!10613 l!3049) ((_ map or) lt!2122608 (store ((as const (Array B!3113 Bool)) false) (h!66330 l!3049) true)))))))

(declare-fun forall!14071 ((InoxSet B!3113) Int) Bool)

(assert (=> b!5162515 (forall!14071 lt!2122608 p!1890)))

(assert (=> b!5162515 (= lt!2122608 (content!10613 (t!373111 l!3049)))))

(declare-datatypes ((Unit!151319 0))(
  ( (Unit!151320) )
))
(declare-fun lt!2122609 () Unit!151319)

(declare-fun lemmaForallThenOnContent!50 (List!60006 Int) Unit!151319)

(assert (=> b!5162515 (= lt!2122609 (lemmaForallThenOnContent!50 (t!373111 l!3049) p!1890))))

(assert (= (and start!545978 res!2194802) b!5162514))

(assert (= (and b!5162514 res!2194801) b!5162515))

(assert (= (and b!5162515 (not res!2194800)) b!5162516))

(assert (= (and start!545978 ((_ is Cons!59882) l!3049)) b!5162517))

(declare-fun b_lambda!200643 () Bool)

(assert (=> (not b_lambda!200643) (not b!5162516)))

(declare-fun t!373110 () Bool)

(declare-fun tb!261903 () Bool)

(assert (=> (and start!545978 (= p!1890 p!1890) t!373110) tb!261903))

(declare-fun result!330370 () Bool)

(assert (=> tb!261903 (= result!330370 true)))

(assert (=> b!5162516 t!373110))

(declare-fun b_and!350545 () Bool)

(assert (= b_and!350543 (and (=> t!373110 result!330370) b_and!350545)))

(declare-fun m!6213178 () Bool)

(assert (=> start!545978 m!6213178))

(declare-fun m!6213180 () Bool)

(assert (=> b!5162516 m!6213180))

(declare-fun m!6213182 () Bool)

(assert (=> b!5162515 m!6213182))

(declare-fun m!6213184 () Bool)

(assert (=> b!5162515 m!6213184))

(declare-fun m!6213186 () Bool)

(assert (=> b!5162515 m!6213186))

(declare-fun m!6213188 () Bool)

(assert (=> b!5162515 m!6213188))

(declare-fun m!6213190 () Bool)

(assert (=> b!5162515 m!6213190))

(check-sat tp_is_empty!38259 (not b_next!134347) b_and!350545 (not b_lambda!200643) (not b!5162517) (not start!545978) (not b!5162515))
(check-sat b_and!350545 (not b_next!134347))
(get-model)

(declare-fun b_lambda!200647 () Bool)

(assert (= b_lambda!200643 (or (and start!545978 b_free!133557) b_lambda!200647)))

(check-sat tp_is_empty!38259 (not b_next!134347) b_and!350545 (not start!545978) (not b!5162515) (not b_lambda!200647) (not b!5162517))
(check-sat b_and!350545 (not b_next!134347))
(get-model)

(declare-fun d!1665921 () Bool)

(declare-fun c!888179 () Bool)

(assert (=> d!1665921 (= c!888179 ((_ is Nil!59882) l!3049))))

(declare-fun e!3216597 () (InoxSet B!3113))

(assert (=> d!1665921 (= (content!10613 l!3049) e!3216597)))

(declare-fun b!5162528 () Bool)

(assert (=> b!5162528 (= e!3216597 ((as const (Array B!3113 Bool)) false))))

(declare-fun b!5162529 () Bool)

(assert (=> b!5162529 (= e!3216597 ((_ map or) (store ((as const (Array B!3113 Bool)) false) (h!66330 l!3049) true) (content!10613 (t!373111 l!3049))))))

(assert (= (and d!1665921 c!888179) b!5162528))

(assert (= (and d!1665921 (not c!888179)) b!5162529))

(assert (=> b!5162529 m!6213188))

(assert (=> b!5162529 m!6213186))

(assert (=> b!5162515 d!1665921))

(declare-fun d!1665927 () Bool)

(declare-fun lt!2122612 () Bool)

(declare-fun toList!8430 ((InoxSet B!3113)) List!60006)

(assert (=> d!1665927 (= lt!2122612 (forall!14070 (toList!8430 lt!2122608) p!1890))))

(declare-fun choose!38169 ((InoxSet B!3113) Int) Bool)

(assert (=> d!1665927 (= lt!2122612 (choose!38169 lt!2122608 p!1890))))

(assert (=> d!1665927 (= (forall!14071 lt!2122608 p!1890) lt!2122612)))

(declare-fun bs!1202667 () Bool)

(assert (= bs!1202667 d!1665927))

(declare-fun m!6213194 () Bool)

(assert (=> bs!1202667 m!6213194))

(assert (=> bs!1202667 m!6213194))

(declare-fun m!6213196 () Bool)

(assert (=> bs!1202667 m!6213196))

(declare-fun m!6213198 () Bool)

(assert (=> bs!1202667 m!6213198))

(assert (=> b!5162515 d!1665927))

(declare-fun d!1665931 () Bool)

(declare-fun c!888183 () Bool)

(assert (=> d!1665931 (= c!888183 ((_ is Nil!59882) (t!373111 l!3049)))))

(declare-fun e!3216601 () (InoxSet B!3113))

(assert (=> d!1665931 (= (content!10613 (t!373111 l!3049)) e!3216601)))

(declare-fun b!5162536 () Bool)

(assert (=> b!5162536 (= e!3216601 ((as const (Array B!3113 Bool)) false))))

(declare-fun b!5162537 () Bool)

(assert (=> b!5162537 (= e!3216601 ((_ map or) (store ((as const (Array B!3113 Bool)) false) (h!66330 (t!373111 l!3049)) true) (content!10613 (t!373111 (t!373111 l!3049)))))))

(assert (= (and d!1665931 c!888183) b!5162536))

(assert (= (and d!1665931 (not c!888183)) b!5162537))

(declare-fun m!6213200 () Bool)

(assert (=> b!5162537 m!6213200))

(declare-fun m!6213202 () Bool)

(assert (=> b!5162537 m!6213202))

(assert (=> b!5162515 d!1665931))

(declare-fun d!1665933 () Bool)

(assert (=> d!1665933 (forall!14071 (content!10613 (t!373111 l!3049)) p!1890)))

(declare-fun lt!2122620 () Unit!151319)

(declare-fun choose!38171 (List!60006 Int) Unit!151319)

(assert (=> d!1665933 (= lt!2122620 (choose!38171 (t!373111 l!3049) p!1890))))

(assert (=> d!1665933 (forall!14070 (t!373111 l!3049) p!1890)))

(assert (=> d!1665933 (= (lemmaForallThenOnContent!50 (t!373111 l!3049) p!1890) lt!2122620)))

(declare-fun bs!1202669 () Bool)

(assert (= bs!1202669 d!1665933))

(assert (=> bs!1202669 m!6213186))

(assert (=> bs!1202669 m!6213186))

(declare-fun m!6213214 () Bool)

(assert (=> bs!1202669 m!6213214))

(declare-fun m!6213216 () Bool)

(assert (=> bs!1202669 m!6213216))

(declare-fun m!6213218 () Bool)

(assert (=> bs!1202669 m!6213218))

(assert (=> b!5162515 d!1665933))

(declare-fun d!1665939 () Bool)

(declare-fun res!2194813 () Bool)

(declare-fun e!3216610 () Bool)

(assert (=> d!1665939 (=> res!2194813 e!3216610)))

(assert (=> d!1665939 (= res!2194813 ((_ is Nil!59882) l!3049))))

(assert (=> d!1665939 (= (forall!14070 l!3049 p!1890) e!3216610)))

(declare-fun b!5162549 () Bool)

(declare-fun e!3216611 () Bool)

(assert (=> b!5162549 (= e!3216610 e!3216611)))

(declare-fun res!2194814 () Bool)

(assert (=> b!5162549 (=> (not res!2194814) (not e!3216611))))

(assert (=> b!5162549 (= res!2194814 (dynLambda!23838 p!1890 (h!66330 l!3049)))))

(declare-fun b!5162550 () Bool)

(assert (=> b!5162550 (= e!3216611 (forall!14070 (t!373111 l!3049) p!1890))))

(assert (= (and d!1665939 (not res!2194813)) b!5162549))

(assert (= (and b!5162549 res!2194814) b!5162550))

(declare-fun b_lambda!200653 () Bool)

(assert (=> (not b_lambda!200653) (not b!5162549)))

(assert (=> b!5162549 t!373110))

(declare-fun b_and!350549 () Bool)

(assert (= b_and!350545 (and (=> t!373110 result!330370) b_and!350549)))

(assert (=> b!5162549 m!6213180))

(assert (=> b!5162550 m!6213218))

(assert (=> start!545978 d!1665939))

(declare-fun b!5162555 () Bool)

(declare-fun e!3216614 () Bool)

(declare-fun tp!1447933 () Bool)

(assert (=> b!5162555 (= e!3216614 (and tp_is_empty!38259 tp!1447933))))

(assert (=> b!5162517 (= tp!1447926 e!3216614)))

(assert (= (and b!5162517 ((_ is Cons!59882) (t!373111 l!3049))) b!5162555))

(declare-fun b_lambda!200655 () Bool)

(assert (= b_lambda!200653 (or (and start!545978 b_free!133557) b_lambda!200655)))

(check-sat tp_is_empty!38259 (not b_next!134347) b_and!350549 (not b!5162529) (not d!1665927) (not d!1665933) (not b!5162550) (not b_lambda!200655) (not b!5162537) (not b!5162555) (not b_lambda!200647))
(check-sat b_and!350549 (not b_next!134347))
