; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187632 () Bool)

(assert start!187632)

(declare-fun res!838132 () Bool)

(declare-fun e!1194712 () Bool)

(assert (=> start!187632 (=> (not res!838132) (not e!1194712))))

(declare-datatypes ((C!10278 0))(
  ( (C!10279 (val!6019 Int)) )
))
(declare-datatypes ((Regex!5064 0))(
  ( (ElementMatch!5064 (c!305296 C!10278)) (Concat!8883 (regOne!10640 Regex!5064) (regTwo!10640 Regex!5064)) (EmptyExpr!5064) (Star!5064 (reg!5393 Regex!5064)) (EmptyLang!5064) (Union!5064 (regOne!10641 Regex!5064) (regTwo!10641 Regex!5064)) )
))
(declare-datatypes ((List!20836 0))(
  ( (Nil!20754) (Cons!20754 (h!26155 Regex!5064) (t!173053 List!20836)) )
))
(declare-datatypes ((Context!1908 0))(
  ( (Context!1909 (exprs!1454 List!20836)) )
))
(declare-fun thiss!29369 () Context!1908)

(declare-fun lambda!73745 () Int)

(declare-fun forall!4414 (List!20836 Int) Bool)

(assert (=> start!187632 (= res!838132 (forall!4414 (exprs!1454 thiss!29369) lambda!73745))))

(assert (=> start!187632 e!1194712))

(declare-fun e!1194711 () Bool)

(declare-fun inv!27565 (Context!1908) Bool)

(assert (=> start!187632 (and (inv!27565 thiss!29369) e!1194711)))

(declare-fun that!1958 () Context!1908)

(declare-fun e!1194710 () Bool)

(assert (=> start!187632 (and (inv!27565 that!1958) e!1194710)))

(declare-fun b!1872729 () Bool)

(assert (=> b!1872729 (= e!1194712 (not (forall!4414 (exprs!1454 that!1958) lambda!73745)))))

(declare-fun b!1872730 () Bool)

(declare-fun tp!532581 () Bool)

(assert (=> b!1872730 (= e!1194711 tp!532581)))

(declare-fun b!1872731 () Bool)

(declare-fun tp!532580 () Bool)

(assert (=> b!1872731 (= e!1194710 tp!532580)))

(assert (= (and start!187632 res!838132) b!1872729))

(assert (= start!187632 b!1872730))

(assert (= start!187632 b!1872731))

(declare-fun m!2298471 () Bool)

(assert (=> start!187632 m!2298471))

(declare-fun m!2298473 () Bool)

(assert (=> start!187632 m!2298473))

(declare-fun m!2298475 () Bool)

(assert (=> start!187632 m!2298475))

(declare-fun m!2298477 () Bool)

(assert (=> b!1872729 m!2298477))

(push 1)

(assert (not b!1872729))

(assert (not start!187632))

(assert (not b!1872731))

(assert (not b!1872730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!572553 () Bool)

(declare-fun res!838140 () Bool)

(declare-fun e!1194726 () Bool)

(assert (=> d!572553 (=> res!838140 e!1194726)))

(assert (=> d!572553 (= res!838140 (is-Nil!20754 (exprs!1454 that!1958)))))

(assert (=> d!572553 (= (forall!4414 (exprs!1454 that!1958) lambda!73745) e!1194726)))

(declare-fun b!1872745 () Bool)

(declare-fun e!1194727 () Bool)

(assert (=> b!1872745 (= e!1194726 e!1194727)))

(declare-fun res!838141 () Bool)

(assert (=> b!1872745 (=> (not res!838141) (not e!1194727))))

(declare-fun dynLambda!10223 (Int Regex!5064) Bool)

(assert (=> b!1872745 (= res!838141 (dynLambda!10223 lambda!73745 (h!26155 (exprs!1454 that!1958))))))

(declare-fun b!1872746 () Bool)

(assert (=> b!1872746 (= e!1194727 (forall!4414 (t!173053 (exprs!1454 that!1958)) lambda!73745))))

(assert (= (and d!572553 (not res!838140)) b!1872745))

(assert (= (and b!1872745 res!838141) b!1872746))

(declare-fun b_lambda!61609 () Bool)

(assert (=> (not b_lambda!61609) (not b!1872745)))

(declare-fun m!2298487 () Bool)

(assert (=> b!1872745 m!2298487))

(declare-fun m!2298489 () Bool)

(assert (=> b!1872746 m!2298489))

(assert (=> b!1872729 d!572553))

(declare-fun d!572555 () Bool)

(declare-fun res!838142 () Bool)

(declare-fun e!1194728 () Bool)

(assert (=> d!572555 (=> res!838142 e!1194728)))

(assert (=> d!572555 (= res!838142 (is-Nil!20754 (exprs!1454 thiss!29369)))))

(assert (=> d!572555 (= (forall!4414 (exprs!1454 thiss!29369) lambda!73745) e!1194728)))

(declare-fun b!1872747 () Bool)

(declare-fun e!1194729 () Bool)

(assert (=> b!1872747 (= e!1194728 e!1194729)))

(declare-fun res!838143 () Bool)

(assert (=> b!1872747 (=> (not res!838143) (not e!1194729))))

(assert (=> b!1872747 (= res!838143 (dynLambda!10223 lambda!73745 (h!26155 (exprs!1454 thiss!29369))))))

(declare-fun b!1872748 () Bool)

(assert (=> b!1872748 (= e!1194729 (forall!4414 (t!173053 (exprs!1454 thiss!29369)) lambda!73745))))

(assert (= (and d!572555 (not res!838142)) b!1872747))

(assert (= (and b!1872747 res!838143) b!1872748))

(declare-fun b_lambda!61611 () Bool)

(assert (=> (not b_lambda!61611) (not b!1872747)))

(declare-fun m!2298491 () Bool)

(assert (=> b!1872747 m!2298491))

(declare-fun m!2298493 () Bool)

(assert (=> b!1872748 m!2298493))

(assert (=> start!187632 d!572555))

(declare-fun bs!412072 () Bool)

(declare-fun d!572557 () Bool)

(assert (= bs!412072 (and d!572557 start!187632)))

(declare-fun lambda!73751 () Int)

(assert (=> bs!412072 (= lambda!73751 lambda!73745)))

(assert (=> d!572557 (= (inv!27565 thiss!29369) (forall!4414 (exprs!1454 thiss!29369) lambda!73751))))

(declare-fun bs!412073 () Bool)

(assert (= bs!412073 d!572557))

(declare-fun m!2298495 () Bool)

(assert (=> bs!412073 m!2298495))

(assert (=> start!187632 d!572557))

(declare-fun bs!412074 () Bool)

(declare-fun d!572559 () Bool)

(assert (= bs!412074 (and d!572559 start!187632)))

(declare-fun lambda!73752 () Int)

(assert (=> bs!412074 (= lambda!73752 lambda!73745)))

(declare-fun bs!412075 () Bool)

(assert (= bs!412075 (and d!572559 d!572557)))

(assert (=> bs!412075 (= lambda!73752 lambda!73751)))

(assert (=> d!572559 (= (inv!27565 that!1958) (forall!4414 (exprs!1454 that!1958) lambda!73752))))

(declare-fun bs!412076 () Bool)

(assert (= bs!412076 d!572559))

(declare-fun m!2298497 () Bool)

(assert (=> bs!412076 m!2298497))

(assert (=> start!187632 d!572559))

(declare-fun b!1872753 () Bool)

(declare-fun e!1194732 () Bool)

(declare-fun tp!532592 () Bool)

(declare-fun tp!532593 () Bool)

(assert (=> b!1872753 (= e!1194732 (and tp!532592 tp!532593))))

(assert (=> b!1872731 (= tp!532580 e!1194732)))

(assert (= (and b!1872731 (is-Cons!20754 (exprs!1454 that!1958))) b!1872753))

(declare-fun b!1872754 () Bool)

(declare-fun e!1194733 () Bool)

(declare-fun tp!532594 () Bool)

(declare-fun tp!532595 () Bool)

(assert (=> b!1872754 (= e!1194733 (and tp!532594 tp!532595))))

(assert (=> b!1872730 (= tp!532581 e!1194733)))

(assert (= (and b!1872730 (is-Cons!20754 (exprs!1454 thiss!29369))) b!1872754))

(declare-fun b_lambda!61613 () Bool)

(assert (= b_lambda!61609 (or start!187632 b_lambda!61613)))

(declare-fun bs!412077 () Bool)

(declare-fun d!572561 () Bool)

(assert (= bs!412077 (and d!572561 start!187632)))

(declare-fun validRegex!2082 (Regex!5064) Bool)

(assert (=> bs!412077 (= (dynLambda!10223 lambda!73745 (h!26155 (exprs!1454 that!1958))) (validRegex!2082 (h!26155 (exprs!1454 that!1958))))))

(declare-fun m!2298499 () Bool)

(assert (=> bs!412077 m!2298499))

(assert (=> b!1872745 d!572561))

(declare-fun b_lambda!61615 () Bool)

(assert (= b_lambda!61611 (or start!187632 b_lambda!61615)))

(declare-fun bs!412078 () Bool)

(declare-fun d!572563 () Bool)

(assert (= bs!412078 (and d!572563 start!187632)))

(assert (=> bs!412078 (= (dynLambda!10223 lambda!73745 (h!26155 (exprs!1454 thiss!29369))) (validRegex!2082 (h!26155 (exprs!1454 thiss!29369))))))

(declare-fun m!2298501 () Bool)

(assert (=> bs!412078 m!2298501))

(assert (=> b!1872747 d!572563))

(push 1)

(assert (not d!572559))

(assert (not b_lambda!61615))

(assert (not d!572557))

(assert (not b!1872754))

(assert (not b_lambda!61613))

(assert (not bs!412078))

(assert (not bs!412077))

(assert (not b!1872753))

(assert (not b!1872746))

(assert (not b!1872748))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

