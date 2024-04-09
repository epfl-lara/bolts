; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87584 () Bool)

(assert start!87584)

(declare-fun b!1013500 () Bool)

(assert (=> b!1013500 true))

(assert (=> b!1013500 true))

(declare-fun b!1013496 () Bool)

(declare-fun res!680510 () Bool)

(declare-fun e!570170 () Bool)

(assert (=> b!1013496 (=> (not res!680510) (not e!570170))))

(declare-datatypes ((B!1410 0))(
  ( (B!1411 (val!11789 Int)) )
))
(declare-datatypes ((tuple2!15214 0))(
  ( (tuple2!15215 (_1!7617 (_ BitVec 64)) (_2!7617 B!1410)) )
))
(declare-datatypes ((List!21527 0))(
  ( (Nil!21524) (Cons!21523 (h!22721 tuple2!15214) (t!30536 List!21527)) )
))
(declare-fun l!412 () List!21527)

(declare-fun value!115 () B!1410)

(assert (=> b!1013496 (= res!680510 (and (is-Cons!21523 l!412) (= (_2!7617 (h!22721 l!412)) value!115)))))

(declare-fun b!1013497 () Bool)

(declare-fun e!570167 () Bool)

(assert (=> b!1013497 (= e!570170 e!570167)))

(declare-fun res!680515 () Bool)

(assert (=> b!1013497 (=> (not res!680515) (not e!570167))))

(declare-datatypes ((List!21528 0))(
  ( (Nil!21525) (Cons!21524 (h!22722 (_ BitVec 64)) (t!30537 List!21528)) )
))
(declare-fun lt!448005 () List!21528)

(declare-fun isEmpty!823 (List!21528) Bool)

(assert (=> b!1013497 (= res!680515 (not (isEmpty!823 lt!448005)))))

(declare-fun getKeysOf!39 (List!21527 B!1410) List!21528)

(assert (=> b!1013497 (= lt!448005 (getKeysOf!39 (t!30536 l!412) value!115))))

(declare-fun res!680512 () Bool)

(assert (=> start!87584 (=> (not res!680512) (not e!570170))))

(declare-fun isStrictlySorted!559 (List!21527) Bool)

(assert (=> start!87584 (= res!680512 (isStrictlySorted!559 l!412))))

(assert (=> start!87584 e!570170))

(declare-fun e!570169 () Bool)

(assert (=> start!87584 e!570169))

(declare-fun tp_is_empty!23477 () Bool)

(assert (=> start!87584 tp_is_empty!23477))

(declare-fun b!1013498 () Bool)

(declare-fun e!570168 () Bool)

(declare-fun head!932 (List!21527) tuple2!15214)

(assert (=> b!1013498 (= e!570168 (bvsge (_1!7617 (h!22721 l!412)) (_1!7617 (head!932 (t!30536 l!412)))))))

(declare-fun b!1013499 () Bool)

(assert (=> b!1013499 (= e!570167 e!570168)))

(declare-fun res!680511 () Bool)

(assert (=> b!1013499 (=> res!680511 e!570168)))

(assert (=> b!1013499 (= res!680511 (not (isStrictlySorted!559 (t!30536 l!412))))))

(declare-fun res!680514 () Bool)

(assert (=> b!1013500 (=> res!680514 e!570168)))

(declare-fun lambda!515 () Int)

(declare-fun forall!235 (List!21528 Int) Bool)

(assert (=> b!1013500 (= res!680514 (not (forall!235 lt!448005 lambda!515)))))

(declare-fun b!1013501 () Bool)

(declare-fun res!680513 () Bool)

(assert (=> b!1013501 (=> res!680513 e!570168)))

(declare-fun isEmpty!824 (List!21527) Bool)

(assert (=> b!1013501 (= res!680513 (isEmpty!824 (t!30536 l!412)))))

(declare-fun b!1013502 () Bool)

(declare-fun tp!70452 () Bool)

(assert (=> b!1013502 (= e!570169 (and tp_is_empty!23477 tp!70452))))

(assert (= (and start!87584 res!680512) b!1013496))

(assert (= (and b!1013496 res!680510) b!1013497))

(assert (= (and b!1013497 res!680515) b!1013499))

(assert (= (and b!1013499 (not res!680511)) b!1013501))

(assert (= (and b!1013501 (not res!680513)) b!1013500))

(assert (= (and b!1013500 (not res!680514)) b!1013498))

(assert (= (and start!87584 (is-Cons!21523 l!412)) b!1013502))

(declare-fun m!936571 () Bool)

(assert (=> b!1013497 m!936571))

(declare-fun m!936573 () Bool)

(assert (=> b!1013497 m!936573))

(declare-fun m!936575 () Bool)

(assert (=> b!1013498 m!936575))

(declare-fun m!936577 () Bool)

(assert (=> b!1013499 m!936577))

(declare-fun m!936579 () Bool)

(assert (=> b!1013501 m!936579))

(declare-fun m!936581 () Bool)

(assert (=> start!87584 m!936581))

(declare-fun m!936583 () Bool)

(assert (=> b!1013500 m!936583))

(push 1)

(assert (not b!1013498))

(assert (not b!1013499))

(assert (not b!1013497))

(assert (not b!1013501))

(assert (not b!1013502))

(assert tp_is_empty!23477)

(assert (not b!1013500))

(assert (not start!87584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120441 () Bool)

(assert (=> d!120441 (= (isEmpty!824 (t!30536 l!412)) (is-Nil!21524 (t!30536 l!412)))))

(assert (=> b!1013501 d!120441))

(declare-fun d!120443 () Bool)

(declare-fun res!680532 () Bool)

(declare-fun e!570187 () Bool)

(assert (=> d!120443 (=> res!680532 e!570187)))

(assert (=> d!120443 (= res!680532 (or (is-Nil!21524 (t!30536 l!412)) (is-Nil!21524 (t!30536 (t!30536 l!412)))))))

(assert (=> d!120443 (= (isStrictlySorted!559 (t!30536 l!412)) e!570187)))

(declare-fun b!1013521 () Bool)

(declare-fun e!570188 () Bool)

(assert (=> b!1013521 (= e!570187 e!570188)))

(declare-fun res!680533 () Bool)

(assert (=> b!1013521 (=> (not res!680533) (not e!570188))))

(assert (=> b!1013521 (= res!680533 (bvslt (_1!7617 (h!22721 (t!30536 l!412))) (_1!7617 (h!22721 (t!30536 (t!30536 l!412))))))))

(declare-fun b!1013522 () Bool)

(assert (=> b!1013522 (= e!570188 (isStrictlySorted!559 (t!30536 (t!30536 l!412))))))

(assert (= (and d!120443 (not res!680532)) b!1013521))

(assert (= (and b!1013521 res!680533) b!1013522))

(declare-fun m!936587 () Bool)

(assert (=> b!1013522 m!936587))

(assert (=> b!1013499 d!120443))

(declare-fun d!120453 () Bool)

(declare-fun res!680540 () Bool)

(declare-fun e!570195 () Bool)

(assert (=> d!120453 (=> res!680540 e!570195)))

(assert (=> d!120453 (= res!680540 (is-Nil!21525 lt!448005))))

(assert (=> d!120453 (= (forall!235 lt!448005 lambda!515) e!570195)))

(declare-fun b!1013531 () Bool)

(declare-fun e!570196 () Bool)

(assert (=> b!1013531 (= e!570195 e!570196)))

(declare-fun res!680541 () Bool)

(assert (=> b!1013531 (=> (not res!680541) (not e!570196))))

(declare-fun dynLambda!1887 (Int (_ BitVec 64)) Bool)

(assert (=> b!1013531 (= res!680541 (dynLambda!1887 lambda!515 (h!22722 lt!448005)))))

(declare-fun b!1013532 () Bool)

(assert (=> b!1013532 (= e!570196 (forall!235 (t!30537 lt!448005) lambda!515))))

(assert (= (and d!120453 (not res!680540)) b!1013531))

(assert (= (and b!1013531 res!680541) b!1013532))

(declare-fun b_lambda!15285 () Bool)

(assert (=> (not b_lambda!15285) (not b!1013531)))

(declare-fun m!936593 () Bool)

(assert (=> b!1013531 m!936593))

(declare-fun m!936595 () Bool)

(assert (=> b!1013532 m!936595))

(assert (=> b!1013500 d!120453))

(declare-fun d!120459 () Bool)

(assert (=> d!120459 (= (head!932 (t!30536 l!412)) (h!22721 (t!30536 l!412)))))

(assert (=> b!1013498 d!120459))

(declare-fun d!120461 () Bool)

(assert (=> d!120461 (= (isEmpty!823 lt!448005) (is-Nil!21525 lt!448005))))

(assert (=> b!1013497 d!120461))

(declare-fun bs!28931 () Bool)

(declare-fun b!1013604 () Bool)

(assert (= bs!28931 (and b!1013604 b!1013500)))

(declare-fun lambda!539 () Int)

(declare-fun lt!448103 () List!21527)

(declare-fun lt!448106 () tuple2!15214)

(assert (=> bs!28931 (= (= (Cons!21523 lt!448106 lt!448103) (t!30536 l!412)) (= lambda!539 lambda!515))))

(assert (=> b!1013604 true))

(assert (=> b!1013604 true))

(assert (=> b!1013604 true))

(declare-fun bs!28935 () Bool)

(declare-fun b!1013601 () Bool)

(assert (= bs!28935 (and b!1013601 b!1013500)))

(declare-fun lt!448108 () tuple2!15214)

(declare-fun lambda!541 () Int)

(declare-fun lt!448111 () List!21527)

(assert (=> bs!28935 (= (= (Cons!21523 lt!448108 lt!448111) (t!30536 l!412)) (= lambda!541 lambda!515))))

(declare-fun bs!28936 () Bool)

(assert (= bs!28936 (and b!1013601 b!1013604)))

(assert (=> bs!28936 (= (= (Cons!21523 lt!448108 lt!448111) (Cons!21523 lt!448106 lt!448103)) (= lambda!541 lambda!539))))

(assert (=> b!1013601 true))

(assert (=> b!1013601 true))

(assert (=> b!1013601 true))

(declare-fun bs!28937 () Bool)

(declare-fun d!120463 () Bool)

(assert (= bs!28937 (and d!120463 b!1013500)))

(declare-fun lambda!542 () Int)

(assert (=> bs!28937 (= lambda!542 lambda!515)))

(declare-fun bs!28938 () Bool)

(assert (= bs!28938 (and d!120463 b!1013604)))

(assert (=> bs!28938 (= (= (t!30536 l!412) (Cons!21523 lt!448106 lt!448103)) (= lambda!542 lambda!539))))

(declare-fun bs!28939 () Bool)

(assert (= bs!28939 (and d!120463 b!1013601)))

(assert (=> bs!28939 (= (= (t!30536 l!412) (Cons!21523 lt!448108 lt!448111)) (= lambda!542 lambda!541))))

(assert (=> d!120463 true))

(assert (=> d!120463 true))

(declare-datatypes ((Unit!33091 0))(
  ( (Unit!33092) )
))
(declare-fun e!570232 () Unit!33091)

(declare-fun lt!448102 () Unit!33091)

(assert (=> b!1013601 (= e!570232 lt!448102)))

(assert (=> b!1013601 (= lt!448111 (t!30536 (t!30536 l!412)))))

(declare-fun lt!448105 () List!21528)

(declare-fun call!42697 () List!21528)

(assert (=> b!1013601 (= lt!448105 call!42697)))

(assert (=> b!1013601 (= lt!448108 (h!22721 (t!30536 l!412)))))

(declare-fun call!42695 () Unit!33091)

(assert (=> b!1013601 (= lt!448102 call!42695)))

(declare-fun call!42694 () Bool)

(assert (=> b!1013601 call!42694))

(declare-fun lt!448107 () List!21528)

(assert (=> d!120463 (forall!235 lt!448107 lambda!542)))

(declare-fun e!570230 () List!21528)

(assert (=> d!120463 (= lt!448107 e!570230)))

(declare-fun c!102456 () Bool)

(assert (=> d!120463 (= c!102456 (and (is-Cons!21523 (t!30536 l!412)) (= (_2!7617 (h!22721 (t!30536 l!412))) value!115)))))

(assert (=> d!120463 (isStrictlySorted!559 (t!30536 l!412))))

(assert (=> d!120463 (= (getKeysOf!39 (t!30536 l!412) value!115) lt!448107)))

(declare-fun b!1013602 () Bool)

(declare-fun e!570231 () Unit!33091)

(declare-fun Unit!33094 () Unit!33091)

(assert (=> b!1013602 (= e!570231 Unit!33094)))

(declare-fun bm!42691 () Bool)

(declare-fun lt!448110 () List!21528)

(assert (=> bm!42691 (= call!42694 (forall!235 (ite c!102456 lt!448110 lt!448105) (ite c!102456 lambda!539 lambda!541)))))

(declare-fun b!1013603 () Bool)

(declare-fun Unit!33095 () Unit!33091)

(assert (=> b!1013603 (= e!570232 Unit!33095)))

(assert (=> b!1013604 call!42694))

(declare-fun lt!448109 () Unit!33091)

(assert (=> b!1013604 (= lt!448109 call!42695)))

(assert (=> b!1013604 (= lt!448106 (h!22721 (t!30536 l!412)))))

(assert (=> b!1013604 (= lt!448110 call!42697)))

(assert (=> b!1013604 (= lt!448103 (t!30536 (t!30536 l!412)))))

(assert (=> b!1013604 (= e!570231 lt!448109)))

(declare-fun b!1013605 () Bool)

(declare-fun e!570229 () List!21528)

(assert (=> b!1013605 (= e!570229 Nil!21525)))

(declare-fun b!1013606 () Bool)

(assert (=> b!1013606 (= e!570230 (Cons!21524 (_1!7617 (h!22721 (t!30536 l!412))) call!42697))))

(declare-fun c!102458 () Bool)

(declare-fun call!42696 () Bool)

(assert (=> b!1013606 (= c!102458 (not call!42696))))

(declare-fun lt!448113 () Unit!33091)

(assert (=> b!1013606 (= lt!448113 e!570231)))

(declare-fun bm!42692 () Bool)

(assert (=> bm!42692 (= call!42697 (getKeysOf!39 (t!30536 (t!30536 l!412)) value!115))))

(declare-fun b!1013607 () Bool)

(declare-fun lt!448112 () Unit!33091)

(assert (=> b!1013607 (= lt!448112 e!570232)))

(declare-fun c!102459 () Bool)

(assert (=> b!1013607 (= c!102459 (not call!42696))))

(declare-fun lt!448104 () List!21528)

(assert (=> b!1013607 (= lt!448104 call!42697)))

(assert (=> b!1013607 (= e!570229 call!42697)))

(declare-fun bm!42693 () Bool)

(assert (=> bm!42693 (= call!42696 (isEmpty!823 call!42697))))

(declare-fun b!1013608 () Bool)

(assert (=> b!1013608 (= e!570230 e!570229)))

(declare-fun c!102457 () Bool)

(assert (=> b!1013608 (= c!102457 (and (is-Cons!21523 (t!30536 l!412)) (not (= (_2!7617 (h!22721 (t!30536 l!412))) value!115))))))

(declare-fun bm!42694 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!30 (List!21527 List!21528 B!1410 tuple2!15214) Unit!33091)

(assert (=> bm!42694 (= call!42695 (lemmaForallGetValueByKeySameWithASmallerHead!30 (ite c!102456 lt!448103 lt!448111) (ite c!102456 lt!448110 lt!448105) value!115 (ite c!102456 lt!448106 lt!448108)))))

(assert (= (and d!120463 c!102456) b!1013606))

(assert (= (and d!120463 (not c!102456)) b!1013608))

(assert (= (and b!1013606 c!102458) b!1013604))

(assert (= (and b!1013606 (not c!102458)) b!1013602))

(assert (= (and b!1013608 c!102457) b!1013607))

(assert (= (and b!1013608 (not c!102457)) b!1013605))

(assert (= (and b!1013607 c!102459) b!1013601))

(assert (= (and b!1013607 (not c!102459)) b!1013603))

(assert (= (or b!1013604 b!1013601) bm!42694))

(assert (= (or b!1013604 b!1013601) bm!42691))

(assert (= (or b!1013606 b!1013604 b!1013601 b!1013607) bm!42692))

(assert (= (or b!1013606 b!1013607) bm!42693))

(declare-fun m!936619 () Bool)

(assert (=> bm!42694 m!936619))

(declare-fun m!936621 () Bool)

(assert (=> bm!42692 m!936621))

(declare-fun m!936623 () Bool)

(assert (=> d!120463 m!936623))

(assert (=> d!120463 m!936577))

(declare-fun m!936625 () Bool)

(assert (=> bm!42691 m!936625))

(declare-fun m!936627 () Bool)

(assert (=> bm!42693 m!936627))

(assert (=> b!1013497 d!120463))

(declare-fun d!120473 () Bool)

(declare-fun res!680548 () Bool)

(declare-fun e!570242 () Bool)

(assert (=> d!120473 (=> res!680548 e!570242)))

(assert (=> d!120473 (= res!680548 (or (is-Nil!21524 l!412) (is-Nil!21524 (t!30536 l!412))))))

(assert (=> d!120473 (= (isStrictlySorted!559 l!412) e!570242)))

(declare-fun b!1013622 () Bool)

(declare-fun e!570243 () Bool)

(assert (=> b!1013622 (= e!570242 e!570243)))

(declare-fun res!680549 () Bool)

(assert (=> b!1013622 (=> (not res!680549) (not e!570243))))

(assert (=> b!1013622 (= res!680549 (bvslt (_1!7617 (h!22721 l!412)) (_1!7617 (h!22721 (t!30536 l!412)))))))

(declare-fun b!1013623 () Bool)

(assert (=> b!1013623 (= e!570243 (isStrictlySorted!559 (t!30536 l!412)))))

(assert (= (and d!120473 (not res!680548)) b!1013622))

(assert (= (and b!1013622 res!680549) b!1013623))

(assert (=> b!1013623 m!936577))

(assert (=> start!87584 d!120473))

(declare-fun b!1013628 () Bool)

(declare-fun e!570246 () Bool)

(declare-fun tp!70458 () Bool)

(assert (=> b!1013628 (= e!570246 (and tp_is_empty!23477 tp!70458))))

(assert (=> b!1013502 (= tp!70452 e!570246)))

(assert (= (and b!1013502 (is-Cons!21523 (t!30536 l!412))) b!1013628))

(declare-fun b_lambda!15289 () Bool)

(assert (= b_lambda!15285 (or b!1013500 b_lambda!15289)))

(declare-fun bs!28941 () Bool)

(declare-fun d!120477 () Bool)

(assert (= bs!28941 (and d!120477 b!1013500)))

(declare-datatypes ((Option!575 0))(
  ( (Some!574 (v!14423 B!1410)) (None!573) )
))
(declare-fun getValueByKey!524 (List!21527 (_ BitVec 64)) Option!575)

(assert (=> bs!28941 (= (dynLambda!1887 lambda!515 (h!22722 lt!448005)) (= (getValueByKey!524 (t!30536 l!412) (h!22722 lt!448005)) (Some!574 value!115)))))

(declare-fun m!936629 () Bool)

(assert (=> bs!28941 m!936629))

(assert (=> b!1013531 d!120477))

(push 1)

(assert (not bs!28941))

(assert (not bm!42691))

(assert (not b!1013522))

(assert (not b!1013532))

(assert (not bm!42694))

(assert (not d!120463))

(assert (not b_lambda!15289))

(assert (not bm!42693))

(assert (not bm!42692))

(assert (not b!1013628))

(assert tp_is_empty!23477)

(assert (not b!1013623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

