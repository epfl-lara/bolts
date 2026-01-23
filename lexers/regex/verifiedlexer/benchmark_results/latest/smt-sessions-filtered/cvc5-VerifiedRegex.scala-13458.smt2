; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727568 () Bool)

(assert start!727568)

(declare-fun b_free!134371 () Bool)

(declare-fun b_next!135161 () Bool)

(assert (=> start!727568 (= b_free!134371 (not b_next!135161))))

(declare-fun tp!2179846 () Bool)

(declare-fun b_and!352035 () Bool)

(assert (=> start!727568 (= tp!2179846 b_and!352035)))

(declare-fun b!7509828 () Bool)

(declare-fun e!4478087 () Bool)

(declare-fun tp_is_empty!49799 () Bool)

(declare-fun tp!2179845 () Bool)

(assert (=> b!7509828 (= e!4478087 (and tp_is_empty!49799 tp!2179845))))

(declare-fun b!7509829 () Bool)

(declare-fun res!3012885 () Bool)

(declare-fun e!4478088 () Bool)

(assert (=> b!7509829 (=> (not res!3012885) (not e!4478088))))

(declare-fun e!4478089 () Bool)

(assert (=> b!7509829 (= res!3012885 e!4478089)))

(declare-fun res!3012886 () Bool)

(assert (=> b!7509829 (=> res!3012886 e!4478089)))

(declare-datatypes ((B!3907 0))(
  ( (B!3908 (val!30313 Int)) )
))
(declare-datatypes ((List!72607 0))(
  ( (Nil!72483) (Cons!72483 (h!78931 B!3907) (t!387206 List!72607)) )
))
(declare-fun l!2942 () List!72607)

(assert (=> b!7509829 (= res!3012886 (not (is-Cons!72483 l!2942)))))

(declare-fun b!7509830 () Bool)

(declare-fun p!1842 () Int)

(declare-fun dynLambda!29817 (Int B!3907) Bool)

(assert (=> b!7509830 (= e!4478089 (not (dynLambda!29817 p!1842 (h!78931 l!2942))))))

(declare-fun b!7509831 () Bool)

(declare-fun res!3012884 () Bool)

(assert (=> b!7509831 (=> (not res!3012884) (not e!4478088))))

(assert (=> b!7509831 (= res!3012884 (not (is-Cons!72483 l!2942)))))

(declare-fun b!7509832 () Bool)

(assert (=> b!7509832 (= e!4478088 (not (not (= l!2942 Nil!72483))))))

(assert (=> b!7509832 false))

(declare-fun res!3012887 () Bool)

(assert (=> start!727568 (=> (not res!3012887) (not e!4478088))))

(declare-fun exists!4918 (List!72607 Int) Bool)

(assert (=> start!727568 (= res!3012887 (exists!4918 l!2942 p!1842))))

(assert (=> start!727568 e!4478088))

(assert (=> start!727568 e!4478087))

(assert (=> start!727568 tp!2179846))

(assert (= (and start!727568 res!3012887) b!7509829))

(assert (= (and b!7509829 (not res!3012886)) b!7509830))

(assert (= (and b!7509829 res!3012885) b!7509831))

(assert (= (and b!7509831 res!3012884) b!7509832))

(assert (= (and start!727568 (is-Cons!72483 l!2942)) b!7509828))

(declare-fun b_lambda!288041 () Bool)

(assert (=> (not b_lambda!288041) (not b!7509830)))

(declare-fun t!387205 () Bool)

(declare-fun tb!262479 () Bool)

(assert (=> (and start!727568 (= p!1842 p!1842) t!387205) tb!262479))

(declare-fun result!356250 () Bool)

(assert (=> tb!262479 (= result!356250 true)))

(assert (=> b!7509830 t!387205))

(declare-fun b_and!352037 () Bool)

(assert (= b_and!352035 (and (=> t!387205 result!356250) b_and!352037)))

(declare-fun m!8093850 () Bool)

(assert (=> b!7509830 m!8093850))

(declare-fun m!8093852 () Bool)

(assert (=> start!727568 m!8093852))

(push 1)

(assert (not b_lambda!288041))

(assert (not b!7509828))

(assert b_and!352037)

(assert (not start!727568))

(assert tp_is_empty!49799)

(assert (not b_next!135161))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352037)

(assert (not b_next!135161))

(check-sat)

(pop 1)

