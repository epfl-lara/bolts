; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133256 () Bool)

(assert start!133256)

(declare-fun b!1558268 () Bool)

(declare-fun res!1065852 () Bool)

(declare-fun e!868092 () Bool)

(assert (=> b!1558268 (=> (not res!1065852) (not e!868092))))

(declare-datatypes ((B!2436 0))(
  ( (B!2437 (val!19304 Int)) )
))
(declare-datatypes ((tuple2!25124 0))(
  ( (tuple2!25125 (_1!12572 (_ BitVec 64)) (_2!12572 B!2436)) )
))
(declare-datatypes ((List!36484 0))(
  ( (Nil!36481) (Cons!36480 (h!37927 tuple2!25124) (t!51218 List!36484)) )
))
(declare-fun l!1292 () List!36484)

(declare-fun isStrictlySorted!975 (List!36484) Bool)

(assert (=> b!1558268 (= res!1065852 (isStrictlySorted!975 (t!51218 l!1292)))))

(declare-fun b!1558269 () Bool)

(declare-fun e!868091 () Bool)

(declare-fun tp_is_empty!38441 () Bool)

(declare-fun tp!112645 () Bool)

(assert (=> b!1558269 (= e!868091 (and tp_is_empty!38441 tp!112645))))

(declare-fun b!1558270 () Bool)

(declare-fun res!1065850 () Bool)

(assert (=> b!1558270 (=> (not res!1065850) (not e!868092))))

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun newKey!135 () (_ BitVec 64))

(assert (=> b!1558270 (= res!1065850 (and (not (= otherKey!62 newKey!135)) (is-Cons!36480 l!1292) (not (= (_1!12572 (h!37927 l!1292)) otherKey!62))))))

(declare-fun b!1558271 () Bool)

(declare-fun res!1065849 () Bool)

(assert (=> b!1558271 (=> (not res!1065849) (not e!868092))))

(declare-fun containsKey!839 (List!36484 (_ BitVec 64)) Bool)

(assert (=> b!1558271 (= res!1065849 (containsKey!839 (t!51218 l!1292) otherKey!62))))

(declare-fun res!1065848 () Bool)

(assert (=> start!133256 (=> (not res!1065848) (not e!868092))))

(assert (=> start!133256 (= res!1065848 (isStrictlySorted!975 l!1292))))

(assert (=> start!133256 e!868092))

(assert (=> start!133256 e!868091))

(assert (=> start!133256 true))

(declare-fun b!1558272 () Bool)

(declare-fun ListPrimitiveSize!186 (List!36484) Int)

(assert (=> b!1558272 (= e!868092 (>= (ListPrimitiveSize!186 (t!51218 l!1292)) (ListPrimitiveSize!186 l!1292)))))

(declare-fun b!1558273 () Bool)

(declare-fun res!1065851 () Bool)

(assert (=> b!1558273 (=> (not res!1065851) (not e!868092))))

(assert (=> b!1558273 (= res!1065851 (containsKey!839 l!1292 otherKey!62))))

(assert (= (and start!133256 res!1065848) b!1558273))

(assert (= (and b!1558273 res!1065851) b!1558270))

(assert (= (and b!1558270 res!1065850) b!1558268))

(assert (= (and b!1558268 res!1065852) b!1558271))

(assert (= (and b!1558271 res!1065849) b!1558272))

(assert (= (and start!133256 (is-Cons!36480 l!1292)) b!1558269))

(declare-fun m!1434987 () Bool)

(assert (=> b!1558268 m!1434987))

(declare-fun m!1434989 () Bool)

(assert (=> b!1558273 m!1434989))

(declare-fun m!1434991 () Bool)

(assert (=> b!1558272 m!1434991))

(declare-fun m!1434993 () Bool)

(assert (=> b!1558272 m!1434993))

(declare-fun m!1434995 () Bool)

(assert (=> b!1558271 m!1434995))

(declare-fun m!1434997 () Bool)

(assert (=> start!133256 m!1434997))

(push 1)

(assert (not b!1558273))

(assert (not start!133256))

(assert (not b!1558272))

(assert tp_is_empty!38441)

(assert (not b!1558268))

(assert (not b!1558271))

(assert (not b!1558269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162561 () Bool)

(declare-fun res!1065863 () Bool)

(declare-fun e!868105 () Bool)

(assert (=> d!162561 (=> res!1065863 e!868105)))

(assert (=> d!162561 (= res!1065863 (or (is-Nil!36481 (t!51218 l!1292)) (is-Nil!36481 (t!51218 (t!51218 l!1292)))))))

(assert (=> d!162561 (= (isStrictlySorted!975 (t!51218 l!1292)) e!868105)))

(declare-fun b!1558288 () Bool)

(declare-fun e!868106 () Bool)

(assert (=> b!1558288 (= e!868105 e!868106)))

(declare-fun res!1065864 () Bool)

(assert (=> b!1558288 (=> (not res!1065864) (not e!868106))))

(assert (=> b!1558288 (= res!1065864 (bvslt (_1!12572 (h!37927 (t!51218 l!1292))) (_1!12572 (h!37927 (t!51218 (t!51218 l!1292))))))))

(declare-fun b!1558289 () Bool)

(assert (=> b!1558289 (= e!868106 (isStrictlySorted!975 (t!51218 (t!51218 l!1292))))))

(assert (= (and d!162561 (not res!1065863)) b!1558288))

(assert (= (and b!1558288 res!1065864) b!1558289))

(declare-fun m!1435001 () Bool)

(assert (=> b!1558289 m!1435001))

(assert (=> b!1558268 d!162561))

(declare-fun d!162567 () Bool)

(declare-fun res!1065875 () Bool)

(declare-fun e!868123 () Bool)

(assert (=> d!162567 (=> res!1065875 e!868123)))

(assert (=> d!162567 (= res!1065875 (and (is-Cons!36480 l!1292) (= (_1!12572 (h!37927 l!1292)) otherKey!62)))))

(assert (=> d!162567 (= (containsKey!839 l!1292 otherKey!62) e!868123)))

(declare-fun b!1558312 () Bool)

(declare-fun e!868124 () Bool)

(assert (=> b!1558312 (= e!868123 e!868124)))

(declare-fun res!1065876 () Bool)

(assert (=> b!1558312 (=> (not res!1065876) (not e!868124))))

(assert (=> b!1558312 (= res!1065876 (and (or (not (is-Cons!36480 l!1292)) (bvsle (_1!12572 (h!37927 l!1292)) otherKey!62)) (is-Cons!36480 l!1292) (bvslt (_1!12572 (h!37927 l!1292)) otherKey!62)))))

(declare-fun b!1558313 () Bool)

(assert (=> b!1558313 (= e!868124 (containsKey!839 (t!51218 l!1292) otherKey!62))))

(assert (= (and d!162567 (not res!1065875)) b!1558312))

(assert (= (and b!1558312 res!1065876) b!1558313))

(assert (=> b!1558313 m!1434995))

(assert (=> b!1558273 d!162567))

(declare-fun d!162579 () Bool)

(declare-fun lt!670705 () Int)

(assert (=> d!162579 (>= lt!670705 0)))

(declare-fun e!868139 () Int)

(assert (=> d!162579 (= lt!670705 e!868139)))

(declare-fun c!144037 () Bool)

(assert (=> d!162579 (= c!144037 (is-Nil!36481 (t!51218 l!1292)))))

(assert (=> d!162579 (= (ListPrimitiveSize!186 (t!51218 l!1292)) lt!670705)))

(declare-fun b!1558328 () Bool)

(assert (=> b!1558328 (= e!868139 0)))

(declare-fun b!1558329 () Bool)

(assert (=> b!1558329 (= e!868139 (+ 1 (ListPrimitiveSize!186 (t!51218 (t!51218 l!1292)))))))

(assert (= (and d!162579 c!144037) b!1558328))

(assert (= (and d!162579 (not c!144037)) b!1558329))

(declare-fun m!1435011 () Bool)

(assert (=> b!1558329 m!1435011))

(assert (=> b!1558272 d!162579))

(declare-fun d!162585 () Bool)

(declare-fun lt!670706 () Int)

(assert (=> d!162585 (>= lt!670706 0)))

(declare-fun e!868144 () Int)

(assert (=> d!162585 (= lt!670706 e!868144)))

(declare-fun c!144038 () Bool)

(assert (=> d!162585 (= c!144038 (is-Nil!36481 l!1292))))

(assert (=> d!162585 (= (ListPrimitiveSize!186 l!1292) lt!670706)))

(declare-fun b!1558338 () Bool)

(assert (=> b!1558338 (= e!868144 0)))

(declare-fun b!1558339 () Bool)

(assert (=> b!1558339 (= e!868144 (+ 1 (ListPrimitiveSize!186 (t!51218 l!1292))))))

(assert (= (and d!162585 c!144038) b!1558338))

(assert (= (and d!162585 (not c!144038)) b!1558339))

(assert (=> b!1558339 m!1434991))

(assert (=> b!1558272 d!162585))

(declare-fun d!162587 () Bool)

(declare-fun res!1065891 () Bool)

(declare-fun e!868145 () Bool)

(assert (=> d!162587 (=> res!1065891 e!868145)))

(assert (=> d!162587 (= res!1065891 (or (is-Nil!36481 l!1292) (is-Nil!36481 (t!51218 l!1292))))))

(assert (=> d!162587 (= (isStrictlySorted!975 l!1292) e!868145)))

(declare-fun b!1558340 () Bool)

(declare-fun e!868146 () Bool)

(assert (=> b!1558340 (= e!868145 e!868146)))

(declare-fun res!1065892 () Bool)

(assert (=> b!1558340 (=> (not res!1065892) (not e!868146))))

(assert (=> b!1558340 (= res!1065892 (bvslt (_1!12572 (h!37927 l!1292)) (_1!12572 (h!37927 (t!51218 l!1292)))))))

(declare-fun b!1558341 () Bool)

(assert (=> b!1558341 (= e!868146 (isStrictlySorted!975 (t!51218 l!1292)))))

(assert (= (and d!162587 (not res!1065891)) b!1558340))

(assert (= (and b!1558340 res!1065892) b!1558341))

(assert (=> b!1558341 m!1434987))

(assert (=> start!133256 d!162587))

(declare-fun d!162589 () Bool)

(declare-fun res!1065893 () Bool)

(declare-fun e!868148 () Bool)

(assert (=> d!162589 (=> res!1065893 e!868148)))

(assert (=> d!162589 (= res!1065893 (and (is-Cons!36480 (t!51218 l!1292)) (= (_1!12572 (h!37927 (t!51218 l!1292))) otherKey!62)))))

(assert (=> d!162589 (= (containsKey!839 (t!51218 l!1292) otherKey!62) e!868148)))

(declare-fun b!1558343 () Bool)

(declare-fun e!868149 () Bool)

(assert (=> b!1558343 (= e!868148 e!868149)))

(declare-fun res!1065894 () Bool)

(assert (=> b!1558343 (=> (not res!1065894) (not e!868149))))

(assert (=> b!1558343 (= res!1065894 (and (or (not (is-Cons!36480 (t!51218 l!1292))) (bvsle (_1!12572 (h!37927 (t!51218 l!1292))) otherKey!62)) (is-Cons!36480 (t!51218 l!1292)) (bvslt (_1!12572 (h!37927 (t!51218 l!1292))) otherKey!62)))))

(declare-fun b!1558344 () Bool)

(assert (=> b!1558344 (= e!868149 (containsKey!839 (t!51218 (t!51218 l!1292)) otherKey!62))))

(assert (= (and d!162589 (not res!1065893)) b!1558343))

(assert (= (and b!1558343 res!1065894) b!1558344))

(declare-fun m!1435013 () Bool)

