; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75186 () Bool)

(assert start!75186)

(declare-fun res!601490 () Bool)

(declare-fun e!492946 () Bool)

(assert (=> start!75186 (=> (not res!601490) (not e!492946))))

(declare-datatypes ((B!1284 0))(
  ( (B!1285 (val!8948 Int)) )
))
(declare-datatypes ((tuple2!11916 0))(
  ( (tuple2!11917 (_1!5968 (_ BitVec 64)) (_2!5968 B!1284)) )
))
(declare-datatypes ((List!17748 0))(
  ( (Nil!17745) (Cons!17744 (h!18875 tuple2!11916) (t!25033 List!17748)) )
))
(declare-fun l!906 () List!17748)

(declare-fun isStrictlySorted!478 (List!17748) Bool)

(assert (=> start!75186 (= res!601490 (isStrictlySorted!478 l!906))))

(assert (=> start!75186 e!492946))

(declare-fun e!492947 () Bool)

(assert (=> start!75186 e!492947))

(declare-fun b!885630 () Bool)

(declare-fun ListPrimitiveSize!87 (List!17748) Int)

(assert (=> b!885630 (= e!492946 (< (ListPrimitiveSize!87 l!906) 0))))

(declare-fun b!885631 () Bool)

(declare-fun tp_is_empty!17795 () Bool)

(declare-fun tp!54318 () Bool)

(assert (=> b!885631 (= e!492947 (and tp_is_empty!17795 tp!54318))))

(assert (= (and start!75186 res!601490) b!885630))

(assert (= (and start!75186 (is-Cons!17744 l!906)) b!885631))

(declare-fun m!825805 () Bool)

(assert (=> start!75186 m!825805))

(declare-fun m!825807 () Bool)

(assert (=> b!885630 m!825807))

(push 1)

(assert (not b!885630))

(assert (not start!75186))

(assert (not b!885631))

(assert tp_is_empty!17795)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109369 () Bool)

(declare-fun lt!400995 () Int)

(assert (=> d!109369 (>= lt!400995 0)))

(declare-fun e!492959 () Int)

(assert (=> d!109369 (= lt!400995 e!492959)))

(declare-fun c!93277 () Bool)

(assert (=> d!109369 (= c!93277 (is-Nil!17745 l!906))))

(assert (=> d!109369 (= (ListPrimitiveSize!87 l!906) lt!400995)))

(declare-fun b!885648 () Bool)

(assert (=> b!885648 (= e!492959 0)))

(declare-fun b!885649 () Bool)

(assert (=> b!885649 (= e!492959 (+ 1 (ListPrimitiveSize!87 (t!25033 l!906))))))

(assert (= (and d!109369 c!93277) b!885648))

(assert (= (and d!109369 (not c!93277)) b!885649))

(declare-fun m!825813 () Bool)

(assert (=> b!885649 m!825813))

(assert (=> b!885630 d!109369))

(declare-fun d!109375 () Bool)

(declare-fun res!601507 () Bool)

(declare-fun e!492975 () Bool)

(assert (=> d!109375 (=> res!601507 e!492975)))

(assert (=> d!109375 (= res!601507 (or (is-Nil!17745 l!906) (is-Nil!17745 (t!25033 l!906))))))

(assert (=> d!109375 (= (isStrictlySorted!478 l!906) e!492975)))

(declare-fun b!885670 () Bool)

(declare-fun e!492976 () Bool)

(assert (=> b!885670 (= e!492975 e!492976)))

(declare-fun res!601508 () Bool)

(assert (=> b!885670 (=> (not res!601508) (not e!492976))))

(assert (=> b!885670 (= res!601508 (bvslt (_1!5968 (h!18875 l!906)) (_1!5968 (h!18875 (t!25033 l!906)))))))

(declare-fun b!885671 () Bool)

(assert (=> b!885671 (= e!492976 (isStrictlySorted!478 (t!25033 l!906)))))

(assert (= (and d!109375 (not res!601507)) b!885670))

(assert (= (and b!885670 res!601508) b!885671))

(declare-fun m!825819 () Bool)

(assert (=> b!885671 m!825819))

(assert (=> start!75186 d!109375))

(declare-fun b!885682 () Bool)

(declare-fun e!492983 () Bool)

(declare-fun tp!54327 () Bool)

(assert (=> b!885682 (= e!492983 (and tp_is_empty!17795 tp!54327))))

(assert (=> b!885631 (= tp!54318 e!492983)))

(assert (= (and b!885631 (is-Cons!17744 (t!25033 l!906))) b!885682))

(push 1)

