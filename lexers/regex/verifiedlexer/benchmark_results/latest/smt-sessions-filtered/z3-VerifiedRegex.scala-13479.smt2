; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727904 () Bool)

(assert start!727904)

(declare-fun b_free!134425 () Bool)

(declare-fun b_next!135215 () Bool)

(assert (=> start!727904 (= b_free!134425 (not b_next!135215))))

(declare-fun tp!2184225 () Bool)

(declare-fun b_and!352201 () Bool)

(assert (=> start!727904 (= tp!2184225 b_and!352201)))

(declare-fun b!7520063 () Bool)

(declare-fun res!3014283 () Bool)

(declare-fun e!4482837 () Bool)

(assert (=> b!7520063 (=> (not res!3014283) (not e!4482837))))

(declare-fun e!4482835 () Bool)

(assert (=> b!7520063 (= res!3014283 e!4482835)))

(declare-fun res!3014282 () Bool)

(assert (=> b!7520063 (=> res!3014282 e!4482835)))

(declare-datatypes ((B!3961 0))(
  ( (B!3962 (val!30356 Int)) )
))
(declare-datatypes ((List!72664 0))(
  ( (Nil!72540) (Cons!72540 (h!78988 B!3961) (t!387337 List!72664)) )
))
(declare-fun l!3837 () List!72664)

(get-info :version)

(assert (=> b!7520063 (= res!3014282 (not ((_ is Cons!72540) l!3837)))))

(declare-fun b!7520064 () Bool)

(declare-fun ListPrimitiveSize!444 (List!72664) Int)

(assert (=> b!7520064 (= e!4482837 (>= (ListPrimitiveSize!444 (t!387337 l!3837)) (ListPrimitiveSize!444 l!3837)))))

(declare-fun b!7520065 () Bool)

(declare-fun res!3014286 () Bool)

(assert (=> b!7520065 (=> (not res!3014286) (not e!4482837))))

(declare-fun p!2194 () Int)

(declare-fun forall!18394 (List!72664 Int) Bool)

(assert (=> b!7520065 (= res!3014286 (not (forall!18394 (t!387337 l!3837) p!2194)))))

(declare-fun b!7520066 () Bool)

(declare-fun dynLambda!29870 (Int B!3961) Bool)

(assert (=> b!7520066 (= e!4482835 (dynLambda!29870 p!2194 (h!78988 l!3837)))))

(declare-fun b!7520067 () Bool)

(declare-fun res!3014287 () Bool)

(assert (=> b!7520067 (=> (not res!3014287) (not e!4482837))))

(assert (=> b!7520067 (= res!3014287 (dynLambda!29870 p!2194 (h!78988 l!3837)))))

(declare-fun res!3014284 () Bool)

(assert (=> start!727904 (=> (not res!3014284) (not e!4482837))))

(assert (=> start!727904 (= res!3014284 (not (forall!18394 l!3837 p!2194)))))

(assert (=> start!727904 e!4482837))

(declare-fun e!4482836 () Bool)

(assert (=> start!727904 e!4482836))

(assert (=> start!727904 tp!2184225))

(declare-fun b!7520068 () Bool)

(declare-fun tp_is_empty!49871 () Bool)

(declare-fun tp!2184226 () Bool)

(assert (=> b!7520068 (= e!4482836 (and tp_is_empty!49871 tp!2184226))))

(declare-fun b!7520069 () Bool)

(declare-fun res!3014285 () Bool)

(assert (=> b!7520069 (=> (not res!3014285) (not e!4482837))))

(assert (=> b!7520069 (= res!3014285 ((_ is Cons!72540) l!3837))))

(assert (= (and start!727904 res!3014284) b!7520063))

(assert (= (and b!7520063 (not res!3014282)) b!7520066))

(assert (= (and b!7520063 res!3014283) b!7520069))

(assert (= (and b!7520069 res!3014285) b!7520067))

(assert (= (and b!7520067 res!3014287) b!7520065))

(assert (= (and b!7520065 res!3014286) b!7520064))

(assert (= (and start!727904 ((_ is Cons!72540) l!3837)) b!7520068))

(declare-fun b_lambda!288621 () Bool)

(assert (=> (not b_lambda!288621) (not b!7520066)))

(declare-fun t!387336 () Bool)

(declare-fun tb!262553 () Bool)

(assert (=> (and start!727904 (= p!2194 p!2194) t!387336) tb!262553))

(declare-fun result!356402 () Bool)

(assert (=> tb!262553 (= result!356402 true)))

(assert (=> b!7520066 t!387336))

(declare-fun b_and!352203 () Bool)

(assert (= b_and!352201 (and (=> t!387336 result!356402) b_and!352203)))

(declare-fun b_lambda!288623 () Bool)

(assert (=> (not b_lambda!288623) (not b!7520067)))

(assert (=> b!7520067 t!387336))

(declare-fun b_and!352205 () Bool)

(assert (= b_and!352203 (and (=> t!387336 result!356402) b_and!352205)))

(declare-fun m!8099846 () Bool)

(assert (=> b!7520064 m!8099846))

(declare-fun m!8099848 () Bool)

(assert (=> b!7520064 m!8099848))

(declare-fun m!8099850 () Bool)

(assert (=> b!7520066 m!8099850))

(declare-fun m!8099852 () Bool)

(assert (=> b!7520065 m!8099852))

(assert (=> b!7520067 m!8099850))

(declare-fun m!8099854 () Bool)

(assert (=> start!727904 m!8099854))

(check-sat (not b!7520064) (not b!7520068) (not b_next!135215) b_and!352205 (not b_lambda!288621) tp_is_empty!49871 (not b_lambda!288623) (not b!7520065) (not start!727904))
(check-sat b_and!352205 (not b_next!135215))
(get-model)

(declare-fun b_lambda!288629 () Bool)

(assert (= b_lambda!288623 (or (and start!727904 b_free!134425) b_lambda!288629)))

(declare-fun b_lambda!288631 () Bool)

(assert (= b_lambda!288621 (or (and start!727904 b_free!134425) b_lambda!288631)))

(check-sat (not b_lambda!288629) (not b!7520064) (not b!7520068) (not b_next!135215) b_and!352205 tp_is_empty!49871 (not b_lambda!288631) (not b!7520065) (not start!727904))
(check-sat b_and!352205 (not b_next!135215))
(get-model)

(declare-fun d!2308760 () Bool)

(declare-fun res!3014298 () Bool)

(declare-fun e!4482850 () Bool)

(assert (=> d!2308760 (=> res!3014298 e!4482850)))

(assert (=> d!2308760 (= res!3014298 ((_ is Nil!72540) l!3837))))

(assert (=> d!2308760 (= (forall!18394 l!3837 p!2194) e!4482850)))

(declare-fun b!7520084 () Bool)

(declare-fun e!4482851 () Bool)

(assert (=> b!7520084 (= e!4482850 e!4482851)))

(declare-fun res!3014299 () Bool)

(assert (=> b!7520084 (=> (not res!3014299) (not e!4482851))))

(assert (=> b!7520084 (= res!3014299 (dynLambda!29870 p!2194 (h!78988 l!3837)))))

(declare-fun b!7520085 () Bool)

(assert (=> b!7520085 (= e!4482851 (forall!18394 (t!387337 l!3837) p!2194))))

(assert (= (and d!2308760 (not res!3014298)) b!7520084))

(assert (= (and b!7520084 res!3014299) b!7520085))

(declare-fun b_lambda!288635 () Bool)

(assert (=> (not b_lambda!288635) (not b!7520084)))

(assert (=> b!7520084 t!387336))

(declare-fun b_and!352209 () Bool)

(assert (= b_and!352205 (and (=> t!387336 result!356402) b_and!352209)))

(assert (=> b!7520084 m!8099850))

(assert (=> b!7520085 m!8099852))

(assert (=> start!727904 d!2308760))

(declare-fun d!2308766 () Bool)

(declare-fun lt!2638579 () Int)

(assert (=> d!2308766 (>= lt!2638579 0)))

(declare-fun e!4482861 () Int)

(assert (=> d!2308766 (= lt!2638579 e!4482861)))

(declare-fun c!1389492 () Bool)

(assert (=> d!2308766 (= c!1389492 ((_ is Nil!72540) (t!387337 l!3837)))))

(assert (=> d!2308766 (= (ListPrimitiveSize!444 (t!387337 l!3837)) lt!2638579)))

(declare-fun b!7520101 () Bool)

(assert (=> b!7520101 (= e!4482861 0)))

(declare-fun b!7520102 () Bool)

(assert (=> b!7520102 (= e!4482861 (+ 1 (ListPrimitiveSize!444 (t!387337 (t!387337 l!3837)))))))

(assert (= (and d!2308766 c!1389492) b!7520101))

(assert (= (and d!2308766 (not c!1389492)) b!7520102))

(declare-fun m!8099862 () Bool)

(assert (=> b!7520102 m!8099862))

(assert (=> b!7520064 d!2308766))

(declare-fun d!2308770 () Bool)

(declare-fun lt!2638580 () Int)

(assert (=> d!2308770 (>= lt!2638580 0)))

(declare-fun e!4482862 () Int)

(assert (=> d!2308770 (= lt!2638580 e!4482862)))

(declare-fun c!1389493 () Bool)

(assert (=> d!2308770 (= c!1389493 ((_ is Nil!72540) l!3837))))

(assert (=> d!2308770 (= (ListPrimitiveSize!444 l!3837) lt!2638580)))

(declare-fun b!7520103 () Bool)

(assert (=> b!7520103 (= e!4482862 0)))

(declare-fun b!7520104 () Bool)

(assert (=> b!7520104 (= e!4482862 (+ 1 (ListPrimitiveSize!444 (t!387337 l!3837))))))

(assert (= (and d!2308770 c!1389493) b!7520103))

(assert (= (and d!2308770 (not c!1389493)) b!7520104))

(assert (=> b!7520104 m!8099846))

(assert (=> b!7520064 d!2308770))

(declare-fun d!2308772 () Bool)

(declare-fun res!3014302 () Bool)

(declare-fun e!4482863 () Bool)

(assert (=> d!2308772 (=> res!3014302 e!4482863)))

(assert (=> d!2308772 (= res!3014302 ((_ is Nil!72540) (t!387337 l!3837)))))

(assert (=> d!2308772 (= (forall!18394 (t!387337 l!3837) p!2194) e!4482863)))

(declare-fun b!7520105 () Bool)

(declare-fun e!4482864 () Bool)

(assert (=> b!7520105 (= e!4482863 e!4482864)))

(declare-fun res!3014303 () Bool)

(assert (=> b!7520105 (=> (not res!3014303) (not e!4482864))))

(assert (=> b!7520105 (= res!3014303 (dynLambda!29870 p!2194 (h!78988 (t!387337 l!3837))))))

(declare-fun b!7520106 () Bool)

(assert (=> b!7520106 (= e!4482864 (forall!18394 (t!387337 (t!387337 l!3837)) p!2194))))

(assert (= (and d!2308772 (not res!3014302)) b!7520105))

(assert (= (and b!7520105 res!3014303) b!7520106))

(declare-fun b_lambda!288643 () Bool)

(assert (=> (not b_lambda!288643) (not b!7520105)))

(declare-fun t!387341 () Bool)

(declare-fun tb!262557 () Bool)

(assert (=> (and start!727904 (= p!2194 p!2194) t!387341) tb!262557))

(declare-fun result!356408 () Bool)

(assert (=> tb!262557 (= result!356408 true)))

(assert (=> b!7520105 t!387341))

(declare-fun b_and!352213 () Bool)

(assert (= b_and!352209 (and (=> t!387341 result!356408) b_and!352213)))

(declare-fun m!8099864 () Bool)

(assert (=> b!7520105 m!8099864))

(declare-fun m!8099866 () Bool)

(assert (=> b!7520106 m!8099866))

(assert (=> b!7520065 d!2308772))

(declare-fun b!7520111 () Bool)

(declare-fun e!4482867 () Bool)

(declare-fun tp!2184232 () Bool)

(assert (=> b!7520111 (= e!4482867 (and tp_is_empty!49871 tp!2184232))))

(assert (=> b!7520068 (= tp!2184226 e!4482867)))

(assert (= (and b!7520068 ((_ is Cons!72540) (t!387337 l!3837))) b!7520111))

(declare-fun b_lambda!288645 () Bool)

(assert (= b_lambda!288643 (or (and start!727904 b_free!134425) b_lambda!288645)))

(declare-fun b_lambda!288647 () Bool)

(assert (= b_lambda!288635 (or (and start!727904 b_free!134425) b_lambda!288647)))

(check-sat (not b!7520085) (not b_lambda!288629) (not b!7520104) (not b!7520111) (not b!7520106) tp_is_empty!49871 b_and!352213 (not b_lambda!288647) (not b_next!135215) (not b!7520102) (not b_lambda!288631) (not b_lambda!288645))
(check-sat b_and!352213 (not b_next!135215))
