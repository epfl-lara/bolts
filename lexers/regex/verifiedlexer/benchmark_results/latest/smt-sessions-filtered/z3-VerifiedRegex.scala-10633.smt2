; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545998 () Bool)

(assert start!545998)

(declare-fun b_free!133561 () Bool)

(declare-fun b_next!134351 () Bool)

(assert (=> start!545998 (= b_free!133561 (not b_next!134351))))

(declare-fun tp!1447945 () Bool)

(declare-fun b_and!350555 () Bool)

(assert (=> start!545998 (= tp!1447945 b_and!350555)))

(declare-fun b!5162581 () Bool)

(declare-fun e!3216632 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!3117 0))(
  ( (B!3118 (val!24342 Int)) )
))
(declare-fun lt!2122645 () (InoxSet B!3117))

(declare-fun lt!2122642 () (InoxSet B!3117))

(declare-datatypes ((List!60008 0))(
  ( (Nil!59884) (Cons!59884 (h!66332 B!3117) (t!373117 List!60008)) )
))
(declare-fun content!10615 (List!60008) (InoxSet B!3117))

(declare-fun toList!8433 ((InoxSet B!3117)) List!60008)

(assert (=> b!5162581 (= e!3216632 (= ((_ map implies) (content!10615 (toList!8433 lt!2122645)) lt!2122642) ((as const (InoxSet B!3117)) true)))))

(declare-fun b!5162582 () Bool)

(declare-fun res!2194838 () Bool)

(declare-fun e!3216631 () Bool)

(assert (=> b!5162582 (=> (not res!2194838) (not e!3216631))))

(declare-fun l!3049 () List!60008)

(get-info :version)

(assert (=> b!5162582 (= res!2194838 ((_ is Cons!59884) l!3049))))

(declare-fun res!2194835 () Bool)

(assert (=> start!545998 (=> (not res!2194835) (not e!3216631))))

(declare-fun p!1890 () Int)

(declare-fun forall!14074 (List!60008 Int) Bool)

(assert (=> start!545998 (= res!2194835 (forall!14074 l!3049 p!1890))))

(assert (=> start!545998 e!3216631))

(declare-fun e!3216630 () Bool)

(assert (=> start!545998 e!3216630))

(assert (=> start!545998 tp!1447945))

(declare-fun b!5162583 () Bool)

(declare-fun res!2194837 () Bool)

(assert (=> b!5162583 (=> res!2194837 e!3216632)))

(declare-fun dynLambda!23840 (Int B!3117) Bool)

(assert (=> b!5162583 (= res!2194837 (not (dynLambda!23840 p!1890 (h!66332 l!3049))))))

(declare-fun b!5162584 () Bool)

(declare-fun tp_is_empty!38263 () Bool)

(declare-fun tp!1447944 () Bool)

(assert (=> b!5162584 (= e!3216630 (and tp_is_empty!38263 tp!1447944))))

(declare-fun b!5162585 () Bool)

(assert (=> b!5162585 (= e!3216631 (not e!3216632))))

(declare-fun res!2194836 () Bool)

(assert (=> b!5162585 (=> res!2194836 e!3216632)))

(assert (=> b!5162585 (= res!2194836 (not (= lt!2122642 lt!2122645)))))

(declare-fun lt!2122644 () (InoxSet B!3117))

(assert (=> b!5162585 (= lt!2122645 ((_ map or) lt!2122644 (store ((as const (Array B!3117 Bool)) false) (h!66332 l!3049) true)))))

(assert (=> b!5162585 (= lt!2122642 (content!10615 l!3049))))

(declare-fun forall!14075 ((InoxSet B!3117) Int) Bool)

(assert (=> b!5162585 (forall!14075 lt!2122644 p!1890)))

(assert (=> b!5162585 (= lt!2122644 (content!10615 (t!373117 l!3049)))))

(declare-datatypes ((Unit!151323 0))(
  ( (Unit!151324) )
))
(declare-fun lt!2122643 () Unit!151323)

(declare-fun lemmaForallThenOnContent!52 (List!60008 Int) Unit!151323)

(assert (=> b!5162585 (= lt!2122643 (lemmaForallThenOnContent!52 (t!373117 l!3049) p!1890))))

(assert (= (and start!545998 res!2194835) b!5162582))

(assert (= (and b!5162582 res!2194838) b!5162585))

(assert (= (and b!5162585 (not res!2194836)) b!5162583))

(assert (= (and b!5162583 (not res!2194837)) b!5162581))

(assert (= (and start!545998 ((_ is Cons!59884) l!3049)) b!5162584))

(declare-fun b_lambda!200659 () Bool)

(assert (=> (not b_lambda!200659) (not b!5162583)))

(declare-fun t!373116 () Bool)

(declare-fun tb!261907 () Bool)

(assert (=> (and start!545998 (= p!1890 p!1890) t!373116) tb!261907))

(declare-fun result!330378 () Bool)

(assert (=> tb!261907 (= result!330378 true)))

(assert (=> b!5162583 t!373116))

(declare-fun b_and!350557 () Bool)

(assert (= b_and!350555 (and (=> t!373116 result!330378) b_and!350557)))

(declare-fun m!6213242 () Bool)

(assert (=> b!5162581 m!6213242))

(assert (=> b!5162581 m!6213242))

(declare-fun m!6213244 () Bool)

(assert (=> b!5162581 m!6213244))

(declare-fun m!6213246 () Bool)

(assert (=> start!545998 m!6213246))

(declare-fun m!6213248 () Bool)

(assert (=> b!5162583 m!6213248))

(declare-fun m!6213250 () Bool)

(assert (=> b!5162585 m!6213250))

(declare-fun m!6213252 () Bool)

(assert (=> b!5162585 m!6213252))

(declare-fun m!6213254 () Bool)

(assert (=> b!5162585 m!6213254))

(declare-fun m!6213256 () Bool)

(assert (=> b!5162585 m!6213256))

(declare-fun m!6213258 () Bool)

(assert (=> b!5162585 m!6213258))

(check-sat b_and!350557 (not b_next!134351) (not b!5162585) (not b!5162584) (not b_lambda!200659) (not start!545998) (not b!5162581) tp_is_empty!38263)
(check-sat b_and!350557 (not b_next!134351))
(get-model)

(declare-fun b_lambda!200663 () Bool)

(assert (= b_lambda!200659 (or (and start!545998 b_free!133561) b_lambda!200663)))

(check-sat b_and!350557 (not start!545998) (not b_next!134351) (not b!5162585) (not b!5162584) (not b_lambda!200663) (not b!5162581) tp_is_empty!38263)
(check-sat b_and!350557 (not b_next!134351))
(get-model)

(declare-fun d!1665944 () Bool)

(declare-fun c!888189 () Bool)

(assert (=> d!1665944 (= c!888189 ((_ is Nil!59884) l!3049))))

(declare-fun e!3216637 () (InoxSet B!3117))

(assert (=> d!1665944 (= (content!10615 l!3049) e!3216637)))

(declare-fun b!5162594 () Bool)

(assert (=> b!5162594 (= e!3216637 ((as const (Array B!3117 Bool)) false))))

(declare-fun b!5162595 () Bool)

(assert (=> b!5162595 (= e!3216637 ((_ map or) (store ((as const (Array B!3117 Bool)) false) (h!66332 l!3049) true) (content!10615 (t!373117 l!3049))))))

(assert (= (and d!1665944 c!888189) b!5162594))

(assert (= (and d!1665944 (not c!888189)) b!5162595))

(assert (=> b!5162595 m!6213256))

(assert (=> b!5162595 m!6213254))

(assert (=> b!5162585 d!1665944))

(declare-fun d!1665946 () Bool)

(declare-fun lt!2122650 () Bool)

(assert (=> d!1665946 (= lt!2122650 (forall!14074 (toList!8433 lt!2122644) p!1890))))

(declare-fun choose!38173 ((InoxSet B!3117) Int) Bool)

(assert (=> d!1665946 (= lt!2122650 (choose!38173 lt!2122644 p!1890))))

(assert (=> d!1665946 (= (forall!14075 lt!2122644 p!1890) lt!2122650)))

(declare-fun bs!1202673 () Bool)

(assert (= bs!1202673 d!1665946))

(declare-fun m!6213260 () Bool)

(assert (=> bs!1202673 m!6213260))

(assert (=> bs!1202673 m!6213260))

(declare-fun m!6213262 () Bool)

(assert (=> bs!1202673 m!6213262))

(declare-fun m!6213264 () Bool)

(assert (=> bs!1202673 m!6213264))

(assert (=> b!5162585 d!1665946))

(declare-fun d!1665950 () Bool)

(declare-fun c!888191 () Bool)

(assert (=> d!1665950 (= c!888191 ((_ is Nil!59884) (t!373117 l!3049)))))

(declare-fun e!3216639 () (InoxSet B!3117))

(assert (=> d!1665950 (= (content!10615 (t!373117 l!3049)) e!3216639)))

(declare-fun b!5162598 () Bool)

(assert (=> b!5162598 (= e!3216639 ((as const (Array B!3117 Bool)) false))))

(declare-fun b!5162599 () Bool)

(assert (=> b!5162599 (= e!3216639 ((_ map or) (store ((as const (Array B!3117 Bool)) false) (h!66332 (t!373117 l!3049)) true) (content!10615 (t!373117 (t!373117 l!3049)))))))

(assert (= (and d!1665950 c!888191) b!5162598))

(assert (= (and d!1665950 (not c!888191)) b!5162599))

(declare-fun m!6213266 () Bool)

(assert (=> b!5162599 m!6213266))

(declare-fun m!6213268 () Bool)

(assert (=> b!5162599 m!6213268))

(assert (=> b!5162585 d!1665950))

(declare-fun d!1665952 () Bool)

(assert (=> d!1665952 (forall!14075 (content!10615 (t!373117 l!3049)) p!1890)))

(declare-fun lt!2122654 () Unit!151323)

(declare-fun choose!38175 (List!60008 Int) Unit!151323)

(assert (=> d!1665952 (= lt!2122654 (choose!38175 (t!373117 l!3049) p!1890))))

(assert (=> d!1665952 (forall!14074 (t!373117 l!3049) p!1890)))

(assert (=> d!1665952 (= (lemmaForallThenOnContent!52 (t!373117 l!3049) p!1890) lt!2122654)))

(declare-fun bs!1202675 () Bool)

(assert (= bs!1202675 d!1665952))

(assert (=> bs!1202675 m!6213254))

(assert (=> bs!1202675 m!6213254))

(declare-fun m!6213280 () Bool)

(assert (=> bs!1202675 m!6213280))

(declare-fun m!6213282 () Bool)

(assert (=> bs!1202675 m!6213282))

(declare-fun m!6213284 () Bool)

(assert (=> bs!1202675 m!6213284))

(assert (=> b!5162585 d!1665952))

(declare-fun d!1665958 () Bool)

(declare-fun c!888193 () Bool)

(assert (=> d!1665958 (= c!888193 ((_ is Nil!59884) (toList!8433 lt!2122645)))))

(declare-fun e!3216641 () (InoxSet B!3117))

(assert (=> d!1665958 (= (content!10615 (toList!8433 lt!2122645)) e!3216641)))

(declare-fun b!5162602 () Bool)

(assert (=> b!5162602 (= e!3216641 ((as const (Array B!3117 Bool)) false))))

(declare-fun b!5162603 () Bool)

(assert (=> b!5162603 (= e!3216641 ((_ map or) (store ((as const (Array B!3117 Bool)) false) (h!66332 (toList!8433 lt!2122645)) true) (content!10615 (t!373117 (toList!8433 lt!2122645)))))))

(assert (= (and d!1665958 c!888193) b!5162602))

(assert (= (and d!1665958 (not c!888193)) b!5162603))

(declare-fun m!6213286 () Bool)

(assert (=> b!5162603 m!6213286))

(declare-fun m!6213288 () Bool)

(assert (=> b!5162603 m!6213288))

(assert (=> b!5162581 d!1665958))

(declare-fun d!1665960 () Bool)

(declare-fun e!3216644 () Bool)

(assert (=> d!1665960 e!3216644))

(declare-fun res!2194841 () Bool)

(assert (=> d!1665960 (=> (not res!2194841) (not e!3216644))))

(declare-fun lt!2122660 () List!60008)

(declare-fun noDuplicate!1127 (List!60008) Bool)

(assert (=> d!1665960 (= res!2194841 (noDuplicate!1127 lt!2122660))))

(declare-fun choose!38177 ((InoxSet B!3117)) List!60008)

(assert (=> d!1665960 (= lt!2122660 (choose!38177 lt!2122645))))

(assert (=> d!1665960 (= (toList!8433 lt!2122645) lt!2122660)))

(declare-fun b!5162606 () Bool)

(assert (=> b!5162606 (= e!3216644 (= (content!10615 lt!2122660) lt!2122645))))

(assert (= (and d!1665960 res!2194841) b!5162606))

(declare-fun m!6213296 () Bool)

(assert (=> d!1665960 m!6213296))

(declare-fun m!6213298 () Bool)

(assert (=> d!1665960 m!6213298))

(declare-fun m!6213300 () Bool)

(assert (=> b!5162606 m!6213300))

(assert (=> b!5162581 d!1665960))

(declare-fun d!1665964 () Bool)

(declare-fun res!2194852 () Bool)

(declare-fun e!3216656 () Bool)

(assert (=> d!1665964 (=> res!2194852 e!3216656)))

(assert (=> d!1665964 (= res!2194852 ((_ is Nil!59884) l!3049))))

(assert (=> d!1665964 (= (forall!14074 l!3049 p!1890) e!3216656)))

(declare-fun b!5162619 () Bool)

(declare-fun e!3216657 () Bool)

(assert (=> b!5162619 (= e!3216656 e!3216657)))

(declare-fun res!2194853 () Bool)

(assert (=> b!5162619 (=> (not res!2194853) (not e!3216657))))

(assert (=> b!5162619 (= res!2194853 (dynLambda!23840 p!1890 (h!66332 l!3049)))))

(declare-fun b!5162620 () Bool)

(assert (=> b!5162620 (= e!3216657 (forall!14074 (t!373117 l!3049) p!1890))))

(assert (= (and d!1665964 (not res!2194852)) b!5162619))

(assert (= (and b!5162619 res!2194853) b!5162620))

(declare-fun b_lambda!200667 () Bool)

(assert (=> (not b_lambda!200667) (not b!5162619)))

(assert (=> b!5162619 t!373116))

(declare-fun b_and!350561 () Bool)

(assert (= b_and!350557 (and (=> t!373116 result!330378) b_and!350561)))

(assert (=> b!5162619 m!6213248))

(assert (=> b!5162620 m!6213284))

(assert (=> start!545998 d!1665964))

(declare-fun b!5162625 () Bool)

(declare-fun e!3216660 () Bool)

(declare-fun tp!1447948 () Bool)

(assert (=> b!5162625 (= e!3216660 (and tp_is_empty!38263 tp!1447948))))

(assert (=> b!5162584 (= tp!1447944 e!3216660)))

(assert (= (and b!5162584 ((_ is Cons!59884) (t!373117 l!3049))) b!5162625))

(declare-fun b_lambda!200669 () Bool)

(assert (= b_lambda!200667 (or (and start!545998 b_free!133561) b_lambda!200669)))

(check-sat (not b_next!134351) (not d!1665952) (not b!5162599) (not b!5162603) b_and!350561 (not b!5162620) (not b!5162606) (not d!1665960) (not b_lambda!200669) (not b_lambda!200663) (not d!1665946) (not b!5162625) (not b!5162595) tp_is_empty!38263)
(check-sat b_and!350561 (not b_next!134351))
