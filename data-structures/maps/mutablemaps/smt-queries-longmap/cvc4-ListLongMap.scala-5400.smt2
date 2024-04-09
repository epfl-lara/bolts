; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72110 () Bool)

(assert start!72110)

(declare-fun b!836525 () Bool)

(declare-fun e!466783 () Bool)

(declare-fun tp_is_empty!15275 () Bool)

(declare-fun tp!47486 () Bool)

(assert (=> b!836525 (= e!466783 (and tp_is_empty!15275 tp!47486))))

(declare-fun b!836524 () Bool)

(declare-fun e!466782 () Bool)

(declare-datatypes ((B!1206 0))(
  ( (B!1207 (val!7685 Int)) )
))
(declare-datatypes ((tuple2!10248 0))(
  ( (tuple2!10249 (_1!5134 (_ BitVec 64)) (_2!5134 B!1206)) )
))
(declare-datatypes ((List!16049 0))(
  ( (Nil!16046) (Cons!16045 (h!17176 tuple2!10248) (t!22428 List!16049)) )
))
(declare-fun l!390 () List!16049)

(declare-datatypes ((List!16050 0))(
  ( (Nil!16047) (Cons!16046 (h!17177 (_ BitVec 64)) (t!22429 List!16050)) )
))
(declare-fun length!27 (List!16050) Int)

(declare-fun length!28 (List!16049) Int)

(assert (=> b!836524 (= e!466782 (not (= (length!27 Nil!16047) (length!28 l!390))))))

(declare-fun b!836523 () Bool)

(declare-fun e!466784 () Bool)

(assert (=> b!836523 (= e!466784 e!466782)))

(declare-fun res!569192 () Bool)

(assert (=> b!836523 (=> res!569192 e!466782)))

(assert (=> b!836523 (= res!569192 false)))

(declare-fun b!836522 () Bool)

(declare-fun res!569193 () Bool)

(assert (=> b!836522 (=> (not res!569193) (not e!466784))))

(assert (=> b!836522 (= res!569193 (not (is-Cons!16045 l!390)))))

(declare-fun res!569194 () Bool)

(assert (=> start!72110 (=> (not res!569194) (not e!466784))))

(declare-fun isStrictlySorted!456 (List!16049) Bool)

(assert (=> start!72110 (= res!569194 (isStrictlySorted!456 l!390))))

(assert (=> start!72110 e!466784))

(assert (=> start!72110 e!466783))

(assert (= (and start!72110 res!569194) b!836522))

(assert (= (and b!836522 res!569193) b!836523))

(assert (= (and b!836523 (not res!569192)) b!836524))

(assert (= (and start!72110 (is-Cons!16045 l!390)) b!836525))

(declare-fun m!781813 () Bool)

(assert (=> b!836524 m!781813))

(declare-fun m!781815 () Bool)

(assert (=> b!836524 m!781815))

(declare-fun m!781817 () Bool)

(assert (=> start!72110 m!781817))

(push 1)

(assert (not start!72110))

(assert (not b!836524))

(assert (not b!836525))

(assert tp_is_empty!15275)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107599 () Bool)

(declare-fun res!569211 () Bool)

(declare-fun e!466801 () Bool)

(assert (=> d!107599 (=> res!569211 e!466801)))

(assert (=> d!107599 (= res!569211 (or (is-Nil!16046 l!390) (is-Nil!16046 (t!22428 l!390))))))

(assert (=> d!107599 (= (isStrictlySorted!456 l!390) e!466801)))

(declare-fun b!836542 () Bool)

(declare-fun e!466802 () Bool)

(assert (=> b!836542 (= e!466801 e!466802)))

(declare-fun res!569212 () Bool)

(assert (=> b!836542 (=> (not res!569212) (not e!466802))))

(assert (=> b!836542 (= res!569212 (bvslt (_1!5134 (h!17176 l!390)) (_1!5134 (h!17176 (t!22428 l!390)))))))

(declare-fun b!836543 () Bool)

(assert (=> b!836543 (= e!466802 (isStrictlySorted!456 (t!22428 l!390)))))

(assert (= (and d!107599 (not res!569211)) b!836542))

(assert (= (and b!836542 res!569212) b!836543))

(declare-fun m!781829 () Bool)

(assert (=> b!836543 m!781829))

(assert (=> start!72110 d!107599))

(declare-fun d!107609 () Bool)

(declare-fun size!22884 (List!16050) Int)

(assert (=> d!107609 (= (length!27 Nil!16047) (size!22884 Nil!16047))))

(declare-fun bs!23496 () Bool)

(assert (= bs!23496 d!107609))

(declare-fun m!781833 () Bool)

(assert (=> bs!23496 m!781833))

(assert (=> b!836524 d!107609))

(declare-fun d!107611 () Bool)

(declare-fun size!22885 (List!16049) Int)

(assert (=> d!107611 (= (length!28 l!390) (size!22885 l!390))))

(declare-fun bs!23497 () Bool)

(assert (= bs!23497 d!107611))

(declare-fun m!781835 () Bool)

(assert (=> bs!23497 m!781835))

(assert (=> b!836524 d!107611))

(declare-fun b!836558 () Bool)

(declare-fun e!466811 () Bool)

(declare-fun tp!47495 () Bool)

(assert (=> b!836558 (= e!466811 (and tp_is_empty!15275 tp!47495))))

(assert (=> b!836525 (= tp!47486 e!466811)))

(assert (= (and b!836525 (is-Cons!16045 (t!22428 l!390))) b!836558))

(push 1)

(assert (not b!836558))

(assert (not b!836543))

(assert (not d!107611))

(assert tp_is_empty!15275)

(assert (not d!107609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107619 () Bool)

(declare-fun lt!380399 () Int)

(assert (=> d!107619 (>= lt!380399 0)))

(declare-fun e!466825 () Int)

(assert (=> d!107619 (= lt!380399 e!466825)))

(declare-fun c!91005 () Bool)

(assert (=> d!107619 (= c!91005 (is-Nil!16047 Nil!16047))))

(assert (=> d!107619 (= (size!22884 Nil!16047) lt!380399)))

(declare-fun b!836582 () Bool)

(assert (=> b!836582 (= e!466825 0)))

(declare-fun b!836583 () Bool)

(assert (=> b!836583 (= e!466825 (+ 1 (size!22884 (t!22429 Nil!16047))))))

