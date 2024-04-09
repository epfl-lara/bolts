; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75212 () Bool)

(assert start!75212)

(declare-fun b!885760 () Bool)

(declare-fun e!493039 () Bool)

(declare-fun tp_is_empty!17803 () Bool)

(declare-fun tp!54348 () Bool)

(assert (=> b!885760 (= e!493039 (and tp_is_empty!17803 tp!54348))))

(declare-fun b!885759 () Bool)

(declare-fun e!493040 () Bool)

(declare-datatypes ((B!1292 0))(
  ( (B!1293 (val!8952 Int)) )
))
(declare-datatypes ((tuple2!11924 0))(
  ( (tuple2!11925 (_1!5972 (_ BitVec 64)) (_2!5972 B!1292)) )
))
(declare-datatypes ((List!17752 0))(
  ( (Nil!17749) (Cons!17748 (h!18879 tuple2!11924) (t!25037 List!17752)) )
))
(declare-fun l!906 () List!17752)

(declare-fun ListPrimitiveSize!88 (List!17752) Int)

(assert (=> b!885759 (= e!493040 (>= (ListPrimitiveSize!88 (t!25037 l!906)) (ListPrimitiveSize!88 l!906)))))

(declare-fun b!885757 () Bool)

(declare-fun res!601559 () Bool)

(assert (=> b!885757 (=> (not res!601559) (not e!493040))))

(declare-fun key1!49 () (_ BitVec 64))

(assert (=> b!885757 (= res!601559 (and (is-Cons!17748 l!906) (bvslt (_1!5972 (h!18879 l!906)) key1!49)))))

(declare-fun b!885758 () Bool)

(declare-fun res!601558 () Bool)

(assert (=> b!885758 (=> (not res!601558) (not e!493040))))

(declare-fun isStrictlySorted!482 (List!17752) Bool)

(assert (=> b!885758 (= res!601558 (isStrictlySorted!482 (t!25037 l!906)))))

(declare-fun res!601557 () Bool)

(assert (=> start!75212 (=> (not res!601557) (not e!493040))))

(assert (=> start!75212 (= res!601557 (isStrictlySorted!482 l!906))))

(assert (=> start!75212 e!493040))

(assert (=> start!75212 e!493039))

(assert (=> start!75212 true))

(assert (= (and start!75212 res!601557) b!885757))

(assert (= (and b!885757 res!601559) b!885758))

(assert (= (and b!885758 res!601558) b!885759))

(assert (= (and start!75212 (is-Cons!17748 l!906)) b!885760))

(declare-fun m!825839 () Bool)

(assert (=> b!885759 m!825839))

(declare-fun m!825841 () Bool)

(assert (=> b!885759 m!825841))

(declare-fun m!825843 () Bool)

(assert (=> b!885758 m!825843))

(declare-fun m!825845 () Bool)

(assert (=> start!75212 m!825845))

(push 1)

(assert (not b!885759))

(assert (not start!75212))

(assert (not b!885758))

(assert (not b!885760))

(assert tp_is_empty!17803)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109395 () Bool)

(declare-fun res!601588 () Bool)

(declare-fun e!493065 () Bool)

(assert (=> d!109395 (=> res!601588 e!493065)))

(assert (=> d!109395 (= res!601588 (or (is-Nil!17749 l!906) (is-Nil!17749 (t!25037 l!906))))))

(assert (=> d!109395 (= (isStrictlySorted!482 l!906) e!493065)))

(declare-fun b!885799 () Bool)

(declare-fun e!493066 () Bool)

(assert (=> b!885799 (= e!493065 e!493066)))

(declare-fun res!601589 () Bool)

(assert (=> b!885799 (=> (not res!601589) (not e!493066))))

(assert (=> b!885799 (= res!601589 (bvslt (_1!5972 (h!18879 l!906)) (_1!5972 (h!18879 (t!25037 l!906)))))))

(declare-fun b!885800 () Bool)

(assert (=> b!885800 (= e!493066 (isStrictlySorted!482 (t!25037 l!906)))))

(assert (= (and d!109395 (not res!601588)) b!885799))

(assert (= (and b!885799 res!601589) b!885800))

(assert (=> b!885800 m!825843))

(assert (=> start!75212 d!109395))

(declare-fun d!109399 () Bool)

(declare-fun res!601590 () Bool)

(declare-fun e!493068 () Bool)

(assert (=> d!109399 (=> res!601590 e!493068)))

(assert (=> d!109399 (= res!601590 (or (is-Nil!17749 (t!25037 l!906)) (is-Nil!17749 (t!25037 (t!25037 l!906)))))))

(assert (=> d!109399 (= (isStrictlySorted!482 (t!25037 l!906)) e!493068)))

(declare-fun b!885803 () Bool)

(declare-fun e!493069 () Bool)

(assert (=> b!885803 (= e!493068 e!493069)))

(declare-fun res!601591 () Bool)

(assert (=> b!885803 (=> (not res!601591) (not e!493069))))

(assert (=> b!885803 (= res!601591 (bvslt (_1!5972 (h!18879 (t!25037 l!906))) (_1!5972 (h!18879 (t!25037 (t!25037 l!906))))))))

(declare-fun b!885804 () Bool)

(assert (=> b!885804 (= e!493069 (isStrictlySorted!482 (t!25037 (t!25037 l!906))))))

(assert (= (and d!109399 (not res!601590)) b!885803))

(assert (= (and b!885803 res!601591) b!885804))

(declare-fun m!825867 () Bool)

(assert (=> b!885804 m!825867))

(assert (=> b!885758 d!109399))

(declare-fun d!109405 () Bool)

(declare-fun lt!401005 () Int)

(assert (=> d!109405 (>= lt!401005 0)))

(declare-fun e!493082 () Int)

(assert (=> d!109405 (= lt!401005 e!493082)))

(declare-fun c!93287 () Bool)

(assert (=> d!109405 (= c!93287 (is-Nil!17749 (t!25037 l!906)))))

(assert (=> d!109405 (= (ListPrimitiveSize!88 (t!25037 l!906)) lt!401005)))

(declare-fun b!885822 () Bool)

(assert (=> b!885822 (= e!493082 0)))

(declare-fun b!885823 () Bool)

(assert (=> b!885823 (= e!493082 (+ 1 (ListPrimitiveSize!88 (t!25037 (t!25037 l!906)))))))

(assert (= (and d!109405 c!93287) b!885822))

(assert (= (and d!109405 (not c!93287)) b!885823))

(declare-fun m!825869 () Bool)

(assert (=> b!885823 m!825869))

(assert (=> b!885759 d!109405))

(declare-fun d!109409 () Bool)

(declare-fun lt!401006 () Int)

(assert (=> d!109409 (>= lt!401006 0)))

(declare-fun e!493083 () Int)

(assert (=> d!109409 (= lt!401006 e!493083)))

(declare-fun c!93288 () Bool)

(assert (=> d!109409 (= c!93288 (is-Nil!17749 l!906))))

(assert (=> d!109409 (= (ListPrimitiveSize!88 l!906) lt!401006)))

(declare-fun b!885824 () Bool)

(assert (=> b!885824 (= e!493083 0)))

(declare-fun b!885825 () Bool)

(assert (=> b!885825 (= e!493083 (+ 1 (ListPrimitiveSize!88 (t!25037 l!906))))))

(assert (= (and d!109409 c!93288) b!885824))

(assert (= (and d!109409 (not c!93288)) b!885825))

(assert (=> b!885825 m!825839))

(assert (=> b!885759 d!109409))

(declare-fun b!885834 () Bool)

(declare-fun e!493090 () Bool)

(declare-fun tp!54360 () Bool)

(assert (=> b!885834 (= e!493090 (and tp_is_empty!17803 tp!54360))))

(assert (=> b!885760 (= tp!54348 e!493090)))

(assert (= (and b!885760 (is-Cons!17748 (t!25037 l!906))) b!885834))

(push 1)

