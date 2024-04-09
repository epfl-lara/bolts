; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1768 () Bool)

(assert start!1768)

(declare-fun b!12438 () Bool)

(declare-fun e!7427 () Bool)

(declare-datatypes ((B!456 0))(
  ( (B!457 (val!323 Int)) )
))
(declare-datatypes ((tuple2!428 0))(
  ( (tuple2!429 (_1!214 (_ BitVec 64)) (_2!214 B!456)) )
))
(declare-datatypes ((List!370 0))(
  ( (Nil!367) (Cons!366 (h!932 tuple2!428) (t!2757 List!370)) )
))
(declare-fun l!1094 () List!370)

(declare-fun lt!3151 () tuple2!428)

(declare-fun contains!175 (List!370 tuple2!428) Bool)

(assert (=> b!12438 (= e!7427 (not (contains!175 l!1094 lt!3151)))))

(assert (=> b!12438 (contains!175 (t!2757 l!1094) lt!3151)))

(declare-fun key!303 () (_ BitVec 64))

(declare-fun v!194 () B!456)

(assert (=> b!12438 (= lt!3151 (tuple2!429 key!303 v!194))))

(declare-datatypes ((Unit!270 0))(
  ( (Unit!271) )
))
(declare-fun lt!3153 () Unit!270)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!6 (List!370 (_ BitVec 64) B!456) Unit!270)

(assert (=> b!12438 (= lt!3153 (lemmaGetValueByKeyImpliesContainsTuple!6 (t!2757 l!1094) key!303 v!194))))

(declare-fun b!12439 () Bool)

(declare-fun res!10025 () Bool)

(assert (=> b!12439 (=> (not res!10025) (not e!7427))))

(declare-fun isStrictlySorted!67 (List!370) Bool)

(assert (=> b!12439 (= res!10025 (isStrictlySorted!67 (t!2757 l!1094)))))

(declare-fun b!12440 () Bool)

(declare-fun e!7425 () Bool)

(declare-fun tp_is_empty!629 () Bool)

(declare-fun tp!2084 () Bool)

(assert (=> b!12440 (= e!7425 (and tp_is_empty!629 tp!2084))))

(declare-fun b!12441 () Bool)

(declare-fun e!7426 () Bool)

(assert (=> b!12441 (= e!7426 e!7427)))

(declare-fun res!10023 () Bool)

(assert (=> b!12441 (=> (not res!10023) (not e!7427))))

(declare-datatypes ((Option!55 0))(
  ( (Some!54 (v!1369 B!456)) (None!53) )
))
(declare-fun lt!3152 () Option!55)

(declare-fun getValueByKey!49 (List!370 (_ BitVec 64)) Option!55)

(assert (=> b!12441 (= res!10023 (= (getValueByKey!49 l!1094 key!303) lt!3152))))

(assert (=> b!12441 (= lt!3152 (Some!54 v!194))))

(declare-fun b!12442 () Bool)

(declare-fun res!10026 () Bool)

(assert (=> b!12442 (=> (not res!10026) (not e!7427))))

(assert (=> b!12442 (= res!10026 (= (getValueByKey!49 (t!2757 l!1094) key!303) lt!3152))))

(declare-fun res!10024 () Bool)

(assert (=> start!1768 (=> (not res!10024) (not e!7426))))

(assert (=> start!1768 (= res!10024 (isStrictlySorted!67 l!1094))))

(assert (=> start!1768 e!7426))

(assert (=> start!1768 e!7425))

(assert (=> start!1768 tp_is_empty!629))

(assert (=> start!1768 true))

(declare-fun b!12443 () Bool)

(declare-fun res!10027 () Bool)

(assert (=> b!12443 (=> (not res!10027) (not e!7427))))

(assert (=> b!12443 (= res!10027 (and (is-Cons!366 l!1094) (not (= (_1!214 (h!932 l!1094)) key!303))))))

(assert (= (and start!1768 res!10024) b!12441))

(assert (= (and b!12441 res!10023) b!12443))

(assert (= (and b!12443 res!10027) b!12439))

(assert (= (and b!12439 res!10025) b!12442))

(assert (= (and b!12442 res!10026) b!12438))

(assert (= (and start!1768 (is-Cons!366 l!1094)) b!12440))

(declare-fun m!8481 () Bool)

(assert (=> b!12438 m!8481))

(declare-fun m!8483 () Bool)

(assert (=> b!12438 m!8483))

(declare-fun m!8485 () Bool)

(assert (=> b!12438 m!8485))

(declare-fun m!8487 () Bool)

(assert (=> b!12441 m!8487))

(declare-fun m!8489 () Bool)

(assert (=> b!12442 m!8489))

(declare-fun m!8491 () Bool)

(assert (=> start!1768 m!8491))

(declare-fun m!8493 () Bool)

(assert (=> b!12439 m!8493))

(push 1)

(assert (not start!1768))

(assert (not b!12438))

(assert tp_is_empty!629)

(assert (not b!12441))

(assert (not b!12439))

(assert (not b!12442))

(assert (not b!12440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!12460 () Bool)

(declare-fun e!7439 () Option!55)

(assert (=> b!12460 (= e!7439 (getValueByKey!49 (t!2757 l!1094) key!303))))

(declare-fun b!12459 () Bool)

(declare-fun e!7438 () Option!55)

(assert (=> b!12459 (= e!7438 e!7439)))

(declare-fun c!1106 () Bool)

(assert (=> b!12459 (= c!1106 (and (is-Cons!366 l!1094) (not (= (_1!214 (h!932 l!1094)) key!303))))))

(declare-fun b!12461 () Bool)

(assert (=> b!12461 (= e!7439 None!53)))

(declare-fun b!12458 () Bool)

(assert (=> b!12458 (= e!7438 (Some!54 (_2!214 (h!932 l!1094))))))

(declare-fun d!1755 () Bool)

(declare-fun c!1105 () Bool)

(assert (=> d!1755 (= c!1105 (and (is-Cons!366 l!1094) (= (_1!214 (h!932 l!1094)) key!303)))))

(assert (=> d!1755 (= (getValueByKey!49 l!1094 key!303) e!7438)))

(assert (= (and d!1755 c!1105) b!12458))

(assert (= (and d!1755 (not c!1105)) b!12459))

(assert (= (and b!12459 c!1106) b!12460))

(assert (= (and b!12459 (not c!1106)) b!12461))

(assert (=> b!12460 m!8489))

(assert (=> b!12441 d!1755))

(declare-fun d!1761 () Bool)

(declare-fun res!10042 () Bool)

(declare-fun e!7452 () Bool)

(assert (=> d!1761 (=> res!10042 e!7452)))

(assert (=> d!1761 (= res!10042 (or (is-Nil!367 l!1094) (is-Nil!367 (t!2757 l!1094))))))

(assert (=> d!1761 (= (isStrictlySorted!67 l!1094) e!7452)))

(declare-fun b!12478 () Bool)

(declare-fun e!7453 () Bool)

(assert (=> b!12478 (= e!7452 e!7453)))

(declare-fun res!10043 () Bool)

(assert (=> b!12478 (=> (not res!10043) (not e!7453))))

(assert (=> b!12478 (= res!10043 (bvslt (_1!214 (h!932 l!1094)) (_1!214 (h!932 (t!2757 l!1094)))))))

(declare-fun b!12479 () Bool)

(assert (=> b!12479 (= e!7453 (isStrictlySorted!67 (t!2757 l!1094)))))

(assert (= (and d!1761 (not res!10042)) b!12478))

(assert (= (and b!12478 res!10043) b!12479))

(assert (=> b!12479 m!8493))

(assert (=> start!1768 d!1761))

(declare-fun d!1763 () Bool)

(declare-fun res!10044 () Bool)

(declare-fun e!7456 () Bool)

(assert (=> d!1763 (=> res!10044 e!7456)))

(assert (=> d!1763 (= res!10044 (or (is-Nil!367 (t!2757 l!1094)) (is-Nil!367 (t!2757 (t!2757 l!1094)))))))

(assert (=> d!1763 (= (isStrictlySorted!67 (t!2757 l!1094)) e!7456)))

(declare-fun b!12484 () Bool)

(declare-fun e!7457 () Bool)

(assert (=> b!12484 (= e!7456 e!7457)))

(declare-fun res!10045 () Bool)

(assert (=> b!12484 (=> (not res!10045) (not e!7457))))

(assert (=> b!12484 (= res!10045 (bvslt (_1!214 (h!932 (t!2757 l!1094))) (_1!214 (h!932 (t!2757 (t!2757 l!1094))))))))

(declare-fun b!12485 () Bool)

(assert (=> b!12485 (= e!7457 (isStrictlySorted!67 (t!2757 (t!2757 l!1094))))))

(assert (= (and d!1763 (not res!10044)) b!12484))

(assert (= (and b!12484 res!10045) b!12485))

(declare-fun m!8499 () Bool)

(assert (=> b!12485 m!8499))

(assert (=> b!12439 d!1763))

(declare-fun d!1769 () Bool)

(declare-fun lt!3163 () Bool)

(declare-fun content!11 (List!370) (Set tuple2!428))

(assert (=> d!1769 (= lt!3163 (member lt!3151 (content!11 l!1094)))))

(declare-fun e!7475 () Bool)

(assert (=> d!1769 (= lt!3163 e!7475)))

(declare-fun res!10062 () Bool)

(assert (=> d!1769 (=> (not res!10062) (not e!7475))))

(assert (=> d!1769 (= res!10062 (is-Cons!366 l!1094))))

(assert (=> d!1769 (= (contains!175 l!1094 lt!3151) lt!3163)))

(declare-fun b!12502 () Bool)

(declare-fun e!7474 () Bool)

(assert (=> b!12502 (= e!7475 e!7474)))

(declare-fun res!10063 () Bool)

(assert (=> b!12502 (=> res!10063 e!7474)))

(assert (=> b!12502 (= res!10063 (= (h!932 l!1094) lt!3151))))

(declare-fun b!12503 () Bool)

(assert (=> b!12503 (= e!7474 (contains!175 (t!2757 l!1094) lt!3151))))

(assert (= (and d!1769 res!10062) b!12502))

(assert (= (and b!12502 (not res!10063)) b!12503))

(declare-fun m!8513 () Bool)

(assert (=> d!1769 m!8513))

(declare-fun m!8517 () Bool)

(assert (=> d!1769 m!8517))

(assert (=> b!12503 m!8483))

(assert (=> b!12438 d!1769))

(declare-fun d!1777 () Bool)

(declare-fun lt!3164 () Bool)

(assert (=> d!1777 (= lt!3164 (member lt!3151 (content!11 (t!2757 l!1094))))))

(declare-fun e!7478 () Bool)

(assert (=> d!1777 (= lt!3164 e!7478)))

(declare-fun res!10065 () Bool)

(assert (=> d!1777 (=> (not res!10065) (not e!7478))))

(assert (=> d!1777 (= res!10065 (is-Cons!366 (t!2757 l!1094)))))

(assert (=> d!1777 (= (contains!175 (t!2757 l!1094) lt!3151) lt!3164)))

(declare-fun b!12505 () Bool)

(declare-fun e!7476 () Bool)

(assert (=> b!12505 (= e!7478 e!7476)))

(declare-fun res!10066 () Bool)

(assert (=> b!12505 (=> res!10066 e!7476)))

(assert (=> b!12505 (= res!10066 (= (h!932 (t!2757 l!1094)) lt!3151))))

(declare-fun b!12507 () Bool)

(assert (=> b!12507 (= e!7476 (contains!175 (t!2757 (t!2757 l!1094)) lt!3151))))

(assert (= (and d!1777 res!10065) b!12505))

(assert (= (and b!12505 (not res!10066)) b!12507))

(declare-fun m!8523 () Bool)

(assert (=> d!1777 m!8523))

(declare-fun m!8527 () Bool)

(assert (=> d!1777 m!8527))

(declare-fun m!8529 () Bool)

(assert (=> b!12507 m!8529))

(assert (=> b!12438 d!1777))

(declare-fun d!1781 () Bool)

(assert (=> d!1781 (contains!175 (t!2757 l!1094) (tuple2!429 key!303 v!194))))

(declare-fun lt!3174 () Unit!270)

(declare-fun choose!166 (List!370 (_ BitVec 64) B!456) Unit!270)

(assert (=> d!1781 (= lt!3174 (choose!166 (t!2757 l!1094) key!303 v!194))))

(declare-fun e!7488 () Bool)

(assert (=> d!1781 e!7488))

(declare-fun res!10076 () Bool)

(assert (=> d!1781 (=> (not res!10076) (not e!7488))))

(assert (=> d!1781 (= res!10076 (isStrictlySorted!67 (t!2757 l!1094)))))

(assert (=> d!1781 (= (lemmaGetValueByKeyImpliesContainsTuple!6 (t!2757 l!1094) key!303 v!194) lt!3174)))

(declare-fun b!12516 () Bool)

(assert (=> b!12516 (= e!7488 (= (getValueByKey!49 (t!2757 l!1094) key!303) (Some!54 v!194)))))

(assert (= (and d!1781 res!10076) b!12516))

(declare-fun m!8537 () Bool)

(assert (=> d!1781 m!8537))

(declare-fun m!8540 () Bool)

(assert (=> d!1781 m!8540))

(assert (=> d!1781 m!8493))

(assert (=> b!12516 m!8489))

(assert (=> b!12438 d!1781))

(declare-fun b!12525 () Bool)

(declare-fun e!7496 () Option!55)

(assert (=> b!12525 (= e!7496 (getValueByKey!49 (t!2757 (t!2757 l!1094)) key!303))))

(declare-fun b!12524 () Bool)

(declare-fun e!7495 () Option!55)

(assert (=> b!12524 (= e!7495 e!7496)))

(declare-fun c!1116 () Bool)

(assert (=> b!12524 (= c!1116 (and (is-Cons!366 (t!2757 l!1094)) (not (= (_1!214 (h!932 (t!2757 l!1094))) key!303))))))

(declare-fun b!12526 () Bool)

(assert (=> b!12526 (= e!7496 None!53)))

(declare-fun b!12523 () Bool)

(assert (=> b!12523 (= e!7495 (Some!54 (_2!214 (h!932 (t!2757 l!1094)))))))

(declare-fun d!1786 () Bool)

(declare-fun c!1115 () Bool)

(assert (=> d!1786 (= c!1115 (and (is-Cons!366 (t!2757 l!1094)) (= (_1!214 (h!932 (t!2757 l!1094))) key!303)))))

(assert (=> d!1786 (= (getValueByKey!49 (t!2757 l!1094) key!303) e!7495)))

(assert (= (and d!1786 c!1115) b!12523))

(assert (= (and d!1786 (not c!1115)) b!12524))

(assert (= (and b!12524 c!1116) b!12525))

(assert (= (and b!12524 (not c!1116)) b!12526))

(declare-fun m!8543 () Bool)

(assert (=> b!12525 m!8543))

(assert (=> b!12442 d!1786))

(declare-fun b!12540 () Bool)

(declare-fun e!7504 () Bool)

(declare-fun tp!2090 () Bool)

(assert (=> b!12540 (= e!7504 (and tp_is_empty!629 tp!2090))))

(assert (=> b!12440 (= tp!2084 e!7504)))

(assert (= (and b!12440 (is-Cons!366 (t!2757 l!1094))) b!12540))

(push 1)

