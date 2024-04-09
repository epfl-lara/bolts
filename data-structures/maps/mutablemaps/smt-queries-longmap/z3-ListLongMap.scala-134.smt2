; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2370 () Bool)

(assert start!2370)

(declare-fun b_free!483 () Bool)

(declare-fun b_next!483 () Bool)

(assert (=> start!2370 (= b_free!483 (not b_next!483))))

(declare-fun tp!2521 () Bool)

(declare-fun b_and!899 () Bool)

(assert (=> start!2370 (= tp!2521 b_and!899)))

(declare-fun res!11596 () Bool)

(declare-fun e!9267 () Bool)

(assert (=> start!2370 (=> (not res!11596) (not e!9267))))

(declare-datatypes ((B!604 0))(
  ( (B!605 (val!400 Int)) )
))
(declare-datatypes ((tuple2!582 0))(
  ( (tuple2!583 (_1!291 (_ BitVec 64)) (_2!291 B!604)) )
))
(declare-datatypes ((List!457 0))(
  ( (Nil!454) (Cons!453 (h!1019 tuple2!582) (t!2865 List!457)) )
))
(declare-datatypes ((ListLongMap!413 0))(
  ( (ListLongMap!414 (toList!222 List!457)) )
))
(declare-fun lm!238 () ListLongMap!413)

(declare-fun p!262 () Int)

(declare-fun forall!108 (List!457 Int) Bool)

(assert (=> start!2370 (= res!11596 (forall!108 (toList!222 lm!238) p!262))))

(assert (=> start!2370 e!9267))

(declare-fun e!9268 () Bool)

(declare-fun inv!777 (ListLongMap!413) Bool)

(assert (=> start!2370 (and (inv!777 lm!238) e!9268)))

(assert (=> start!2370 tp!2521))

(assert (=> start!2370 true))

(declare-fun b!15291 () Bool)

(declare-fun res!11595 () Bool)

(assert (=> b!15291 (=> (not res!11595) (not e!9267))))

(declare-datatypes ((List!458 0))(
  ( (Nil!455) (Cons!454 (h!1020 (_ BitVec 64)) (t!2866 List!458)) )
))
(declare-fun l!1612 () List!458)

(declare-fun isEmpty!121 (List!458) Bool)

(assert (=> b!15291 (= res!11595 (not (isEmpty!121 l!1612)))))

(declare-fun b!15292 () Bool)

(assert (=> b!15292 (= e!9267 (not (not (= l!1612 Nil!455))))))

(declare-fun lt!3689 () (_ BitVec 64))

(declare-fun -!10 (ListLongMap!413 (_ BitVec 64)) ListLongMap!413)

(assert (=> b!15292 (forall!108 (toList!222 (-!10 lm!238 lt!3689)) p!262)))

(declare-datatypes ((Unit!286 0))(
  ( (Unit!287) )
))
(declare-fun lt!3690 () Unit!286)

(declare-fun removeValidProp!3 (ListLongMap!413 Int (_ BitVec 64)) Unit!286)

(assert (=> b!15292 (= lt!3690 (removeValidProp!3 lm!238 p!262 lt!3689))))

(declare-fun head!801 (List!458) (_ BitVec 64))

(assert (=> b!15292 (= lt!3689 (head!801 l!1612))))

(declare-fun b!15293 () Bool)

(declare-fun tp!2522 () Bool)

(assert (=> b!15293 (= e!9268 tp!2522)))

(assert (= (and start!2370 res!11596) b!15291))

(assert (= (and b!15291 res!11595) b!15292))

(assert (= start!2370 b!15293))

(declare-fun m!10173 () Bool)

(assert (=> start!2370 m!10173))

(declare-fun m!10175 () Bool)

(assert (=> start!2370 m!10175))

(declare-fun m!10177 () Bool)

(assert (=> b!15291 m!10177))

(declare-fun m!10179 () Bool)

(assert (=> b!15292 m!10179))

(declare-fun m!10181 () Bool)

(assert (=> b!15292 m!10181))

(declare-fun m!10183 () Bool)

(assert (=> b!15292 m!10183))

(declare-fun m!10185 () Bool)

(assert (=> b!15292 m!10185))

(check-sat (not b!15293) (not start!2370) (not b_next!483) (not b!15291) (not b!15292) b_and!899)
(check-sat b_and!899 (not b_next!483))
(get-model)

(declare-fun d!2573 () Bool)

(declare-fun res!11619 () Bool)

(declare-fun e!9291 () Bool)

(assert (=> d!2573 (=> res!11619 e!9291)))

(get-info :version)

(assert (=> d!2573 (= res!11619 ((_ is Nil!454) (toList!222 (-!10 lm!238 lt!3689))))))

(assert (=> d!2573 (= (forall!108 (toList!222 (-!10 lm!238 lt!3689)) p!262) e!9291)))

(declare-fun b!15319 () Bool)

(declare-fun e!9292 () Bool)

(assert (=> b!15319 (= e!9291 e!9292)))

(declare-fun res!11620 () Bool)

(assert (=> b!15319 (=> (not res!11620) (not e!9292))))

(declare-fun dynLambda!102 (Int tuple2!582) Bool)

(assert (=> b!15319 (= res!11620 (dynLambda!102 p!262 (h!1019 (toList!222 (-!10 lm!238 lt!3689)))))))

(declare-fun b!15320 () Bool)

(assert (=> b!15320 (= e!9292 (forall!108 (t!2865 (toList!222 (-!10 lm!238 lt!3689))) p!262))))

(assert (= (and d!2573 (not res!11619)) b!15319))

(assert (= (and b!15319 res!11620) b!15320))

(declare-fun b_lambda!987 () Bool)

(assert (=> (not b_lambda!987) (not b!15319)))

(declare-fun t!2876 () Bool)

(declare-fun tb!405 () Bool)

(assert (=> (and start!2370 (= p!262 p!262) t!2876) tb!405))

(declare-fun result!717 () Bool)

(assert (=> tb!405 (= result!717 true)))

(assert (=> b!15319 t!2876))

(declare-fun b_and!909 () Bool)

(assert (= b_and!899 (and (=> t!2876 result!717) b_and!909)))

(declare-fun m!10215 () Bool)

(assert (=> b!15319 m!10215))

(declare-fun m!10217 () Bool)

(assert (=> b!15320 m!10217))

(assert (=> b!15292 d!2573))

(declare-fun d!2583 () Bool)

(declare-fun lt!3704 () ListLongMap!413)

(declare-fun contains!182 (ListLongMap!413 (_ BitVec 64)) Bool)

(assert (=> d!2583 (not (contains!182 lt!3704 lt!3689))))

(declare-fun removeStrictlySorted!5 (List!457 (_ BitVec 64)) List!457)

(assert (=> d!2583 (= lt!3704 (ListLongMap!414 (removeStrictlySorted!5 (toList!222 lm!238) lt!3689)))))

(assert (=> d!2583 (= (-!10 lm!238 lt!3689) lt!3704)))

(declare-fun bs!652 () Bool)

(assert (= bs!652 d!2583))

(declare-fun m!10223 () Bool)

(assert (=> bs!652 m!10223))

(declare-fun m!10227 () Bool)

(assert (=> bs!652 m!10227))

(assert (=> b!15292 d!2583))

(declare-fun d!2587 () Bool)

(assert (=> d!2587 (forall!108 (toList!222 (-!10 lm!238 lt!3689)) p!262)))

(declare-fun lt!3714 () Unit!286)

(declare-fun choose!170 (ListLongMap!413 Int (_ BitVec 64)) Unit!286)

(assert (=> d!2587 (= lt!3714 (choose!170 lm!238 p!262 lt!3689))))

(assert (=> d!2587 (forall!108 (toList!222 lm!238) p!262)))

(assert (=> d!2587 (= (removeValidProp!3 lm!238 p!262 lt!3689) lt!3714)))

(declare-fun bs!656 () Bool)

(assert (= bs!656 d!2587))

(assert (=> bs!656 m!10179))

(assert (=> bs!656 m!10181))

(declare-fun m!10235 () Bool)

(assert (=> bs!656 m!10235))

(assert (=> bs!656 m!10173))

(assert (=> b!15292 d!2587))

(declare-fun d!2597 () Bool)

(assert (=> d!2597 (= (head!801 l!1612) (h!1020 l!1612))))

(assert (=> b!15292 d!2597))

(declare-fun d!2601 () Bool)

(declare-fun res!11625 () Bool)

(declare-fun e!9300 () Bool)

(assert (=> d!2601 (=> res!11625 e!9300)))

(assert (=> d!2601 (= res!11625 ((_ is Nil!454) (toList!222 lm!238)))))

(assert (=> d!2601 (= (forall!108 (toList!222 lm!238) p!262) e!9300)))

(declare-fun b!15330 () Bool)

(declare-fun e!9301 () Bool)

(assert (=> b!15330 (= e!9300 e!9301)))

(declare-fun res!11626 () Bool)

(assert (=> b!15330 (=> (not res!11626) (not e!9301))))

(assert (=> b!15330 (= res!11626 (dynLambda!102 p!262 (h!1019 (toList!222 lm!238))))))

(declare-fun b!15331 () Bool)

(assert (=> b!15331 (= e!9301 (forall!108 (t!2865 (toList!222 lm!238)) p!262))))

(assert (= (and d!2601 (not res!11625)) b!15330))

(assert (= (and b!15330 res!11626) b!15331))

(declare-fun b_lambda!997 () Bool)

(assert (=> (not b_lambda!997) (not b!15330)))

(declare-fun t!2880 () Bool)

(declare-fun tb!409 () Bool)

(assert (=> (and start!2370 (= p!262 p!262) t!2880) tb!409))

(declare-fun result!723 () Bool)

(assert (=> tb!409 (= result!723 true)))

(assert (=> b!15330 t!2880))

(declare-fun b_and!913 () Bool)

(assert (= b_and!909 (and (=> t!2880 result!723) b_and!913)))

(declare-fun m!10241 () Bool)

(assert (=> b!15330 m!10241))

(declare-fun m!10243 () Bool)

(assert (=> b!15331 m!10243))

(assert (=> start!2370 d!2601))

(declare-fun d!2605 () Bool)

(declare-fun isStrictlySorted!137 (List!457) Bool)

(assert (=> d!2605 (= (inv!777 lm!238) (isStrictlySorted!137 (toList!222 lm!238)))))

(declare-fun bs!658 () Bool)

(assert (= bs!658 d!2605))

(declare-fun m!10247 () Bool)

(assert (=> bs!658 m!10247))

(assert (=> start!2370 d!2605))

(declare-fun d!2609 () Bool)

(assert (=> d!2609 (= (isEmpty!121 l!1612) ((_ is Nil!455) l!1612))))

(assert (=> b!15291 d!2609))

(declare-fun b!15341 () Bool)

(declare-fun e!9307 () Bool)

(declare-fun tp_is_empty!779 () Bool)

(declare-fun tp!2537 () Bool)

(assert (=> b!15341 (= e!9307 (and tp_is_empty!779 tp!2537))))

(assert (=> b!15293 (= tp!2522 e!9307)))

(assert (= (and b!15293 ((_ is Cons!453) (toList!222 lm!238))) b!15341))

(declare-fun b_lambda!1003 () Bool)

(assert (= b_lambda!987 (or (and start!2370 b_free!483) b_lambda!1003)))

(declare-fun b_lambda!1005 () Bool)

(assert (= b_lambda!997 (or (and start!2370 b_free!483) b_lambda!1005)))

(check-sat (not b_lambda!1003) b_and!913 (not b_lambda!1005) (not b!15341) (not b_next!483) (not d!2587) (not b!15320) (not d!2583) tp_is_empty!779 (not b!15331) (not d!2605))
