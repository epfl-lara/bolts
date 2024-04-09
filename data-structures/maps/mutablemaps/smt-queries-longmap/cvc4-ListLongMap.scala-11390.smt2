; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132470 () Bool)

(assert start!132470)

(declare-fun b!1553501 () Bool)

(declare-fun e!864975 () Bool)

(declare-fun e!864973 () Bool)

(assert (=> b!1553501 (= e!864975 (not e!864973))))

(declare-fun res!1063391 () Bool)

(assert (=> b!1553501 (=> res!1063391 e!864973)))

(declare-datatypes ((B!2220 0))(
  ( (B!2221 (val!19196 Int)) )
))
(declare-datatypes ((tuple2!24908 0))(
  ( (tuple2!24909 (_1!12464 (_ BitVec 64)) (_2!12464 B!2220)) )
))
(declare-datatypes ((List!36376 0))(
  ( (Nil!36373) (Cons!36372 (h!37819 tuple2!24908) (t!51104 List!36376)) )
))
(declare-datatypes ((ListLongMap!22529 0))(
  ( (ListLongMap!22530 (toList!11280 List!36376)) )
))
(declare-fun lm!249 () ListLongMap!22529)

(declare-fun isStrictlySorted!889 (List!36376) Bool)

(assert (=> b!1553501 (= res!1063391 (not (isStrictlySorted!889 (toList!11280 lm!249))))))

(declare-fun e!864974 () Bool)

(assert (=> b!1553501 e!864974))

(declare-fun res!1063392 () Bool)

(assert (=> b!1553501 (=> (not res!1063392) (not e!864974))))

(declare-fun lt!669661 () List!36376)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun containsKey!761 (List!36376 (_ BitVec 64)) Bool)

(assert (=> b!1553501 (= res!1063392 (containsKey!761 lt!669661 a0!49))))

(declare-fun b!96 () B!2220)

(declare-fun a!523 () (_ BitVec 64))

(declare-fun insertStrictlySorted!509 (List!36376 (_ BitVec 64) B!2220) List!36376)

(assert (=> b!1553501 (= lt!669661 (insertStrictlySorted!509 (toList!11280 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51688 0))(
  ( (Unit!51689) )
))
(declare-fun lt!669662 () Unit!51688)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!6 (List!36376 (_ BitVec 64) B!2220 (_ BitVec 64)) Unit!51688)

(assert (=> b!1553501 (= lt!669662 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!6 (toList!11280 lm!249) a!523 b!96 a0!49))))

(declare-fun res!1063390 () Bool)

(assert (=> start!132470 (=> (not res!1063390) (not e!864975))))

(declare-fun contains!10152 (ListLongMap!22529 (_ BitVec 64)) Bool)

(assert (=> start!132470 (= res!1063390 (contains!10152 lm!249 a0!49))))

(assert (=> start!132470 e!864975))

(declare-fun e!864972 () Bool)

(declare-fun inv!57313 (ListLongMap!22529) Bool)

(assert (=> start!132470 (and (inv!57313 lm!249) e!864972)))

(assert (=> start!132470 true))

(declare-fun tp_is_empty!38231 () Bool)

(assert (=> start!132470 tp_is_empty!38231))

(declare-fun b!1553502 () Bool)

(declare-fun res!1063389 () Bool)

(assert (=> b!1553502 (=> (not res!1063389) (not e!864975))))

(assert (=> b!1553502 (= res!1063389 (containsKey!761 (toList!11280 lm!249) a0!49))))

(declare-fun b!1553503 () Bool)

(declare-datatypes ((Option!818 0))(
  ( (Some!817 (v!21998 B!2220)) (None!816) )
))
(declare-fun getValueByKey!743 (List!36376 (_ BitVec 64)) Option!818)

(assert (=> b!1553503 (= e!864974 (= (getValueByKey!743 lt!669661 a0!49) (getValueByKey!743 (toList!11280 lm!249) a0!49)))))

(declare-fun b!1553504 () Bool)

(declare-fun +!4977 (ListLongMap!22529 tuple2!24908) ListLongMap!22529)

(assert (=> b!1553504 (= e!864973 (contains!10152 (+!4977 lm!249 (tuple2!24909 a!523 b!96)) a0!49))))

(declare-fun isDefined!552 (Option!818) Bool)

(assert (=> b!1553504 (isDefined!552 (getValueByKey!743 (toList!11280 lm!249) a0!49))))

(declare-fun lt!669660 () Unit!51688)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!503 (List!36376 (_ BitVec 64)) Unit!51688)

(assert (=> b!1553504 (= lt!669660 (lemmaContainsKeyImpliesGetValueByKeyDefined!503 (toList!11280 lm!249) a0!49))))

(declare-fun b!1553505 () Bool)

(declare-fun res!1063388 () Bool)

(assert (=> b!1553505 (=> (not res!1063388) (not e!864975))))

(assert (=> b!1553505 (= res!1063388 (not (= a0!49 a!523)))))

(declare-fun b!1553506 () Bool)

(declare-fun tp!112126 () Bool)

(assert (=> b!1553506 (= e!864972 tp!112126)))

(assert (= (and start!132470 res!1063390) b!1553505))

(assert (= (and b!1553505 res!1063388) b!1553502))

(assert (= (and b!1553502 res!1063389) b!1553501))

(assert (= (and b!1553501 res!1063392) b!1553503))

(assert (= (and b!1553501 (not res!1063391)) b!1553504))

(assert (= start!132470 b!1553506))

(declare-fun m!1432207 () Bool)

(assert (=> b!1553502 m!1432207))

(declare-fun m!1432209 () Bool)

(assert (=> b!1553503 m!1432209))

(declare-fun m!1432211 () Bool)

(assert (=> b!1553503 m!1432211))

(declare-fun m!1432213 () Bool)

(assert (=> b!1553501 m!1432213))

(declare-fun m!1432215 () Bool)

(assert (=> b!1553501 m!1432215))

(declare-fun m!1432217 () Bool)

(assert (=> b!1553501 m!1432217))

(declare-fun m!1432219 () Bool)

(assert (=> b!1553501 m!1432219))

(declare-fun m!1432221 () Bool)

(assert (=> start!132470 m!1432221))

(declare-fun m!1432223 () Bool)

(assert (=> start!132470 m!1432223))

(assert (=> b!1553504 m!1432211))

(declare-fun m!1432225 () Bool)

(assert (=> b!1553504 m!1432225))

(assert (=> b!1553504 m!1432211))

(declare-fun m!1432227 () Bool)

(assert (=> b!1553504 m!1432227))

(assert (=> b!1553504 m!1432225))

(declare-fun m!1432229 () Bool)

(assert (=> b!1553504 m!1432229))

(declare-fun m!1432231 () Bool)

(assert (=> b!1553504 m!1432231))

(push 1)

(assert (not b!1553506))

(assert (not b!1553503))

(assert (not b!1553504))

(assert (not start!132470))

(assert (not b!1553501))

(assert tp_is_empty!38231)

(assert (not b!1553502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161491 () Bool)

(declare-fun res!1063401 () Bool)

(declare-fun e!864988 () Bool)

(assert (=> d!161491 (=> res!1063401 e!864988)))

(assert (=> d!161491 (= res!1063401 (and (is-Cons!36372 (toList!11280 lm!249)) (= (_1!12464 (h!37819 (toList!11280 lm!249))) a0!49)))))

(assert (=> d!161491 (= (containsKey!761 (toList!11280 lm!249) a0!49) e!864988)))

(declare-fun b!1553523 () Bool)

(declare-fun e!864989 () Bool)

(assert (=> b!1553523 (= e!864988 e!864989)))

(declare-fun res!1063402 () Bool)

(assert (=> b!1553523 (=> (not res!1063402) (not e!864989))))

(assert (=> b!1553523 (= res!1063402 (and (or (not (is-Cons!36372 (toList!11280 lm!249))) (bvsle (_1!12464 (h!37819 (toList!11280 lm!249))) a0!49)) (is-Cons!36372 (toList!11280 lm!249)) (bvslt (_1!12464 (h!37819 (toList!11280 lm!249))) a0!49)))))

(declare-fun b!1553524 () Bool)

(assert (=> b!1553524 (= e!864989 (containsKey!761 (t!51104 (toList!11280 lm!249)) a0!49))))

(assert (= (and d!161491 (not res!1063401)) b!1553523))

(assert (= (and b!1553523 res!1063402) b!1553524))

(declare-fun m!1432233 () Bool)

(assert (=> b!1553524 m!1432233))

(assert (=> b!1553502 d!161491))

(declare-fun d!161497 () Bool)

(declare-fun res!1063411 () Bool)

(declare-fun e!865002 () Bool)

(assert (=> d!161497 (=> res!1063411 e!865002)))

(assert (=> d!161497 (= res!1063411 (or (is-Nil!36373 (toList!11280 lm!249)) (is-Nil!36373 (t!51104 (toList!11280 lm!249)))))))

(assert (=> d!161497 (= (isStrictlySorted!889 (toList!11280 lm!249)) e!865002)))

(declare-fun b!1553541 () Bool)

(declare-fun e!865003 () Bool)

(assert (=> b!1553541 (= e!865002 e!865003)))

(declare-fun res!1063412 () Bool)

(assert (=> b!1553541 (=> (not res!1063412) (not e!865003))))

(assert (=> b!1553541 (= res!1063412 (bvslt (_1!12464 (h!37819 (toList!11280 lm!249))) (_1!12464 (h!37819 (t!51104 (toList!11280 lm!249))))))))

(declare-fun b!1553542 () Bool)

(assert (=> b!1553542 (= e!865003 (isStrictlySorted!889 (t!51104 (toList!11280 lm!249))))))

(assert (= (and d!161497 (not res!1063411)) b!1553541))

(assert (= (and b!1553541 res!1063412) b!1553542))

(declare-fun m!1432241 () Bool)

(assert (=> b!1553542 m!1432241))

(assert (=> b!1553501 d!161497))

(declare-fun d!161505 () Bool)

(declare-fun res!1063415 () Bool)

(declare-fun e!865006 () Bool)

(assert (=> d!161505 (=> res!1063415 e!865006)))

(assert (=> d!161505 (= res!1063415 (and (is-Cons!36372 lt!669661) (= (_1!12464 (h!37819 lt!669661)) a0!49)))))

(assert (=> d!161505 (= (containsKey!761 lt!669661 a0!49) e!865006)))

(declare-fun b!1553545 () Bool)

(declare-fun e!865007 () Bool)

(assert (=> b!1553545 (= e!865006 e!865007)))

(declare-fun res!1063416 () Bool)

(assert (=> b!1553545 (=> (not res!1063416) (not e!865007))))

(assert (=> b!1553545 (= res!1063416 (and (or (not (is-Cons!36372 lt!669661)) (bvsle (_1!12464 (h!37819 lt!669661)) a0!49)) (is-Cons!36372 lt!669661) (bvslt (_1!12464 (h!37819 lt!669661)) a0!49)))))

(declare-fun b!1553546 () Bool)

(assert (=> b!1553546 (= e!865007 (containsKey!761 (t!51104 lt!669661) a0!49))))

(assert (= (and d!161505 (not res!1063415)) b!1553545))

(assert (= (and b!1553545 res!1063416) b!1553546))

(declare-fun m!1432243 () Bool)

(assert (=> b!1553546 m!1432243))

(assert (=> b!1553501 d!161505))

(declare-fun c!143226 () Bool)

(declare-fun bm!71380 () Bool)

(declare-fun e!865041 () List!36376)

(declare-fun call!71384 () List!36376)

(declare-fun $colon$colon!947 (List!36376 tuple2!24908) List!36376)

(assert (=> bm!71380 (= call!71384 ($colon$colon!947 e!865041 (ite c!143226 (h!37819 (toList!11280 lm!249)) (tuple2!24909 a!523 b!96))))))

(declare-fun c!143225 () Bool)

(assert (=> bm!71380 (= c!143225 c!143226)))

(declare-fun bm!71381 () Bool)

(declare-fun call!71385 () List!36376)

(declare-fun call!71383 () List!36376)

(assert (=> bm!71381 (= call!71385 call!71383)))

(declare-fun d!161507 () Bool)

(declare-fun e!865045 () Bool)

(assert (=> d!161507 e!865045))

(declare-fun res!1063434 () Bool)

(assert (=> d!161507 (=> (not res!1063434) (not e!865045))))

(declare-fun lt!669686 () List!36376)

(assert (=> d!161507 (= res!1063434 (isStrictlySorted!889 lt!669686))))

(declare-fun e!865043 () List!36376)

(assert (=> d!161507 (= lt!669686 e!865043)))

(assert (=> d!161507 (= c!143226 (and (is-Cons!36372 (toList!11280 lm!249)) (bvslt (_1!12464 (h!37819 (toList!11280 lm!249))) a!523)))))

(assert (=> d!161507 (isStrictlySorted!889 (toList!11280 lm!249))))

(assert (=> d!161507 (= (insertStrictlySorted!509 (toList!11280 lm!249) a!523 b!96) lt!669686)))

(declare-fun b!1553604 () Bool)

(assert (=> b!1553604 (= e!865041 (insertStrictlySorted!509 (t!51104 (toList!11280 lm!249)) a!523 b!96))))

(declare-fun b!1553605 () Bool)

(declare-fun res!1063435 () Bool)

(assert (=> b!1553605 (=> (not res!1063435) (not e!865045))))

(assert (=> b!1553605 (= res!1063435 (containsKey!761 lt!669686 a!523))))

(declare-fun b!1553606 () Bool)

(declare-fun e!865044 () List!36376)

(assert (=> b!1553606 (= e!865044 call!71385)))

(declare-fun b!1553607 () Bool)

(declare-fun e!865042 () List!36376)

(assert (=> b!1553607 (= e!865042 call!71383)))

(declare-fun b!1553608 () Bool)

(assert (=> b!1553608 (= e!865044 call!71385)))

(declare-fun c!143227 () Bool)

(declare-fun c!143224 () Bool)

(declare-fun b!1553609 () Bool)

(assert (=> b!1553609 (= e!865041 (ite c!143227 (t!51104 (toList!11280 lm!249)) (ite c!143224 (Cons!36372 (h!37819 (toList!11280 lm!249)) (t!51104 (toList!11280 lm!249))) Nil!36373)))))

(declare-fun b!1553610 () Bool)

(assert (=> b!1553610 (= e!865043 e!865042)))

(assert (=> b!1553610 (= c!143227 (and (is-Cons!36372 (toList!11280 lm!249)) (= (_1!12464 (h!37819 (toList!11280 lm!249))) a!523)))))

(declare-fun b!1553611 () Bool)

(declare-fun contains!10154 (List!36376 tuple2!24908) Bool)

(assert (=> b!1553611 (= e!865045 (contains!10154 lt!669686 (tuple2!24909 a!523 b!96)))))

(declare-fun b!1553612 () Bool)

(assert (=> b!1553612 (= e!865043 call!71384)))

(declare-fun bm!71382 () Bool)

(assert (=> bm!71382 (= call!71383 call!71384)))

(declare-fun b!1553613 () Bool)

(assert (=> b!1553613 (= c!143224 (and (is-Cons!36372 (toList!11280 lm!249)) (bvsgt (_1!12464 (h!37819 (toList!11280 lm!249))) a!523)))))

(assert (=> b!1553613 (= e!865042 e!865044)))

(assert (= (and d!161507 c!143226) b!1553612))

(assert (= (and d!161507 (not c!143226)) b!1553610))

(assert (= (and b!1553610 c!143227) b!1553607))

(assert (= (and b!1553610 (not c!143227)) b!1553613))

(assert (= (and b!1553613 c!143224) b!1553606))

(assert (= (and b!1553613 (not c!143224)) b!1553608))

(assert (= (or b!1553606 b!1553608) bm!71381))

(assert (= (or b!1553607 bm!71381) bm!71382))

(assert (= (or b!1553612 bm!71382) bm!71380))

(assert (= (and bm!71380 c!143225) b!1553604))

(assert (= (and bm!71380 (not c!143225)) b!1553609))

(assert (= (and d!161507 res!1063434) b!1553605))

(assert (= (and b!1553605 res!1063435) b!1553611))

(declare-fun m!1432259 () Bool)

(assert (=> b!1553604 m!1432259))

(declare-fun m!1432261 () Bool)

(assert (=> d!161507 m!1432261))

(assert (=> d!161507 m!1432213))

(declare-fun m!1432263 () Bool)

(assert (=> bm!71380 m!1432263))

(declare-fun m!1432265 () Bool)

(assert (=> b!1553611 m!1432265))

(declare-fun m!1432267 () Bool)

(assert (=> b!1553605 m!1432267))

(assert (=> b!1553501 d!161507))

(declare-fun d!161521 () Bool)

(declare-fun e!865069 () Bool)

(assert (=> d!161521 e!865069))

(declare-fun res!1063459 () Bool)

(assert (=> d!161521 (=> (not res!1063459) (not e!865069))))

(assert (=> d!161521 (= res!1063459 (= (containsKey!761 (insertStrictlySorted!509 (toList!11280 lm!249) a!523 b!96) a0!49) (containsKey!761 (toList!11280 lm!249) a0!49)))))

(declare-fun lt!669704 () Unit!51688)

(declare-fun choose!2049 (List!36376 (_ BitVec 64) B!2220 (_ BitVec 64)) Unit!51688)

(assert (=> d!161521 (= lt!669704 (choose!2049 (toList!11280 lm!249) a!523 b!96 a0!49))))

(declare-fun e!865068 () Bool)

(assert (=> d!161521 e!865068))

(declare-fun res!1063458 () Bool)

(assert (=> d!161521 (=> (not res!1063458) (not e!865068))))

(assert (=> d!161521 (= res!1063458 (isStrictlySorted!889 (toList!11280 lm!249)))))

(assert (=> d!161521 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!6 (toList!11280 lm!249) a!523 b!96 a0!49) lt!669704)))

(declare-fun b!1553644 () Bool)

(assert (=> b!1553644 (= e!865068 (not (= a!523 a0!49)))))

(declare-fun b!1553645 () Bool)

(assert (=> b!1553645 (= e!865069 (= (getValueByKey!743 (insertStrictlySorted!509 (toList!11280 lm!249) a!523 b!96) a0!49) (getValueByKey!743 (toList!11280 lm!249) a0!49)))))

(assert (= (and d!161521 res!1063458) b!1553644))

(assert (= (and d!161521 res!1063459) b!1553645))

(declare-fun m!1432293 () Bool)

(assert (=> d!161521 m!1432293))

(assert (=> d!161521 m!1432213))

(assert (=> d!161521 m!1432217))

(declare-fun m!1432295 () Bool)

(assert (=> d!161521 m!1432295))

(assert (=> d!161521 m!1432207))

(assert (=> d!161521 m!1432217))

(assert (=> b!1553645 m!1432217))

(assert (=> b!1553645 m!1432217))

(declare-fun m!1432297 () Bool)

(assert (=> b!1553645 m!1432297))

(assert (=> b!1553645 m!1432211))

(assert (=> b!1553501 d!161521))

(declare-fun d!161529 () Bool)

(declare-fun e!865086 () Bool)

(assert (=> d!161529 e!865086))

(declare-fun res!1063472 () Bool)

(assert (=> d!161529 (=> res!1063472 e!865086)))

(declare-fun lt!669724 () Bool)

(assert (=> d!161529 (= res!1063472 (not lt!669724))))

(declare-fun lt!669722 () Bool)

(assert (=> d!161529 (= lt!669724 lt!669722)))

(declare-fun lt!669723 () Unit!51688)

(declare-fun e!865087 () Unit!51688)

(assert (=> d!161529 (= lt!669723 e!865087)))

(declare-fun c!143236 () Bool)

(assert (=> d!161529 (= c!143236 lt!669722)))

(assert (=> d!161529 (= lt!669722 (containsKey!761 (toList!11280 lm!249) a0!49))))

(assert (=> d!161529 (= (contains!10152 lm!249 a0!49) lt!669724)))

(declare-fun b!1553666 () Bool)

(declare-fun lt!669725 () Unit!51688)

(assert (=> b!1553666 (= e!865087 lt!669725)))

(assert (=> b!1553666 (= lt!669725 (lemmaContainsKeyImpliesGetValueByKeyDefined!503 (toList!11280 lm!249) a0!49))))

(assert (=> b!1553666 (isDefined!552 (getValueByKey!743 (toList!11280 lm!249) a0!49))))

(declare-fun b!1553667 () Bool)

(declare-fun Unit!51693 () Unit!51688)

(assert (=> b!1553667 (= e!865087 Unit!51693)))

(declare-fun b!1553668 () Bool)

(assert (=> b!1553668 (= e!865086 (isDefined!552 (getValueByKey!743 (toList!11280 lm!249) a0!49)))))

(assert (= (and d!161529 c!143236) b!1553666))

(assert (= (and d!161529 (not c!143236)) b!1553667))

(assert (= (and d!161529 (not res!1063472)) b!1553668))

(assert (=> d!161529 m!1432207))

(assert (=> b!1553666 m!1432231))

(assert (=> b!1553666 m!1432211))

(assert (=> b!1553666 m!1432211))

(assert (=> b!1553666 m!1432227))

(assert (=> b!1553668 m!1432211))

(assert (=> b!1553668 m!1432211))

(assert (=> b!1553668 m!1432227))

(assert (=> start!132470 d!161529))

(declare-fun d!161535 () Bool)

(assert (=> d!161535 (= (inv!57313 lm!249) (isStrictlySorted!889 (toList!11280 lm!249)))))

(declare-fun bs!44648 () Bool)

(assert (= bs!44648 d!161535))

(assert (=> bs!44648 m!1432213))

(assert (=> start!132470 d!161535))

(declare-fun d!161539 () Bool)

(declare-fun c!143246 () Bool)

(assert (=> d!161539 (= c!143246 (and (is-Cons!36372 (toList!11280 lm!249)) (= (_1!12464 (h!37819 (toList!11280 lm!249))) a0!49)))))

(declare-fun e!865098 () Option!818)

(assert (=> d!161539 (= (getValueByKey!743 (toList!11280 lm!249) a0!49) e!865098)))

(declare-fun b!1553690 () Bool)

(declare-fun e!865099 () Option!818)

(assert (=> b!1553690 (= e!865099 (getValueByKey!743 (t!51104 (toList!11280 lm!249)) a0!49))))

(declare-fun b!1553688 () Bool)

(assert (=> b!1553688 (= e!865098 (Some!817 (_2!12464 (h!37819 (toList!11280 lm!249)))))))

(declare-fun b!1553689 () Bool)

(assert (=> b!1553689 (= e!865098 e!865099)))

(declare-fun c!143247 () Bool)

(assert (=> b!1553689 (= c!143247 (and (is-Cons!36372 (toList!11280 lm!249)) (not (= (_1!12464 (h!37819 (toList!11280 lm!249))) a0!49))))))

(declare-fun b!1553691 () Bool)

(assert (=> b!1553691 (= e!865099 None!816)))

(assert (= (and d!161539 c!143246) b!1553688))

(assert (= (and d!161539 (not c!143246)) b!1553689))

(assert (= (and b!1553689 c!143247) b!1553690))

(assert (= (and b!1553689 (not c!143247)) b!1553691))

(declare-fun m!1432307 () Bool)

(assert (=> b!1553690 m!1432307))

(assert (=> b!1553504 d!161539))

(declare-fun d!161543 () Bool)

(declare-fun isEmpty!1139 (Option!818) Bool)

(assert (=> d!161543 (= (isDefined!552 (getValueByKey!743 (toList!11280 lm!249) a0!49)) (not (isEmpty!1139 (getValueByKey!743 (toList!11280 lm!249) a0!49))))))

(declare-fun bs!44650 () Bool)

(assert (= bs!44650 d!161543))

(assert (=> bs!44650 m!1432211))

(declare-fun m!1432311 () Bool)

(assert (=> bs!44650 m!1432311))

(assert (=> b!1553504 d!161543))

(declare-fun d!161547 () Bool)

(assert (=> d!161547 (isDefined!552 (getValueByKey!743 (toList!11280 lm!249) a0!49))))

(declare-fun lt!669736 () Unit!51688)

(declare-fun choose!2052 (List!36376 (_ BitVec 64)) Unit!51688)

(assert (=> d!161547 (= lt!669736 (choose!2052 (toList!11280 lm!249) a0!49))))

(declare-fun e!865116 () Bool)

(assert (=> d!161547 e!865116))

(declare-fun res!1063482 () Bool)

(assert (=> d!161547 (=> (not res!1063482) (not e!865116))))

(assert (=> d!161547 (= res!1063482 (isStrictlySorted!889 (toList!11280 lm!249)))))

(assert (=> d!161547 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!503 (toList!11280 lm!249) a0!49) lt!669736)))

(declare-fun b!1553720 () Bool)

(assert (=> b!1553720 (= e!865116 (containsKey!761 (toList!11280 lm!249) a0!49))))

(assert (= (and d!161547 res!1063482) b!1553720))

(assert (=> d!161547 m!1432211))

(assert (=> d!161547 m!1432211))

(assert (=> d!161547 m!1432227))

(declare-fun m!1432315 () Bool)

(assert (=> d!161547 m!1432315))

(assert (=> d!161547 m!1432213))

(assert (=> b!1553720 m!1432207))

(assert (=> b!1553504 d!161547))

(declare-fun d!161551 () Bool)

(declare-fun e!865117 () Bool)

(assert (=> d!161551 e!865117))

(declare-fun res!1063483 () Bool)

(assert (=> d!161551 (=> res!1063483 e!865117)))

(declare-fun lt!669739 () Bool)

(assert (=> d!161551 (= res!1063483 (not lt!669739))))

(declare-fun lt!669737 () Bool)

(assert (=> d!161551 (= lt!669739 lt!669737)))

(declare-fun lt!669738 () Unit!51688)

(declare-fun e!865118 () Unit!51688)

(assert (=> d!161551 (= lt!669738 e!865118)))

(declare-fun c!143258 () Bool)

(assert (=> d!161551 (= c!143258 lt!669737)))

(assert (=> d!161551 (= lt!669737 (containsKey!761 (toList!11280 (+!4977 lm!249 (tuple2!24909 a!523 b!96))) a0!49))))

(assert (=> d!161551 (= (contains!10152 (+!4977 lm!249 (tuple2!24909 a!523 b!96)) a0!49) lt!669739)))

(declare-fun b!1553721 () Bool)

(declare-fun lt!669740 () Unit!51688)

(assert (=> b!1553721 (= e!865118 lt!669740)))

(assert (=> b!1553721 (= lt!669740 (lemmaContainsKeyImpliesGetValueByKeyDefined!503 (toList!11280 (+!4977 lm!249 (tuple2!24909 a!523 b!96))) a0!49))))

(assert (=> b!1553721 (isDefined!552 (getValueByKey!743 (toList!11280 (+!4977 lm!249 (tuple2!24909 a!523 b!96))) a0!49))))

(declare-fun b!1553722 () Bool)

(declare-fun Unit!51695 () Unit!51688)

(assert (=> b!1553722 (= e!865118 Unit!51695)))

(declare-fun b!1553723 () Bool)

(assert (=> b!1553723 (= e!865117 (isDefined!552 (getValueByKey!743 (toList!11280 (+!4977 lm!249 (tuple2!24909 a!523 b!96))) a0!49)))))

(assert (= (and d!161551 c!143258) b!1553721))

(assert (= (and d!161551 (not c!143258)) b!1553722))

(assert (= (and d!161551 (not res!1063483)) b!1553723))

(declare-fun m!1432317 () Bool)

(assert (=> d!161551 m!1432317))

(declare-fun m!1432319 () Bool)

(assert (=> b!1553721 m!1432319))

(declare-fun m!1432321 () Bool)

(assert (=> b!1553721 m!1432321))

(assert (=> b!1553721 m!1432321))

(declare-fun m!1432323 () Bool)

(assert (=> b!1553721 m!1432323))

(assert (=> b!1553723 m!1432321))

(assert (=> b!1553723 m!1432321))

(assert (=> b!1553723 m!1432323))

(assert (=> b!1553504 d!161551))

(declare-fun d!161553 () Bool)

(declare-fun e!865137 () Bool)

(assert (=> d!161553 e!865137))

(declare-fun res!1063503 () Bool)

(assert (=> d!161553 (=> (not res!1063503) (not e!865137))))

(declare-fun lt!669766 () ListLongMap!22529)

(assert (=> d!161553 (= res!1063503 (contains!10152 lt!669766 (_1!12464 (tuple2!24909 a!523 b!96))))))

(declare-fun lt!669768 () List!36376)

(assert (=> d!161553 (= lt!669766 (ListLongMap!22530 lt!669768))))

(declare-fun lt!669767 () Unit!51688)

(declare-fun lt!669769 () Unit!51688)

(assert (=> d!161553 (= lt!669767 lt!669769)))

(assert (=> d!161553 (= (getValueByKey!743 lt!669768 (_1!12464 (tuple2!24909 a!523 b!96))) (Some!817 (_2!12464 (tuple2!24909 a!523 b!96))))))

(declare-fun lemmaContainsTupThenGetReturnValue!377 (List!36376 (_ BitVec 64) B!2220) Unit!51688)

(assert (=> d!161553 (= lt!669769 (lemmaContainsTupThenGetReturnValue!377 lt!669768 (_1!12464 (tuple2!24909 a!523 b!96)) (_2!12464 (tuple2!24909 a!523 b!96))))))

(assert (=> d!161553 (= lt!669768 (insertStrictlySorted!509 (toList!11280 lm!249) (_1!12464 (tuple2!24909 a!523 b!96)) (_2!12464 (tuple2!24909 a!523 b!96))))))

