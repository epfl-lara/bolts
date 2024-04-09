; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72106 () Bool)

(assert start!72106)

(declare-fun res!569175 () Bool)

(declare-fun e!466766 () Bool)

(assert (=> start!72106 (=> (not res!569175) (not e!466766))))

(declare-datatypes ((B!1202 0))(
  ( (B!1203 (val!7683 Int)) )
))
(declare-datatypes ((tuple2!10244 0))(
  ( (tuple2!10245 (_1!5132 (_ BitVec 64)) (_2!5132 B!1202)) )
))
(declare-datatypes ((List!16045 0))(
  ( (Nil!16042) (Cons!16041 (h!17172 tuple2!10244) (t!22424 List!16045)) )
))
(declare-fun l!390 () List!16045)

(declare-fun isStrictlySorted!454 (List!16045) Bool)

(assert (=> start!72106 (= res!569175 (isStrictlySorted!454 l!390))))

(assert (=> start!72106 e!466766))

(declare-fun e!466765 () Bool)

(assert (=> start!72106 e!466765))

(declare-fun b!836499 () Bool)

(declare-fun e!466764 () Bool)

(assert (=> b!836499 (= e!466766 e!466764)))

(declare-fun res!569176 () Bool)

(assert (=> b!836499 (=> res!569176 e!466764)))

(assert (=> b!836499 (= res!569176 false)))

(declare-fun b!836498 () Bool)

(declare-fun res!569174 () Bool)

(assert (=> b!836498 (=> (not res!569174) (not e!466766))))

(assert (=> b!836498 (= res!569174 (not (is-Cons!16041 l!390)))))

(declare-fun b!836501 () Bool)

(declare-fun tp_is_empty!15271 () Bool)

(declare-fun tp!47480 () Bool)

(assert (=> b!836501 (= e!466765 (and tp_is_empty!15271 tp!47480))))

(declare-fun b!836500 () Bool)

(declare-datatypes ((List!16046 0))(
  ( (Nil!16043) (Cons!16042 (h!17173 (_ BitVec 64)) (t!22425 List!16046)) )
))
(declare-fun length!23 (List!16046) Int)

(declare-fun length!24 (List!16045) Int)

(assert (=> b!836500 (= e!466764 (not (= (length!23 Nil!16043) (length!24 l!390))))))

(assert (= (and start!72106 res!569175) b!836498))

(assert (= (and b!836498 res!569174) b!836499))

(assert (= (and b!836499 (not res!569176)) b!836500))

(assert (= (and start!72106 (is-Cons!16041 l!390)) b!836501))

(declare-fun m!781801 () Bool)

(assert (=> start!72106 m!781801))

(declare-fun m!781803 () Bool)

(assert (=> b!836500 m!781803))

(declare-fun m!781805 () Bool)

(assert (=> b!836500 m!781805))

(push 1)

(assert (not start!72106))

(assert (not b!836500))

(assert (not b!836501))

(assert tp_is_empty!15271)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107597 () Bool)

(declare-fun res!569205 () Bool)

(declare-fun e!466795 () Bool)

(assert (=> d!107597 (=> res!569205 e!466795)))

(assert (=> d!107597 (= res!569205 (or (is-Nil!16042 l!390) (is-Nil!16042 (t!22424 l!390))))))

(assert (=> d!107597 (= (isStrictlySorted!454 l!390) e!466795)))

(declare-fun b!836534 () Bool)

(declare-fun e!466796 () Bool)

(assert (=> b!836534 (= e!466795 e!466796)))

(declare-fun res!569206 () Bool)

(assert (=> b!836534 (=> (not res!569206) (not e!466796))))

(assert (=> b!836534 (= res!569206 (bvslt (_1!5132 (h!17172 l!390)) (_1!5132 (h!17172 (t!22424 l!390)))))))

(declare-fun b!836535 () Bool)

(assert (=> b!836535 (= e!466796 (isStrictlySorted!454 (t!22424 l!390)))))

(assert (= (and d!107597 (not res!569205)) b!836534))

(assert (= (and b!836534 res!569206) b!836535))

(declare-fun m!781819 () Bool)

(assert (=> b!836535 m!781819))

(assert (=> start!72106 d!107597))

(declare-fun d!107601 () Bool)

(declare-fun size!22880 (List!16046) Int)

(assert (=> d!107601 (= (length!23 Nil!16043) (size!22880 Nil!16043))))

(declare-fun bs!23492 () Bool)

(assert (= bs!23492 d!107601))

(declare-fun m!781823 () Bool)

(assert (=> bs!23492 m!781823))

(assert (=> b!836500 d!107601))

(declare-fun d!107605 () Bool)

(declare-fun size!22881 (List!16045) Int)

(assert (=> d!107605 (= (length!24 l!390) (size!22881 l!390))))

(declare-fun bs!23493 () Bool)

(assert (= bs!23493 d!107605))

(declare-fun m!781825 () Bool)

(assert (=> bs!23493 m!781825))

(assert (=> b!836500 d!107605))

(declare-fun b!836548 () Bool)

(declare-fun e!466805 () Bool)

(declare-fun tp!47489 () Bool)

(assert (=> b!836548 (= e!466805 (and tp_is_empty!15271 tp!47489))))

(assert (=> b!836501 (= tp!47480 e!466805)))

(assert (= (and b!836501 (is-Cons!16041 (t!22424 l!390))) b!836548))

(push 1)

(assert (not b!836548))

(assert (not b!836535))

(assert (not d!107605))

(assert tp_is_empty!15271)

(assert (not d!107601))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107613 () Bool)

(declare-fun lt!380391 () Int)

(assert (=> d!107613 (>= lt!380391 0)))

(declare-fun e!466814 () Int)

(assert (=> d!107613 (= lt!380391 e!466814)))

(declare-fun c!90997 () Bool)

(assert (=> d!107613 (= c!90997 (is-Nil!16042 l!390))))

(assert (=> d!107613 (= (size!22881 l!390) lt!380391)))

(declare-fun b!836563 () Bool)

(assert (=> b!836563 (= e!466814 0)))

(declare-fun b!836564 () Bool)

(assert (=> b!836564 (= e!466814 (+ 1 (size!22881 (t!22424 l!390))))))

(assert (= (and d!107613 c!90997) b!836563))

(assert (= (and d!107613 (not c!90997)) b!836564))

(declare-fun m!781837 () Bool)

(assert (=> b!836564 m!781837))

(assert (=> d!107605 d!107613))

(declare-fun d!107615 () Bool)

(declare-fun res!569213 () Bool)

(declare-fun e!466815 () Bool)

(assert (=> d!107615 (=> res!569213 e!466815)))

(assert (=> d!107615 (= res!569213 (or (is-Nil!16042 (t!22424 l!390)) (is-Nil!16042 (t!22424 (t!22424 l!390)))))))

(assert (=> d!107615 (= (isStrictlySorted!454 (t!22424 l!390)) e!466815)))

(declare-fun b!836565 () Bool)

(declare-fun e!466816 () Bool)

(assert (=> b!836565 (= e!466815 e!466816)))

(declare-fun res!569214 () Bool)

(assert (=> b!836565 (=> (not res!569214) (not e!466816))))

(assert (=> b!836565 (= res!569214 (bvslt (_1!5132 (h!17172 (t!22424 l!390))) (_1!5132 (h!17172 (t!22424 (t!22424 l!390))))))))

(declare-fun b!836566 () Bool)

(assert (=> b!836566 (= e!466816 (isStrictlySorted!454 (t!22424 (t!22424 l!390))))))

(assert (= (and d!107615 (not res!569213)) b!836565))

(assert (= (and b!836565 res!569214) b!836566))

(declare-fun m!781839 () Bool)

(assert (=> b!836566 m!781839))

(assert (=> b!836535 d!107615))

(declare-fun d!107617 () Bool)

(declare-fun lt!380394 () Int)

(assert (=> d!107617 (>= lt!380394 0)))

(declare-fun e!466819 () Int)

(assert (=> d!107617 (= lt!380394 e!466819)))

(declare-fun c!91000 () Bool)

(assert (=> d!107617 (= c!91000 (is-Nil!16043 Nil!16043))))

(assert (=> d!107617 (= (size!22880 Nil!16043) lt!380394)))

(declare-fun b!836571 () Bool)

(assert (=> b!836571 (= e!466819 0)))

(declare-fun b!836572 () Bool)

(assert (=> b!836572 (= e!466819 (+ 1 (size!22880 (t!22425 Nil!16043))))))

(assert (= (and d!107617 c!91000) b!836571))

(assert (= (and d!107617 (not c!91000)) b!836572))

(declare-fun m!781841 () Bool)

(assert (=> b!836572 m!781841))

(assert (=> d!107601 d!107617))

(declare-fun b!836573 () Bool)

(declare-fun e!466820 () Bool)

(declare-fun tp!47496 () Bool)

(assert (=> b!836573 (= e!466820 (and tp_is_empty!15271 tp!47496))))

(assert (=> b!836548 (= tp!47489 e!466820)))

(assert (= (and b!836548 (is-Cons!16041 (t!22424 (t!22424 l!390)))) b!836573))

(push 1)

(assert (not b!836573))

(assert (not b!836564))

(assert (not b!836572))

(assert tp_is_empty!15271)

(assert (not b!836566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

