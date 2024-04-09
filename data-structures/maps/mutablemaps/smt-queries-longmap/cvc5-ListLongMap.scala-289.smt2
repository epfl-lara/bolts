; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4732 () Bool)

(assert start!4732)

(declare-fun b_free!1321 () Bool)

(declare-fun b_next!1321 () Bool)

(assert (=> start!4732 (= b_free!1321 (not b_next!1321))))

(declare-fun tp!5425 () Bool)

(declare-fun b_and!2175 () Bool)

(assert (=> start!4732 (= tp!5425 b_and!2175)))

(declare-fun res!22188 () Bool)

(declare-fun e!23163 () Bool)

(assert (=> start!4732 (=> (not res!22188) (not e!23163))))

(declare-datatypes ((B!728 0))(
  ( (B!729 (val!864 Int)) )
))
(declare-datatypes ((tuple2!1392 0))(
  ( (tuple2!1393 (_1!706 (_ BitVec 64)) (_2!706 B!728)) )
))
(declare-datatypes ((List!984 0))(
  ( (Nil!981) (Cons!980 (h!1548 tuple2!1392) (t!3717 List!984)) )
))
(declare-datatypes ((ListLongMap!973 0))(
  ( (ListLongMap!974 (toList!502 List!984)) )
))
(declare-fun lm!252 () ListLongMap!973)

(declare-fun p!304 () Int)

(declare-fun forall!164 (List!984 Int) Bool)

(assert (=> start!4732 (= res!22188 (forall!164 (toList!502 lm!252) p!304))))

(assert (=> start!4732 e!23163))

(declare-fun e!23162 () Bool)

(declare-fun inv!1614 (ListLongMap!973) Bool)

(assert (=> start!4732 (and (inv!1614 lm!252) e!23162)))

(assert (=> start!4732 tp!5425))

(assert (=> start!4732 true))

(declare-fun b!36664 () Bool)

(declare-fun res!22189 () Bool)

(assert (=> b!36664 (=> (not res!22189) (not e!23163))))

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!450 (ListLongMap!973 (_ BitVec 64)) Bool)

(assert (=> b!36664 (= res!22189 (contains!450 lm!252 k!388))))

(declare-fun b!36665 () Bool)

(declare-fun size!1296 (List!984) Int)

(assert (=> b!36665 (= e!23163 (< (size!1296 (toList!502 lm!252)) 0))))

(declare-fun b!36666 () Bool)

(declare-fun tp!5426 () Bool)

(assert (=> b!36666 (= e!23162 tp!5426)))

(assert (= (and start!4732 res!22188) b!36664))

(assert (= (and b!36664 res!22189) b!36665))

(assert (= start!4732 b!36666))

(declare-fun m!29561 () Bool)

(assert (=> start!4732 m!29561))

(declare-fun m!29563 () Bool)

(assert (=> start!4732 m!29563))

(declare-fun m!29565 () Bool)

(assert (=> b!36664 m!29565))

(declare-fun m!29567 () Bool)

(assert (=> b!36665 m!29567))

(push 1)

(assert (not b_next!1321))

(assert (not start!4732))

(assert (not b!36664))

(assert b_and!2175)

(assert (not b!36666))

(assert (not b!36665))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2175)

(assert (not b_next!1321))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5535 () Bool)

(declare-fun e!23190 () Bool)

(assert (=> d!5535 e!23190))

(declare-fun res!22210 () Bool)

(assert (=> d!5535 (=> res!22210 e!23190)))

(declare-fun lt!13567 () Bool)

(assert (=> d!5535 (= res!22210 (not lt!13567))))

(declare-fun lt!13570 () Bool)

(assert (=> d!5535 (= lt!13567 lt!13570)))

(declare-datatypes ((Unit!813 0))(
  ( (Unit!814) )
))
(declare-fun lt!13569 () Unit!813)

(declare-fun e!23189 () Unit!813)

(assert (=> d!5535 (= lt!13569 e!23189)))

(declare-fun c!4204 () Bool)

(assert (=> d!5535 (= c!4204 lt!13570)))

(declare-fun containsKey!42 (List!984 (_ BitVec 64)) Bool)

(assert (=> d!5535 (= lt!13570 (containsKey!42 (toList!502 lm!252) k!388))))

(assert (=> d!5535 (= (contains!450 lm!252 k!388) lt!13567)))

(declare-fun b!36703 () Bool)

(declare-fun lt!13568 () Unit!813)

(assert (=> b!36703 (= e!23189 lt!13568)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!39 (List!984 (_ BitVec 64)) Unit!813)

(assert (=> b!36703 (= lt!13568 (lemmaContainsKeyImpliesGetValueByKeyDefined!39 (toList!502 lm!252) k!388))))

(declare-datatypes ((Option!84 0))(
  ( (Some!83 (v!1952 B!728)) (None!82) )
))
(declare-fun isDefined!40 (Option!84) Bool)

(declare-fun getValueByKey!78 (List!984 (_ BitVec 64)) Option!84)

(assert (=> b!36703 (isDefined!40 (getValueByKey!78 (toList!502 lm!252) k!388))))

(declare-fun b!36704 () Bool)

(declare-fun Unit!817 () Unit!813)

(assert (=> b!36704 (= e!23189 Unit!817)))

(declare-fun b!36705 () Bool)

(assert (=> b!36705 (= e!23190 (isDefined!40 (getValueByKey!78 (toList!502 lm!252) k!388)))))

(assert (= (and d!5535 c!4204) b!36703))

(assert (= (and d!5535 (not c!4204)) b!36704))

(assert (= (and d!5535 (not res!22210)) b!36705))

(declare-fun m!29587 () Bool)

(assert (=> d!5535 m!29587))

(declare-fun m!29589 () Bool)

(assert (=> b!36703 m!29589))

(declare-fun m!29591 () Bool)

(assert (=> b!36703 m!29591))

(assert (=> b!36703 m!29591))

(declare-fun m!29593 () Bool)

(assert (=> b!36703 m!29593))

(assert (=> b!36705 m!29591))

(assert (=> b!36705 m!29591))

(assert (=> b!36705 m!29593))

(assert (=> b!36664 d!5535))

(declare-fun d!5543 () Bool)

(declare-fun res!22217 () Bool)

(declare-fun e!23199 () Bool)

(assert (=> d!5543 (=> res!22217 e!23199)))

(assert (=> d!5543 (= res!22217 (is-Nil!981 (toList!502 lm!252)))))

(assert (=> d!5543 (= (forall!164 (toList!502 lm!252) p!304) e!23199)))

(declare-fun b!36716 () Bool)

(declare-fun e!23200 () Bool)

(assert (=> b!36716 (= e!23199 e!23200)))

(declare-fun res!22218 () Bool)

(assert (=> b!36716 (=> (not res!22218) (not e!23200))))

(declare-fun dynLambda!166 (Int tuple2!1392) Bool)

(assert (=> b!36716 (= res!22218 (dynLambda!166 p!304 (h!1548 (toList!502 lm!252))))))

(declare-fun b!36717 () Bool)

(assert (=> b!36717 (= e!23200 (forall!164 (t!3717 (toList!502 lm!252)) p!304))))

(assert (= (and d!5543 (not res!22217)) b!36716))

(assert (= (and b!36716 res!22218) b!36717))

(declare-fun b_lambda!1779 () Bool)

(assert (=> (not b_lambda!1779) (not b!36716)))

(declare-fun t!3723 () Bool)

(declare-fun tb!723 () Bool)

(assert (=> (and start!4732 (= p!304 p!304) t!3723) tb!723))

(declare-fun result!1241 () Bool)

(assert (=> tb!723 (= result!1241 true)))

(assert (=> b!36716 t!3723))

(declare-fun b_and!2183 () Bool)

(assert (= b_and!2175 (and (=> t!3723 result!1241) b_and!2183)))

(declare-fun m!29605 () Bool)

(assert (=> b!36716 m!29605))

(declare-fun m!29609 () Bool)

(assert (=> b!36717 m!29609))

(assert (=> start!4732 d!5543))

(declare-fun d!5547 () Bool)

(declare-fun isStrictlySorted!173 (List!984) Bool)

(assert (=> d!5547 (= (inv!1614 lm!252) (isStrictlySorted!173 (toList!502 lm!252)))))

(declare-fun bs!1402 () Bool)

(assert (= bs!1402 d!5547))

(declare-fun m!29611 () Bool)

(assert (=> bs!1402 m!29611))

(assert (=> start!4732 d!5547))

(declare-fun d!5551 () Bool)

(declare-fun lt!13585 () Int)

(assert (=> d!5551 (>= lt!13585 0)))

(declare-fun e!23211 () Int)

(assert (=> d!5551 (= lt!13585 e!23211)))

(declare-fun c!4210 () Bool)

(assert (=> d!5551 (= c!4210 (is-Nil!981 (toList!502 lm!252)))))

(assert (=> d!5551 (= (size!1296 (toList!502 lm!252)) lt!13585)))

(declare-fun b!36731 () Bool)

(assert (=> b!36731 (= e!23211 0)))

(declare-fun b!36732 () Bool)

(assert (=> b!36732 (= e!23211 (+ 1 (size!1296 (t!3717 (toList!502 lm!252)))))))

(assert (= (and d!5551 c!4210) b!36731))

(assert (= (and d!5551 (not c!4210)) b!36732))

(declare-fun m!29619 () Bool)

(assert (=> b!36732 m!29619))

(assert (=> b!36665 d!5551))

(declare-fun b!36745 () Bool)

(declare-fun e!23218 () Bool)

(declare-fun tp_is_empty!1651 () Bool)

(declare-fun tp!5441 () Bool)

(assert (=> b!36745 (= e!23218 (and tp_is_empty!1651 tp!5441))))

(assert (=> b!36666 (= tp!5426 e!23218)))

(assert (= (and b!36666 (is-Cons!980 (toList!502 lm!252))) b!36745))

(declare-fun b_lambda!1783 () Bool)

(assert (= b_lambda!1779 (or (and start!4732 b_free!1321) b_lambda!1783)))

(push 1)

