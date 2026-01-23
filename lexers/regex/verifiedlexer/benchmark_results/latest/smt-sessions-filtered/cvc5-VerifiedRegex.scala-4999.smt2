; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252802 () Bool)

(assert start!252802)

(declare-fun b!2600845 () Bool)

(assert (=> b!2600845 true))

(declare-fun b!2600846 () Bool)

(declare-fun m!2936033 () Bool)

(assert (=> b!2600846 m!2936033))

(declare-fun bs!473191 () Bool)

(assert (= bs!473191 (and b!2600846 b!2600845)))

(declare-datatypes ((B!2415 0))(
  ( (B!2416 (val!9675 Int)) )
))
(declare-datatypes ((List!30108 0))(
  ( (Nil!30008) (Cons!30008 (h!35428 B!2415) (t!213157 List!30108)) )
))
(declare-fun refL!9 () List!30108)

(declare-fun lambda!97306 () Int)

(declare-fun lambda!97305 () Int)

(declare-fun tail!4171 (List!30108) List!30108)

(assert (=> bs!473191 (= (= (tail!4171 refL!9) refL!9) (= lambda!97306 lambda!97305))))

(assert (=> b!2600846 true))

(declare-fun b!2600844 () Bool)

(declare-fun e!1641746 () Bool)

(declare-fun tp_is_empty!13695 () Bool)

(declare-fun tp!823977 () Bool)

(assert (=> b!2600844 (= e!1641746 (and tp_is_empty!13695 tp!823977))))

(declare-fun res!1095620 () Bool)

(declare-fun e!1641748 () Bool)

(assert (=> b!2600845 (=> (not res!1095620) (not e!1641748))))

(declare-fun l!3766 () List!30108)

(declare-fun forall!6187 (List!30108 Int) Bool)

(assert (=> b!2600845 (= res!1095620 (forall!6187 l!3766 lambda!97305))))

(assert (=> b!2600846 (= e!1641748 (not (forall!6187 l!3766 lambda!97306)))))

(declare-fun b!2600847 () Bool)

(declare-fun res!1095619 () Bool)

(assert (=> b!2600847 (=> (not res!1095619) (not e!1641748))))

(assert (=> b!2600847 (= res!1095619 (is-Nil!30008 l!3766))))

(declare-fun b!2600848 () Bool)

(declare-fun res!1095617 () Bool)

(assert (=> b!2600848 (=> (not res!1095617) (not e!1641748))))

(declare-fun refHd!9 () B!2415)

(declare-fun contains!5552 (List!30108 B!2415) Bool)

(assert (=> b!2600848 (= res!1095617 (not (contains!5552 l!3766 refHd!9)))))

(declare-fun b!2600849 () Bool)

(declare-fun e!1641747 () Bool)

(declare-fun tp!823978 () Bool)

(assert (=> b!2600849 (= e!1641747 (and tp_is_empty!13695 tp!823978))))

(declare-fun res!1095616 () Bool)

(assert (=> start!252802 (=> (not res!1095616) (not e!1641748))))

(declare-fun isEmpty!17161 (List!30108) Bool)

(assert (=> start!252802 (= res!1095616 (not (isEmpty!17161 refL!9)))))

(assert (=> start!252802 e!1641748))

(assert (=> start!252802 e!1641746))

(assert (=> start!252802 e!1641747))

(assert (=> start!252802 tp_is_empty!13695))

(declare-fun b!2600850 () Bool)

(declare-fun res!1095618 () Bool)

(assert (=> b!2600850 (=> (not res!1095618) (not e!1641748))))

(declare-fun head!5929 (List!30108) B!2415)

(assert (=> b!2600850 (= res!1095618 (= refHd!9 (head!5929 refL!9)))))

(assert (= (and start!252802 res!1095616) b!2600845))

(assert (= (and b!2600845 res!1095620) b!2600850))

(assert (= (and b!2600850 res!1095618) b!2600848))

(assert (= (and b!2600848 res!1095617) b!2600847))

(assert (= (and b!2600847 res!1095619) b!2600846))

(assert (= (and start!252802 (is-Cons!30008 refL!9)) b!2600844))

(assert (= (and start!252802 (is-Cons!30008 l!3766)) b!2600849))

(declare-fun m!2936035 () Bool)

(assert (=> b!2600848 m!2936035))

(declare-fun m!2936037 () Bool)

(assert (=> start!252802 m!2936037))

(declare-fun m!2936039 () Bool)

(assert (=> b!2600845 m!2936039))

(declare-fun m!2936041 () Bool)

(assert (=> b!2600850 m!2936041))

(declare-fun m!2936043 () Bool)

(assert (=> b!2600846 m!2936043))

(push 1)

(assert (not b!2600849))

(assert (not b!2600848))

(assert (not b!2600845))

(assert (not start!252802))

(assert tp_is_empty!13695)

(assert (not b!2600844))

(assert (not b!2600850))

(assert (not b!2600846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736826 () Bool)

(assert (=> d!736826 (= (tail!4171 refL!9) (t!213157 refL!9))))

(assert (=> b!2600846 d!736826))

(declare-fun d!736828 () Bool)

(declare-fun res!1095640 () Bool)

(declare-fun e!1641766 () Bool)

(assert (=> d!736828 (=> res!1095640 e!1641766)))

(assert (=> d!736828 (= res!1095640 (is-Nil!30008 l!3766))))

(assert (=> d!736828 (= (forall!6187 l!3766 lambda!97306) e!1641766)))

(declare-fun b!2600880 () Bool)

(declare-fun e!1641767 () Bool)

(assert (=> b!2600880 (= e!1641766 e!1641767)))

(declare-fun res!1095641 () Bool)

(assert (=> b!2600880 (=> (not res!1095641) (not e!1641767))))

(declare-fun dynLambda!12690 (Int B!2415) Bool)

(assert (=> b!2600880 (= res!1095641 (dynLambda!12690 lambda!97306 (h!35428 l!3766)))))

(declare-fun b!2600881 () Bool)

(assert (=> b!2600881 (= e!1641767 (forall!6187 (t!213157 l!3766) lambda!97306))))

(assert (= (and d!736828 (not res!1095640)) b!2600880))

(assert (= (and b!2600880 res!1095641) b!2600881))

(declare-fun b_lambda!77867 () Bool)

(assert (=> (not b_lambda!77867) (not b!2600880)))

(declare-fun m!2936057 () Bool)

(assert (=> b!2600880 m!2936057))

(declare-fun m!2936059 () Bool)

(assert (=> b!2600881 m!2936059))

(assert (=> b!2600846 d!736828))

(declare-fun d!736830 () Bool)

(assert (=> d!736830 (= (isEmpty!17161 refL!9) (is-Nil!30008 refL!9))))

(assert (=> start!252802 d!736830))

(declare-fun d!736832 () Bool)

(declare-fun lt!915328 () Bool)

(declare-fun content!4261 (List!30108) (Set B!2415))

(assert (=> d!736832 (= lt!915328 (set.member refHd!9 (content!4261 l!3766)))))

(declare-fun e!1641773 () Bool)

(assert (=> d!736832 (= lt!915328 e!1641773)))

(declare-fun res!1095647 () Bool)

(assert (=> d!736832 (=> (not res!1095647) (not e!1641773))))

(assert (=> d!736832 (= res!1095647 (is-Cons!30008 l!3766))))

(assert (=> d!736832 (= (contains!5552 l!3766 refHd!9) lt!915328)))

(declare-fun b!2600886 () Bool)

(declare-fun e!1641772 () Bool)

(assert (=> b!2600886 (= e!1641773 e!1641772)))

(declare-fun res!1095646 () Bool)

(assert (=> b!2600886 (=> res!1095646 e!1641772)))

(assert (=> b!2600886 (= res!1095646 (= (h!35428 l!3766) refHd!9))))

(declare-fun b!2600887 () Bool)

(assert (=> b!2600887 (= e!1641772 (contains!5552 (t!213157 l!3766) refHd!9))))

(assert (= (and d!736832 res!1095647) b!2600886))

(assert (= (and b!2600886 (not res!1095646)) b!2600887))

(declare-fun m!2936061 () Bool)

(assert (=> d!736832 m!2936061))

(declare-fun m!2936063 () Bool)

(assert (=> d!736832 m!2936063))

(declare-fun m!2936065 () Bool)

(assert (=> b!2600887 m!2936065))

(assert (=> b!2600848 d!736832))

(declare-fun d!736834 () Bool)

(assert (=> d!736834 (= (head!5929 refL!9) (h!35428 refL!9))))

(assert (=> b!2600850 d!736834))

(declare-fun d!736836 () Bool)

(declare-fun res!1095648 () Bool)

(declare-fun e!1641774 () Bool)

(assert (=> d!736836 (=> res!1095648 e!1641774)))

(assert (=> d!736836 (= res!1095648 (is-Nil!30008 l!3766))))

(assert (=> d!736836 (= (forall!6187 l!3766 lambda!97305) e!1641774)))

(declare-fun b!2600888 () Bool)

(declare-fun e!1641775 () Bool)

(assert (=> b!2600888 (= e!1641774 e!1641775)))

(declare-fun res!1095649 () Bool)

(assert (=> b!2600888 (=> (not res!1095649) (not e!1641775))))

(assert (=> b!2600888 (= res!1095649 (dynLambda!12690 lambda!97305 (h!35428 l!3766)))))

(declare-fun b!2600889 () Bool)

(assert (=> b!2600889 (= e!1641775 (forall!6187 (t!213157 l!3766) lambda!97305))))

(assert (= (and d!736836 (not res!1095648)) b!2600888))

(assert (= (and b!2600888 res!1095649) b!2600889))

(declare-fun b_lambda!77869 () Bool)

(assert (=> (not b_lambda!77869) (not b!2600888)))

(declare-fun m!2936067 () Bool)

(assert (=> b!2600888 m!2936067))

(declare-fun m!2936069 () Bool)

(assert (=> b!2600889 m!2936069))

(assert (=> b!2600845 d!736836))

(declare-fun b!2600894 () Bool)

(declare-fun e!1641778 () Bool)

(declare-fun tp!823987 () Bool)

(assert (=> b!2600894 (= e!1641778 (and tp_is_empty!13695 tp!823987))))

(assert (=> b!2600849 (= tp!823978 e!1641778)))

(assert (= (and b!2600849 (is-Cons!30008 (t!213157 l!3766))) b!2600894))

(declare-fun b!2600895 () Bool)

(declare-fun e!1641779 () Bool)

(declare-fun tp!823988 () Bool)

(assert (=> b!2600895 (= e!1641779 (and tp_is_empty!13695 tp!823988))))

(assert (=> b!2600844 (= tp!823977 e!1641779)))

(assert (= (and b!2600844 (is-Cons!30008 (t!213157 refL!9))) b!2600895))

(declare-fun b_lambda!77871 () Bool)

(assert (= b_lambda!77867 (or b!2600846 b_lambda!77871)))

(declare-fun bs!473193 () Bool)

(declare-fun d!736838 () Bool)

(assert (= bs!473193 (and d!736838 b!2600846)))

(assert (=> bs!473193 (= (dynLambda!12690 lambda!97306 (h!35428 l!3766)) (contains!5552 (tail!4171 refL!9) (h!35428 l!3766)))))

(declare-fun m!2936071 () Bool)

(assert (=> bs!473193 m!2936071))

(assert (=> b!2600880 d!736838))

(declare-fun b_lambda!77873 () Bool)

(assert (= b_lambda!77869 (or b!2600845 b_lambda!77873)))

(declare-fun bs!473194 () Bool)

(declare-fun d!736840 () Bool)

(assert (= bs!473194 (and d!736840 b!2600845)))

(assert (=> bs!473194 (= (dynLambda!12690 lambda!97305 (h!35428 l!3766)) (contains!5552 refL!9 (h!35428 l!3766)))))

(declare-fun m!2936073 () Bool)

(assert (=> bs!473194 m!2936073))

(assert (=> b!2600888 d!736840))

(push 1)

(assert (not b!2600887))

(assert (not b!2600895))

(assert (not d!736832))

(assert tp_is_empty!13695)

(assert (not bs!473194))

(assert (not b!2600889))

(assert (not bs!473193))

(assert (not b!2600881))

(assert (not b_lambda!77873))

(assert (not b!2600894))

(assert (not b_lambda!77871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

