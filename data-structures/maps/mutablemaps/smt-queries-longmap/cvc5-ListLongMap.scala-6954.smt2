; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87742 () Bool)

(assert start!87742)

(declare-fun res!680818 () Bool)

(declare-fun e!570655 () Bool)

(assert (=> start!87742 (=> (not res!680818) (not e!570655))))

(declare-datatypes ((B!1430 0))(
  ( (B!1431 (val!11799 Int)) )
))
(declare-datatypes ((tuple2!15234 0))(
  ( (tuple2!15235 (_1!7627 (_ BitVec 64)) (_2!7627 B!1430)) )
))
(declare-datatypes ((List!21544 0))(
  ( (Nil!21541) (Cons!21540 (h!22738 tuple2!15234) (t!30553 List!21544)) )
))
(declare-fun l!412 () List!21544)

(declare-fun isStrictlySorted!569 (List!21544) Bool)

(assert (=> start!87742 (= res!680818 (isStrictlySorted!569 l!412))))

(assert (=> start!87742 e!570655))

(declare-fun e!570656 () Bool)

(assert (=> start!87742 e!570656))

(declare-fun tp_is_empty!23497 () Bool)

(assert (=> start!87742 tp_is_empty!23497))

(declare-fun b!1014314 () Bool)

(declare-fun res!680817 () Bool)

(assert (=> b!1014314 (=> (not res!680817) (not e!570655))))

(declare-fun value!115 () B!1430)

(assert (=> b!1014314 (= res!680817 (and (not (= (_2!7627 (h!22738 l!412)) value!115)) (is-Cons!21540 l!412)))))

(declare-fun b!1014315 () Bool)

(declare-fun ListPrimitiveSize!112 (List!21544) Int)

(assert (=> b!1014315 (= e!570655 (>= (ListPrimitiveSize!112 (t!30553 l!412)) (ListPrimitiveSize!112 l!412)))))

(declare-datatypes ((List!21545 0))(
  ( (Nil!21542) (Cons!21541 (h!22739 (_ BitVec 64)) (t!30554 List!21545)) )
))
(declare-fun lt!448467 () List!21545)

(declare-fun getKeysOf!46 (List!21544 B!1430) List!21545)

(assert (=> b!1014315 (= lt!448467 (getKeysOf!46 (t!30553 l!412) value!115))))

(declare-fun b!1014316 () Bool)

(declare-fun tp!70521 () Bool)

(assert (=> b!1014316 (= e!570656 (and tp_is_empty!23497 tp!70521))))

(assert (= (and start!87742 res!680818) b!1014314))

(assert (= (and b!1014314 res!680817) b!1014315))

(assert (= (and start!87742 (is-Cons!21540 l!412)) b!1014316))

(declare-fun m!937125 () Bool)

(assert (=> start!87742 m!937125))

(declare-fun m!937127 () Bool)

(assert (=> b!1014315 m!937127))

(declare-fun m!937129 () Bool)

(assert (=> b!1014315 m!937129))

(declare-fun m!937131 () Bool)

(assert (=> b!1014315 m!937131))

(push 1)

(assert (not b!1014315))

(assert (not start!87742))

(assert (not b!1014316))

(assert tp_is_empty!23497)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120727 () Bool)

(declare-fun lt!448476 () Int)

(assert (=> d!120727 (>= lt!448476 0)))

(declare-fun e!570675 () Int)

(assert (=> d!120727 (= lt!448476 e!570675)))

(declare-fun c!102612 () Bool)

(assert (=> d!120727 (= c!102612 (is-Nil!21541 (t!30553 l!412)))))

(assert (=> d!120727 (= (ListPrimitiveSize!112 (t!30553 l!412)) lt!448476)))

(declare-fun b!1014343 () Bool)

(assert (=> b!1014343 (= e!570675 0)))

(declare-fun b!1014344 () Bool)

(assert (=> b!1014344 (= e!570675 (+ 1 (ListPrimitiveSize!112 (t!30553 (t!30553 l!412)))))))

(assert (= (and d!120727 c!102612) b!1014343))

(assert (= (and d!120727 (not c!102612)) b!1014344))

(declare-fun m!937149 () Bool)

(assert (=> b!1014344 m!937149))

(assert (=> b!1014315 d!120727))

(declare-fun d!120731 () Bool)

(declare-fun lt!448477 () Int)

(assert (=> d!120731 (>= lt!448477 0)))

(declare-fun e!570678 () Int)

(assert (=> d!120731 (= lt!448477 e!570678)))

(declare-fun c!102613 () Bool)

(assert (=> d!120731 (= c!102613 (is-Nil!21541 l!412))))

(assert (=> d!120731 (= (ListPrimitiveSize!112 l!412) lt!448477)))

(declare-fun b!1014347 () Bool)

(assert (=> b!1014347 (= e!570678 0)))

(declare-fun b!1014348 () Bool)

(assert (=> b!1014348 (= e!570678 (+ 1 (ListPrimitiveSize!112 (t!30553 l!412))))))

(assert (= (and d!120731 c!102613) b!1014347))

(assert (= (and d!120731 (not c!102613)) b!1014348))

(assert (=> b!1014348 m!937127))

(assert (=> b!1014315 d!120731))

(declare-fun b!1014422 () Bool)

(assert (=> b!1014422 true))

(assert (=> b!1014422 true))

(assert (=> b!1014422 true))

(declare-fun bs!29261 () Bool)

(declare-fun b!1014420 () Bool)

(assert (= bs!29261 (and b!1014420 b!1014422)))

(declare-fun lt!448562 () List!21544)

(declare-fun lt!448563 () List!21544)

(declare-fun lt!448569 () tuple2!15234)

(declare-fun lambda!702 () Int)

(declare-fun lambda!703 () Int)

(declare-fun lt!448568 () tuple2!15234)

(assert (=> bs!29261 (= (= (Cons!21540 lt!448569 lt!448563) (Cons!21540 lt!448568 lt!448562)) (= lambda!703 lambda!702))))

(assert (=> b!1014420 true))

(assert (=> b!1014420 true))

(assert (=> b!1014420 true))

(declare-fun bs!29262 () Bool)

(declare-fun d!120735 () Bool)

(assert (= bs!29262 (and d!120735 b!1014422)))

(declare-fun lambda!705 () Int)

(assert (=> bs!29262 (= (= (t!30553 l!412) (Cons!21540 lt!448568 lt!448562)) (= lambda!705 lambda!702))))

(declare-fun bs!29263 () Bool)

(assert (= bs!29263 (and d!120735 b!1014420)))

(assert (=> bs!29263 (= (= (t!30553 l!412) (Cons!21540 lt!448569 lt!448563)) (= lambda!705 lambda!703))))

(assert (=> d!120735 true))

(assert (=> d!120735 true))

(declare-fun c!102646 () Bool)

(declare-fun call!42806 () Bool)

(declare-fun bm!42803 () Bool)

(declare-fun lt!448558 () List!21545)

(declare-fun lt!448565 () List!21545)

(declare-fun forall!242 (List!21545 Int) Bool)

(assert (=> bm!42803 (= call!42806 (forall!242 (ite c!102646 lt!448565 lt!448558) (ite c!102646 lambda!702 lambda!703)))))

(declare-fun b!1014419 () Bool)

(declare-datatypes ((Unit!33130 0))(
  ( (Unit!33131) )
))
(declare-fun lt!448566 () Unit!33130)

(declare-fun e!570718 () Unit!33130)

(assert (=> b!1014419 (= lt!448566 e!570718)))

(declare-fun c!102647 () Bool)

(declare-fun call!42807 () Bool)

(assert (=> b!1014419 (= c!102647 (not call!42807))))

(declare-fun lt!448559 () List!21545)

(declare-fun call!42808 () List!21545)

(assert (=> b!1014419 (= lt!448559 call!42808)))

(declare-fun e!570717 () List!21545)

(assert (=> b!1014419 (= e!570717 call!42808)))

(declare-fun lt!448564 () List!21545)

(assert (=> d!120735 (forall!242 lt!448564 lambda!705)))

(declare-fun e!570720 () List!21545)

(assert (=> d!120735 (= lt!448564 e!570720)))

(assert (=> d!120735 (= c!102646 (and (is-Cons!21540 (t!30553 l!412)) (= (_2!7627 (h!22738 (t!30553 l!412))) value!115)))))

(assert (=> d!120735 (isStrictlySorted!569 (t!30553 l!412))))

(assert (=> d!120735 (= (getKeysOf!46 (t!30553 l!412) value!115) lt!448564)))

(declare-fun lt!448560 () Unit!33130)

(assert (=> b!1014420 (= e!570718 lt!448560)))

(assert (=> b!1014420 (= lt!448563 (t!30553 (t!30553 l!412)))))

(assert (=> b!1014420 (= lt!448558 call!42808)))

(assert (=> b!1014420 (= lt!448569 (h!22738 (t!30553 l!412)))))

(declare-fun call!42809 () Unit!33130)

(assert (=> b!1014420 (= lt!448560 call!42809)))

(assert (=> b!1014420 call!42806))

(declare-fun b!1014421 () Bool)

(assert (=> b!1014421 (= e!570720 e!570717)))

(declare-fun c!102648 () Bool)

(assert (=> b!1014421 (= c!102648 (and (is-Cons!21540 (t!30553 l!412)) (not (= (_2!7627 (h!22738 (t!30553 l!412))) value!115))))))

(assert (=> b!1014422 call!42806))

(declare-fun lt!448567 () Unit!33130)

(assert (=> b!1014422 (= lt!448567 call!42809)))

(assert (=> b!1014422 (= lt!448568 (h!22738 (t!30553 l!412)))))

(assert (=> b!1014422 (= lt!448565 call!42808)))

(assert (=> b!1014422 (= lt!448562 (t!30553 (t!30553 l!412)))))

(declare-fun e!570719 () Unit!33130)

(assert (=> b!1014422 (= e!570719 lt!448567)))

(declare-fun b!1014423 () Bool)

(assert (=> b!1014423 (= e!570720 (Cons!21541 (_1!7627 (h!22738 (t!30553 l!412))) call!42808))))

(declare-fun c!102649 () Bool)

(assert (=> b!1014423 (= c!102649 (not call!42807))))

(declare-fun lt!448561 () Unit!33130)

(assert (=> b!1014423 (= lt!448561 e!570719)))

(declare-fun b!1014424 () Bool)

(declare-fun Unit!33134 () Unit!33130)

(assert (=> b!1014424 (= e!570719 Unit!33134)))

(declare-fun bm!42804 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!37 (List!21544 List!21545 B!1430 tuple2!15234) Unit!33130)

(assert (=> bm!42804 (= call!42809 (lemmaForallGetValueByKeySameWithASmallerHead!37 (ite c!102646 lt!448562 lt!448563) (ite c!102646 lt!448565 lt!448558) value!115 (ite c!102646 lt!448568 lt!448569)))))

(declare-fun bm!42805 () Bool)

(declare-fun isEmpty!837 (List!21545) Bool)

(assert (=> bm!42805 (= call!42807 (isEmpty!837 call!42808))))

(declare-fun b!1014425 () Bool)

(assert (=> b!1014425 (= e!570717 Nil!21542)))

(declare-fun bm!42806 () Bool)

(assert (=> bm!42806 (= call!42808 (getKeysOf!46 (t!30553 (t!30553 l!412)) value!115))))

(declare-fun b!1014426 () Bool)

(declare-fun Unit!33138 () Unit!33130)

(assert (=> b!1014426 (= e!570718 Unit!33138)))

(assert (= (and d!120735 c!102646) b!1014423))

(assert (= (and d!120735 (not c!102646)) b!1014421))

(assert (= (and b!1014423 c!102649) b!1014422))

(assert (= (and b!1014423 (not c!102649)) b!1014424))

(assert (= (and b!1014421 c!102648) b!1014419))

(assert (= (and b!1014421 (not c!102648)) b!1014425))

(assert (= (and b!1014419 c!102647) b!1014420))

(assert (= (and b!1014419 (not c!102647)) b!1014426))

(assert (= (or b!1014422 b!1014420) bm!42804))

(assert (= (or b!1014422 b!1014420) bm!42803))

(assert (= (or b!1014423 b!1014422 b!1014419 b!1014420) bm!42806))

(assert (= (or b!1014423 b!1014419) bm!42805))

(declare-fun m!937159 () Bool)

(assert (=> bm!42806 m!937159))

(declare-fun m!937161 () Bool)

(assert (=> d!120735 m!937161))

(declare-fun m!937163 () Bool)

(assert (=> d!120735 m!937163))

(declare-fun m!937165 () Bool)

(assert (=> bm!42803 m!937165))

(declare-fun m!937167 () Bool)

(assert (=> bm!42804 m!937167))

(declare-fun m!937169 () Bool)

(assert (=> bm!42805 m!937169))

(assert (=> b!1014315 d!120735))

(declare-fun d!120747 () Bool)

(declare-fun res!680847 () Bool)

(declare-fun e!570733 () Bool)

(assert (=> d!120747 (=> res!680847 e!570733)))

(assert (=> d!120747 (= res!680847 (or (is-Nil!21541 l!412) (is-Nil!21541 (t!30553 l!412))))))

(assert (=> d!120747 (= (isStrictlySorted!569 l!412) e!570733)))

(declare-fun b!1014465 () Bool)

(declare-fun e!570734 () Bool)

(assert (=> b!1014465 (= e!570733 e!570734)))

(declare-fun res!680848 () Bool)

(assert (=> b!1014465 (=> (not res!680848) (not e!570734))))

(assert (=> b!1014465 (= res!680848 (bvslt (_1!7627 (h!22738 l!412)) (_1!7627 (h!22738 (t!30553 l!412)))))))

(declare-fun b!1014466 () Bool)

(assert (=> b!1014466 (= e!570734 (isStrictlySorted!569 (t!30553 l!412)))))

(assert (= (and d!120747 (not res!680847)) b!1014465))

(assert (= (and b!1014465 res!680848) b!1014466))

(assert (=> b!1014466 m!937163))

(assert (=> start!87742 d!120747))

(declare-fun b!1014471 () Bool)

(declare-fun e!570737 () Bool)

(declare-fun tp!70530 () Bool)

(assert (=> b!1014471 (= e!570737 (and tp_is_empty!23497 tp!70530))))

(assert (=> b!1014316 (= tp!70521 e!570737)))

(assert (= (and b!1014316 (is-Cons!21540 (t!30553 l!412))) b!1014471))

(push 1)

(assert (not b!1014466))

(assert (not bm!42804))

(assert (not bm!42806))

(assert (not b!1014348))

(assert tp_is_empty!23497)

(assert (not bm!42805))

(assert (not d!120735))

(assert (not b!1014471))

(assert (not bm!42803))

(assert (not b!1014344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

