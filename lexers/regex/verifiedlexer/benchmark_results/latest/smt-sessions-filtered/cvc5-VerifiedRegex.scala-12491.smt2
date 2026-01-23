; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695006 () Bool)

(assert start!695006)

(declare-fun b_free!133843 () Bool)

(declare-fun b_next!134633 () Bool)

(assert (=> start!695006 (= b_free!133843 (not b_next!134633))))

(declare-fun tp!1966364 () Bool)

(declare-fun b_and!351037 () Bool)

(assert (=> start!695006 (= tp!1966364 b_and!351037)))

(declare-fun b!7133588 () Bool)

(declare-fun e!4287203 () Bool)

(declare-datatypes ((B!3407 0))(
  ( (B!3408 (val!28175 Int)) )
))
(declare-datatypes ((List!69268 0))(
  ( (Nil!69144) (Cons!69144 (h!75592 B!3407) (t!383265 List!69268)) )
))
(declare-fun l2!1464 () List!69268)

(declare-fun ListPrimitiveSize!413 (List!69268) Int)

(assert (=> b!7133588 (= e!4287203 (>= (ListPrimitiveSize!413 (t!383265 l2!1464)) (ListPrimitiveSize!413 l2!1464)))))

(declare-fun b!7133589 () Bool)

(declare-fun res!2910727 () Bool)

(assert (=> b!7133589 (=> (not res!2910727) (not e!4287203))))

(assert (=> b!7133589 (= res!2910727 (is-Cons!69144 l2!1464))))

(declare-fun b!7133591 () Bool)

(declare-fun res!2910728 () Bool)

(assert (=> b!7133591 (=> (not res!2910728) (not e!4287203))))

(declare-fun l1!1495 () List!69268)

(declare-fun content!14144 (List!69268) (Set B!3407))

(assert (=> b!7133591 (= res!2910728 (set.subset (content!14144 l2!1464) (content!14144 l1!1495)))))

(declare-fun b!7133592 () Bool)

(declare-fun e!4287201 () Bool)

(declare-fun tp_is_empty!45829 () Bool)

(declare-fun tp!1966365 () Bool)

(assert (=> b!7133592 (= e!4287201 (and tp_is_empty!45829 tp!1966365))))

(declare-fun res!2910726 () Bool)

(assert (=> start!695006 (=> (not res!2910726) (not e!4287203))))

(declare-fun p!2111 () Int)

(declare-fun forall!16942 (List!69268 Int) Bool)

(assert (=> start!695006 (= res!2910726 (forall!16942 l1!1495 p!2111))))

(assert (=> start!695006 e!4287203))

(assert (=> start!695006 e!4287201))

(assert (=> start!695006 tp!1966364))

(declare-fun e!4287202 () Bool)

(assert (=> start!695006 e!4287202))

(declare-fun b!7133590 () Bool)

(declare-fun tp!1966366 () Bool)

(assert (=> b!7133590 (= e!4287202 (and tp_is_empty!45829 tp!1966366))))

(assert (= (and start!695006 res!2910726) b!7133591))

(assert (= (and b!7133591 res!2910728) b!7133589))

(assert (= (and b!7133589 res!2910727) b!7133588))

(assert (= (and start!695006 (is-Cons!69144 l1!1495)) b!7133592))

(assert (= (and start!695006 (is-Cons!69144 l2!1464)) b!7133590))

(declare-fun m!7850618 () Bool)

(assert (=> b!7133588 m!7850618))

(declare-fun m!7850620 () Bool)

(assert (=> b!7133588 m!7850620))

(declare-fun m!7850622 () Bool)

(assert (=> b!7133591 m!7850622))

(declare-fun m!7850624 () Bool)

(assert (=> b!7133591 m!7850624))

(declare-fun m!7850626 () Bool)

(assert (=> start!695006 m!7850626))

(push 1)

(assert (not b!7133591))

(assert (not b!7133588))

(assert (not b_next!134633))

(assert (not b!7133592))

(assert (not start!695006))

(assert (not b!7133590))

(assert b_and!351037)

(assert tp_is_empty!45829)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351037)

(assert (not b_next!134633))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2225988 () Bool)

(declare-fun c!1330433 () Bool)

(assert (=> d!2225988 (= c!1330433 (is-Nil!69144 l2!1464))))

(declare-fun e!4287215 () (Set B!3407))

(assert (=> d!2225988 (= (content!14144 l2!1464) e!4287215)))

(declare-fun b!7133612 () Bool)

(assert (=> b!7133612 (= e!4287215 (as set.empty (Set B!3407)))))

(declare-fun b!7133613 () Bool)

(assert (=> b!7133613 (= e!4287215 (set.union (set.insert (h!75592 l2!1464) (as set.empty (Set B!3407))) (content!14144 (t!383265 l2!1464))))))

(assert (= (and d!2225988 c!1330433) b!7133612))

(assert (= (and d!2225988 (not c!1330433)) b!7133613))

(declare-fun m!7850638 () Bool)

(assert (=> b!7133613 m!7850638))

(declare-fun m!7850640 () Bool)

(assert (=> b!7133613 m!7850640))

(assert (=> b!7133591 d!2225988))

(declare-fun d!2225990 () Bool)

(declare-fun c!1330434 () Bool)

(assert (=> d!2225990 (= c!1330434 (is-Nil!69144 l1!1495))))

(declare-fun e!4287216 () (Set B!3407))

(assert (=> d!2225990 (= (content!14144 l1!1495) e!4287216)))

(declare-fun b!7133614 () Bool)

(assert (=> b!7133614 (= e!4287216 (as set.empty (Set B!3407)))))

(declare-fun b!7133615 () Bool)

(assert (=> b!7133615 (= e!4287216 (set.union (set.insert (h!75592 l1!1495) (as set.empty (Set B!3407))) (content!14144 (t!383265 l1!1495))))))

(assert (= (and d!2225990 c!1330434) b!7133614))

(assert (= (and d!2225990 (not c!1330434)) b!7133615))

(declare-fun m!7850642 () Bool)

(assert (=> b!7133615 m!7850642))

(declare-fun m!7850644 () Bool)

(assert (=> b!7133615 m!7850644))

(assert (=> b!7133591 d!2225990))

(declare-fun d!2225992 () Bool)

(declare-fun res!2910742 () Bool)

(declare-fun e!4287221 () Bool)

(assert (=> d!2225992 (=> res!2910742 e!4287221)))

(assert (=> d!2225992 (= res!2910742 (is-Nil!69144 l1!1495))))

(assert (=> d!2225992 (= (forall!16942 l1!1495 p!2111) e!4287221)))

(declare-fun b!7133620 () Bool)

(declare-fun e!4287222 () Bool)

(assert (=> b!7133620 (= e!4287221 e!4287222)))

(declare-fun res!2910743 () Bool)

(assert (=> b!7133620 (=> (not res!2910743) (not e!4287222))))

(declare-fun dynLambda!28125 (Int B!3407) Bool)

(assert (=> b!7133620 (= res!2910743 (dynLambda!28125 p!2111 (h!75592 l1!1495)))))

(declare-fun b!7133621 () Bool)

(assert (=> b!7133621 (= e!4287222 (forall!16942 (t!383265 l1!1495) p!2111))))

(assert (= (and d!2225992 (not res!2910742)) b!7133620))

(assert (= (and b!7133620 res!2910743) b!7133621))

(declare-fun b_lambda!272141 () Bool)

(assert (=> (not b_lambda!272141) (not b!7133620)))

(declare-fun t!383268 () Bool)

(declare-fun tb!262079 () Bool)

(assert (=> (and start!695006 (= p!2111 p!2111) t!383268) tb!262079))

(declare-fun result!349666 () Bool)

(assert (=> tb!262079 (= result!349666 true)))

(assert (=> b!7133620 t!383268))

(declare-fun b_and!351041 () Bool)

(assert (= b_and!351037 (and (=> t!383268 result!349666) b_and!351041)))

(declare-fun m!7850646 () Bool)

(assert (=> b!7133620 m!7850646))

(declare-fun m!7850648 () Bool)

(assert (=> b!7133621 m!7850648))

(assert (=> start!695006 d!2225992))

(declare-fun d!2225994 () Bool)

(declare-fun lt!2565245 () Int)

(assert (=> d!2225994 (>= lt!2565245 0)))

(declare-fun e!4287225 () Int)

(assert (=> d!2225994 (= lt!2565245 e!4287225)))

(declare-fun c!1330437 () Bool)

(assert (=> d!2225994 (= c!1330437 (is-Nil!69144 (t!383265 l2!1464)))))

(assert (=> d!2225994 (= (ListPrimitiveSize!413 (t!383265 l2!1464)) lt!2565245)))

(declare-fun b!7133626 () Bool)

(assert (=> b!7133626 (= e!4287225 0)))

(declare-fun b!7133627 () Bool)

(assert (=> b!7133627 (= e!4287225 (+ 1 (ListPrimitiveSize!413 (t!383265 (t!383265 l2!1464)))))))

(assert (= (and d!2225994 c!1330437) b!7133626))

(assert (= (and d!2225994 (not c!1330437)) b!7133627))

(declare-fun m!7850650 () Bool)

(assert (=> b!7133627 m!7850650))

(assert (=> b!7133588 d!2225994))

(declare-fun d!2225998 () Bool)

(declare-fun lt!2565246 () Int)

(assert (=> d!2225998 (>= lt!2565246 0)))

(declare-fun e!4287226 () Int)

(assert (=> d!2225998 (= lt!2565246 e!4287226)))

(declare-fun c!1330438 () Bool)

(assert (=> d!2225998 (= c!1330438 (is-Nil!69144 l2!1464))))

(assert (=> d!2225998 (= (ListPrimitiveSize!413 l2!1464) lt!2565246)))

(declare-fun b!7133628 () Bool)

(assert (=> b!7133628 (= e!4287226 0)))

(declare-fun b!7133629 () Bool)

(assert (=> b!7133629 (= e!4287226 (+ 1 (ListPrimitiveSize!413 (t!383265 l2!1464))))))

(assert (= (and d!2225998 c!1330438) b!7133628))

(assert (= (and d!2225998 (not c!1330438)) b!7133629))

(assert (=> b!7133629 m!7850618))

(assert (=> b!7133588 d!2225998))

(declare-fun b!7133634 () Bool)

(declare-fun e!4287229 () Bool)

(declare-fun tp!1966378 () Bool)

(assert (=> b!7133634 (= e!4287229 (and tp_is_empty!45829 tp!1966378))))

(assert (=> b!7133590 (= tp!1966366 e!4287229)))

(assert (= (and b!7133590 (is-Cons!69144 (t!383265 l2!1464))) b!7133634))

(declare-fun b!7133635 () Bool)

(declare-fun e!4287230 () Bool)

(declare-fun tp!1966379 () Bool)

(assert (=> b!7133635 (= e!4287230 (and tp_is_empty!45829 tp!1966379))))

(assert (=> b!7133592 (= tp!1966365 e!4287230)))

(assert (= (and b!7133592 (is-Cons!69144 (t!383265 l1!1495))) b!7133635))

(declare-fun b_lambda!272143 () Bool)

(assert (= b_lambda!272141 (or (and start!695006 b_free!133843) b_lambda!272143)))

(push 1)

(assert b_and!351041)

(assert (not b!7133621))

(assert (not b!7133629))

(assert (not b!7133615))

(assert (not b_next!134633))

(assert (not b_lambda!272143))

(assert (not b!7133613))

(assert tp_is_empty!45829)

(assert (not b!7133635))

(assert (not b!7133627))

(assert (not b!7133634))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351041)

(assert (not b_next!134633))

(check-sat)

(pop 1)

