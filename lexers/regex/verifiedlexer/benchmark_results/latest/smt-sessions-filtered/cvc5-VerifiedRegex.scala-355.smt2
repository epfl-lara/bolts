; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!11272 () Bool)

(assert start!11272)

(declare-fun b_free!3429 () Bool)

(declare-fun b_next!3429 () Bool)

(assert (=> start!11272 (= b_free!3429 (not b_next!3429))))

(declare-fun tp!59712 () Bool)

(declare-fun b_and!5551 () Bool)

(assert (=> start!11272 (= tp!59712 b_and!5551)))

(declare-fun b_free!3431 () Bool)

(declare-fun b_next!3431 () Bool)

(assert (=> start!11272 (= b_free!3431 (not b_next!3431))))

(declare-fun tp!59713 () Bool)

(declare-fun b_and!5553 () Bool)

(assert (=> start!11272 (= tp!59713 b_and!5553)))

(assert (=> start!11272 true))

(declare-fun lambda!2711 () Int)

(declare-fun order!1093 () Int)

(declare-fun order!1095 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!722 (Int Int) Int)

(declare-fun dynLambda!723 (Int Int) Int)

(assert (=> start!11272 (< (dynLambda!722 order!1093 f!927) (dynLambda!723 order!1095 lambda!2711))))

(assert (=> start!11272 true))

(declare-fun g!9 () Int)

(assert (=> start!11272 (< (dynLambda!722 order!1093 g!9) (dynLambda!723 order!1095 lambda!2711))))

(declare-fun res!53290 () Bool)

(declare-fun e!61554 () Bool)

(assert (=> start!11272 (=> (not res!53290) (not e!61554))))

(declare-datatypes ((A!317 0))(
  ( (A!318 (val!618 Int)) )
))
(declare-fun s!1451 () (Set A!317))

(declare-fun forall!331 ((Set A!317) Int) Bool)

(assert (=> start!11272 (= res!53290 (forall!331 s!1451 lambda!2711))))

(assert (=> start!11272 e!61554))

(declare-fun condSetEmpty!1647 () Bool)

(assert (=> start!11272 (= condSetEmpty!1647 (= s!1451 (as set.empty (Set A!317))))))

(declare-fun setRes!1647 () Bool)

(assert (=> start!11272 setRes!1647))

(assert (=> start!11272 tp!59712))

(assert (=> start!11272 tp!59713))

(declare-fun setNonEmpty!1647 () Bool)

(declare-fun tp!59714 () Bool)

(declare-fun tp_is_empty!923 () Bool)

(assert (=> setNonEmpty!1647 (= setRes!1647 (and tp!59714 tp_is_empty!923))))

(declare-fun setElem!1647 () A!317)

(declare-fun setRest!1647 () (Set A!317))

(assert (=> setNonEmpty!1647 (= s!1451 (set.union (set.insert setElem!1647 (as set.empty (Set A!317))) setRest!1647))))

(declare-fun b!110274 () Bool)

(declare-fun res!53289 () Bool)

(assert (=> b!110274 (=> (not res!53289) (not e!61554))))

(declare-datatypes ((List!1782 0))(
  ( (Nil!1776) (Cons!1776 (h!7173 A!317) (t!22161 List!1782)) )
))
(declare-fun toList!261 ((Set A!317)) List!1782)

(assert (=> b!110274 (= res!53289 (not (is-Cons!1776 (toList!261 s!1451))))))

(declare-fun setIsEmpty!1647 () Bool)

(assert (=> setIsEmpty!1647 setRes!1647))

(declare-fun b!110275 () Bool)

(assert (=> b!110275 (= e!61554 (not (= s!1451 (as set.empty (Set A!317)))))))

(assert (= (and start!11272 res!53290) b!110274))

(assert (= (and b!110274 res!53289) b!110275))

(assert (= (and start!11272 condSetEmpty!1647) setIsEmpty!1647))

(assert (= (and start!11272 (not condSetEmpty!1647)) setNonEmpty!1647))

(declare-fun m!100518 () Bool)

(assert (=> start!11272 m!100518))

(declare-fun m!100520 () Bool)

(assert (=> b!110274 m!100520))

(push 1)

(assert (not b_next!3431))

(assert (not b!110274))

(assert (not start!11272))

(assert (not b_next!3429))

(assert tp_is_empty!923)

(assert b_and!5551)

(assert b_and!5553)

(assert (not setNonEmpty!1647))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5551)

(assert b_and!5553)

(assert (not b_next!3431))

(assert (not b_next!3429))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27646 () Bool)

(declare-fun e!61560 () Bool)

(assert (=> d!27646 e!61560))

(declare-fun res!53299 () Bool)

(assert (=> d!27646 (=> (not res!53299) (not e!61560))))

(declare-fun lt!32365 () List!1782)

(declare-fun noDuplicate!20 (List!1782) Bool)

(assert (=> d!27646 (= res!53299 (noDuplicate!20 lt!32365))))

(declare-fun choose!1481 ((Set A!317)) List!1782)

(assert (=> d!27646 (= lt!32365 (choose!1481 s!1451))))

(assert (=> d!27646 (= (toList!261 s!1451) lt!32365)))

(declare-fun b!110288 () Bool)

(declare-fun content!200 (List!1782) (Set A!317))

(assert (=> b!110288 (= e!61560 (= (content!200 lt!32365) s!1451))))

(assert (= (and d!27646 res!53299) b!110288))

(declare-fun m!100526 () Bool)

(assert (=> d!27646 m!100526))

(declare-fun m!100528 () Bool)

(assert (=> d!27646 m!100528))

(declare-fun m!100530 () Bool)

(assert (=> b!110288 m!100530))

(assert (=> b!110274 d!27646))

(declare-fun d!27648 () Bool)

(declare-fun lt!32368 () Bool)

(declare-fun forall!333 (List!1782 Int) Bool)

(assert (=> d!27648 (= lt!32368 (forall!333 (toList!261 s!1451) lambda!2711))))

(declare-fun choose!1482 ((Set A!317) Int) Bool)

(assert (=> d!27648 (= lt!32368 (choose!1482 s!1451 lambda!2711))))

(assert (=> d!27648 (= (forall!331 s!1451 lambda!2711) lt!32368)))

(declare-fun bs!10979 () Bool)

(assert (= bs!10979 d!27648))

(assert (=> bs!10979 m!100520))

(assert (=> bs!10979 m!100520))

(declare-fun m!100532 () Bool)

(assert (=> bs!10979 m!100532))

(declare-fun m!100534 () Bool)

(assert (=> bs!10979 m!100534))

(assert (=> start!11272 d!27648))

(declare-fun condSetEmpty!1653 () Bool)

(assert (=> setNonEmpty!1647 (= condSetEmpty!1653 (= setRest!1647 (as set.empty (Set A!317))))))

(declare-fun setRes!1653 () Bool)

(assert (=> setNonEmpty!1647 (= tp!59714 setRes!1653)))

(declare-fun setIsEmpty!1653 () Bool)

(assert (=> setIsEmpty!1653 setRes!1653))

(declare-fun setNonEmpty!1653 () Bool)

(declare-fun tp!59726 () Bool)

(assert (=> setNonEmpty!1653 (= setRes!1653 (and tp!59726 tp_is_empty!923))))

(declare-fun setElem!1653 () A!317)

(declare-fun setRest!1653 () (Set A!317))

(assert (=> setNonEmpty!1653 (= setRest!1647 (set.union (set.insert setElem!1653 (as set.empty (Set A!317))) setRest!1653))))

(assert (= (and setNonEmpty!1647 condSetEmpty!1653) setIsEmpty!1653))

(assert (= (and setNonEmpty!1647 (not condSetEmpty!1653)) setNonEmpty!1653))

(push 1)

(assert (not b_next!3431))

(assert (not b!110288))

(assert b_and!5553)

(assert (not d!27648))

(assert (not d!27646))

(assert (not b_next!3429))

(assert tp_is_empty!923)

(assert (not setNonEmpty!1653))

(assert b_and!5551)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5551)

(assert b_and!5553)

(assert (not b_next!3431))

(assert (not b_next!3429))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27652 () Bool)

(declare-fun c!26187 () Bool)

(assert (=> d!27652 (= c!26187 (is-Nil!1776 lt!32365))))

(declare-fun e!61563 () (Set A!317))

(assert (=> d!27652 (= (content!200 lt!32365) e!61563)))

(declare-fun b!110295 () Bool)

(assert (=> b!110295 (= e!61563 (as set.empty (Set A!317)))))

(declare-fun b!110296 () Bool)

(assert (=> b!110296 (= e!61563 (set.union (set.insert (h!7173 lt!32365) (as set.empty (Set A!317))) (content!200 (t!22161 lt!32365))))))

(assert (= (and d!27652 c!26187) b!110295))

(assert (= (and d!27652 (not c!26187)) b!110296))

(declare-fun m!100540 () Bool)

(assert (=> b!110296 m!100540))

(declare-fun m!100542 () Bool)

(assert (=> b!110296 m!100542))

(assert (=> b!110288 d!27652))

(declare-fun d!27656 () Bool)

(declare-fun res!53306 () Bool)

(declare-fun e!61570 () Bool)

(assert (=> d!27656 (=> res!53306 e!61570)))

(assert (=> d!27656 (= res!53306 (is-Nil!1776 (toList!261 s!1451)))))

(assert (=> d!27656 (= (forall!333 (toList!261 s!1451) lambda!2711) e!61570)))

(declare-fun b!110303 () Bool)

(declare-fun e!61571 () Bool)

(assert (=> b!110303 (= e!61570 e!61571)))

(declare-fun res!53307 () Bool)

(assert (=> b!110303 (=> (not res!53307) (not e!61571))))

(declare-fun dynLambda!726 (Int A!317) Bool)

(assert (=> b!110303 (= res!53307 (dynLambda!726 lambda!2711 (h!7173 (toList!261 s!1451))))))

(declare-fun b!110304 () Bool)

(assert (=> b!110304 (= e!61571 (forall!333 (t!22161 (toList!261 s!1451)) lambda!2711))))

(assert (= (and d!27656 (not res!53306)) b!110303))

(assert (= (and b!110303 res!53307) b!110304))

(declare-fun b_lambda!1677 () Bool)

(assert (=> (not b_lambda!1677) (not b!110303)))

(declare-fun m!100544 () Bool)

(assert (=> b!110303 m!100544))

(declare-fun m!100546 () Bool)

(assert (=> b!110304 m!100546))

(assert (=> d!27648 d!27656))

(assert (=> d!27648 d!27646))

(declare-fun d!27658 () Bool)

(declare-fun res!53311 () Bool)

(assert (=> d!27658 (= res!53311 (forall!333 (toList!261 s!1451) lambda!2711))))

(assert (=> d!27658 true))

(assert (=> d!27658 (= (choose!1482 s!1451 lambda!2711) res!53311)))

(declare-fun bs!10981 () Bool)

(assert (= bs!10981 d!27658))

(assert (=> bs!10981 m!100520))

(assert (=> bs!10981 m!100520))

(assert (=> bs!10981 m!100532))

(assert (=> d!27648 d!27658))

(declare-fun d!27660 () Bool)

(declare-fun res!53316 () Bool)

(declare-fun e!61577 () Bool)

(assert (=> d!27660 (=> res!53316 e!61577)))

(assert (=> d!27660 (= res!53316 (is-Nil!1776 lt!32365))))

(assert (=> d!27660 (= (noDuplicate!20 lt!32365) e!61577)))

(declare-fun b!110312 () Bool)

(declare-fun e!61578 () Bool)

(assert (=> b!110312 (= e!61577 e!61578)))

(declare-fun res!53317 () Bool)

(assert (=> b!110312 (=> (not res!53317) (not e!61578))))

(declare-fun contains!291 (List!1782 A!317) Bool)

(assert (=> b!110312 (= res!53317 (not (contains!291 (t!22161 lt!32365) (h!7173 lt!32365))))))

(declare-fun b!110313 () Bool)

(assert (=> b!110313 (= e!61578 (noDuplicate!20 (t!22161 lt!32365)))))

(assert (= (and d!27660 (not res!53316)) b!110312))

(assert (= (and b!110312 res!53317) b!110313))

(declare-fun m!100554 () Bool)

(assert (=> b!110312 m!100554))

(declare-fun m!100556 () Bool)

(assert (=> b!110313 m!100556))

(assert (=> d!27646 d!27660))

(declare-fun d!27662 () Bool)

(declare-fun e!61584 () Bool)

(assert (=> d!27662 e!61584))

(declare-fun res!53322 () Bool)

(assert (=> d!27662 (=> (not res!53322) (not e!61584))))

(declare-fun res!53323 () List!1782)

(assert (=> d!27662 (= res!53322 (noDuplicate!20 res!53323))))

(declare-fun e!61583 () Bool)

(assert (=> d!27662 e!61583))

(assert (=> d!27662 (= (choose!1481 s!1451) res!53323)))

(declare-fun b!110318 () Bool)

(declare-fun tp!59732 () Bool)

(assert (=> b!110318 (= e!61583 (and tp_is_empty!923 tp!59732))))

(declare-fun b!110319 () Bool)

(assert (=> b!110319 (= e!61584 (= (content!200 res!53323) s!1451))))

(assert (= (and d!27662 (is-Cons!1776 res!53323)) b!110318))

(assert (= (and d!27662 res!53322) b!110319))

(declare-fun m!100558 () Bool)

(assert (=> d!27662 m!100558))

(declare-fun m!100560 () Bool)

(assert (=> b!110319 m!100560))

(assert (=> d!27646 d!27662))

(declare-fun condSetEmpty!1657 () Bool)

(assert (=> setNonEmpty!1653 (= condSetEmpty!1657 (= setRest!1653 (as set.empty (Set A!317))))))

(declare-fun setRes!1657 () Bool)

(assert (=> setNonEmpty!1653 (= tp!59726 setRes!1657)))

(declare-fun setIsEmpty!1657 () Bool)

(assert (=> setIsEmpty!1657 setRes!1657))

(declare-fun setNonEmpty!1657 () Bool)

(declare-fun tp!59733 () Bool)

(assert (=> setNonEmpty!1657 (= setRes!1657 (and tp!59733 tp_is_empty!923))))

(declare-fun setElem!1657 () A!317)

(declare-fun setRest!1657 () (Set A!317))

(assert (=> setNonEmpty!1657 (= setRest!1653 (set.union (set.insert setElem!1657 (as set.empty (Set A!317))) setRest!1657))))

(assert (= (and setNonEmpty!1653 condSetEmpty!1657) setIsEmpty!1657))

(assert (= (and setNonEmpty!1653 (not condSetEmpty!1657)) setNonEmpty!1657))

(declare-fun b_lambda!1679 () Bool)

(assert (= b_lambda!1677 (or start!11272 b_lambda!1679)))

(declare-fun bs!10982 () Bool)

(declare-fun d!27664 () Bool)

(assert (= bs!10982 (and d!27664 start!11272)))

(declare-datatypes ((B!605 0))(
  ( (B!606 (val!620 Int)) )
))
(declare-fun dynLambda!727 (Int A!317) (Set B!605))

(assert (=> bs!10982 (= (dynLambda!726 lambda!2711 (h!7173 (toList!261 s!1451))) (= (dynLambda!727 f!927 (h!7173 (toList!261 s!1451))) (dynLambda!727 g!9 (h!7173 (toList!261 s!1451)))))))

(declare-fun b_lambda!1681 () Bool)

(assert (=> (not b_lambda!1681) (not bs!10982)))

(declare-fun t!22164 () Bool)

(declare-fun tb!3647 () Bool)

(assert (=> (and start!11272 (= f!927 f!927) t!22164) tb!3647))

(assert (=> bs!10982 t!22164))

(declare-fun result!5208 () Bool)

(declare-fun b_and!5559 () Bool)

(assert (= b_and!5551 (and (=> t!22164 result!5208) b_and!5559)))

(declare-fun tb!3649 () Bool)

(declare-fun t!22166 () Bool)

(assert (=> (and start!11272 (= g!9 f!927) t!22166) tb!3649))

(assert (=> bs!10982 t!22166))

(declare-fun result!5210 () Bool)

(declare-fun b_and!5561 () Bool)

(assert (= b_and!5553 (and (=> t!22166 result!5210) b_and!5561)))

(declare-fun b_lambda!1683 () Bool)

(assert (=> (not b_lambda!1683) (not bs!10982)))

(declare-fun tb!3651 () Bool)

(declare-fun t!22168 () Bool)

(assert (=> (and start!11272 (= f!927 g!9) t!22168) tb!3651))

(assert (=> bs!10982 t!22168))

(declare-fun result!5212 () Bool)

(declare-fun b_and!5563 () Bool)

(assert (= b_and!5559 (and (=> t!22168 result!5212) b_and!5563)))

(declare-fun t!22170 () Bool)

(declare-fun tb!3653 () Bool)

(assert (=> (and start!11272 (= g!9 g!9) t!22170) tb!3653))

(assert (=> bs!10982 t!22170))

(declare-fun result!5214 () Bool)

(declare-fun b_and!5565 () Bool)

(assert (= b_and!5561 (and (=> t!22170 result!5214) b_and!5565)))

(declare-fun m!100562 () Bool)

(assert (=> bs!10982 m!100562))

(declare-fun m!100564 () Bool)

(assert (=> bs!10982 m!100564))

(assert (=> b!110303 d!27664))

(push 1)

(assert (not setNonEmpty!1657))

(assert (not b_next!3431))

(assert b_and!5563)

(assert (not b!110296))

(assert (not tb!3649))

(assert (not b_lambda!1681))

(assert (not b!110304))

(assert (not b_next!3429))

(assert (not tb!3651))

(assert tp_is_empty!923)

(assert (not b!110312))

(assert (not d!27662))

(assert (not b_lambda!1683))

(assert (not b_lambda!1679))

(assert (not b!110318))

(assert (not tb!3653))

(assert (not d!27658))

(assert (not tb!3647))

(assert (not b!110313))

(assert (not b!110319))

(assert b_and!5565)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5563)

(assert b_and!5565)

(assert (not b_next!3431))

(assert (not b_next!3429))

(check-sat)

(pop 1)

