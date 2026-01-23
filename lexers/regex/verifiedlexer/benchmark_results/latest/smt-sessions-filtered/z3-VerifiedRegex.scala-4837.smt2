; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248736 () Bool)

(assert start!248736)

(declare-fun res!1083236 () Bool)

(declare-fun e!1624977 () Bool)

(assert (=> start!248736 (=> (not res!1083236) (not e!1624977))))

(declare-datatypes ((B!1905 0))(
  ( (B!1906 (val!9380 Int)) )
))
(declare-datatypes ((List!29714 0))(
  ( (Nil!29614) (Cons!29614 (h!35034 B!1905) (t!211413 List!29714)) )
))
(declare-fun l1!976 () List!29714)

(declare-fun l2!953 () List!29714)

(declare-fun consecutiveSubseq!2 (List!29714 List!29714) Bool)

(assert (=> start!248736 (= res!1083236 (consecutiveSubseq!2 l1!976 l2!953))))

(assert (=> start!248736 e!1624977))

(declare-fun e!1624976 () Bool)

(assert (=> start!248736 e!1624976))

(declare-fun e!1624978 () Bool)

(assert (=> start!248736 e!1624978))

(declare-fun b!2575394 () Bool)

(declare-fun ListPrimitiveSize!167 (List!29714) Int)

(assert (=> b!2575394 (= e!1624977 (< (ListPrimitiveSize!167 l2!953) 0))))

(declare-fun b!2575395 () Bool)

(declare-fun tp_is_empty!13153 () Bool)

(declare-fun tp!818721 () Bool)

(assert (=> b!2575395 (= e!1624976 (and tp_is_empty!13153 tp!818721))))

(declare-fun b!2575396 () Bool)

(declare-fun tp!818722 () Bool)

(assert (=> b!2575396 (= e!1624978 (and tp_is_empty!13153 tp!818722))))

(assert (= (and start!248736 res!1083236) b!2575394))

(get-info :version)

(assert (= (and start!248736 ((_ is Cons!29614) l1!976)) b!2575395))

(assert (= (and start!248736 ((_ is Cons!29614) l2!953)) b!2575396))

(declare-fun m!2910497 () Bool)

(assert (=> start!248736 m!2910497))

(declare-fun m!2910499 () Bool)

(assert (=> b!2575394 m!2910499))

(check-sat tp_is_empty!13153 (not b!2575394) (not b!2575395) (not b!2575396) (not start!248736))
(check-sat)
(get-model)

(declare-fun d!728442 () Bool)

(declare-fun lt!906561 () Int)

(assert (=> d!728442 (>= lt!906561 0)))

(declare-fun e!1624983 () Int)

(assert (=> d!728442 (= lt!906561 e!1624983)))

(declare-fun c!414828 () Bool)

(assert (=> d!728442 (= c!414828 ((_ is Nil!29614) l2!953))))

(assert (=> d!728442 (= (ListPrimitiveSize!167 l2!953) lt!906561)))

(declare-fun b!2575405 () Bool)

(assert (=> b!2575405 (= e!1624983 0)))

(declare-fun b!2575406 () Bool)

(assert (=> b!2575406 (= e!1624983 (+ 1 (ListPrimitiveSize!167 (t!211413 l2!953))))))

(assert (= (and d!728442 c!414828) b!2575405))

(assert (= (and d!728442 (not c!414828)) b!2575406))

(declare-fun m!2910501 () Bool)

(assert (=> b!2575406 m!2910501))

(assert (=> b!2575394 d!728442))

(declare-fun b!2575422 () Bool)

(declare-fun e!1624994 () Bool)

(declare-fun call!166608 () Bool)

(assert (=> b!2575422 (= e!1624994 call!166608)))

(declare-fun b!2575421 () Bool)

(declare-fun e!1624993 () Bool)

(assert (=> b!2575421 (= e!1624994 e!1624993)))

(declare-fun res!1083241 () Bool)

(assert (=> b!2575421 (= res!1083241 call!166608)))

(assert (=> b!2575421 (=> res!1083241 e!1624993)))

(declare-fun d!728446 () Bool)

(declare-fun c!414834 () Bool)

(assert (=> d!728446 (= c!414834 ((_ is Cons!29614) l2!953))))

(assert (=> d!728446 (= (consecutiveSubseq!2 l1!976 l2!953) e!1624994)))

(declare-fun bm!166603 () Bool)

(declare-fun consecutiveSubseqAtHead!1 (List!29714 List!29714) Bool)

(assert (=> bm!166603 (= call!166608 (consecutiveSubseqAtHead!1 l1!976 l2!953))))

(declare-fun b!2575423 () Bool)

(assert (=> b!2575423 (= e!1624993 (consecutiveSubseq!2 l1!976 (t!211413 l2!953)))))

(assert (= (and d!728446 c!414834) b!2575421))

(assert (= (and d!728446 (not c!414834)) b!2575422))

(assert (= (and b!2575421 (not res!1083241)) b!2575423))

(assert (= (or b!2575421 b!2575422) bm!166603))

(declare-fun m!2910505 () Bool)

(assert (=> bm!166603 m!2910505))

(declare-fun m!2910507 () Bool)

(assert (=> b!2575423 m!2910507))

(assert (=> start!248736 d!728446))

(declare-fun b!2575428 () Bool)

(declare-fun e!1624997 () Bool)

(declare-fun tp!818725 () Bool)

(assert (=> b!2575428 (= e!1624997 (and tp_is_empty!13153 tp!818725))))

(assert (=> b!2575395 (= tp!818721 e!1624997)))

(assert (= (and b!2575395 ((_ is Cons!29614) (t!211413 l1!976))) b!2575428))

(declare-fun b!2575429 () Bool)

(declare-fun e!1624998 () Bool)

(declare-fun tp!818726 () Bool)

(assert (=> b!2575429 (= e!1624998 (and tp_is_empty!13153 tp!818726))))

(assert (=> b!2575396 (= tp!818722 e!1624998)))

(assert (= (and b!2575396 ((_ is Cons!29614) (t!211413 l2!953))) b!2575429))

(check-sat tp_is_empty!13153 (not bm!166603) (not b!2575406) (not b!2575428) (not b!2575429) (not b!2575423))
(check-sat)
