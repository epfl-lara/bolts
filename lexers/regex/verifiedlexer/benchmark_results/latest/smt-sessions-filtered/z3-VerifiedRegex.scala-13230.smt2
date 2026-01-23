; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720320 () Bool)

(assert start!720320)

(declare-fun b_free!134325 () Bool)

(declare-fun b_next!135115 () Bool)

(assert (=> start!720320 (= b_free!134325 (not b_next!135115))))

(declare-fun tp!2100773 () Bool)

(declare-fun b_and!351917 () Bool)

(assert (=> start!720320 (= tp!2100773 b_and!351917)))

(declare-fun b!7384443 () Bool)

(declare-fun e!4420123 () Bool)

(declare-fun tp_is_empty!48943 () Bool)

(declare-fun tp!2100774 () Bool)

(assert (=> b!7384443 (= e!4420123 (and tp_is_empty!48943 tp!2100774))))

(declare-fun b!7384444 () Bool)

(declare-fun res!2978057 () Bool)

(declare-fun e!4420124 () Bool)

(assert (=> b!7384444 (=> (not res!2978057) (not e!4420124))))

(declare-datatypes ((B!3869 0))(
  ( (B!3870 (val!29846 Int)) )
))
(declare-datatypes ((List!71845 0))(
  ( (Nil!71721) (Cons!71721 (h!78169 B!3869) (t!386372 List!71845)) )
))
(declare-fun l1!1475 () List!71845)

(get-info :version)

(assert (=> b!7384444 (= res!2978057 ((_ is Cons!71721) l1!1475))))

(declare-fun b!7384445 () Bool)

(declare-fun res!2978056 () Bool)

(assert (=> b!7384445 (=> (not res!2978056) (not e!4420124))))

(declare-fun l2!1444 () List!71845)

(declare-fun p!2045 () Int)

(declare-fun forall!18131 (List!71845 Int) Bool)

(assert (=> b!7384445 (= res!2978056 (forall!18131 l2!1444 p!2045))))

(declare-fun b!7384446 () Bool)

(declare-fun ++!17157 (List!71845 List!71845) List!71845)

(assert (=> b!7384446 (= e!4420124 (not (forall!18131 (++!17157 l1!1475 l2!1444) p!2045)))))

(declare-datatypes ((Unit!165631 0))(
  ( (Unit!165632) )
))
(declare-fun lt!2617507 () Unit!165631)

(declare-fun lemmaConcatPreservesForall!2014 (List!71845 List!71845 Int) Unit!165631)

(assert (=> b!7384446 (= lt!2617507 (lemmaConcatPreservesForall!2014 (t!386372 l1!1475) l2!1444 p!2045))))

(declare-fun b!7384447 () Bool)

(declare-fun e!4420122 () Bool)

(declare-fun tp!2100775 () Bool)

(assert (=> b!7384447 (= e!4420122 (and tp_is_empty!48943 tp!2100775))))

(declare-fun res!2978058 () Bool)

(assert (=> start!720320 (=> (not res!2978058) (not e!4420124))))

(assert (=> start!720320 (= res!2978058 (forall!18131 l1!1475 p!2045))))

(assert (=> start!720320 e!4420124))

(assert (=> start!720320 e!4420122))

(assert (=> start!720320 tp!2100773))

(assert (=> start!720320 e!4420123))

(assert (= (and start!720320 res!2978058) b!7384445))

(assert (= (and b!7384445 res!2978056) b!7384444))

(assert (= (and b!7384444 res!2978057) b!7384446))

(assert (= (and start!720320 ((_ is Cons!71721) l1!1475)) b!7384447))

(assert (= (and start!720320 ((_ is Cons!71721) l2!1444)) b!7384443))

(declare-fun m!8033300 () Bool)

(assert (=> b!7384445 m!8033300))

(declare-fun m!8033302 () Bool)

(assert (=> b!7384446 m!8033302))

(assert (=> b!7384446 m!8033302))

(declare-fun m!8033304 () Bool)

(assert (=> b!7384446 m!8033304))

(declare-fun m!8033306 () Bool)

(assert (=> b!7384446 m!8033306))

(declare-fun m!8033308 () Bool)

(assert (=> start!720320 m!8033308))

(check-sat b_and!351917 (not b_next!135115) (not b!7384445) (not start!720320) (not b!7384446) (not b!7384443) tp_is_empty!48943 (not b!7384447))
(check-sat b_and!351917 (not b_next!135115))
(get-model)

(declare-fun d!2286291 () Bool)

(declare-fun res!2978073 () Bool)

(declare-fun e!4420139 () Bool)

(assert (=> d!2286291 (=> res!2978073 e!4420139)))

(assert (=> d!2286291 (= res!2978073 ((_ is Nil!71721) l1!1475))))

(assert (=> d!2286291 (= (forall!18131 l1!1475 p!2045) e!4420139)))

(declare-fun b!7384462 () Bool)

(declare-fun e!4420140 () Bool)

(assert (=> b!7384462 (= e!4420139 e!4420140)))

(declare-fun res!2978074 () Bool)

(assert (=> b!7384462 (=> (not res!2978074) (not e!4420140))))

(declare-fun dynLambda!29545 (Int B!3869) Bool)

(assert (=> b!7384462 (= res!2978074 (dynLambda!29545 p!2045 (h!78169 l1!1475)))))

(declare-fun b!7384463 () Bool)

(assert (=> b!7384463 (= e!4420140 (forall!18131 (t!386372 l1!1475) p!2045))))

(assert (= (and d!2286291 (not res!2978073)) b!7384462))

(assert (= (and b!7384462 res!2978074) b!7384463))

(declare-fun b_lambda!284881 () Bool)

(assert (=> (not b_lambda!284881) (not b!7384462)))

(declare-fun t!386380 () Bool)

(declare-fun tb!262429 () Bool)

(assert (=> (and start!720320 (= p!2045 p!2045) t!386380) tb!262429))

(declare-fun result!354744 () Bool)

(assert (=> tb!262429 (= result!354744 true)))

(assert (=> b!7384462 t!386380))

(declare-fun b_and!351925 () Bool)

(assert (= b_and!351917 (and (=> t!386380 result!354744) b_and!351925)))

(declare-fun m!8033322 () Bool)

(assert (=> b!7384462 m!8033322))

(declare-fun m!8033324 () Bool)

(assert (=> b!7384463 m!8033324))

(assert (=> start!720320 d!2286291))

(declare-fun d!2286299 () Bool)

(declare-fun res!2978075 () Bool)

(declare-fun e!4420141 () Bool)

(assert (=> d!2286299 (=> res!2978075 e!4420141)))

(assert (=> d!2286299 (= res!2978075 ((_ is Nil!71721) l2!1444))))

(assert (=> d!2286299 (= (forall!18131 l2!1444 p!2045) e!4420141)))

(declare-fun b!7384464 () Bool)

(declare-fun e!4420142 () Bool)

(assert (=> b!7384464 (= e!4420141 e!4420142)))

(declare-fun res!2978076 () Bool)

(assert (=> b!7384464 (=> (not res!2978076) (not e!4420142))))

(assert (=> b!7384464 (= res!2978076 (dynLambda!29545 p!2045 (h!78169 l2!1444)))))

(declare-fun b!7384465 () Bool)

(assert (=> b!7384465 (= e!4420142 (forall!18131 (t!386372 l2!1444) p!2045))))

(assert (= (and d!2286299 (not res!2978075)) b!7384464))

(assert (= (and b!7384464 res!2978076) b!7384465))

(declare-fun b_lambda!284883 () Bool)

(assert (=> (not b_lambda!284883) (not b!7384464)))

(declare-fun t!386382 () Bool)

(declare-fun tb!262431 () Bool)

(assert (=> (and start!720320 (= p!2045 p!2045) t!386382) tb!262431))

(declare-fun result!354746 () Bool)

(assert (=> tb!262431 (= result!354746 true)))

(assert (=> b!7384464 t!386382))

(declare-fun b_and!351927 () Bool)

(assert (= b_and!351925 (and (=> t!386382 result!354746) b_and!351927)))

(declare-fun m!8033326 () Bool)

(assert (=> b!7384464 m!8033326))

(declare-fun m!8033328 () Bool)

(assert (=> b!7384465 m!8033328))

(assert (=> b!7384445 d!2286299))

(declare-fun d!2286301 () Bool)

(declare-fun res!2978077 () Bool)

(declare-fun e!4420143 () Bool)

(assert (=> d!2286301 (=> res!2978077 e!4420143)))

(assert (=> d!2286301 (= res!2978077 ((_ is Nil!71721) (++!17157 l1!1475 l2!1444)))))

(assert (=> d!2286301 (= (forall!18131 (++!17157 l1!1475 l2!1444) p!2045) e!4420143)))

(declare-fun b!7384466 () Bool)

(declare-fun e!4420144 () Bool)

(assert (=> b!7384466 (= e!4420143 e!4420144)))

(declare-fun res!2978078 () Bool)

(assert (=> b!7384466 (=> (not res!2978078) (not e!4420144))))

(assert (=> b!7384466 (= res!2978078 (dynLambda!29545 p!2045 (h!78169 (++!17157 l1!1475 l2!1444))))))

(declare-fun b!7384467 () Bool)

(assert (=> b!7384467 (= e!4420144 (forall!18131 (t!386372 (++!17157 l1!1475 l2!1444)) p!2045))))

(assert (= (and d!2286301 (not res!2978077)) b!7384466))

(assert (= (and b!7384466 res!2978078) b!7384467))

(declare-fun b_lambda!284885 () Bool)

(assert (=> (not b_lambda!284885) (not b!7384466)))

(declare-fun t!386384 () Bool)

(declare-fun tb!262433 () Bool)

(assert (=> (and start!720320 (= p!2045 p!2045) t!386384) tb!262433))

(declare-fun result!354748 () Bool)

(assert (=> tb!262433 (= result!354748 true)))

(assert (=> b!7384466 t!386384))

(declare-fun b_and!351929 () Bool)

(assert (= b_and!351927 (and (=> t!386384 result!354748) b_and!351929)))

(declare-fun m!8033330 () Bool)

(assert (=> b!7384466 m!8033330))

(declare-fun m!8033332 () Bool)

(assert (=> b!7384467 m!8033332))

(assert (=> b!7384446 d!2286301))

(declare-fun b!7384490 () Bool)

(declare-fun res!2978089 () Bool)

(declare-fun e!4420155 () Bool)

(assert (=> b!7384490 (=> (not res!2978089) (not e!4420155))))

(declare-fun lt!2617515 () List!71845)

(declare-fun size!42174 (List!71845) Int)

(assert (=> b!7384490 (= res!2978089 (= (size!42174 lt!2617515) (+ (size!42174 l1!1475) (size!42174 l2!1444))))))

(declare-fun b!7384491 () Bool)

(assert (=> b!7384491 (= e!4420155 (or (not (= l2!1444 Nil!71721)) (= lt!2617515 l1!1475)))))

(declare-fun b!7384488 () Bool)

(declare-fun e!4420156 () List!71845)

(assert (=> b!7384488 (= e!4420156 l2!1444)))

(declare-fun b!7384489 () Bool)

(assert (=> b!7384489 (= e!4420156 (Cons!71721 (h!78169 l1!1475) (++!17157 (t!386372 l1!1475) l2!1444)))))

(declare-fun d!2286303 () Bool)

(assert (=> d!2286303 e!4420155))

(declare-fun res!2978090 () Bool)

(assert (=> d!2286303 (=> (not res!2978090) (not e!4420155))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15197 (List!71845) (InoxSet B!3869))

(assert (=> d!2286303 (= res!2978090 (= (content!15197 lt!2617515) ((_ map or) (content!15197 l1!1475) (content!15197 l2!1444))))))

(assert (=> d!2286303 (= lt!2617515 e!4420156)))

(declare-fun c!1372593 () Bool)

(assert (=> d!2286303 (= c!1372593 ((_ is Nil!71721) l1!1475))))

(assert (=> d!2286303 (= (++!17157 l1!1475 l2!1444) lt!2617515)))

(assert (= (and d!2286303 c!1372593) b!7384488))

(assert (= (and d!2286303 (not c!1372593)) b!7384489))

(assert (= (and d!2286303 res!2978090) b!7384490))

(assert (= (and b!7384490 res!2978089) b!7384491))

(declare-fun m!8033348 () Bool)

(assert (=> b!7384490 m!8033348))

(declare-fun m!8033350 () Bool)

(assert (=> b!7384490 m!8033350))

(declare-fun m!8033352 () Bool)

(assert (=> b!7384490 m!8033352))

(declare-fun m!8033354 () Bool)

(assert (=> b!7384489 m!8033354))

(declare-fun m!8033356 () Bool)

(assert (=> d!2286303 m!8033356))

(declare-fun m!8033358 () Bool)

(assert (=> d!2286303 m!8033358))

(declare-fun m!8033360 () Bool)

(assert (=> d!2286303 m!8033360))

(assert (=> b!7384446 d!2286303))

(declare-fun d!2286307 () Bool)

(assert (=> d!2286307 (forall!18131 (++!17157 (t!386372 l1!1475) l2!1444) p!2045)))

(declare-fun lt!2617519 () Unit!165631)

(declare-fun choose!57361 (List!71845 List!71845 Int) Unit!165631)

(assert (=> d!2286307 (= lt!2617519 (choose!57361 (t!386372 l1!1475) l2!1444 p!2045))))

(assert (=> d!2286307 (forall!18131 (t!386372 l1!1475) p!2045)))

(assert (=> d!2286307 (= (lemmaConcatPreservesForall!2014 (t!386372 l1!1475) l2!1444 p!2045) lt!2617519)))

(declare-fun bs!1921867 () Bool)

(assert (= bs!1921867 d!2286307))

(assert (=> bs!1921867 m!8033354))

(assert (=> bs!1921867 m!8033354))

(declare-fun m!8033366 () Bool)

(assert (=> bs!1921867 m!8033366))

(declare-fun m!8033368 () Bool)

(assert (=> bs!1921867 m!8033368))

(assert (=> bs!1921867 m!8033324))

(assert (=> b!7384446 d!2286307))

(declare-fun b!7384502 () Bool)

(declare-fun e!4420163 () Bool)

(declare-fun tp!2100782 () Bool)

(assert (=> b!7384502 (= e!4420163 (and tp_is_empty!48943 tp!2100782))))

(assert (=> b!7384447 (= tp!2100775 e!4420163)))

(assert (= (and b!7384447 ((_ is Cons!71721) (t!386372 l1!1475))) b!7384502))

(declare-fun b!7384503 () Bool)

(declare-fun e!4420164 () Bool)

(declare-fun tp!2100783 () Bool)

(assert (=> b!7384503 (= e!4420164 (and tp_is_empty!48943 tp!2100783))))

(assert (=> b!7384443 (= tp!2100774 e!4420164)))

(assert (= (and b!7384443 ((_ is Cons!71721) (t!386372 l2!1444))) b!7384503))

(declare-fun b_lambda!284893 () Bool)

(assert (= b_lambda!284885 (or (and start!720320 b_free!134325) b_lambda!284893)))

(declare-fun b_lambda!284895 () Bool)

(assert (= b_lambda!284881 (or (and start!720320 b_free!134325) b_lambda!284895)))

(declare-fun b_lambda!284897 () Bool)

(assert (= b_lambda!284883 (or (and start!720320 b_free!134325) b_lambda!284897)))

(check-sat (not b_lambda!284893) (not d!2286307) (not b!7384467) (not b!7384490) (not b!7384503) (not b_lambda!284895) (not b_lambda!284897) (not d!2286303) tp_is_empty!48943 (not b_next!135115) b_and!351929 (not b!7384489) (not b!7384463) (not b!7384465) (not b!7384502))
(check-sat b_and!351929 (not b_next!135115))
