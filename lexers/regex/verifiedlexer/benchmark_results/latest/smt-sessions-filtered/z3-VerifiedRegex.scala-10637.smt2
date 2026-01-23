; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546054 () Bool)

(assert start!546054)

(declare-fun b_free!133577 () Bool)

(declare-fun b_next!134367 () Bool)

(assert (=> start!546054 (= b_free!133577 (not b_next!134367))))

(declare-fun tp!1448016 () Bool)

(declare-fun b_and!350599 () Bool)

(assert (=> start!546054 (= tp!1448016 b_and!350599)))

(declare-fun b!5162820 () Bool)

(declare-fun e!3216800 () Bool)

(declare-fun e!3216801 () Bool)

(assert (=> b!5162820 (= e!3216800 (not e!3216801))))

(declare-fun res!2194965 () Bool)

(assert (=> b!5162820 (=> res!2194965 e!3216801)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!3133 0))(
  ( (B!3134 (val!24350 Int)) )
))
(declare-fun lt!2122709 () (InoxSet B!3133))

(declare-fun lt!2122708 () (InoxSet B!3133))

(assert (=> b!5162820 (= res!2194965 (not (= lt!2122709 lt!2122708)))))

(declare-fun lt!2122711 () (InoxSet B!3133))

(declare-datatypes ((List!60016 0))(
  ( (Nil!59892) (Cons!59892 (h!66340 B!3133) (t!373149 List!60016)) )
))
(declare-fun l!3049 () List!60016)

(assert (=> b!5162820 (= lt!2122708 ((_ map or) lt!2122711 (store ((as const (Array B!3133 Bool)) false) (h!66340 l!3049) true)))))

(declare-fun content!10617 (List!60016) (InoxSet B!3133))

(assert (=> b!5162820 (= lt!2122709 (content!10617 l!3049))))

(declare-fun p!1890 () Int)

(declare-fun forall!14084 ((InoxSet B!3133) Int) Bool)

(assert (=> b!5162820 (forall!14084 lt!2122711 p!1890)))

(assert (=> b!5162820 (= lt!2122711 (content!10617 (t!373149 l!3049)))))

(declare-datatypes ((Unit!151327 0))(
  ( (Unit!151328) )
))
(declare-fun lt!2122710 () Unit!151327)

(declare-fun lemmaForallThenOnContent!54 (List!60016 Int) Unit!151327)

(assert (=> b!5162820 (= lt!2122710 (lemmaForallThenOnContent!54 (t!373149 l!3049) p!1890))))

(declare-fun b!5162821 () Bool)

(declare-fun e!3216802 () Bool)

(assert (=> b!5162821 (= e!3216801 e!3216802)))

(declare-fun res!2194964 () Bool)

(assert (=> b!5162821 (=> res!2194964 e!3216802)))

(declare-fun lt!2122713 () List!60016)

(assert (=> b!5162821 (= res!2194964 (not (= ((_ map implies) (content!10617 lt!2122713) lt!2122709) ((as const (InoxSet B!3133)) true))))))

(declare-fun toList!8435 ((InoxSet B!3133)) List!60016)

(assert (=> b!5162821 (= lt!2122713 (toList!8435 lt!2122708))))

(declare-fun b!5162822 () Bool)

(declare-fun res!2194963 () Bool)

(assert (=> b!5162822 (=> (not res!2194963) (not e!3216800))))

(get-info :version)

(assert (=> b!5162822 (= res!2194963 ((_ is Cons!59892) l!3049))))

(declare-fun b!5162823 () Bool)

(declare-fun e!3216799 () Bool)

(declare-fun tp_is_empty!38279 () Bool)

(declare-fun tp!1448017 () Bool)

(assert (=> b!5162823 (= e!3216799 (and tp_is_empty!38279 tp!1448017))))

(declare-fun res!2194962 () Bool)

(assert (=> start!546054 (=> (not res!2194962) (not e!3216800))))

(declare-fun forall!14085 (List!60016 Int) Bool)

(assert (=> start!546054 (= res!2194962 (forall!14085 l!3049 p!1890))))

(assert (=> start!546054 e!3216800))

(assert (=> start!546054 e!3216799))

(assert (=> start!546054 tp!1448016))

(declare-fun b!5162824 () Bool)

(assert (=> b!5162824 (= e!3216802 (forall!14084 lt!2122709 p!1890))))

(declare-fun lt!2122712 () Unit!151327)

(declare-fun lemmaContentSubsetPreservesForall!334 (List!60016 List!60016 Int) Unit!151327)

(assert (=> b!5162824 (= lt!2122712 (lemmaContentSubsetPreservesForall!334 l!3049 lt!2122713 p!1890))))

(declare-fun b!5162825 () Bool)

(declare-fun res!2194966 () Bool)

(assert (=> b!5162825 (=> res!2194966 e!3216801)))

(declare-fun dynLambda!23848 (Int B!3133) Bool)

(assert (=> b!5162825 (= res!2194966 (not (dynLambda!23848 p!1890 (h!66340 l!3049))))))

(assert (= (and start!546054 res!2194962) b!5162822))

(assert (= (and b!5162822 res!2194963) b!5162820))

(assert (= (and b!5162820 (not res!2194965)) b!5162825))

(assert (= (and b!5162825 (not res!2194966)) b!5162821))

(assert (= (and b!5162821 (not res!2194964)) b!5162824))

(assert (= (and start!546054 ((_ is Cons!59892) l!3049)) b!5162823))

(declare-fun b_lambda!200715 () Bool)

(assert (=> (not b_lambda!200715) (not b!5162825)))

(declare-fun t!373148 () Bool)

(declare-fun tb!261931 () Bool)

(assert (=> (and start!546054 (= p!1890 p!1890) t!373148) tb!261931))

(declare-fun result!330418 () Bool)

(assert (=> tb!261931 (= result!330418 true)))

(assert (=> b!5162825 t!373148))

(declare-fun b_and!350601 () Bool)

(assert (= b_and!350599 (and (=> t!373148 result!330418) b_and!350601)))

(declare-fun m!6213406 () Bool)

(assert (=> start!546054 m!6213406))

(declare-fun m!6213408 () Bool)

(assert (=> b!5162825 m!6213408))

(declare-fun m!6213410 () Bool)

(assert (=> b!5162824 m!6213410))

(declare-fun m!6213412 () Bool)

(assert (=> b!5162824 m!6213412))

(declare-fun m!6213414 () Bool)

(assert (=> b!5162821 m!6213414))

(declare-fun m!6213416 () Bool)

(assert (=> b!5162821 m!6213416))

(declare-fun m!6213418 () Bool)

(assert (=> b!5162820 m!6213418))

(declare-fun m!6213420 () Bool)

(assert (=> b!5162820 m!6213420))

(declare-fun m!6213422 () Bool)

(assert (=> b!5162820 m!6213422))

(declare-fun m!6213424 () Bool)

(assert (=> b!5162820 m!6213424))

(declare-fun m!6213426 () Bool)

(assert (=> b!5162820 m!6213426))

(check-sat (not b!5162824) (not b_next!134367) tp_is_empty!38279 (not b_lambda!200715) b_and!350601 (not b!5162821) (not b!5162823) (not b!5162820) (not start!546054))
(check-sat b_and!350601 (not b_next!134367))
(get-model)

(declare-fun b_lambda!200717 () Bool)

(assert (= b_lambda!200715 (or (and start!546054 b_free!133577) b_lambda!200717)))

(check-sat (not b!5162824) (not b_next!134367) tp_is_empty!38279 b_and!350601 (not b_lambda!200717) (not b!5162821) (not b!5162823) (not b!5162820) (not start!546054))
(check-sat b_and!350601 (not b_next!134367))
(get-model)

(declare-fun d!1666006 () Bool)

(declare-fun c!888211 () Bool)

(assert (=> d!1666006 (= c!888211 ((_ is Nil!59892) l!3049))))

(declare-fun e!3216805 () (InoxSet B!3133))

(assert (=> d!1666006 (= (content!10617 l!3049) e!3216805)))

(declare-fun b!5162830 () Bool)

(assert (=> b!5162830 (= e!3216805 ((as const (Array B!3133 Bool)) false))))

(declare-fun b!5162831 () Bool)

(assert (=> b!5162831 (= e!3216805 ((_ map or) (store ((as const (Array B!3133 Bool)) false) (h!66340 l!3049) true) (content!10617 (t!373149 l!3049))))))

(assert (= (and d!1666006 c!888211) b!5162830))

(assert (= (and d!1666006 (not c!888211)) b!5162831))

(assert (=> b!5162831 m!6213424))

(assert (=> b!5162831 m!6213420))

(assert (=> b!5162820 d!1666006))

(declare-fun d!1666010 () Bool)

(declare-fun lt!2122716 () Bool)

(assert (=> d!1666010 (= lt!2122716 (forall!14085 (toList!8435 lt!2122711) p!1890))))

(declare-fun choose!38178 ((InoxSet B!3133) Int) Bool)

(assert (=> d!1666010 (= lt!2122716 (choose!38178 lt!2122711 p!1890))))

(assert (=> d!1666010 (= (forall!14084 lt!2122711 p!1890) lt!2122716)))

(declare-fun bs!1202685 () Bool)

(assert (= bs!1202685 d!1666010))

(declare-fun m!6213428 () Bool)

(assert (=> bs!1202685 m!6213428))

(assert (=> bs!1202685 m!6213428))

(declare-fun m!6213430 () Bool)

(assert (=> bs!1202685 m!6213430))

(declare-fun m!6213432 () Bool)

(assert (=> bs!1202685 m!6213432))

(assert (=> b!5162820 d!1666010))

(declare-fun d!1666014 () Bool)

(declare-fun c!888215 () Bool)

(assert (=> d!1666014 (= c!888215 ((_ is Nil!59892) (t!373149 l!3049)))))

(declare-fun e!3216809 () (InoxSet B!3133))

(assert (=> d!1666014 (= (content!10617 (t!373149 l!3049)) e!3216809)))

(declare-fun b!5162838 () Bool)

(assert (=> b!5162838 (= e!3216809 ((as const (Array B!3133 Bool)) false))))

(declare-fun b!5162839 () Bool)

(assert (=> b!5162839 (= e!3216809 ((_ map or) (store ((as const (Array B!3133 Bool)) false) (h!66340 (t!373149 l!3049)) true) (content!10617 (t!373149 (t!373149 l!3049)))))))

(assert (= (and d!1666014 c!888215) b!5162838))

(assert (= (and d!1666014 (not c!888215)) b!5162839))

(declare-fun m!6213434 () Bool)

(assert (=> b!5162839 m!6213434))

(declare-fun m!6213436 () Bool)

(assert (=> b!5162839 m!6213436))

(assert (=> b!5162820 d!1666014))

(declare-fun d!1666016 () Bool)

(assert (=> d!1666016 (forall!14084 (content!10617 (t!373149 l!3049)) p!1890)))

(declare-fun lt!2122722 () Unit!151327)

(declare-fun choose!38180 (List!60016 Int) Unit!151327)

(assert (=> d!1666016 (= lt!2122722 (choose!38180 (t!373149 l!3049) p!1890))))

(assert (=> d!1666016 (forall!14085 (t!373149 l!3049) p!1890)))

(assert (=> d!1666016 (= (lemmaForallThenOnContent!54 (t!373149 l!3049) p!1890) lt!2122722)))

(declare-fun bs!1202687 () Bool)

(assert (= bs!1202687 d!1666016))

(assert (=> bs!1202687 m!6213420))

(assert (=> bs!1202687 m!6213420))

(declare-fun m!6213448 () Bool)

(assert (=> bs!1202687 m!6213448))

(declare-fun m!6213450 () Bool)

(assert (=> bs!1202687 m!6213450))

(declare-fun m!6213452 () Bool)

(assert (=> bs!1202687 m!6213452))

(assert (=> b!5162820 d!1666016))

(declare-fun d!1666022 () Bool)

(declare-fun lt!2122723 () Bool)

(assert (=> d!1666022 (= lt!2122723 (forall!14085 (toList!8435 lt!2122709) p!1890))))

(assert (=> d!1666022 (= lt!2122723 (choose!38178 lt!2122709 p!1890))))

(assert (=> d!1666022 (= (forall!14084 lt!2122709 p!1890) lt!2122723)))

(declare-fun bs!1202688 () Bool)

(assert (= bs!1202688 d!1666022))

(declare-fun m!6213454 () Bool)

(assert (=> bs!1202688 m!6213454))

(assert (=> bs!1202688 m!6213454))

(declare-fun m!6213456 () Bool)

(assert (=> bs!1202688 m!6213456))

(declare-fun m!6213458 () Bool)

(assert (=> bs!1202688 m!6213458))

(assert (=> b!5162824 d!1666022))

(declare-fun d!1666024 () Bool)

(assert (=> d!1666024 (forall!14085 lt!2122713 p!1890)))

(declare-fun lt!2122729 () Unit!151327)

(declare-fun choose!38182 (List!60016 List!60016 Int) Unit!151327)

(assert (=> d!1666024 (= lt!2122729 (choose!38182 l!3049 lt!2122713 p!1890))))

(assert (=> d!1666024 (forall!14085 l!3049 p!1890)))

(assert (=> d!1666024 (= (lemmaContentSubsetPreservesForall!334 l!3049 lt!2122713 p!1890) lt!2122729)))

(declare-fun bs!1202690 () Bool)

(assert (= bs!1202690 d!1666024))

(declare-fun m!6213470 () Bool)

(assert (=> bs!1202690 m!6213470))

(declare-fun m!6213472 () Bool)

(assert (=> bs!1202690 m!6213472))

(assert (=> bs!1202690 m!6213406))

(assert (=> b!5162824 d!1666024))

(declare-fun d!1666030 () Bool)

(declare-fun res!2194974 () Bool)

(declare-fun e!3216819 () Bool)

(assert (=> d!1666030 (=> res!2194974 e!3216819)))

(assert (=> d!1666030 (= res!2194974 ((_ is Nil!59892) l!3049))))

(assert (=> d!1666030 (= (forall!14085 l!3049 p!1890) e!3216819)))

(declare-fun b!5162851 () Bool)

(declare-fun e!3216820 () Bool)

(assert (=> b!5162851 (= e!3216819 e!3216820)))

(declare-fun res!2194975 () Bool)

(assert (=> b!5162851 (=> (not res!2194975) (not e!3216820))))

(assert (=> b!5162851 (= res!2194975 (dynLambda!23848 p!1890 (h!66340 l!3049)))))

(declare-fun b!5162852 () Bool)

(assert (=> b!5162852 (= e!3216820 (forall!14085 (t!373149 l!3049) p!1890))))

(assert (= (and d!1666030 (not res!2194974)) b!5162851))

(assert (= (and b!5162851 res!2194975) b!5162852))

(declare-fun b_lambda!200721 () Bool)

(assert (=> (not b_lambda!200721) (not b!5162851)))

(assert (=> b!5162851 t!373148))

(declare-fun b_and!350603 () Bool)

(assert (= b_and!350601 (and (=> t!373148 result!330418) b_and!350603)))

(assert (=> b!5162851 m!6213408))

(assert (=> b!5162852 m!6213452))

(assert (=> start!546054 d!1666030))

(declare-fun d!1666034 () Bool)

(declare-fun c!888218 () Bool)

(assert (=> d!1666034 (= c!888218 ((_ is Nil!59892) lt!2122713))))

(declare-fun e!3216825 () (InoxSet B!3133))

(assert (=> d!1666034 (= (content!10617 lt!2122713) e!3216825)))

(declare-fun b!5162857 () Bool)

(assert (=> b!5162857 (= e!3216825 ((as const (Array B!3133 Bool)) false))))

(declare-fun b!5162858 () Bool)

(assert (=> b!5162858 (= e!3216825 ((_ map or) (store ((as const (Array B!3133 Bool)) false) (h!66340 lt!2122713) true) (content!10617 (t!373149 lt!2122713))))))

(assert (= (and d!1666034 c!888218) b!5162857))

(assert (= (and d!1666034 (not c!888218)) b!5162858))

(declare-fun m!6213480 () Bool)

(assert (=> b!5162858 m!6213480))

(declare-fun m!6213482 () Bool)

(assert (=> b!5162858 m!6213482))

(assert (=> b!5162821 d!1666034))

(declare-fun d!1666036 () Bool)

(declare-fun e!3216830 () Bool)

(assert (=> d!1666036 e!3216830))

(declare-fun res!2194984 () Bool)

(assert (=> d!1666036 (=> (not res!2194984) (not e!3216830))))

(declare-fun lt!2122736 () List!60016)

(declare-fun noDuplicate!1129 (List!60016) Bool)

(assert (=> d!1666036 (= res!2194984 (noDuplicate!1129 lt!2122736))))

(declare-fun choose!38184 ((InoxSet B!3133)) List!60016)

(assert (=> d!1666036 (= lt!2122736 (choose!38184 lt!2122708))))

(assert (=> d!1666036 (= (toList!8435 lt!2122708) lt!2122736)))

(declare-fun b!5162863 () Bool)

(assert (=> b!5162863 (= e!3216830 (= (content!10617 lt!2122736) lt!2122708))))

(assert (= (and d!1666036 res!2194984) b!5162863))

(declare-fun m!6213490 () Bool)

(assert (=> d!1666036 m!6213490))

(declare-fun m!6213492 () Bool)

(assert (=> d!1666036 m!6213492))

(declare-fun m!6213494 () Bool)

(assert (=> b!5162863 m!6213494))

(assert (=> b!5162821 d!1666036))

(declare-fun b!5162868 () Bool)

(declare-fun e!3216833 () Bool)

(declare-fun tp!1448020 () Bool)

(assert (=> b!5162868 (= e!3216833 (and tp_is_empty!38279 tp!1448020))))

(assert (=> b!5162823 (= tp!1448017 e!3216833)))

(assert (= (and b!5162823 ((_ is Cons!59892) (t!373149 l!3049))) b!5162868))

(declare-fun b_lambda!200725 () Bool)

(assert (= b_lambda!200721 (or (and start!546054 b_free!133577) b_lambda!200725)))

(check-sat (not b!5162839) (not b!5162852) (not d!1666024) (not d!1666016) (not b!5162858) (not b_next!134367) (not b!5162868) tp_is_empty!38279 (not d!1666010) (not d!1666036) (not b_lambda!200725) (not b!5162831) (not d!1666022) b_and!350603 (not b_lambda!200717) (not b!5162863))
(check-sat b_and!350603 (not b_next!134367))
