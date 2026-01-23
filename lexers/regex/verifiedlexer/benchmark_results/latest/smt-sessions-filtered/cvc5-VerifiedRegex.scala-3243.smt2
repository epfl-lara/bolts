; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187644 () Bool)

(assert start!187644)

(declare-fun lambda!73759 () Int)

(declare-datatypes ((C!10282 0))(
  ( (C!10283 (val!6021 Int)) )
))
(declare-datatypes ((Regex!5066 0))(
  ( (ElementMatch!5066 (c!305298 C!10282)) (Concat!8885 (regOne!10644 Regex!5066) (regTwo!10644 Regex!5066)) (EmptyExpr!5066) (Star!5066 (reg!5395 Regex!5066)) (EmptyLang!5066) (Union!5066 (regOne!10645 Regex!5066) (regTwo!10645 Regex!5066)) )
))
(declare-datatypes ((List!20838 0))(
  ( (Nil!20756) (Cons!20756 (h!26157 Regex!5066) (t!173055 List!20838)) )
))
(declare-datatypes ((Context!1912 0))(
  ( (Context!1913 (exprs!1456 List!20838)) )
))
(declare-fun thiss!29369 () Context!1912)

(declare-datatypes ((Unit!35341 0))(
  ( (Unit!35342) )
))
(declare-fun lt!719720 () Unit!35341)

(declare-fun that!1958 () Context!1912)

(declare-fun lemmaConcatPreservesForall!121 (List!20838 List!20838 Int) Unit!35341)

(assert (=> start!187644 (= lt!719720 (lemmaConcatPreservesForall!121 (exprs!1456 thiss!29369) (exprs!1456 that!1958) lambda!73759))))

(declare-fun inv!27570 (Context!1912) Bool)

(declare-fun ++!5635 (List!20838 List!20838) List!20838)

(assert (=> start!187644 (not (inv!27570 (Context!1913 (++!5635 (exprs!1456 thiss!29369) (exprs!1456 that!1958)))))))

(declare-fun e!1194751 () Bool)

(assert (=> start!187644 (and (inv!27570 thiss!29369) e!1194751)))

(declare-fun e!1194750 () Bool)

(assert (=> start!187644 (and (inv!27570 that!1958) e!1194750)))

(declare-fun b!1872773 () Bool)

(declare-fun tp!532609 () Bool)

(assert (=> b!1872773 (= e!1194751 tp!532609)))

(declare-fun b!1872774 () Bool)

(declare-fun tp!532608 () Bool)

(assert (=> b!1872774 (= e!1194750 tp!532608)))

(assert (= start!187644 b!1872773))

(assert (= start!187644 b!1872774))

(declare-fun m!2298519 () Bool)

(assert (=> start!187644 m!2298519))

(declare-fun m!2298521 () Bool)

(assert (=> start!187644 m!2298521))

(declare-fun m!2298523 () Bool)

(assert (=> start!187644 m!2298523))

(declare-fun m!2298525 () Bool)

(assert (=> start!187644 m!2298525))

(declare-fun m!2298527 () Bool)

(assert (=> start!187644 m!2298527))

(push 1)

(assert (not start!187644))

(assert (not b!1872774))

(assert (not b!1872773))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!412088 () Bool)

(declare-fun d!572578 () Bool)

(assert (= bs!412088 (and d!572578 start!187644)))

(declare-fun lambda!73765 () Int)

(assert (=> bs!412088 (= lambda!73765 lambda!73759)))

(declare-fun forall!4416 (List!20838 Int) Bool)

(assert (=> d!572578 (= (inv!27570 that!1958) (forall!4416 (exprs!1456 that!1958) lambda!73765))))

(declare-fun bs!412089 () Bool)

(assert (= bs!412089 d!572578))

(declare-fun m!2298539 () Bool)

(assert (=> bs!412089 m!2298539))

(assert (=> start!187644 d!572578))

(declare-fun bs!412090 () Bool)

(declare-fun d!572580 () Bool)

(assert (= bs!412090 (and d!572580 start!187644)))

(declare-fun lambda!73766 () Int)

(assert (=> bs!412090 (= lambda!73766 lambda!73759)))

(declare-fun bs!412091 () Bool)

(assert (= bs!412091 (and d!572580 d!572578)))

(assert (=> bs!412091 (= lambda!73766 lambda!73765)))

(assert (=> d!572580 (= (inv!27570 thiss!29369) (forall!4416 (exprs!1456 thiss!29369) lambda!73766))))

(declare-fun bs!412092 () Bool)

(assert (= bs!412092 d!572580))

(declare-fun m!2298541 () Bool)

(assert (=> bs!412092 m!2298541))

(assert (=> start!187644 d!572580))

(declare-fun b!1872791 () Bool)

(declare-fun res!838157 () Bool)

(declare-fun e!1194763 () Bool)

(assert (=> b!1872791 (=> (not res!838157) (not e!1194763))))

(declare-fun lt!719726 () List!20838)

(declare-fun size!16477 (List!20838) Int)

(assert (=> b!1872791 (= res!838157 (= (size!16477 lt!719726) (+ (size!16477 (exprs!1456 thiss!29369)) (size!16477 (exprs!1456 that!1958)))))))

(declare-fun b!1872789 () Bool)

(declare-fun e!1194762 () List!20838)

(assert (=> b!1872789 (= e!1194762 (exprs!1456 that!1958))))

(declare-fun b!1872790 () Bool)

(assert (=> b!1872790 (= e!1194762 (Cons!20756 (h!26157 (exprs!1456 thiss!29369)) (++!5635 (t!173055 (exprs!1456 thiss!29369)) (exprs!1456 that!1958))))))

(declare-fun b!1872792 () Bool)

(assert (=> b!1872792 (= e!1194763 (or (not (= (exprs!1456 that!1958) Nil!20756)) (= lt!719726 (exprs!1456 thiss!29369))))))

(declare-fun d!572582 () Bool)

(assert (=> d!572582 e!1194763))

(declare-fun res!838156 () Bool)

(assert (=> d!572582 (=> (not res!838156) (not e!1194763))))

(declare-fun content!3102 (List!20838) (Set Regex!5066))

(assert (=> d!572582 (= res!838156 (= (content!3102 lt!719726) (set.union (content!3102 (exprs!1456 thiss!29369)) (content!3102 (exprs!1456 that!1958)))))))

(assert (=> d!572582 (= lt!719726 e!1194762)))

(declare-fun c!305302 () Bool)

(assert (=> d!572582 (= c!305302 (is-Nil!20756 (exprs!1456 thiss!29369)))))

(assert (=> d!572582 (= (++!5635 (exprs!1456 thiss!29369) (exprs!1456 that!1958)) lt!719726)))

(assert (= (and d!572582 c!305302) b!1872789))

(assert (= (and d!572582 (not c!305302)) b!1872790))

(assert (= (and d!572582 res!838156) b!1872791))

(assert (= (and b!1872791 res!838157) b!1872792))

(declare-fun m!2298543 () Bool)

(assert (=> b!1872791 m!2298543))

(declare-fun m!2298545 () Bool)

(assert (=> b!1872791 m!2298545))

(declare-fun m!2298547 () Bool)

(assert (=> b!1872791 m!2298547))

(declare-fun m!2298549 () Bool)

(assert (=> b!1872790 m!2298549))

(declare-fun m!2298551 () Bool)

(assert (=> d!572582 m!2298551))

(declare-fun m!2298553 () Bool)

(assert (=> d!572582 m!2298553))

(declare-fun m!2298555 () Bool)

(assert (=> d!572582 m!2298555))

(assert (=> start!187644 d!572582))

(declare-fun d!572584 () Bool)

(assert (=> d!572584 (forall!4416 (++!5635 (exprs!1456 thiss!29369) (exprs!1456 that!1958)) lambda!73759)))

(declare-fun lt!719729 () Unit!35341)

(declare-fun choose!11757 (List!20838 List!20838 Int) Unit!35341)

(assert (=> d!572584 (= lt!719729 (choose!11757 (exprs!1456 thiss!29369) (exprs!1456 that!1958) lambda!73759))))

(assert (=> d!572584 (forall!4416 (exprs!1456 thiss!29369) lambda!73759)))

(assert (=> d!572584 (= (lemmaConcatPreservesForall!121 (exprs!1456 thiss!29369) (exprs!1456 that!1958) lambda!73759) lt!719729)))

(declare-fun bs!412093 () Bool)

(assert (= bs!412093 d!572584))

(assert (=> bs!412093 m!2298525))

(assert (=> bs!412093 m!2298525))

(declare-fun m!2298557 () Bool)

(assert (=> bs!412093 m!2298557))

(declare-fun m!2298559 () Bool)

(assert (=> bs!412093 m!2298559))

(declare-fun m!2298561 () Bool)

(assert (=> bs!412093 m!2298561))

(assert (=> start!187644 d!572584))

(declare-fun bs!412094 () Bool)

(declare-fun d!572588 () Bool)

(assert (= bs!412094 (and d!572588 start!187644)))

(declare-fun lambda!73767 () Int)

(assert (=> bs!412094 (= lambda!73767 lambda!73759)))

(declare-fun bs!412095 () Bool)

(assert (= bs!412095 (and d!572588 d!572578)))

(assert (=> bs!412095 (= lambda!73767 lambda!73765)))

(declare-fun bs!412096 () Bool)

(assert (= bs!412096 (and d!572588 d!572580)))

(assert (=> bs!412096 (= lambda!73767 lambda!73766)))

(assert (=> d!572588 (= (inv!27570 (Context!1913 (++!5635 (exprs!1456 thiss!29369) (exprs!1456 that!1958)))) (forall!4416 (exprs!1456 (Context!1913 (++!5635 (exprs!1456 thiss!29369) (exprs!1456 that!1958)))) lambda!73767))))

(declare-fun bs!412097 () Bool)

(assert (= bs!412097 d!572588))

(declare-fun m!2298563 () Bool)

(assert (=> bs!412097 m!2298563))

(assert (=> start!187644 d!572588))

(declare-fun b!1872797 () Bool)

(declare-fun e!1194766 () Bool)

(declare-fun tp!532620 () Bool)

(declare-fun tp!532621 () Bool)

(assert (=> b!1872797 (= e!1194766 (and tp!532620 tp!532621))))

(assert (=> b!1872774 (= tp!532608 e!1194766)))

(assert (= (and b!1872774 (is-Cons!20756 (exprs!1456 that!1958))) b!1872797))

(declare-fun b!1872798 () Bool)

(declare-fun e!1194767 () Bool)

(declare-fun tp!532622 () Bool)

(declare-fun tp!532623 () Bool)

(assert (=> b!1872798 (= e!1194767 (and tp!532622 tp!532623))))

(assert (=> b!1872773 (= tp!532609 e!1194767)))

(assert (= (and b!1872773 (is-Cons!20756 (exprs!1456 thiss!29369))) b!1872798))

(push 1)

(assert (not b!1872797))

(assert (not d!572588))

(assert (not d!572578))

(assert (not d!572582))

(assert (not d!572584))

(assert (not b!1872791))

(assert (not b!1872790))

(assert (not d!572580))

(assert (not b!1872798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

