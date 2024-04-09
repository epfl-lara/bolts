; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88344 () Bool)

(assert start!88344)

(declare-fun b!1017059 () Bool)

(assert (=> b!1017059 true))

(assert (=> b!1017059 true))

(declare-fun bs!29550 () Bool)

(declare-fun b!1017061 () Bool)

(assert (= bs!29550 (and b!1017061 b!1017059)))

(declare-fun lambda!1084 () Int)

(declare-datatypes ((B!1554 0))(
  ( (B!1555 (val!11861 Int)) )
))
(declare-datatypes ((tuple2!15358 0))(
  ( (tuple2!15359 (_1!7689 (_ BitVec 64)) (_2!7689 B!1554)) )
))
(declare-datatypes ((List!21659 0))(
  ( (Nil!21656) (Cons!21655 (h!22853 tuple2!15358) (t!30668 List!21659)) )
))
(declare-fun l!1114 () List!21659)

(declare-fun lt!449402 () List!21659)

(declare-fun lambda!1085 () Int)

(assert (=> bs!29550 (= (= lt!449402 l!1114) (= lambda!1085 lambda!1084))))

(assert (=> b!1017061 true))

(assert (=> b!1017061 true))

(declare-fun b!1017057 () Bool)

(declare-fun res!682255 () Bool)

(declare-fun e!572230 () Bool)

(assert (=> b!1017057 (=> (not res!682255) (not e!572230))))

(declare-datatypes ((List!21660 0))(
  ( (Nil!21657) (Cons!21656 (h!22854 (_ BitVec 64)) (t!30669 List!21660)) )
))
(declare-fun keys!40 () List!21660)

(assert (=> b!1017057 (= res!682255 (is-Cons!21656 keys!40))))

(declare-fun b!1017058 () Bool)

(declare-fun e!572229 () Bool)

(assert (=> b!1017058 (= e!572230 (not e!572229))))

(declare-fun res!682256 () Bool)

(assert (=> b!1017058 (=> res!682256 e!572229)))

(declare-fun forall!294 (List!21660 Int) Bool)

(assert (=> b!1017058 (= res!682256 (not (forall!294 (t!30669 keys!40) lambda!1084)))))

(declare-datatypes ((Option!617 0))(
  ( (Some!616 (v!14465 B!1554)) (None!615) )
))
(declare-fun isDefined!413 (Option!617) Bool)

(declare-fun getValueByKey!566 (List!21659 (_ BitVec 64)) Option!617)

(assert (=> b!1017058 (isDefined!413 (getValueByKey!566 lt!449402 (h!22854 keys!40)))))

(declare-datatypes ((Unit!33232 0))(
  ( (Unit!33233) )
))
(declare-fun lt!449401 () Unit!33232)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!391 (List!21659 (_ BitVec 64)) Unit!33232)

(assert (=> b!1017058 (= lt!449401 (lemmaContainsKeyImpliesGetValueByKeyDefined!391 lt!449402 (h!22854 keys!40)))))

(declare-fun newHead!31 () tuple2!15358)

(assert (=> b!1017058 (= lt!449402 (Cons!21655 newHead!31 l!1114))))

(declare-fun containsKey!502 (List!21659 (_ BitVec 64)) Bool)

(assert (=> b!1017058 (containsKey!502 l!1114 (h!22854 keys!40))))

(declare-fun lt!449400 () Unit!33232)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!21 (List!21659 (_ BitVec 64)) Unit!33232)

(assert (=> b!1017058 (= lt!449400 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!21 l!1114 (h!22854 keys!40)))))

(declare-fun res!682253 () Bool)

(assert (=> b!1017059 (=> (not res!682253) (not e!572230))))

(assert (=> b!1017059 (= res!682253 (forall!294 keys!40 lambda!1084))))

(declare-fun b!1017060 () Bool)

(declare-fun res!682257 () Bool)

(assert (=> b!1017060 (=> (not res!682257) (not e!572230))))

(declare-fun isEmpty!903 (List!21659) Bool)

(assert (=> b!1017060 (= res!682257 (not (isEmpty!903 l!1114)))))

(assert (=> b!1017061 (= e!572229 (forall!294 keys!40 lambda!1085))))

(assert (=> b!1017061 (forall!294 (t!30669 keys!40) lambda!1085)))

(declare-fun lt!449403 () Unit!33232)

(declare-fun value!178 () B!1554)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!56 (List!21659 List!21660 B!1554 tuple2!15358) Unit!33232)

(assert (=> b!1017061 (= lt!449403 (lemmaForallGetValueByKeySameWithASmallerHead!56 l!1114 (t!30669 keys!40) value!178 newHead!31))))

(declare-fun b!1017062 () Bool)

(declare-fun e!572228 () Bool)

(declare-fun tp_is_empty!23621 () Bool)

(declare-fun tp!70835 () Bool)

(assert (=> b!1017062 (= e!572228 (and tp_is_empty!23621 tp!70835))))

(declare-fun b!1017063 () Bool)

(declare-fun res!682254 () Bool)

(assert (=> b!1017063 (=> (not res!682254) (not e!572230))))

(declare-fun head!976 (List!21659) tuple2!15358)

(assert (=> b!1017063 (= res!682254 (bvslt (_1!7689 newHead!31) (_1!7689 (head!976 l!1114))))))

(declare-fun res!682252 () Bool)

(assert (=> start!88344 (=> (not res!682252) (not e!572230))))

(declare-fun isStrictlySorted!625 (List!21659) Bool)

(assert (=> start!88344 (= res!682252 (isStrictlySorted!625 l!1114))))

(assert (=> start!88344 e!572230))

(assert (=> start!88344 e!572228))

(assert (=> start!88344 true))

(assert (=> start!88344 tp_is_empty!23621))

(assert (= (and start!88344 res!682252) b!1017060))

(assert (= (and b!1017060 res!682257) b!1017059))

(assert (= (and b!1017059 res!682253) b!1017063))

(assert (= (and b!1017063 res!682254) b!1017057))

(assert (= (and b!1017057 res!682255) b!1017058))

(assert (= (and b!1017058 (not res!682256)) b!1017061))

(assert (= (and start!88344 (is-Cons!21655 l!1114)) b!1017062))

(declare-fun m!938679 () Bool)

(assert (=> b!1017061 m!938679))

(declare-fun m!938681 () Bool)

(assert (=> b!1017061 m!938681))

(declare-fun m!938683 () Bool)

(assert (=> b!1017061 m!938683))

(declare-fun m!938685 () Bool)

(assert (=> b!1017058 m!938685))

(declare-fun m!938687 () Bool)

(assert (=> b!1017058 m!938687))

(declare-fun m!938689 () Bool)

(assert (=> b!1017058 m!938689))

(declare-fun m!938691 () Bool)

(assert (=> b!1017058 m!938691))

(declare-fun m!938693 () Bool)

(assert (=> b!1017058 m!938693))

(assert (=> b!1017058 m!938691))

(declare-fun m!938695 () Bool)

(assert (=> b!1017058 m!938695))

(declare-fun m!938697 () Bool)

(assert (=> b!1017059 m!938697))

(declare-fun m!938699 () Bool)

(assert (=> b!1017063 m!938699))

(declare-fun m!938701 () Bool)

(assert (=> start!88344 m!938701))

(declare-fun m!938703 () Bool)

(assert (=> b!1017060 m!938703))

(push 1)

(assert (not b!1017061))

(assert (not b!1017063))

(assert (not b!1017059))

(assert tp_is_empty!23621)

(assert (not start!88344))

(assert (not b!1017062))

(assert (not b!1017060))

(assert (not b!1017058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121469 () Bool)

(assert (=> d!121469 (= (isEmpty!903 l!1114) (is-Nil!21656 l!1114))))

(assert (=> b!1017060 d!121469))

(declare-fun d!121471 () Bool)

(declare-fun res!682283 () Bool)

(declare-fun e!572260 () Bool)

(assert (=> d!121471 (=> res!682283 e!572260)))

(assert (=> d!121471 (= res!682283 (is-Nil!21657 keys!40))))

(assert (=> d!121471 (= (forall!294 keys!40 lambda!1085) e!572260)))

(declare-fun b!1017101 () Bool)

(declare-fun e!572261 () Bool)

(assert (=> b!1017101 (= e!572260 e!572261)))

(declare-fun res!682284 () Bool)

(assert (=> b!1017101 (=> (not res!682284) (not e!572261))))

(declare-fun dynLambda!1932 (Int (_ BitVec 64)) Bool)

(assert (=> b!1017101 (= res!682284 (dynLambda!1932 lambda!1085 (h!22854 keys!40)))))

(declare-fun b!1017102 () Bool)

(assert (=> b!1017102 (= e!572261 (forall!294 (t!30669 keys!40) lambda!1085))))

(assert (= (and d!121471 (not res!682283)) b!1017101))

(assert (= (and b!1017101 res!682284) b!1017102))

(declare-fun b_lambda!15619 () Bool)

(assert (=> (not b_lambda!15619) (not b!1017101)))

(declare-fun m!938727 () Bool)

(assert (=> b!1017101 m!938727))

(assert (=> b!1017102 m!938681))

(assert (=> b!1017061 d!121471))

(declare-fun d!121473 () Bool)

(declare-fun res!682285 () Bool)

(declare-fun e!572262 () Bool)

(assert (=> d!121473 (=> res!682285 e!572262)))

(assert (=> d!121473 (= res!682285 (is-Nil!21657 (t!30669 keys!40)))))

(assert (=> d!121473 (= (forall!294 (t!30669 keys!40) lambda!1085) e!572262)))

(declare-fun b!1017103 () Bool)

(declare-fun e!572263 () Bool)

(assert (=> b!1017103 (= e!572262 e!572263)))

(declare-fun res!682286 () Bool)

(assert (=> b!1017103 (=> (not res!682286) (not e!572263))))

(assert (=> b!1017103 (= res!682286 (dynLambda!1932 lambda!1085 (h!22854 (t!30669 keys!40))))))

(declare-fun b!1017104 () Bool)

(assert (=> b!1017104 (= e!572263 (forall!294 (t!30669 (t!30669 keys!40)) lambda!1085))))

(assert (= (and d!121473 (not res!682285)) b!1017103))

(assert (= (and b!1017103 res!682286) b!1017104))

(declare-fun b_lambda!15621 () Bool)

(assert (=> (not b_lambda!15621) (not b!1017103)))

(declare-fun m!938729 () Bool)

(assert (=> b!1017103 m!938729))

(declare-fun m!938731 () Bool)

(assert (=> b!1017104 m!938731))

(assert (=> b!1017061 d!121473))

(declare-fun bs!29557 () Bool)

(declare-fun b!1017136 () Bool)

(assert (= bs!29557 (and b!1017136 b!1017059)))

(declare-fun lambda!1096 () Int)

(assert (=> bs!29557 (= lambda!1096 lambda!1084)))

(declare-fun bs!29558 () Bool)

(assert (= bs!29558 (and b!1017136 b!1017061)))

(assert (=> bs!29558 (= (= l!1114 lt!449402) (= lambda!1096 lambda!1085))))

(assert (=> b!1017136 true))

(assert (=> b!1017136 true))

(declare-fun bs!29559 () Bool)

(declare-fun d!121475 () Bool)

(assert (= bs!29559 (and d!121475 b!1017059)))

(declare-fun lambda!1097 () Int)

(assert (=> bs!29559 (= (= (Cons!21655 newHead!31 l!1114) l!1114) (= lambda!1097 lambda!1084))))

(declare-fun bs!29560 () Bool)

(assert (= bs!29560 (and d!121475 b!1017061)))

(assert (=> bs!29560 (= (= (Cons!21655 newHead!31 l!1114) lt!449402) (= lambda!1097 lambda!1085))))

(declare-fun bs!29561 () Bool)

(assert (= bs!29561 (and d!121475 b!1017136)))

(assert (=> bs!29561 (= (= (Cons!21655 newHead!31 l!1114) l!1114) (= lambda!1097 lambda!1096))))

(assert (=> d!121475 true))

(assert (=> d!121475 true))

(assert (=> d!121475 true))

(assert (=> d!121475 (forall!294 (t!30669 keys!40) lambda!1097)))

(declare-fun lt!449415 () Unit!33232)

(declare-fun choose!1672 (List!21659 List!21660 B!1554 tuple2!15358) Unit!33232)

(assert (=> d!121475 (= lt!449415 (choose!1672 l!1114 (t!30669 keys!40) value!178 newHead!31))))

(declare-fun e!572280 () Bool)

(assert (=> d!121475 e!572280))

(declare-fun res!682312 () Bool)

(assert (=> d!121475 (=> (not res!682312) (not e!572280))))

(assert (=> d!121475 (= res!682312 (isStrictlySorted!625 l!1114))))

(assert (=> d!121475 (= (lemmaForallGetValueByKeySameWithASmallerHead!56 l!1114 (t!30669 keys!40) value!178 newHead!31) lt!449415)))

(declare-fun b!1017135 () Bool)

(declare-fun res!682311 () Bool)

(assert (=> b!1017135 (=> (not res!682311) (not e!572280))))

(assert (=> b!1017135 (= res!682311 (not (isEmpty!903 l!1114)))))

(declare-fun res!682313 () Bool)

(assert (=> b!1017136 (=> (not res!682313) (not e!572280))))

(assert (=> b!1017136 (= res!682313 (forall!294 (t!30669 keys!40) lambda!1096))))

(declare-fun b!1017137 () Bool)

(assert (=> b!1017137 (= e!572280 (bvslt (_1!7689 newHead!31) (_1!7689 (head!976 l!1114))))))

(assert (= (and d!121475 res!682312) b!1017135))

(assert (= (and b!1017135 res!682311) b!1017136))

(assert (= (and b!1017136 res!682313) b!1017137))

(declare-fun m!938749 () Bool)

(assert (=> d!121475 m!938749))

(declare-fun m!938751 () Bool)

(assert (=> d!121475 m!938751))

(assert (=> d!121475 m!938701))

(assert (=> b!1017135 m!938703))

(declare-fun m!938753 () Bool)

(assert (=> b!1017136 m!938753))

(assert (=> b!1017137 m!938699))

(assert (=> b!1017061 d!121475))

(declare-fun d!121487 () Bool)

(declare-fun res!682336 () Bool)

(declare-fun e!572303 () Bool)

(assert (=> d!121487 (=> res!682336 e!572303)))

(assert (=> d!121487 (= res!682336 (or (is-Nil!21656 l!1114) (is-Nil!21656 (t!30668 l!1114))))))

(assert (=> d!121487 (= (isStrictlySorted!625 l!1114) e!572303)))

(declare-fun b!1017162 () Bool)

(declare-fun e!572304 () Bool)

(assert (=> b!1017162 (= e!572303 e!572304)))

(declare-fun res!682337 () Bool)

(assert (=> b!1017162 (=> (not res!682337) (not e!572304))))

(assert (=> b!1017162 (= res!682337 (bvslt (_1!7689 (h!22853 l!1114)) (_1!7689 (h!22853 (t!30668 l!1114)))))))

(declare-fun b!1017163 () Bool)

(assert (=> b!1017163 (= e!572304 (isStrictlySorted!625 (t!30668 l!1114)))))

(assert (= (and d!121487 (not res!682336)) b!1017162))

(assert (= (and b!1017162 res!682337) b!1017163))

(declare-fun m!938765 () Bool)

(assert (=> b!1017163 m!938765))

(assert (=> start!88344 d!121487))

(declare-fun d!121497 () Bool)

(declare-fun res!682338 () Bool)

(declare-fun e!572305 () Bool)

(assert (=> d!121497 (=> res!682338 e!572305)))

(assert (=> d!121497 (= res!682338 (is-Nil!21657 keys!40))))

(assert (=> d!121497 (= (forall!294 keys!40 lambda!1084) e!572305)))

(declare-fun b!1017164 () Bool)

(declare-fun e!572306 () Bool)

(assert (=> b!1017164 (= e!572305 e!572306)))

(declare-fun res!682339 () Bool)

(assert (=> b!1017164 (=> (not res!682339) (not e!572306))))

(assert (=> b!1017164 (= res!682339 (dynLambda!1932 lambda!1084 (h!22854 keys!40)))))

(declare-fun b!1017165 () Bool)

(assert (=> b!1017165 (= e!572306 (forall!294 (t!30669 keys!40) lambda!1084))))

(assert (= (and d!121497 (not res!682338)) b!1017164))

(assert (= (and b!1017164 res!682339) b!1017165))

(declare-fun b_lambda!15629 () Bool)

(assert (=> (not b_lambda!15629) (not b!1017164)))

(declare-fun m!938771 () Bool)

(assert (=> b!1017164 m!938771))

(assert (=> b!1017165 m!938689))

(assert (=> b!1017059 d!121497))

(declare-fun d!121501 () Bool)

(assert (=> d!121501 (= (head!976 l!1114) (h!22853 l!1114))))

(assert (=> b!1017063 d!121501))

(declare-fun d!121503 () Bool)

(declare-fun res!682347 () Bool)

(declare-fun e!572314 () Bool)

(assert (=> d!121503 (=> res!682347 e!572314)))

(assert (=> d!121503 (= res!682347 (and (is-Cons!21655 l!1114) (= (_1!7689 (h!22853 l!1114)) (h!22854 keys!40))))))

(assert (=> d!121503 (= (containsKey!502 l!1114 (h!22854 keys!40)) e!572314)))

(declare-fun b!1017173 () Bool)

(declare-fun e!572315 () Bool)

(assert (=> b!1017173 (= e!572314 e!572315)))

(declare-fun res!682348 () Bool)

(assert (=> b!1017173 (=> (not res!682348) (not e!572315))))

(assert (=> b!1017173 (= res!682348 (and (or (not (is-Cons!21655 l!1114)) (bvsle (_1!7689 (h!22853 l!1114)) (h!22854 keys!40))) (is-Cons!21655 l!1114) (bvslt (_1!7689 (h!22853 l!1114)) (h!22854 keys!40))))))

(declare-fun b!1017174 () Bool)

(assert (=> b!1017174 (= e!572315 (containsKey!502 (t!30668 l!1114) (h!22854 keys!40)))))

(assert (= (and d!121503 (not res!682347)) b!1017173))

(assert (= (and b!1017173 res!682348) b!1017174))

(declare-fun m!938781 () Bool)

(assert (=> b!1017174 m!938781))

(assert (=> b!1017058 d!121503))

(declare-fun d!121509 () Bool)

(declare-fun res!682357 () Bool)

(declare-fun e!572320 () Bool)

(assert (=> d!121509 (=> res!682357 e!572320)))

(assert (=> d!121509 (= res!682357 (is-Nil!21657 (t!30669 keys!40)))))

(assert (=> d!121509 (= (forall!294 (t!30669 keys!40) lambda!1084) e!572320)))

(declare-fun b!1017181 () Bool)

(declare-fun e!572321 () Bool)

(assert (=> b!1017181 (= e!572320 e!572321)))

(declare-fun res!682358 () Bool)

(assert (=> b!1017181 (=> (not res!682358) (not e!572321))))

(assert (=> b!1017181 (= res!682358 (dynLambda!1932 lambda!1084 (h!22854 (t!30669 keys!40))))))

(declare-fun b!1017182 () Bool)

(assert (=> b!1017182 (= e!572321 (forall!294 (t!30669 (t!30669 keys!40)) lambda!1084))))

(assert (= (and d!121509 (not res!682357)) b!1017181))

(assert (= (and b!1017181 res!682358) b!1017182))

(declare-fun b_lambda!15631 () Bool)

(assert (=> (not b_lambda!15631) (not b!1017181)))

(declare-fun m!938783 () Bool)

(assert (=> b!1017181 m!938783))

(declare-fun m!938785 () Bool)

(assert (=> b!1017182 m!938785))

(assert (=> b!1017058 d!121509))

(declare-fun d!121511 () Bool)

(assert (=> d!121511 (isDefined!413 (getValueByKey!566 lt!449402 (h!22854 keys!40)))))

(declare-fun lt!449426 () Unit!33232)

(declare-fun choose!1676 (List!21659 (_ BitVec 64)) Unit!33232)

(assert (=> d!121511 (= lt!449426 (choose!1676 lt!449402 (h!22854 keys!40)))))

(declare-fun e!572329 () Bool)

(assert (=> d!121511 e!572329))

(declare-fun res!682362 () Bool)

(assert (=> d!121511 (=> (not res!682362) (not e!572329))))

(assert (=> d!121511 (= res!682362 (isStrictlySorted!625 lt!449402))))

(assert (=> d!121511 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!391 lt!449402 (h!22854 keys!40)) lt!449426)))

(declare-fun b!1017196 () Bool)

(assert (=> b!1017196 (= e!572329 (containsKey!502 lt!449402 (h!22854 keys!40)))))

(assert (= (and d!121511 res!682362) b!1017196))

(assert (=> d!121511 m!938691))

(assert (=> d!121511 m!938691))

(assert (=> d!121511 m!938693))

(declare-fun m!938793 () Bool)

(assert (=> d!121511 m!938793))

(declare-fun m!938795 () Bool)

(assert (=> d!121511 m!938795))

(declare-fun m!938797 () Bool)

(assert (=> b!1017196 m!938797))

(assert (=> b!1017058 d!121511))

(declare-fun b!1017223 () Bool)

(declare-fun e!572343 () Option!617)

(declare-fun e!572344 () Option!617)

(assert (=> b!1017223 (= e!572343 e!572344)))

(declare-fun c!102958 () Bool)

(assert (=> b!1017223 (= c!102958 (and (is-Cons!21655 lt!449402) (not (= (_1!7689 (h!22853 lt!449402)) (h!22854 keys!40)))))))

(declare-fun b!1017225 () Bool)

(assert (=> b!1017225 (= e!572344 None!615)))

(declare-fun b!1017224 () Bool)

(assert (=> b!1017224 (= e!572344 (getValueByKey!566 (t!30668 lt!449402) (h!22854 keys!40)))))

(declare-fun b!1017222 () Bool)

(assert (=> b!1017222 (= e!572343 (Some!616 (_2!7689 (h!22853 lt!449402))))))

(declare-fun d!121515 () Bool)

(declare-fun c!102957 () Bool)

(assert (=> d!121515 (= c!102957 (and (is-Cons!21655 lt!449402) (= (_1!7689 (h!22853 lt!449402)) (h!22854 keys!40))))))

(assert (=> d!121515 (= (getValueByKey!566 lt!449402 (h!22854 keys!40)) e!572343)))

(assert (= (and d!121515 c!102957) b!1017222))

(assert (= (and d!121515 (not c!102957)) b!1017223))

(assert (= (and b!1017223 c!102958) b!1017224))

(assert (= (and b!1017223 (not c!102958)) b!1017225))

(declare-fun m!938807 () Bool)

(assert (=> b!1017224 m!938807))

(assert (=> b!1017058 d!121515))

(declare-fun d!121519 () Bool)

(declare-fun isEmpty!906 (Option!617) Bool)

(assert (=> d!121519 (= (isDefined!413 (getValueByKey!566 lt!449402 (h!22854 keys!40))) (not (isEmpty!906 (getValueByKey!566 lt!449402 (h!22854 keys!40)))))))

(declare-fun bs!29570 () Bool)

(assert (= bs!29570 d!121519))

(assert (=> bs!29570 m!938691))

(declare-fun m!938813 () Bool)

(assert (=> bs!29570 m!938813))

(assert (=> b!1017058 d!121519))

(declare-fun d!121525 () Bool)

(assert (=> d!121525 (containsKey!502 l!1114 (h!22854 keys!40))))

(declare-fun lt!449430 () Unit!33232)

(declare-fun choose!1677 (List!21659 (_ BitVec 64)) Unit!33232)

(assert (=> d!121525 (= lt!449430 (choose!1677 l!1114 (h!22854 keys!40)))))

(declare-fun e!572353 () Bool)

(assert (=> d!121525 e!572353))

(declare-fun res!682374 () Bool)

(assert (=> d!121525 (=> (not res!682374) (not e!572353))))

(assert (=> d!121525 (= res!682374 (isStrictlySorted!625 l!1114))))

(assert (=> d!121525 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!21 l!1114 (h!22854 keys!40)) lt!449430)))

(declare-fun b!1017236 () Bool)

(assert (=> b!1017236 (= e!572353 (isDefined!413 (getValueByKey!566 l!1114 (h!22854 keys!40))))))

(assert (= (and d!121525 res!682374) b!1017236))

(assert (=> d!121525 m!938685))

(declare-fun m!938821 () Bool)

(assert (=> d!121525 m!938821))

(assert (=> d!121525 m!938701))

(declare-fun m!938823 () Bool)

(assert (=> b!1017236 m!938823))

(assert (=> b!1017236 m!938823))

(declare-fun m!938825 () Bool)

(assert (=> b!1017236 m!938825))

(assert (=> b!1017058 d!121525))

(declare-fun b!1017241 () Bool)

(declare-fun e!572356 () Bool)

(declare-fun tp!70844 () Bool)

(assert (=> b!1017241 (= e!572356 (and tp_is_empty!23621 tp!70844))))

(assert (=> b!1017062 (= tp!70835 e!572356)))

(assert (= (and b!1017062 (is-Cons!21655 (t!30668 l!1114))) b!1017241))

(declare-fun b_lambda!15649 () Bool)

(assert (= b_lambda!15619 (or b!1017061 b_lambda!15649)))

(declare-fun bs!29577 () Bool)

(declare-fun d!121539 () Bool)

(assert (= bs!29577 (and d!121539 b!1017061)))

(assert (=> bs!29577 (= (dynLambda!1932 lambda!1085 (h!22854 keys!40)) (= (getValueByKey!566 lt!449402 (h!22854 keys!40)) (Some!616 value!178)))))

(assert (=> bs!29577 m!938691))

(assert (=> b!1017101 d!121539))

(declare-fun b_lambda!15651 () Bool)

(assert (= b_lambda!15631 (or b!1017059 b_lambda!15651)))

(declare-fun bs!29578 () Bool)

(declare-fun d!121541 () Bool)

(assert (= bs!29578 (and d!121541 b!1017059)))

(assert (=> bs!29578 (= (dynLambda!1932 lambda!1084 (h!22854 (t!30669 keys!40))) (= (getValueByKey!566 l!1114 (h!22854 (t!30669 keys!40))) (Some!616 value!178)))))

(declare-fun m!938827 () Bool)

(assert (=> bs!29578 m!938827))

(assert (=> b!1017181 d!121541))

(declare-fun b_lambda!15653 () Bool)

(assert (= b_lambda!15629 (or b!1017059 b_lambda!15653)))

(declare-fun bs!29579 () Bool)

(declare-fun d!121543 () Bool)

(assert (= bs!29579 (and d!121543 b!1017059)))

(assert (=> bs!29579 (= (dynLambda!1932 lambda!1084 (h!22854 keys!40)) (= (getValueByKey!566 l!1114 (h!22854 keys!40)) (Some!616 value!178)))))

(assert (=> bs!29579 m!938823))

(assert (=> b!1017164 d!121543))

(declare-fun b_lambda!15655 () Bool)

(assert (= b_lambda!15621 (or b!1017061 b_lambda!15655)))

(declare-fun bs!29580 () Bool)

(declare-fun d!121545 () Bool)

(assert (= bs!29580 (and d!121545 b!1017061)))

(assert (=> bs!29580 (= (dynLambda!1932 lambda!1085 (h!22854 (t!30669 keys!40))) (= (getValueByKey!566 lt!449402 (h!22854 (t!30669 keys!40))) (Some!616 value!178)))))

(declare-fun m!938829 () Bool)

(assert (=> bs!29580 m!938829))

(assert (=> b!1017103 d!121545))

(push 1)

(assert (not b!1017104))

(assert (not d!121525))

(assert (not b!1017163))

(assert (not b!1017174))

(assert (not d!121511))

(assert (not bs!29579))

(assert (not bs!29577))

(assert (not b!1017165))

(assert (not b_lambda!15655))

(assert (not b!1017137))

(assert (not b!1017135))

(assert (not b!1017241))

(assert (not b!1017102))

(assert (not b!1017136))

(assert (not bs!29580))

(assert (not d!121519))

(assert tp_is_empty!23621)

