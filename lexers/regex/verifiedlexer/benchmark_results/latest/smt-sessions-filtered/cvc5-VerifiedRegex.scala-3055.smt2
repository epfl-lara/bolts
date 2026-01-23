; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!182820 () Bool)

(assert start!182820)

(declare-fun res!826125 () Bool)

(declare-fun e!1174485 () Bool)

(assert (=> start!182820 (=> (not res!826125) (not e!1174485))))

(declare-fun i!921 () Int)

(assert (=> start!182820 (= res!826125 (>= i!921 0))))

(assert (=> start!182820 e!1174485))

(assert (=> start!182820 true))

(declare-fun e!1174486 () Bool)

(assert (=> start!182820 e!1174486))

(declare-fun b!1837993 () Bool)

(declare-datatypes ((B!1471 0))(
  ( (B!1472 (val!5683 Int)) )
))
(declare-datatypes ((List!20283 0))(
  ( (Nil!20213) (Cons!20213 (h!25614 B!1471) (t!171712 List!20283)) )
))
(declare-fun l!3005 () List!20283)

(declare-fun ListPrimitiveSize!113 (List!20283) Int)

(assert (=> b!1837993 (= e!1174485 (< (ListPrimitiveSize!113 l!3005) 0))))

(declare-fun b!1837994 () Bool)

(declare-fun tp_is_empty!8219 () Bool)

(declare-fun tp!519983 () Bool)

(assert (=> b!1837994 (= e!1174486 (and tp_is_empty!8219 tp!519983))))

(assert (= (and start!182820 res!826125) b!1837993))

(assert (= (and start!182820 (is-Cons!20213 l!3005)) b!1837994))

(declare-fun m!2265925 () Bool)

(assert (=> b!1837993 m!2265925))

(push 1)

(assert (not b!1837993))

(assert (not b!1837994))

(assert tp_is_empty!8219)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!562070 () Bool)

(declare-fun lt!713397 () Int)

(assert (=> d!562070 (>= lt!713397 0)))

(declare-fun e!1174497 () Int)

(assert (=> d!562070 (= lt!713397 e!1174497)))

(declare-fun c!299906 () Bool)

(assert (=> d!562070 (= c!299906 (is-Nil!20213 l!3005))))

(assert (=> d!562070 (= (ListPrimitiveSize!113 l!3005) lt!713397)))

(declare-fun b!1838009 () Bool)

(assert (=> b!1838009 (= e!1174497 0)))

(declare-fun b!1838010 () Bool)

(assert (=> b!1838010 (= e!1174497 (+ 1 (ListPrimitiveSize!113 (t!171712 l!3005))))))

(assert (= (and d!562070 c!299906) b!1838009))

(assert (= (and d!562070 (not c!299906)) b!1838010))

(declare-fun m!2265929 () Bool)

(assert (=> b!1838010 m!2265929))

(assert (=> b!1837993 d!562070))

(declare-fun b!1838015 () Bool)

(declare-fun e!1174500 () Bool)

(declare-fun tp!519989 () Bool)

(assert (=> b!1838015 (= e!1174500 (and tp_is_empty!8219 tp!519989))))

(assert (=> b!1837994 (= tp!519983 e!1174500)))

(assert (= (and b!1837994 (is-Cons!20213 (t!171712 l!3005))) b!1838015))

(push 1)

(assert (not b!1838010))

(assert (not b!1838015))

(assert tp_is_empty!8219)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

