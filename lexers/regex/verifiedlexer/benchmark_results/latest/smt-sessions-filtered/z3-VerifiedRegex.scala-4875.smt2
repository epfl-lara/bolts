; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!249916 () Bool)

(assert start!249916)

(declare-fun b_free!72603 () Bool)

(declare-fun b_next!73307 () Bool)

(assert (=> start!249916 (= b_free!72603 (not b_next!73307))))

(declare-fun tp!819572 () Bool)

(declare-fun b_and!188909 () Bool)

(assert (=> start!249916 (= tp!819572 b_and!188909)))

(declare-fun res!1085727 () Bool)

(declare-fun e!1629124 () Bool)

(assert (=> start!249916 (=> (not res!1085727) (not e!1629124))))

(declare-datatypes ((B!1949 0))(
  ( (B!1950 (val!9428 Int)) )
))
(declare-datatypes ((List!29819 0))(
  ( (Nil!29719) (Cons!29719 (h!35139 B!1949) (t!211770 List!29819)) )
))
(declare-fun l1!1487 () List!29819)

(get-info :version)

(assert (=> start!249916 (= res!1085727 (not ((_ is Cons!29719) l1!1487)))))

(assert (=> start!249916 e!1629124))

(declare-fun e!1629123 () Bool)

(assert (=> start!249916 e!1629123))

(declare-fun e!1629125 () Bool)

(assert (=> start!249916 e!1629125))

(assert (=> start!249916 tp!819572))

(declare-fun p!2091 () Int)

(declare-fun l2!1456 () List!29819)

(declare-fun b!2581835 () Bool)

(declare-fun filter!496 (List!29819 Int) List!29819)

(declare-fun ++!7299 (List!29819 List!29819) List!29819)

(assert (=> b!2581835 (= e!1629124 (not (= (filter!496 (++!7299 l1!1487 l2!1456) p!2091) (++!7299 (filter!496 l1!1487 p!2091) (filter!496 l2!1456 p!2091)))))))

(declare-fun b!2581836 () Bool)

(declare-fun tp_is_empty!13201 () Bool)

(declare-fun tp!819571 () Bool)

(assert (=> b!2581836 (= e!1629123 (and tp_is_empty!13201 tp!819571))))

(declare-fun b!2581837 () Bool)

(declare-fun tp!819570 () Bool)

(assert (=> b!2581837 (= e!1629125 (and tp_is_empty!13201 tp!819570))))

(assert (= (and start!249916 res!1085727) b!2581835))

(assert (= (and start!249916 ((_ is Cons!29719) l1!1487)) b!2581836))

(assert (= (and start!249916 ((_ is Cons!29719) l2!1456)) b!2581837))

(declare-fun m!2918403 () Bool)

(assert (=> b!2581835 m!2918403))

(declare-fun m!2918405 () Bool)

(assert (=> b!2581835 m!2918405))

(declare-fun m!2918407 () Bool)

(assert (=> b!2581835 m!2918407))

(assert (=> b!2581835 m!2918405))

(declare-fun m!2918409 () Bool)

(assert (=> b!2581835 m!2918409))

(assert (=> b!2581835 m!2918407))

(assert (=> b!2581835 m!2918403))

(declare-fun m!2918411 () Bool)

(assert (=> b!2581835 m!2918411))

(check-sat (not b!2581837) b_and!188909 tp_is_empty!13201 (not b!2581835) (not b_next!73307) (not b!2581836))
(check-sat b_and!188909 (not b_next!73307))
(get-model)

(declare-fun b!2581868 () Bool)

(declare-fun e!1629141 () List!29819)

(declare-fun e!1629143 () List!29819)

(assert (=> b!2581868 (= e!1629141 e!1629143)))

(declare-fun c!416307 () Bool)

(declare-fun dynLambda!12549 (Int B!1949) Bool)

(assert (=> b!2581868 (= c!416307 (dynLambda!12549 p!2091 (h!35139 l2!1456)))))

(declare-fun d!731186 () Bool)

(declare-fun e!1629142 () Bool)

(assert (=> d!731186 e!1629142))

(declare-fun res!1085739 () Bool)

(assert (=> d!731186 (=> (not res!1085739) (not e!1629142))))

(declare-fun lt!908161 () List!29819)

(declare-fun size!23040 (List!29819) Int)

(assert (=> d!731186 (= res!1085739 (<= (size!23040 lt!908161) (size!23040 l2!1456)))))

(assert (=> d!731186 (= lt!908161 e!1629141)))

(declare-fun c!416308 () Bool)

(assert (=> d!731186 (= c!416308 ((_ is Nil!29719) l2!1456))))

(assert (=> d!731186 (= (filter!496 l2!1456 p!2091) lt!908161)))

(declare-fun b!2581869 () Bool)

(declare-fun res!1085738 () Bool)

(assert (=> b!2581869 (=> (not res!1085738) (not e!1629142))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4096 (List!29819) (InoxSet B!1949))

(assert (=> b!2581869 (= res!1085738 (= ((_ map implies) (content!4096 lt!908161) (content!4096 l2!1456)) ((as const (InoxSet B!1949)) true)))))

(declare-fun b!2581870 () Bool)

(declare-fun call!166772 () List!29819)

(assert (=> b!2581870 (= e!1629143 (Cons!29719 (h!35139 l2!1456) call!166772))))

(declare-fun b!2581871 () Bool)

(assert (=> b!2581871 (= e!1629141 Nil!29719)))

(declare-fun b!2581872 () Bool)

(assert (=> b!2581872 (= e!1629143 call!166772)))

(declare-fun b!2581873 () Bool)

(declare-fun forall!6053 (List!29819 Int) Bool)

(assert (=> b!2581873 (= e!1629142 (forall!6053 lt!908161 p!2091))))

(declare-fun bm!166767 () Bool)

(assert (=> bm!166767 (= call!166772 (filter!496 (t!211770 l2!1456) p!2091))))

(assert (= (and d!731186 c!416308) b!2581871))

(assert (= (and d!731186 (not c!416308)) b!2581868))

(assert (= (and b!2581868 c!416307) b!2581870))

(assert (= (and b!2581868 (not c!416307)) b!2581872))

(assert (= (or b!2581870 b!2581872) bm!166767))

(assert (= (and d!731186 res!1085739) b!2581869))

(assert (= (and b!2581869 res!1085738) b!2581873))

(declare-fun b_lambda!76585 () Bool)

(assert (=> (not b_lambda!76585) (not b!2581868)))

(declare-fun t!211774 () Bool)

(declare-fun tb!140431 () Bool)

(assert (=> (and start!249916 (= p!2091 p!2091) t!211774) tb!140431))

(declare-fun result!174606 () Bool)

(assert (=> tb!140431 (= result!174606 true)))

(assert (=> b!2581868 t!211774))

(declare-fun b_and!188913 () Bool)

(assert (= b_and!188909 (and (=> t!211774 result!174606) b_and!188913)))

(declare-fun m!2918427 () Bool)

(assert (=> bm!166767 m!2918427))

(declare-fun m!2918429 () Bool)

(assert (=> b!2581869 m!2918429))

(declare-fun m!2918431 () Bool)

(assert (=> b!2581869 m!2918431))

(declare-fun m!2918433 () Bool)

(assert (=> b!2581868 m!2918433))

(declare-fun m!2918435 () Bool)

(assert (=> d!731186 m!2918435))

(declare-fun m!2918437 () Bool)

(assert (=> d!731186 m!2918437))

(declare-fun m!2918439 () Bool)

(assert (=> b!2581873 m!2918439))

(assert (=> b!2581835 d!731186))

(declare-fun b!2581902 () Bool)

(declare-fun res!1085753 () Bool)

(declare-fun e!1629158 () Bool)

(assert (=> b!2581902 (=> (not res!1085753) (not e!1629158))))

(declare-fun lt!908168 () List!29819)

(assert (=> b!2581902 (= res!1085753 (= (size!23040 lt!908168) (+ (size!23040 l1!1487) (size!23040 l2!1456))))))

(declare-fun d!731190 () Bool)

(assert (=> d!731190 e!1629158))

(declare-fun res!1085752 () Bool)

(assert (=> d!731190 (=> (not res!1085752) (not e!1629158))))

(assert (=> d!731190 (= res!1085752 (= (content!4096 lt!908168) ((_ map or) (content!4096 l1!1487) (content!4096 l2!1456))))))

(declare-fun e!1629157 () List!29819)

(assert (=> d!731190 (= lt!908168 e!1629157)))

(declare-fun c!416316 () Bool)

(assert (=> d!731190 (= c!416316 ((_ is Nil!29719) l1!1487))))

(assert (=> d!731190 (= (++!7299 l1!1487 l2!1456) lt!908168)))

(declare-fun b!2581901 () Bool)

(assert (=> b!2581901 (= e!1629157 (Cons!29719 (h!35139 l1!1487) (++!7299 (t!211770 l1!1487) l2!1456)))))

(declare-fun b!2581900 () Bool)

(assert (=> b!2581900 (= e!1629157 l2!1456)))

(declare-fun b!2581903 () Bool)

(assert (=> b!2581903 (= e!1629158 (or (not (= l2!1456 Nil!29719)) (= lt!908168 l1!1487)))))

(assert (= (and d!731190 c!416316) b!2581900))

(assert (= (and d!731190 (not c!416316)) b!2581901))

(assert (= (and d!731190 res!1085752) b!2581902))

(assert (= (and b!2581902 res!1085753) b!2581903))

(declare-fun m!2918465 () Bool)

(assert (=> b!2581902 m!2918465))

(declare-fun m!2918467 () Bool)

(assert (=> b!2581902 m!2918467))

(assert (=> b!2581902 m!2918437))

(declare-fun m!2918469 () Bool)

(assert (=> d!731190 m!2918469))

(declare-fun m!2918471 () Bool)

(assert (=> d!731190 m!2918471))

(assert (=> d!731190 m!2918431))

(declare-fun m!2918473 () Bool)

(assert (=> b!2581901 m!2918473))

(assert (=> b!2581835 d!731190))

(declare-fun b!2581910 () Bool)

(declare-fun e!1629162 () List!29819)

(declare-fun e!1629164 () List!29819)

(assert (=> b!2581910 (= e!1629162 e!1629164)))

(declare-fun c!416319 () Bool)

(assert (=> b!2581910 (= c!416319 (dynLambda!12549 p!2091 (h!35139 (++!7299 l1!1487 l2!1456))))))

(declare-fun d!731196 () Bool)

(declare-fun e!1629163 () Bool)

(assert (=> d!731196 e!1629163))

(declare-fun res!1085757 () Bool)

(assert (=> d!731196 (=> (not res!1085757) (not e!1629163))))

(declare-fun lt!908170 () List!29819)

(assert (=> d!731196 (= res!1085757 (<= (size!23040 lt!908170) (size!23040 (++!7299 l1!1487 l2!1456))))))

(assert (=> d!731196 (= lt!908170 e!1629162)))

(declare-fun c!416320 () Bool)

(assert (=> d!731196 (= c!416320 ((_ is Nil!29719) (++!7299 l1!1487 l2!1456)))))

(assert (=> d!731196 (= (filter!496 (++!7299 l1!1487 l2!1456) p!2091) lt!908170)))

(declare-fun b!2581911 () Bool)

(declare-fun res!1085756 () Bool)

(assert (=> b!2581911 (=> (not res!1085756) (not e!1629163))))

(assert (=> b!2581911 (= res!1085756 (= ((_ map implies) (content!4096 lt!908170) (content!4096 (++!7299 l1!1487 l2!1456))) ((as const (InoxSet B!1949)) true)))))

(declare-fun call!166775 () List!29819)

(declare-fun b!2581912 () Bool)

(assert (=> b!2581912 (= e!1629164 (Cons!29719 (h!35139 (++!7299 l1!1487 l2!1456)) call!166775))))

(declare-fun b!2581913 () Bool)

(assert (=> b!2581913 (= e!1629162 Nil!29719)))

(declare-fun b!2581914 () Bool)

(assert (=> b!2581914 (= e!1629164 call!166775)))

(declare-fun b!2581915 () Bool)

(assert (=> b!2581915 (= e!1629163 (forall!6053 lt!908170 p!2091))))

(declare-fun bm!166770 () Bool)

(assert (=> bm!166770 (= call!166775 (filter!496 (t!211770 (++!7299 l1!1487 l2!1456)) p!2091))))

(assert (= (and d!731196 c!416320) b!2581913))

(assert (= (and d!731196 (not c!416320)) b!2581910))

(assert (= (and b!2581910 c!416319) b!2581912))

(assert (= (and b!2581910 (not c!416319)) b!2581914))

(assert (= (or b!2581912 b!2581914) bm!166770))

(assert (= (and d!731196 res!1085757) b!2581911))

(assert (= (and b!2581911 res!1085756) b!2581915))

(declare-fun b_lambda!76591 () Bool)

(assert (=> (not b_lambda!76591) (not b!2581910)))

(declare-fun t!211780 () Bool)

(declare-fun tb!140437 () Bool)

(assert (=> (and start!249916 (= p!2091 p!2091) t!211780) tb!140437))

(declare-fun result!174612 () Bool)

(assert (=> tb!140437 (= result!174612 true)))

(assert (=> b!2581910 t!211780))

(declare-fun b_and!188919 () Bool)

(assert (= b_and!188913 (and (=> t!211780 result!174612) b_and!188919)))

(declare-fun m!2918485 () Bool)

(assert (=> bm!166770 m!2918485))

(declare-fun m!2918487 () Bool)

(assert (=> b!2581911 m!2918487))

(assert (=> b!2581911 m!2918405))

(declare-fun m!2918489 () Bool)

(assert (=> b!2581911 m!2918489))

(declare-fun m!2918491 () Bool)

(assert (=> b!2581910 m!2918491))

(declare-fun m!2918493 () Bool)

(assert (=> d!731196 m!2918493))

(assert (=> d!731196 m!2918405))

(declare-fun m!2918495 () Bool)

(assert (=> d!731196 m!2918495))

(declare-fun m!2918499 () Bool)

(assert (=> b!2581915 m!2918499))

(assert (=> b!2581835 d!731196))

(declare-fun b!2581920 () Bool)

(declare-fun e!1629167 () List!29819)

(declare-fun e!1629169 () List!29819)

(assert (=> b!2581920 (= e!1629167 e!1629169)))

(declare-fun c!416322 () Bool)

(assert (=> b!2581920 (= c!416322 (dynLambda!12549 p!2091 (h!35139 l1!1487)))))

(declare-fun d!731200 () Bool)

(declare-fun e!1629168 () Bool)

(assert (=> d!731200 e!1629168))

(declare-fun res!1085761 () Bool)

(assert (=> d!731200 (=> (not res!1085761) (not e!1629168))))

(declare-fun lt!908172 () List!29819)

(assert (=> d!731200 (= res!1085761 (<= (size!23040 lt!908172) (size!23040 l1!1487)))))

(assert (=> d!731200 (= lt!908172 e!1629167)))

(declare-fun c!416323 () Bool)

(assert (=> d!731200 (= c!416323 ((_ is Nil!29719) l1!1487))))

(assert (=> d!731200 (= (filter!496 l1!1487 p!2091) lt!908172)))

(declare-fun b!2581921 () Bool)

(declare-fun res!1085760 () Bool)

(assert (=> b!2581921 (=> (not res!1085760) (not e!1629168))))

(assert (=> b!2581921 (= res!1085760 (= ((_ map implies) (content!4096 lt!908172) (content!4096 l1!1487)) ((as const (InoxSet B!1949)) true)))))

(declare-fun b!2581922 () Bool)

(declare-fun call!166776 () List!29819)

(assert (=> b!2581922 (= e!1629169 (Cons!29719 (h!35139 l1!1487) call!166776))))

(declare-fun b!2581923 () Bool)

(assert (=> b!2581923 (= e!1629167 Nil!29719)))

(declare-fun b!2581924 () Bool)

(assert (=> b!2581924 (= e!1629169 call!166776)))

(declare-fun b!2581925 () Bool)

(assert (=> b!2581925 (= e!1629168 (forall!6053 lt!908172 p!2091))))

(declare-fun bm!166771 () Bool)

(assert (=> bm!166771 (= call!166776 (filter!496 (t!211770 l1!1487) p!2091))))

(assert (= (and d!731200 c!416323) b!2581923))

(assert (= (and d!731200 (not c!416323)) b!2581920))

(assert (= (and b!2581920 c!416322) b!2581922))

(assert (= (and b!2581920 (not c!416322)) b!2581924))

(assert (= (or b!2581922 b!2581924) bm!166771))

(assert (= (and d!731200 res!1085761) b!2581921))

(assert (= (and b!2581921 res!1085760) b!2581925))

(declare-fun b_lambda!76593 () Bool)

(assert (=> (not b_lambda!76593) (not b!2581920)))

(declare-fun t!211782 () Bool)

(declare-fun tb!140439 () Bool)

(assert (=> (and start!249916 (= p!2091 p!2091) t!211782) tb!140439))

(declare-fun result!174616 () Bool)

(assert (=> tb!140439 (= result!174616 true)))

(assert (=> b!2581920 t!211782))

(declare-fun b_and!188921 () Bool)

(assert (= b_and!188919 (and (=> t!211782 result!174616) b_and!188921)))

(declare-fun m!2918513 () Bool)

(assert (=> bm!166771 m!2918513))

(declare-fun m!2918515 () Bool)

(assert (=> b!2581921 m!2918515))

(assert (=> b!2581921 m!2918471))

(declare-fun m!2918517 () Bool)

(assert (=> b!2581920 m!2918517))

(declare-fun m!2918519 () Bool)

(assert (=> d!731200 m!2918519))

(assert (=> d!731200 m!2918467))

(declare-fun m!2918521 () Bool)

(assert (=> b!2581925 m!2918521))

(assert (=> b!2581835 d!731200))

(declare-fun b!2581934 () Bool)

(declare-fun res!1085763 () Bool)

(declare-fun e!1629175 () Bool)

(assert (=> b!2581934 (=> (not res!1085763) (not e!1629175))))

(declare-fun lt!908173 () List!29819)

(assert (=> b!2581934 (= res!1085763 (= (size!23040 lt!908173) (+ (size!23040 (filter!496 l1!1487 p!2091)) (size!23040 (filter!496 l2!1456 p!2091)))))))

(declare-fun d!731202 () Bool)

(assert (=> d!731202 e!1629175))

(declare-fun res!1085762 () Bool)

(assert (=> d!731202 (=> (not res!1085762) (not e!1629175))))

(assert (=> d!731202 (= res!1085762 (= (content!4096 lt!908173) ((_ map or) (content!4096 (filter!496 l1!1487 p!2091)) (content!4096 (filter!496 l2!1456 p!2091)))))))

(declare-fun e!1629174 () List!29819)

(assert (=> d!731202 (= lt!908173 e!1629174)))

(declare-fun c!416324 () Bool)

(assert (=> d!731202 (= c!416324 ((_ is Nil!29719) (filter!496 l1!1487 p!2091)))))

(assert (=> d!731202 (= (++!7299 (filter!496 l1!1487 p!2091) (filter!496 l2!1456 p!2091)) lt!908173)))

(declare-fun b!2581933 () Bool)

(assert (=> b!2581933 (= e!1629174 (Cons!29719 (h!35139 (filter!496 l1!1487 p!2091)) (++!7299 (t!211770 (filter!496 l1!1487 p!2091)) (filter!496 l2!1456 p!2091))))))

(declare-fun b!2581932 () Bool)

(assert (=> b!2581932 (= e!1629174 (filter!496 l2!1456 p!2091))))

(declare-fun b!2581935 () Bool)

(assert (=> b!2581935 (= e!1629175 (or (not (= (filter!496 l2!1456 p!2091) Nil!29719)) (= lt!908173 (filter!496 l1!1487 p!2091))))))

(assert (= (and d!731202 c!416324) b!2581932))

(assert (= (and d!731202 (not c!416324)) b!2581933))

(assert (= (and d!731202 res!1085762) b!2581934))

(assert (= (and b!2581934 res!1085763) b!2581935))

(declare-fun m!2918523 () Bool)

(assert (=> b!2581934 m!2918523))

(assert (=> b!2581934 m!2918407))

(declare-fun m!2918525 () Bool)

(assert (=> b!2581934 m!2918525))

(assert (=> b!2581934 m!2918403))

(declare-fun m!2918527 () Bool)

(assert (=> b!2581934 m!2918527))

(declare-fun m!2918529 () Bool)

(assert (=> d!731202 m!2918529))

(assert (=> d!731202 m!2918407))

(declare-fun m!2918531 () Bool)

(assert (=> d!731202 m!2918531))

(assert (=> d!731202 m!2918403))

(declare-fun m!2918533 () Bool)

(assert (=> d!731202 m!2918533))

(assert (=> b!2581933 m!2918403))

(declare-fun m!2918535 () Bool)

(assert (=> b!2581933 m!2918535))

(assert (=> b!2581835 d!731202))

(declare-fun b!2581940 () Bool)

(declare-fun e!1629178 () Bool)

(declare-fun tp!819579 () Bool)

(assert (=> b!2581940 (= e!1629178 (and tp_is_empty!13201 tp!819579))))

(assert (=> b!2581836 (= tp!819571 e!1629178)))

(assert (= (and b!2581836 ((_ is Cons!29719) (t!211770 l1!1487))) b!2581940))

(declare-fun b!2581941 () Bool)

(declare-fun e!1629179 () Bool)

(declare-fun tp!819580 () Bool)

(assert (=> b!2581941 (= e!1629179 (and tp_is_empty!13201 tp!819580))))

(assert (=> b!2581837 (= tp!819570 e!1629179)))

(assert (= (and b!2581837 ((_ is Cons!29719) (t!211770 l2!1456))) b!2581941))

(declare-fun b_lambda!76601 () Bool)

(assert (= b_lambda!76585 (or (and start!249916 b_free!72603) b_lambda!76601)))

(declare-fun b_lambda!76603 () Bool)

(assert (= b_lambda!76591 (or (and start!249916 b_free!72603) b_lambda!76603)))

(declare-fun b_lambda!76605 () Bool)

(assert (= b_lambda!76593 (or (and start!249916 b_free!72603) b_lambda!76605)))

(check-sat (not b_lambda!76605) (not b!2581941) (not b!2581901) (not d!731186) (not b_next!73307) (not b!2581915) (not b!2581925) tp_is_empty!13201 (not bm!166770) (not d!731200) (not b!2581940) (not bm!166771) b_and!188921 (not b!2581934) (not d!731196) (not b_lambda!76601) (not d!731202) (not b!2581933) (not b!2581902) (not b_lambda!76603) (not b!2581911) (not bm!166767) (not b!2581869) (not b!2581921) (not d!731190) (not b!2581873))
(check-sat b_and!188921 (not b_next!73307))
