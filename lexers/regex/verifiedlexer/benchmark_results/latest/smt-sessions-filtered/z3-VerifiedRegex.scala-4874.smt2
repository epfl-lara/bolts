; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!249900 () Bool)

(assert start!249900)

(declare-fun b_free!72599 () Bool)

(declare-fun b_next!73303 () Bool)

(assert (=> start!249900 (= b_free!72599 (not b_next!73303))))

(declare-fun tp!819545 () Bool)

(declare-fun b_and!188893 () Bool)

(assert (=> start!249900 (= tp!819545 b_and!188893)))

(declare-fun res!1085685 () Bool)

(declare-fun e!1629051 () Bool)

(assert (=> start!249900 (=> (not res!1085685) (not e!1629051))))

(declare-datatypes ((B!1945 0))(
  ( (B!1946 (val!9426 Int)) )
))
(declare-datatypes ((List!29817 0))(
  ( (Nil!29717) (Cons!29717 (h!35137 B!1945) (t!211756 List!29817)) )
))
(declare-fun l1!1487 () List!29817)

(get-info :version)

(assert (=> start!249900 (= res!1085685 ((_ is Cons!29717) l1!1487))))

(assert (=> start!249900 e!1629051))

(declare-fun e!1629053 () Bool)

(assert (=> start!249900 e!1629053))

(declare-fun e!1629052 () Bool)

(assert (=> start!249900 e!1629052))

(assert (=> start!249900 tp!819545))

(declare-fun b!2581713 () Bool)

(declare-fun p!2091 () Int)

(declare-fun l2!1456 () List!29817)

(declare-fun filter!494 (List!29817 Int) List!29817)

(declare-fun ++!7297 (List!29817 List!29817) List!29817)

(assert (=> b!2581713 (= e!1629051 (not (= (filter!494 (++!7297 l1!1487 l2!1456) p!2091) (++!7297 (filter!494 l1!1487 p!2091) (filter!494 l2!1456 p!2091)))))))

(declare-datatypes ((Unit!43558 0))(
  ( (Unit!43559) )
))
(declare-fun lt!908131 () Unit!43558)

(declare-fun lemmaFilterConcat!34 (List!29817 List!29817 Int) Unit!43558)

(assert (=> b!2581713 (= lt!908131 (lemmaFilterConcat!34 (t!211756 l1!1487) l2!1456 p!2091))))

(declare-fun b!2581714 () Bool)

(declare-fun tp_is_empty!13197 () Bool)

(declare-fun tp!819546 () Bool)

(assert (=> b!2581714 (= e!1629053 (and tp_is_empty!13197 tp!819546))))

(declare-fun b!2581715 () Bool)

(declare-fun tp!819544 () Bool)

(assert (=> b!2581715 (= e!1629052 (and tp_is_empty!13197 tp!819544))))

(assert (= (and start!249900 res!1085685) b!2581713))

(assert (= (and start!249900 ((_ is Cons!29717) l1!1487)) b!2581714))

(assert (= (and start!249900 ((_ is Cons!29717) l2!1456)) b!2581715))

(declare-fun m!2918245 () Bool)

(assert (=> b!2581713 m!2918245))

(declare-fun m!2918247 () Bool)

(assert (=> b!2581713 m!2918247))

(declare-fun m!2918249 () Bool)

(assert (=> b!2581713 m!2918249))

(declare-fun m!2918251 () Bool)

(assert (=> b!2581713 m!2918251))

(assert (=> b!2581713 m!2918247))

(declare-fun m!2918253 () Bool)

(assert (=> b!2581713 m!2918253))

(assert (=> b!2581713 m!2918249))

(assert (=> b!2581713 m!2918245))

(declare-fun m!2918255 () Bool)

(assert (=> b!2581713 m!2918255))

(check-sat tp_is_empty!13197 (not b_next!73303) b_and!188893 (not b!2581714) (not b!2581713) (not b!2581715))
(check-sat b_and!188893 (not b_next!73303))
(get-model)

(declare-fun bm!166757 () Bool)

(declare-fun call!166762 () List!29817)

(assert (=> bm!166757 (= call!166762 (filter!494 (t!211756 l2!1456) p!2091))))

(declare-fun d!731161 () Bool)

(declare-fun e!1629070 () Bool)

(assert (=> d!731161 e!1629070))

(declare-fun res!1085696 () Bool)

(assert (=> d!731161 (=> (not res!1085696) (not e!1629070))))

(declare-fun lt!908137 () List!29817)

(declare-fun size!23038 (List!29817) Int)

(assert (=> d!731161 (= res!1085696 (<= (size!23038 lt!908137) (size!23038 l2!1456)))))

(declare-fun e!1629069 () List!29817)

(assert (=> d!731161 (= lt!908137 e!1629069)))

(declare-fun c!416280 () Bool)

(assert (=> d!731161 (= c!416280 ((_ is Nil!29717) l2!1456))))

(assert (=> d!731161 (= (filter!494 l2!1456 p!2091) lt!908137)))

(declare-fun b!2581746 () Bool)

(declare-fun e!1629071 () List!29817)

(assert (=> b!2581746 (= e!1629069 e!1629071)))

(declare-fun c!416279 () Bool)

(declare-fun dynLambda!12548 (Int B!1945) Bool)

(assert (=> b!2581746 (= c!416279 (dynLambda!12548 p!2091 (h!35137 l2!1456)))))

(declare-fun b!2581747 () Bool)

(assert (=> b!2581747 (= e!1629071 call!166762)))

(declare-fun b!2581748 () Bool)

(declare-fun res!1085697 () Bool)

(assert (=> b!2581748 (=> (not res!1085697) (not e!1629070))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4094 (List!29817) (InoxSet B!1945))

(assert (=> b!2581748 (= res!1085697 (= ((_ map implies) (content!4094 lt!908137) (content!4094 l2!1456)) ((as const (InoxSet B!1945)) true)))))

(declare-fun b!2581749 () Bool)

(assert (=> b!2581749 (= e!1629069 Nil!29717)))

(declare-fun b!2581750 () Bool)

(declare-fun forall!6051 (List!29817 Int) Bool)

(assert (=> b!2581750 (= e!1629070 (forall!6051 lt!908137 p!2091))))

(declare-fun b!2581751 () Bool)

(assert (=> b!2581751 (= e!1629071 (Cons!29717 (h!35137 l2!1456) call!166762))))

(assert (= (and d!731161 c!416280) b!2581749))

(assert (= (and d!731161 (not c!416280)) b!2581746))

(assert (= (and b!2581746 c!416279) b!2581751))

(assert (= (and b!2581746 (not c!416279)) b!2581747))

(assert (= (or b!2581751 b!2581747) bm!166757))

(assert (= (and d!731161 res!1085696) b!2581748))

(assert (= (and b!2581748 res!1085697) b!2581750))

(declare-fun b_lambda!76561 () Bool)

(assert (=> (not b_lambda!76561) (not b!2581746)))

(declare-fun t!211760 () Bool)

(declare-fun tb!140419 () Bool)

(assert (=> (and start!249900 (= p!2091 p!2091) t!211760) tb!140419))

(declare-fun result!174590 () Bool)

(assert (=> tb!140419 (= result!174590 true)))

(assert (=> b!2581746 t!211760))

(declare-fun b_and!188897 () Bool)

(assert (= b_and!188893 (and (=> t!211760 result!174590) b_and!188897)))

(declare-fun m!2918271 () Bool)

(assert (=> b!2581748 m!2918271))

(declare-fun m!2918273 () Bool)

(assert (=> b!2581748 m!2918273))

(declare-fun m!2918275 () Bool)

(assert (=> d!731161 m!2918275))

(declare-fun m!2918277 () Bool)

(assert (=> d!731161 m!2918277))

(declare-fun m!2918279 () Bool)

(assert (=> bm!166757 m!2918279))

(declare-fun m!2918281 () Bool)

(assert (=> b!2581746 m!2918281))

(declare-fun m!2918283 () Bool)

(assert (=> b!2581750 m!2918283))

(assert (=> b!2581713 d!731161))

(declare-fun b!2581784 () Bool)

(declare-fun e!1629088 () List!29817)

(assert (=> b!2581784 (= e!1629088 l2!1456)))

(declare-fun b!2581785 () Bool)

(assert (=> b!2581785 (= e!1629088 (Cons!29717 (h!35137 l1!1487) (++!7297 (t!211756 l1!1487) l2!1456)))))

(declare-fun b!2581786 () Bool)

(declare-fun res!1085713 () Bool)

(declare-fun e!1629089 () Bool)

(assert (=> b!2581786 (=> (not res!1085713) (not e!1629089))))

(declare-fun lt!908145 () List!29817)

(assert (=> b!2581786 (= res!1085713 (= (size!23038 lt!908145) (+ (size!23038 l1!1487) (size!23038 l2!1456))))))

(declare-fun d!731165 () Bool)

(assert (=> d!731165 e!1629089))

(declare-fun res!1085712 () Bool)

(assert (=> d!731165 (=> (not res!1085712) (not e!1629089))))

(assert (=> d!731165 (= res!1085712 (= (content!4094 lt!908145) ((_ map or) (content!4094 l1!1487) (content!4094 l2!1456))))))

(assert (=> d!731165 (= lt!908145 e!1629088)))

(declare-fun c!416290 () Bool)

(assert (=> d!731165 (= c!416290 ((_ is Nil!29717) l1!1487))))

(assert (=> d!731165 (= (++!7297 l1!1487 l2!1456) lt!908145)))

(declare-fun b!2581787 () Bool)

(assert (=> b!2581787 (= e!1629089 (or (not (= l2!1456 Nil!29717)) (= lt!908145 l1!1487)))))

(assert (= (and d!731165 c!416290) b!2581784))

(assert (= (and d!731165 (not c!416290)) b!2581785))

(assert (= (and d!731165 res!1085712) b!2581786))

(assert (= (and b!2581786 res!1085713) b!2581787))

(declare-fun m!2918319 () Bool)

(assert (=> b!2581785 m!2918319))

(declare-fun m!2918321 () Bool)

(assert (=> b!2581786 m!2918321))

(declare-fun m!2918323 () Bool)

(assert (=> b!2581786 m!2918323))

(assert (=> b!2581786 m!2918277))

(declare-fun m!2918325 () Bool)

(assert (=> d!731165 m!2918325))

(declare-fun m!2918327 () Bool)

(assert (=> d!731165 m!2918327))

(assert (=> d!731165 m!2918273))

(assert (=> b!2581713 d!731165))

(declare-fun call!166765 () List!29817)

(declare-fun bm!166760 () Bool)

(assert (=> bm!166760 (= call!166765 (filter!494 (t!211756 (++!7297 l1!1487 l2!1456)) p!2091))))

(declare-fun d!731173 () Bool)

(declare-fun e!1629091 () Bool)

(assert (=> d!731173 e!1629091))

(declare-fun res!1085714 () Bool)

(assert (=> d!731173 (=> (not res!1085714) (not e!1629091))))

(declare-fun lt!908146 () List!29817)

(assert (=> d!731173 (= res!1085714 (<= (size!23038 lt!908146) (size!23038 (++!7297 l1!1487 l2!1456))))))

(declare-fun e!1629090 () List!29817)

(assert (=> d!731173 (= lt!908146 e!1629090)))

(declare-fun c!416292 () Bool)

(assert (=> d!731173 (= c!416292 ((_ is Nil!29717) (++!7297 l1!1487 l2!1456)))))

(assert (=> d!731173 (= (filter!494 (++!7297 l1!1487 l2!1456) p!2091) lt!908146)))

(declare-fun b!2581788 () Bool)

(declare-fun e!1629092 () List!29817)

(assert (=> b!2581788 (= e!1629090 e!1629092)))

(declare-fun c!416291 () Bool)

(assert (=> b!2581788 (= c!416291 (dynLambda!12548 p!2091 (h!35137 (++!7297 l1!1487 l2!1456))))))

(declare-fun b!2581789 () Bool)

(assert (=> b!2581789 (= e!1629092 call!166765)))

(declare-fun b!2581790 () Bool)

(declare-fun res!1085715 () Bool)

(assert (=> b!2581790 (=> (not res!1085715) (not e!1629091))))

(assert (=> b!2581790 (= res!1085715 (= ((_ map implies) (content!4094 lt!908146) (content!4094 (++!7297 l1!1487 l2!1456))) ((as const (InoxSet B!1945)) true)))))

(declare-fun b!2581791 () Bool)

(assert (=> b!2581791 (= e!1629090 Nil!29717)))

(declare-fun b!2581792 () Bool)

(assert (=> b!2581792 (= e!1629091 (forall!6051 lt!908146 p!2091))))

(declare-fun b!2581793 () Bool)

(assert (=> b!2581793 (= e!1629092 (Cons!29717 (h!35137 (++!7297 l1!1487 l2!1456)) call!166765))))

(assert (= (and d!731173 c!416292) b!2581791))

(assert (= (and d!731173 (not c!416292)) b!2581788))

(assert (= (and b!2581788 c!416291) b!2581793))

(assert (= (and b!2581788 (not c!416291)) b!2581789))

(assert (= (or b!2581793 b!2581789) bm!166760))

(assert (= (and d!731173 res!1085714) b!2581790))

(assert (= (and b!2581790 res!1085715) b!2581792))

(declare-fun b_lambda!76567 () Bool)

(assert (=> (not b_lambda!76567) (not b!2581788)))

(declare-fun t!211766 () Bool)

(declare-fun tb!140425 () Bool)

(assert (=> (and start!249900 (= p!2091 p!2091) t!211766) tb!140425))

(declare-fun result!174596 () Bool)

(assert (=> tb!140425 (= result!174596 true)))

(assert (=> b!2581788 t!211766))

(declare-fun b_and!188903 () Bool)

(assert (= b_and!188897 (and (=> t!211766 result!174596) b_and!188903)))

(declare-fun m!2918329 () Bool)

(assert (=> b!2581790 m!2918329))

(assert (=> b!2581790 m!2918247))

(declare-fun m!2918331 () Bool)

(assert (=> b!2581790 m!2918331))

(declare-fun m!2918333 () Bool)

(assert (=> d!731173 m!2918333))

(assert (=> d!731173 m!2918247))

(declare-fun m!2918335 () Bool)

(assert (=> d!731173 m!2918335))

(declare-fun m!2918337 () Bool)

(assert (=> bm!166760 m!2918337))

(declare-fun m!2918339 () Bool)

(assert (=> b!2581788 m!2918339))

(declare-fun m!2918341 () Bool)

(assert (=> b!2581792 m!2918341))

(assert (=> b!2581713 d!731173))

(declare-fun bm!166761 () Bool)

(declare-fun call!166766 () List!29817)

(assert (=> bm!166761 (= call!166766 (filter!494 (t!211756 l1!1487) p!2091))))

(declare-fun d!731175 () Bool)

(declare-fun e!1629094 () Bool)

(assert (=> d!731175 e!1629094))

(declare-fun res!1085716 () Bool)

(assert (=> d!731175 (=> (not res!1085716) (not e!1629094))))

(declare-fun lt!908149 () List!29817)

(assert (=> d!731175 (= res!1085716 (<= (size!23038 lt!908149) (size!23038 l1!1487)))))

(declare-fun e!1629093 () List!29817)

(assert (=> d!731175 (= lt!908149 e!1629093)))

(declare-fun c!416294 () Bool)

(assert (=> d!731175 (= c!416294 ((_ is Nil!29717) l1!1487))))

(assert (=> d!731175 (= (filter!494 l1!1487 p!2091) lt!908149)))

(declare-fun b!2581794 () Bool)

(declare-fun e!1629095 () List!29817)

(assert (=> b!2581794 (= e!1629093 e!1629095)))

(declare-fun c!416293 () Bool)

(assert (=> b!2581794 (= c!416293 (dynLambda!12548 p!2091 (h!35137 l1!1487)))))

(declare-fun b!2581795 () Bool)

(assert (=> b!2581795 (= e!1629095 call!166766)))

(declare-fun b!2581796 () Bool)

(declare-fun res!1085717 () Bool)

(assert (=> b!2581796 (=> (not res!1085717) (not e!1629094))))

(assert (=> b!2581796 (= res!1085717 (= ((_ map implies) (content!4094 lt!908149) (content!4094 l1!1487)) ((as const (InoxSet B!1945)) true)))))

(declare-fun b!2581797 () Bool)

(assert (=> b!2581797 (= e!1629093 Nil!29717)))

(declare-fun b!2581798 () Bool)

(assert (=> b!2581798 (= e!1629094 (forall!6051 lt!908149 p!2091))))

(declare-fun b!2581799 () Bool)

(assert (=> b!2581799 (= e!1629095 (Cons!29717 (h!35137 l1!1487) call!166766))))

(assert (= (and d!731175 c!416294) b!2581797))

(assert (= (and d!731175 (not c!416294)) b!2581794))

(assert (= (and b!2581794 c!416293) b!2581799))

(assert (= (and b!2581794 (not c!416293)) b!2581795))

(assert (= (or b!2581799 b!2581795) bm!166761))

(assert (= (and d!731175 res!1085716) b!2581796))

(assert (= (and b!2581796 res!1085717) b!2581798))

(declare-fun b_lambda!76569 () Bool)

(assert (=> (not b_lambda!76569) (not b!2581794)))

(declare-fun t!211768 () Bool)

(declare-fun tb!140427 () Bool)

(assert (=> (and start!249900 (= p!2091 p!2091) t!211768) tb!140427))

(declare-fun result!174598 () Bool)

(assert (=> tb!140427 (= result!174598 true)))

(assert (=> b!2581794 t!211768))

(declare-fun b_and!188905 () Bool)

(assert (= b_and!188903 (and (=> t!211768 result!174598) b_and!188905)))

(declare-fun m!2918349 () Bool)

(assert (=> b!2581796 m!2918349))

(assert (=> b!2581796 m!2918327))

(declare-fun m!2918351 () Bool)

(assert (=> d!731175 m!2918351))

(assert (=> d!731175 m!2918323))

(declare-fun m!2918353 () Bool)

(assert (=> bm!166761 m!2918353))

(declare-fun m!2918355 () Bool)

(assert (=> b!2581794 m!2918355))

(declare-fun m!2918357 () Bool)

(assert (=> b!2581798 m!2918357))

(assert (=> b!2581713 d!731175))

(declare-fun d!731179 () Bool)

(assert (=> d!731179 (= (filter!494 (++!7297 (t!211756 l1!1487) l2!1456) p!2091) (++!7297 (filter!494 (t!211756 l1!1487) p!2091) (filter!494 l2!1456 p!2091)))))

(declare-fun lt!908154 () Unit!43558)

(declare-fun choose!15218 (List!29817 List!29817 Int) Unit!43558)

(assert (=> d!731179 (= lt!908154 (choose!15218 (t!211756 l1!1487) l2!1456 p!2091))))

(assert (=> d!731179 (= (lemmaFilterConcat!34 (t!211756 l1!1487) l2!1456 p!2091) lt!908154)))

(declare-fun bs!471508 () Bool)

(assert (= bs!471508 d!731179))

(assert (=> bs!471508 m!2918319))

(declare-fun m!2918373 () Bool)

(assert (=> bs!471508 m!2918373))

(declare-fun m!2918375 () Bool)

(assert (=> bs!471508 m!2918375))

(assert (=> bs!471508 m!2918319))

(assert (=> bs!471508 m!2918245))

(assert (=> bs!471508 m!2918353))

(assert (=> bs!471508 m!2918353))

(assert (=> bs!471508 m!2918245))

(declare-fun m!2918377 () Bool)

(assert (=> bs!471508 m!2918377))

(assert (=> b!2581713 d!731179))

(declare-fun b!2581810 () Bool)

(declare-fun e!1629102 () List!29817)

(assert (=> b!2581810 (= e!1629102 (filter!494 l2!1456 p!2091))))

(declare-fun b!2581811 () Bool)

(assert (=> b!2581811 (= e!1629102 (Cons!29717 (h!35137 (filter!494 l1!1487 p!2091)) (++!7297 (t!211756 (filter!494 l1!1487 p!2091)) (filter!494 l2!1456 p!2091))))))

(declare-fun b!2581812 () Bool)

(declare-fun res!1085721 () Bool)

(declare-fun e!1629103 () Bool)

(assert (=> b!2581812 (=> (not res!1085721) (not e!1629103))))

(declare-fun lt!908155 () List!29817)

(assert (=> b!2581812 (= res!1085721 (= (size!23038 lt!908155) (+ (size!23038 (filter!494 l1!1487 p!2091)) (size!23038 (filter!494 l2!1456 p!2091)))))))

(declare-fun d!731181 () Bool)

(assert (=> d!731181 e!1629103))

(declare-fun res!1085720 () Bool)

(assert (=> d!731181 (=> (not res!1085720) (not e!1629103))))

(assert (=> d!731181 (= res!1085720 (= (content!4094 lt!908155) ((_ map or) (content!4094 (filter!494 l1!1487 p!2091)) (content!4094 (filter!494 l2!1456 p!2091)))))))

(assert (=> d!731181 (= lt!908155 e!1629102)))

(declare-fun c!416296 () Bool)

(assert (=> d!731181 (= c!416296 ((_ is Nil!29717) (filter!494 l1!1487 p!2091)))))

(assert (=> d!731181 (= (++!7297 (filter!494 l1!1487 p!2091) (filter!494 l2!1456 p!2091)) lt!908155)))

(declare-fun b!2581813 () Bool)

(assert (=> b!2581813 (= e!1629103 (or (not (= (filter!494 l2!1456 p!2091) Nil!29717)) (= lt!908155 (filter!494 l1!1487 p!2091))))))

(assert (= (and d!731181 c!416296) b!2581810))

(assert (= (and d!731181 (not c!416296)) b!2581811))

(assert (= (and d!731181 res!1085720) b!2581812))

(assert (= (and b!2581812 res!1085721) b!2581813))

(assert (=> b!2581811 m!2918245))

(declare-fun m!2918379 () Bool)

(assert (=> b!2581811 m!2918379))

(declare-fun m!2918381 () Bool)

(assert (=> b!2581812 m!2918381))

(assert (=> b!2581812 m!2918249))

(declare-fun m!2918383 () Bool)

(assert (=> b!2581812 m!2918383))

(assert (=> b!2581812 m!2918245))

(declare-fun m!2918385 () Bool)

(assert (=> b!2581812 m!2918385))

(declare-fun m!2918387 () Bool)

(assert (=> d!731181 m!2918387))

(assert (=> d!731181 m!2918249))

(declare-fun m!2918389 () Bool)

(assert (=> d!731181 m!2918389))

(assert (=> d!731181 m!2918245))

(declare-fun m!2918391 () Bool)

(assert (=> d!731181 m!2918391))

(assert (=> b!2581713 d!731181))

(declare-fun b!2581818 () Bool)

(declare-fun e!1629106 () Bool)

(declare-fun tp!819553 () Bool)

(assert (=> b!2581818 (= e!1629106 (and tp_is_empty!13197 tp!819553))))

(assert (=> b!2581714 (= tp!819546 e!1629106)))

(assert (= (and b!2581714 ((_ is Cons!29717) (t!211756 l1!1487))) b!2581818))

(declare-fun b!2581819 () Bool)

(declare-fun e!1629107 () Bool)

(declare-fun tp!819554 () Bool)

(assert (=> b!2581819 (= e!1629107 (and tp_is_empty!13197 tp!819554))))

(assert (=> b!2581715 (= tp!819544 e!1629107)))

(assert (= (and b!2581715 ((_ is Cons!29717) (t!211756 l2!1456))) b!2581819))

(declare-fun b_lambda!76577 () Bool)

(assert (= b_lambda!76561 (or (and start!249900 b_free!72599) b_lambda!76577)))

(declare-fun b_lambda!76579 () Bool)

(assert (= b_lambda!76569 (or (and start!249900 b_free!72599) b_lambda!76579)))

(declare-fun b_lambda!76581 () Bool)

(assert (= b_lambda!76567 (or (and start!249900 b_free!72599) b_lambda!76581)))

(check-sat (not d!731161) (not b_next!73303) (not b_lambda!76577) (not d!731173) (not b!2581748) (not d!731175) (not d!731179) (not b!2581818) (not d!731165) (not b!2581792) (not d!731181) (not bm!166761) tp_is_empty!13197 b_and!188905 (not bm!166760) (not b!2581798) (not b!2581796) (not b!2581812) (not b!2581786) (not b_lambda!76579) (not b!2581790) (not b!2581750) (not b!2581819) (not b_lambda!76581) (not b!2581785) (not bm!166757) (not b!2581811))
(check-sat b_and!188905 (not b_next!73303))
