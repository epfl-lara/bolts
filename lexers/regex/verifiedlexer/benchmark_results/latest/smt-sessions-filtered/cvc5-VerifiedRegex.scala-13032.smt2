; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714436 () Bool)

(assert start!714436)

(declare-fun b_free!134303 () Bool)

(declare-fun b_next!135093 () Bool)

(assert (=> start!714436 (= b_free!134303 (not b_next!135093))))

(declare-fun tp!2079729 () Bool)

(declare-fun b_and!351863 () Bool)

(assert (=> start!714436 (= tp!2079729 b_and!351863)))

(declare-fun res!2959595 () Bool)

(declare-fun e!4383880 () Bool)

(assert (=> start!714436 (=> (not res!2959595) (not e!4383880))))

(declare-datatypes ((B!3835 0))(
  ( (B!3836 (val!29449 Int)) )
))
(declare-datatypes ((List!71448 0))(
  ( (Nil!71324) (Cons!71324 (h!77772 B!3835) (t!385829 List!71448)) )
))
(declare-fun l!3043 () List!71448)

(declare-fun e!9239 () B!3835)

(declare-fun contains!20831 (List!71448 B!3835) Bool)

(assert (=> start!714436 (= res!2959595 (contains!20831 l!3043 e!9239))))

(assert (=> start!714436 e!4383880))

(declare-fun e!4383881 () Bool)

(assert (=> start!714436 e!4383881))

(declare-fun tp_is_empty!48149 () Bool)

(assert (=> start!714436 tp_is_empty!48149))

(assert (=> start!714436 tp!2079729))

(declare-fun b!7321886 () Bool)

(declare-fun res!2959596 () Bool)

(assert (=> b!7321886 (=> (not res!2959596) (not e!4383880))))

(declare-fun p!1874 () Int)

(declare-fun dynLambda!29383 (Int B!3835) Bool)

(assert (=> b!7321886 (= res!2959596 (dynLambda!29383 p!1874 e!9239))))

(declare-fun b!7321887 () Bool)

(assert (=> b!7321887 (= e!4383880 (and (or (not (is-Cons!71324 l!3043)) (not (= (h!77772 l!3043) e!9239))) (not (is-Cons!71324 l!3043))))))

(declare-fun b!7321888 () Bool)

(declare-fun tp!2079728 () Bool)

(assert (=> b!7321888 (= e!4383881 (and tp_is_empty!48149 tp!2079728))))

(assert (= (and start!714436 res!2959595) b!7321886))

(assert (= (and b!7321886 res!2959596) b!7321887))

(assert (= (and start!714436 (is-Cons!71324 l!3043)) b!7321888))

(declare-fun b_lambda!283127 () Bool)

(assert (=> (not b_lambda!283127) (not b!7321886)))

(declare-fun t!385828 () Bool)

(declare-fun tb!262391 () Bool)

(assert (=> (and start!714436 (= p!1874 p!1874) t!385828) tb!262391))

(declare-fun result!353606 () Bool)

(assert (=> tb!262391 (= result!353606 true)))

(assert (=> b!7321886 t!385828))

(declare-fun b_and!351865 () Bool)

(assert (= b_and!351863 (and (=> t!385828 result!353606) b_and!351865)))

(declare-fun m!7987574 () Bool)

(assert (=> start!714436 m!7987574))

(declare-fun m!7987576 () Bool)

(assert (=> b!7321886 m!7987576))

(push 1)

(assert tp_is_empty!48149)

(assert (not b_lambda!283127))

(assert (not b!7321888))

(assert (not start!714436))

(assert b_and!351865)

(assert (not b_next!135093))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351865)

(assert (not b_next!135093))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!283131 () Bool)

(assert (= b_lambda!283127 (or (and start!714436 b_free!134303) b_lambda!283131)))

(push 1)

(assert tp_is_empty!48149)

(assert (not b_lambda!283131))

(assert (not b!7321888))

(assert (not start!714436))

(assert b_and!351865)

(assert (not b_next!135093))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351865)

(assert (not b_next!135093))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273765 () Bool)

(declare-fun lt!2604815 () Bool)

(declare-fun content!14917 (List!71448) (Set B!3835))

(assert (=> d!2273765 (= lt!2604815 (set.member e!9239 (content!14917 l!3043)))))

(declare-fun e!4383893 () Bool)

(assert (=> d!2273765 (= lt!2604815 e!4383893)))

(declare-fun res!2959608 () Bool)

(assert (=> d!2273765 (=> (not res!2959608) (not e!4383893))))

(assert (=> d!2273765 (= res!2959608 (is-Cons!71324 l!3043))))

(assert (=> d!2273765 (= (contains!20831 l!3043 e!9239) lt!2604815)))

(declare-fun b!7321902 () Bool)

(declare-fun e!4383892 () Bool)

(assert (=> b!7321902 (= e!4383893 e!4383892)))

(declare-fun res!2959607 () Bool)

(assert (=> b!7321902 (=> res!2959607 e!4383892)))

(assert (=> b!7321902 (= res!2959607 (= (h!77772 l!3043) e!9239))))

(declare-fun b!7321903 () Bool)

(assert (=> b!7321903 (= e!4383892 (contains!20831 (t!385829 l!3043) e!9239))))

(assert (= (and d!2273765 res!2959608) b!7321902))

(assert (= (and b!7321902 (not res!2959607)) b!7321903))

(declare-fun m!7987582 () Bool)

(assert (=> d!2273765 m!7987582))

(declare-fun m!7987584 () Bool)

(assert (=> d!2273765 m!7987584))

(declare-fun m!7987586 () Bool)

(assert (=> b!7321903 m!7987586))

(assert (=> start!714436 d!2273765))

(declare-fun b!7321908 () Bool)

(declare-fun e!4383896 () Bool)

(declare-fun tp!2079738 () Bool)

(assert (=> b!7321908 (= e!4383896 (and tp_is_empty!48149 tp!2079738))))

(assert (=> b!7321888 (= tp!2079728 e!4383896)))

(assert (= (and b!7321888 (is-Cons!71324 (t!385829 l!3043))) b!7321908))

(push 1)

(assert tp_is_empty!48149)

(assert (not b_lambda!283131))

(assert (not b!7321903))

(assert (not b!7321908))

(assert (not d!2273765))

(assert b_and!351865)

(assert (not b_next!135093))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351865)

(assert (not b_next!135093))

(check-sat)

(pop 1)

