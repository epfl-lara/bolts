; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694966 () Bool)

(assert start!694966)

(declare-fun b_free!133835 () Bool)

(declare-fun b_next!134625 () Bool)

(assert (=> start!694966 (= b_free!133835 (not b_next!134625))))

(declare-fun tp!1966314 () Bool)

(declare-fun b_and!351013 () Bool)

(assert (=> start!694966 (= tp!1966314 b_and!351013)))

(declare-fun b!7133420 () Bool)

(declare-fun e!4287083 () Bool)

(declare-fun tp_is_empty!45821 () Bool)

(declare-fun tp!1966312 () Bool)

(assert (=> b!7133420 (= e!4287083 (and tp_is_empty!45821 tp!1966312))))

(declare-fun b!7133421 () Bool)

(declare-fun res!2910652 () Bool)

(declare-fun e!4287082 () Bool)

(assert (=> b!7133421 (=> (not res!2910652) (not e!4287082))))

(declare-datatypes ((B!3399 0))(
  ( (B!3400 (val!28171 Int)) )
))
(declare-datatypes ((List!69264 0))(
  ( (Nil!69140) (Cons!69140 (h!75588 B!3399) (t!383251 List!69264)) )
))
(declare-fun l2!1464 () List!69264)

(assert (=> b!7133421 (= res!2910652 (is-Cons!69140 l2!1464))))

(declare-fun b!7133422 () Bool)

(declare-fun e!4287084 () Bool)

(declare-fun p!2111 () Int)

(declare-fun dynLambda!28121 (Int B!3399) Bool)

(assert (=> b!7133422 (= e!4287084 (not (dynLambda!28121 p!2111 (h!75588 l2!1464))))))

(declare-fun l1!1495 () List!69264)

(declare-datatypes ((Unit!163057 0))(
  ( (Unit!163058) )
))
(declare-fun lt!2565211 () Unit!163057)

(declare-fun forallContained!4630 (List!69264 Int B!3399) Unit!163057)

(assert (=> b!7133422 (= lt!2565211 (forallContained!4630 l1!1495 p!2111 (h!75588 l2!1464)))))

(declare-fun res!2910653 () Bool)

(assert (=> start!694966 (=> (not res!2910653) (not e!4287082))))

(declare-fun forall!16938 (List!69264 Int) Bool)

(assert (=> start!694966 (= res!2910653 (forall!16938 l1!1495 p!2111))))

(assert (=> start!694966 e!4287082))

(declare-fun e!4287081 () Bool)

(assert (=> start!694966 e!4287081))

(assert (=> start!694966 tp!1966314))

(assert (=> start!694966 e!4287083))

(declare-fun b!7133423 () Bool)

(assert (=> b!7133423 (= e!4287082 e!4287084)))

(declare-fun res!2910651 () Bool)

(assert (=> b!7133423 (=> (not res!2910651) (not e!4287084))))

(declare-fun contains!20550 (List!69264 B!3399) Bool)

(assert (=> b!7133423 (= res!2910651 (contains!20550 l1!1495 (h!75588 l2!1464)))))

(declare-fun lt!2565212 () Unit!163057)

(declare-fun lemmaContentSubsetPreservesForall!369 (List!69264 List!69264 Int) Unit!163057)

(assert (=> b!7133423 (= lt!2565212 (lemmaContentSubsetPreservesForall!369 l1!1495 (t!383251 l2!1464) p!2111))))

(declare-fun b!7133424 () Bool)

(declare-fun tp!1966313 () Bool)

(assert (=> b!7133424 (= e!4287081 (and tp_is_empty!45821 tp!1966313))))

(declare-fun b!7133425 () Bool)

(declare-fun res!2910650 () Bool)

(assert (=> b!7133425 (=> (not res!2910650) (not e!4287082))))

(declare-fun content!14140 (List!69264) (Set B!3399))

(assert (=> b!7133425 (= res!2910650 (set.subset (content!14140 l2!1464) (content!14140 l1!1495)))))

(assert (= (and start!694966 res!2910653) b!7133425))

(assert (= (and b!7133425 res!2910650) b!7133421))

(assert (= (and b!7133421 res!2910652) b!7133423))

(assert (= (and b!7133423 res!2910651) b!7133422))

(assert (= (and start!694966 (is-Cons!69140 l1!1495)) b!7133424))

(assert (= (and start!694966 (is-Cons!69140 l2!1464)) b!7133420))

(declare-fun b_lambda!272109 () Bool)

(assert (=> (not b_lambda!272109) (not b!7133422)))

(declare-fun t!383250 () Bool)

(declare-fun tb!262067 () Bool)

(assert (=> (and start!694966 (= p!2111 p!2111) t!383250) tb!262067))

(declare-fun result!349646 () Bool)

(assert (=> tb!262067 (= result!349646 true)))

(assert (=> b!7133422 t!383250))

(declare-fun b_and!351015 () Bool)

(assert (= b_and!351013 (and (=> t!383250 result!349646) b_and!351015)))

(declare-fun m!7850502 () Bool)

(assert (=> b!7133422 m!7850502))

(declare-fun m!7850504 () Bool)

(assert (=> b!7133422 m!7850504))

(declare-fun m!7850506 () Bool)

(assert (=> start!694966 m!7850506))

(declare-fun m!7850508 () Bool)

(assert (=> b!7133423 m!7850508))

(declare-fun m!7850510 () Bool)

(assert (=> b!7133423 m!7850510))

(declare-fun m!7850512 () Bool)

(assert (=> b!7133425 m!7850512))

(declare-fun m!7850514 () Bool)

(assert (=> b!7133425 m!7850514))

(push 1)

(assert (not b!7133420))

(assert (not start!694966))

(assert tp_is_empty!45821)

(assert (not b!7133423))

(assert (not b!7133424))

(assert (not b_lambda!272109))

(assert (not b!7133422))

(assert b_and!351015)

(assert (not b!7133425))

(assert (not b_next!134625))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351015)

(assert (not b_next!134625))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!272113 () Bool)

(assert (= b_lambda!272109 (or (and start!694966 b_free!133835) b_lambda!272113)))

(push 1)

(assert (not b!7133420))

(assert (not start!694966))

(assert (not b_lambda!272113))

(assert tp_is_empty!45821)

(assert (not b!7133423))

(assert (not b!7133424))

(assert (not b!7133422))

(assert b_and!351015)

(assert (not b!7133425))

(assert (not b_next!134625))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351015)

(assert (not b_next!134625))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2225946 () Bool)

(assert (=> d!2225946 (dynLambda!28121 p!2111 (h!75588 l2!1464))))

(declare-fun lt!2565221 () Unit!163057)

(declare-fun choose!55130 (List!69264 Int B!3399) Unit!163057)

(assert (=> d!2225946 (= lt!2565221 (choose!55130 l1!1495 p!2111 (h!75588 l2!1464)))))

(declare-fun e!4287099 () Bool)

(assert (=> d!2225946 e!4287099))

(declare-fun res!2910668 () Bool)

(assert (=> d!2225946 (=> (not res!2910668) (not e!4287099))))

(assert (=> d!2225946 (= res!2910668 (forall!16938 l1!1495 p!2111))))

(assert (=> d!2225946 (= (forallContained!4630 l1!1495 p!2111 (h!75588 l2!1464)) lt!2565221)))

(declare-fun b!7133446 () Bool)

(assert (=> b!7133446 (= e!4287099 (contains!20550 l1!1495 (h!75588 l2!1464)))))

(assert (= (and d!2225946 res!2910668) b!7133446))

(declare-fun b_lambda!272117 () Bool)

(assert (=> (not b_lambda!272117) (not d!2225946)))

(assert (=> d!2225946 t!383250))

(declare-fun b_and!351021 () Bool)

(assert (= b_and!351015 (and (=> t!383250 result!349646) b_and!351021)))

(assert (=> d!2225946 m!7850502))

(declare-fun m!7850530 () Bool)

(assert (=> d!2225946 m!7850530))

(assert (=> d!2225946 m!7850506))

(assert (=> b!7133446 m!7850508))

(assert (=> b!7133422 d!2225946))

(declare-fun d!2225950 () Bool)

(declare-fun lt!2565226 () Bool)

(assert (=> d!2225950 (= lt!2565226 (set.member (h!75588 l2!1464) (content!14140 l1!1495)))))

(declare-fun e!4287108 () Bool)

(assert (=> d!2225950 (= lt!2565226 e!4287108)))

(declare-fun res!2910677 () Bool)

(assert (=> d!2225950 (=> (not res!2910677) (not e!4287108))))

(assert (=> d!2225950 (= res!2910677 (is-Cons!69140 l1!1495))))

(assert (=> d!2225950 (= (contains!20550 l1!1495 (h!75588 l2!1464)) lt!2565226)))

(declare-fun b!7133455 () Bool)

(declare-fun e!4287109 () Bool)

(assert (=> b!7133455 (= e!4287108 e!4287109)))

(declare-fun res!2910678 () Bool)

(assert (=> b!7133455 (=> res!2910678 e!4287109)))

(assert (=> b!7133455 (= res!2910678 (= (h!75588 l1!1495) (h!75588 l2!1464)))))

(declare-fun b!7133456 () Bool)

(assert (=> b!7133456 (= e!4287109 (contains!20550 (t!383251 l1!1495) (h!75588 l2!1464)))))

(assert (= (and d!2225950 res!2910677) b!7133455))

(assert (= (and b!7133455 (not res!2910678)) b!7133456))

(assert (=> d!2225950 m!7850514))

(declare-fun m!7850532 () Bool)

(assert (=> d!2225950 m!7850532))

(declare-fun m!7850534 () Bool)

(assert (=> b!7133456 m!7850534))

(assert (=> b!7133423 d!2225950))

(declare-fun d!2225952 () Bool)

(assert (=> d!2225952 (forall!16938 (t!383251 l2!1464) p!2111)))

(declare-fun lt!2565232 () Unit!163057)

(declare-fun choose!55131 (List!69264 List!69264 Int) Unit!163057)

(assert (=> d!2225952 (= lt!2565232 (choose!55131 l1!1495 (t!383251 l2!1464) p!2111))))

(assert (=> d!2225952 (forall!16938 l1!1495 p!2111)))

(assert (=> d!2225952 (= (lemmaContentSubsetPreservesForall!369 l1!1495 (t!383251 l2!1464) p!2111) lt!2565232)))

(declare-fun bs!1887049 () Bool)

(assert (= bs!1887049 d!2225952))

(declare-fun m!7850540 () Bool)

(assert (=> bs!1887049 m!7850540))

(declare-fun m!7850542 () Bool)

(assert (=> bs!1887049 m!7850542))

(assert (=> bs!1887049 m!7850506))

(assert (=> b!7133423 d!2225952))

(declare-fun d!2225956 () Bool)

(declare-fun res!2910689 () Bool)

(declare-fun e!4287120 () Bool)

(assert (=> d!2225956 (=> res!2910689 e!4287120)))

(assert (=> d!2225956 (= res!2910689 (is-Nil!69140 l1!1495))))

(assert (=> d!2225956 (= (forall!16938 l1!1495 p!2111) e!4287120)))

(declare-fun b!7133467 () Bool)

(declare-fun e!4287121 () Bool)

(assert (=> b!7133467 (= e!4287120 e!4287121)))

(declare-fun res!2910690 () Bool)

(assert (=> b!7133467 (=> (not res!2910690) (not e!4287121))))

(assert (=> b!7133467 (= res!2910690 (dynLambda!28121 p!2111 (h!75588 l1!1495)))))

(declare-fun b!7133468 () Bool)

(assert (=> b!7133468 (= e!4287121 (forall!16938 (t!383251 l1!1495) p!2111))))

(assert (= (and d!2225956 (not res!2910689)) b!7133467))

(assert (= (and b!7133467 res!2910690) b!7133468))

(declare-fun b_lambda!272119 () Bool)

(assert (=> (not b_lambda!272119) (not b!7133467)))

(declare-fun t!383256 () Bool)

(declare-fun tb!262071 () Bool)

(assert (=> (and start!694966 (= p!2111 p!2111) t!383256) tb!262071))

(declare-fun result!349650 () Bool)

(assert (=> tb!262071 (= result!349650 true)))

(assert (=> b!7133467 t!383256))

(declare-fun b_and!351023 () Bool)

(assert (= b_and!351021 (and (=> t!383256 result!349650) b_and!351023)))

(declare-fun m!7850548 () Bool)

(assert (=> b!7133467 m!7850548))

(declare-fun m!7850550 () Bool)

(assert (=> b!7133468 m!7850550))

(assert (=> start!694966 d!2225956))

(declare-fun d!2225960 () Bool)

(declare-fun c!1330411 () Bool)

(assert (=> d!2225960 (= c!1330411 (is-Nil!69140 l2!1464))))

(declare-fun e!4287126 () (Set B!3399))

(assert (=> d!2225960 (= (content!14140 l2!1464) e!4287126)))

(declare-fun b!7133475 () Bool)

(assert (=> b!7133475 (= e!4287126 (as set.empty (Set B!3399)))))

(declare-fun b!7133476 () Bool)

(assert (=> b!7133476 (= e!4287126 (set.union (set.insert (h!75588 l2!1464) (as set.empty (Set B!3399))) (content!14140 (t!383251 l2!1464))))))

(assert (= (and d!2225960 c!1330411) b!7133475))

(assert (= (and d!2225960 (not c!1330411)) b!7133476))

(declare-fun m!7850556 () Bool)

(assert (=> b!7133476 m!7850556))

(declare-fun m!7850558 () Bool)

(assert (=> b!7133476 m!7850558))

(assert (=> b!7133425 d!2225960))

(declare-fun d!2225964 () Bool)

(declare-fun c!1330412 () Bool)

(assert (=> d!2225964 (= c!1330412 (is-Nil!69140 l1!1495))))

(declare-fun e!4287127 () (Set B!3399))

(assert (=> d!2225964 (= (content!14140 l1!1495) e!4287127)))

(declare-fun b!7133477 () Bool)

(assert (=> b!7133477 (= e!4287127 (as set.empty (Set B!3399)))))

(declare-fun b!7133478 () Bool)

(assert (=> b!7133478 (= e!4287127 (set.union (set.insert (h!75588 l1!1495) (as set.empty (Set B!3399))) (content!14140 (t!383251 l1!1495))))))

(assert (= (and d!2225964 c!1330412) b!7133477))

(assert (= (and d!2225964 (not c!1330412)) b!7133478))

(declare-fun m!7850560 () Bool)

(assert (=> b!7133478 m!7850560))

(declare-fun m!7850562 () Bool)

(assert (=> b!7133478 m!7850562))

(assert (=> b!7133425 d!2225964))

(declare-fun b!7133485 () Bool)

(declare-fun e!4287132 () Bool)

(declare-fun tp!1966326 () Bool)

(assert (=> b!7133485 (= e!4287132 (and tp_is_empty!45821 tp!1966326))))

(assert (=> b!7133424 (= tp!1966313 e!4287132)))

(assert (= (and b!7133424 (is-Cons!69140 (t!383251 l1!1495))) b!7133485))

(declare-fun b!7133486 () Bool)

(declare-fun e!4287133 () Bool)

(declare-fun tp!1966327 () Bool)

(assert (=> b!7133486 (= e!4287133 (and tp_is_empty!45821 tp!1966327))))

(assert (=> b!7133420 (= tp!1966312 e!4287133)))

(assert (= (and b!7133420 (is-Cons!69140 (t!383251 l2!1464))) b!7133486))

(declare-fun b_lambda!272123 () Bool)

(assert (= b_lambda!272117 (or (and start!694966 b_free!133835) b_lambda!272123)))

(declare-fun b_lambda!272125 () Bool)

(assert (= b_lambda!272119 (or (and start!694966 b_free!133835) b_lambda!272125)))

(push 1)

(assert (not b!7133456))

(assert (not b_lambda!272123))

(assert (not b_lambda!272113))

(assert (not b!7133486))

(assert tp_is_empty!45821)

(assert (not d!2225946))

(assert (not d!2225952))

(assert (not b!7133446))

(assert (not b!7133478))

(assert (not d!2225950))

(assert (not b_lambda!272125))

(assert (not b!7133468))

(assert (not b!7133476))

(assert (not b_next!134625))

(assert (not b!7133485))

(assert b_and!351023)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351023)

(assert (not b_next!134625))

(check-sat)

(pop 1)

