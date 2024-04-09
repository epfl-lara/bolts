; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4762 () Bool)

(assert start!4762)

(declare-fun b_free!1327 () Bool)

(declare-fun b_next!1327 () Bool)

(assert (=> start!4762 (= b_free!1327 (not b_next!1327))))

(declare-fun tp!5453 () Bool)

(declare-fun b_and!2187 () Bool)

(assert (=> start!4762 (= tp!5453 b_and!2187)))

(declare-fun b!36775 () Bool)

(declare-fun res!22239 () Bool)

(declare-fun e!23238 () Bool)

(assert (=> b!36775 (=> (not res!22239) (not e!23238))))

(declare-datatypes ((B!734 0))(
  ( (B!735 (val!867 Int)) )
))
(declare-datatypes ((tuple2!1398 0))(
  ( (tuple2!1399 (_1!709 (_ BitVec 64)) (_2!709 B!734)) )
))
(declare-datatypes ((List!987 0))(
  ( (Nil!984) (Cons!983 (h!1551 tuple2!1398) (t!3726 List!987)) )
))
(declare-datatypes ((ListLongMap!979 0))(
  ( (ListLongMap!980 (toList!505 List!987)) )
))
(declare-fun lm!252 () ListLongMap!979)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun head!839 (List!987) tuple2!1398)

(assert (=> b!36775 (= res!22239 (not (= (_1!709 (head!839 (toList!505 lm!252))) k!388)))))

(declare-fun b!36776 () Bool)

(declare-fun res!22241 () Bool)

(assert (=> b!36776 (=> (not res!22241) (not e!23238))))

(declare-fun contains!453 (ListLongMap!979 (_ BitVec 64)) Bool)

(assert (=> b!36776 (= res!22241 (contains!453 lm!252 k!388))))

(declare-fun b!36777 () Bool)

(declare-fun res!22240 () Bool)

(assert (=> b!36777 (=> (not res!22240) (not e!23238))))

(declare-fun isEmpty!191 (ListLongMap!979) Bool)

(assert (=> b!36777 (= res!22240 (not (isEmpty!191 lm!252)))))

(declare-fun b!36778 () Bool)

(declare-fun e!23236 () Bool)

(declare-fun tp!5452 () Bool)

(assert (=> b!36778 (= e!23236 tp!5452)))

(declare-fun b!36779 () Bool)

(declare-fun e!23237 () Bool)

(assert (=> b!36779 (= e!23238 e!23237)))

(declare-fun res!22243 () Bool)

(assert (=> b!36779 (=> res!22243 e!23237)))

(declare-fun lt!13603 () ListLongMap!979)

(declare-fun p!304 () Int)

(declare-fun forall!167 (List!987 Int) Bool)

(assert (=> b!36779 (= res!22243 (not (forall!167 (toList!505 lt!13603) p!304)))))

(declare-fun tail!92 (ListLongMap!979) ListLongMap!979)

(assert (=> b!36779 (= lt!13603 (tail!92 lm!252))))

(declare-fun b!36780 () Bool)

(assert (=> b!36780 (= e!23237 (not (contains!453 lt!13603 k!388)))))

(declare-fun res!22242 () Bool)

(assert (=> start!4762 (=> (not res!22242) (not e!23238))))

(assert (=> start!4762 (= res!22242 (forall!167 (toList!505 lm!252) p!304))))

(assert (=> start!4762 e!23238))

(declare-fun inv!1622 (ListLongMap!979) Bool)

(assert (=> start!4762 (and (inv!1622 lm!252) e!23236)))

(assert (=> start!4762 tp!5453))

(assert (=> start!4762 true))

(assert (= (and start!4762 res!22242) b!36776))

(assert (= (and b!36776 res!22241) b!36777))

(assert (= (and b!36777 res!22240) b!36775))

(assert (= (and b!36775 res!22239) b!36779))

(assert (= (and b!36779 (not res!22243)) b!36780))

(assert (= start!4762 b!36778))

(declare-fun m!29633 () Bool)

(assert (=> start!4762 m!29633))

(declare-fun m!29635 () Bool)

(assert (=> start!4762 m!29635))

(declare-fun m!29637 () Bool)

(assert (=> b!36775 m!29637))

(declare-fun m!29639 () Bool)

(assert (=> b!36780 m!29639))

(declare-fun m!29641 () Bool)

(assert (=> b!36776 m!29641))

(declare-fun m!29643 () Bool)

(assert (=> b!36779 m!29643))

(declare-fun m!29645 () Bool)

(assert (=> b!36779 m!29645))

(declare-fun m!29647 () Bool)

(assert (=> b!36777 m!29647))

(push 1)

(assert (not b!36777))

(assert (not b!36778))

(assert (not b!36776))

(assert b_and!2187)

(assert (not b!36775))

(assert (not start!4762))

(assert (not b!36780))

(assert (not b_next!1327))

(assert (not b!36779))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2187)

(assert (not b_next!1327))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5567 () Bool)

(declare-fun e!23276 () Bool)

(assert (=> d!5567 e!23276))

(declare-fun res!22290 () Bool)

(assert (=> d!5567 (=> res!22290 e!23276)))

(declare-fun lt!13619 () Bool)

(assert (=> d!5567 (= res!22290 (not lt!13619))))

(declare-fun lt!13621 () Bool)

(assert (=> d!5567 (= lt!13619 lt!13621)))

(declare-datatypes ((Unit!819 0))(
  ( (Unit!820) )
))
(declare-fun lt!13618 () Unit!819)

(declare-fun e!23275 () Unit!819)

(assert (=> d!5567 (= lt!13618 e!23275)))

(declare-fun c!4219 () Bool)

(assert (=> d!5567 (= c!4219 lt!13621)))

(declare-fun containsKey!44 (List!987 (_ BitVec 64)) Bool)

(assert (=> d!5567 (= lt!13621 (containsKey!44 (toList!505 lm!252) k!388))))

(assert (=> d!5567 (= (contains!453 lm!252 k!388) lt!13619)))

(declare-fun b!36837 () Bool)

(declare-fun lt!13620 () Unit!819)

(assert (=> b!36837 (= e!23275 lt!13620)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!41 (List!987 (_ BitVec 64)) Unit!819)

(assert (=> b!36837 (= lt!13620 (lemmaContainsKeyImpliesGetValueByKeyDefined!41 (toList!505 lm!252) k!388))))

(declare-datatypes ((Option!86 0))(
  ( (Some!85 (v!1954 B!734)) (None!84) )
))
(declare-fun isDefined!42 (Option!86) Bool)

(declare-fun getValueByKey!80 (List!987 (_ BitVec 64)) Option!86)

(assert (=> b!36837 (isDefined!42 (getValueByKey!80 (toList!505 lm!252) k!388))))

(declare-fun b!36838 () Bool)

(declare-fun Unit!821 () Unit!819)

(assert (=> b!36838 (= e!23275 Unit!821)))

(declare-fun b!36839 () Bool)

(assert (=> b!36839 (= e!23276 (isDefined!42 (getValueByKey!80 (toList!505 lm!252) k!388)))))

(assert (= (and d!5567 c!4219) b!36837))

(assert (= (and d!5567 (not c!4219)) b!36838))

(assert (= (and d!5567 (not res!22290)) b!36839))

(declare-fun m!29701 () Bool)

(assert (=> d!5567 m!29701))

(declare-fun m!29703 () Bool)

(assert (=> b!36837 m!29703))

(declare-fun m!29705 () Bool)

(assert (=> b!36837 m!29705))

(assert (=> b!36837 m!29705))

(declare-fun m!29707 () Bool)

(assert (=> b!36837 m!29707))

(assert (=> b!36839 m!29705))

(assert (=> b!36839 m!29705))

(assert (=> b!36839 m!29707))

(assert (=> b!36776 d!5567))

(declare-fun d!5583 () Bool)

(declare-fun res!22300 () Bool)

(declare-fun e!23289 () Bool)

(assert (=> d!5583 (=> res!22300 e!23289)))

(assert (=> d!5583 (= res!22300 (is-Nil!984 (toList!505 lm!252)))))

(assert (=> d!5583 (= (forall!167 (toList!505 lm!252) p!304) e!23289)))

(declare-fun b!36855 () Bool)

(declare-fun e!23290 () Bool)

(assert (=> b!36855 (= e!23289 e!23290)))

(declare-fun res!22301 () Bool)

(assert (=> b!36855 (=> (not res!22301) (not e!23290))))

(declare-fun dynLambda!171 (Int tuple2!1398) Bool)

(assert (=> b!36855 (= res!22301 (dynLambda!171 p!304 (h!1551 (toList!505 lm!252))))))

(declare-fun b!36856 () Bool)

(assert (=> b!36856 (= e!23290 (forall!167 (t!3726 (toList!505 lm!252)) p!304))))

(assert (= (and d!5583 (not res!22300)) b!36855))

(assert (= (and b!36855 res!22301) b!36856))

(declare-fun b_lambda!1797 () Bool)

(assert (=> (not b_lambda!1797) (not b!36855)))

(declare-fun t!3738 () Bool)

(declare-fun tb!735 () Bool)

(assert (=> (and start!4762 (= p!304 p!304) t!3738) tb!735))

(declare-fun result!1259 () Bool)

(assert (=> tb!735 (= result!1259 true)))

(assert (=> b!36855 t!3738))

(declare-fun b_and!2201 () Bool)

(assert (= b_and!2187 (and (=> t!3738 result!1259) b_and!2201)))

(declare-fun m!29721 () Bool)

(assert (=> b!36855 m!29721))

(declare-fun m!29723 () Bool)

(assert (=> b!36856 m!29723))

(assert (=> start!4762 d!5583))

(declare-fun d!5589 () Bool)

(declare-fun isStrictlySorted!176 (List!987) Bool)

(assert (=> d!5589 (= (inv!1622 lm!252) (isStrictlySorted!176 (toList!505 lm!252)))))

(declare-fun bs!1413 () Bool)

(assert (= bs!1413 d!5589))

(declare-fun m!29727 () Bool)

(assert (=> bs!1413 m!29727))

(assert (=> start!4762 d!5589))

(declare-fun d!5593 () Bool)

(declare-fun isEmpty!195 (List!987) Bool)

(assert (=> d!5593 (= (isEmpty!191 lm!252) (isEmpty!195 (toList!505 lm!252)))))

(declare-fun bs!1415 () Bool)

(assert (= bs!1415 d!5593))

(declare-fun m!29739 () Bool)

(assert (=> bs!1415 m!29739))

(assert (=> b!36777 d!5593))

(declare-fun d!5601 () Bool)

(declare-fun res!22307 () Bool)

(declare-fun e!23301 () Bool)

(assert (=> d!5601 (=> res!22307 e!23301)))

(assert (=> d!5601 (= res!22307 (is-Nil!984 (toList!505 lt!13603)))))

(assert (=> d!5601 (= (forall!167 (toList!505 lt!13603) p!304) e!23301)))

(declare-fun b!36872 () Bool)

(declare-fun e!23302 () Bool)

(assert (=> b!36872 (= e!23301 e!23302)))

(declare-fun res!22308 () Bool)

(assert (=> b!36872 (=> (not res!22308) (not e!23302))))

(assert (=> b!36872 (= res!22308 (dynLambda!171 p!304 (h!1551 (toList!505 lt!13603))))))

(declare-fun b!36873 () Bool)

(assert (=> b!36873 (= e!23302 (forall!167 (t!3726 (toList!505 lt!13603)) p!304))))

(assert (= (and d!5601 (not res!22307)) b!36872))

(assert (= (and b!36872 res!22308) b!36873))

(declare-fun b_lambda!1799 () Bool)

(assert (=> (not b_lambda!1799) (not b!36872)))

(declare-fun t!3740 () Bool)

(declare-fun tb!737 () Bool)

(assert (=> (and start!4762 (= p!304 p!304) t!3740) tb!737))

(declare-fun result!1265 () Bool)

(assert (=> tb!737 (= result!1265 true)))

(assert (=> b!36872 t!3740))

(declare-fun b_and!2203 () Bool)

(assert (= b_and!2201 (and (=> t!3740 result!1265) b_and!2203)))

(declare-fun m!29757 () Bool)

(assert (=> b!36872 m!29757))

(declare-fun m!29759 () Bool)

(assert (=> b!36873 m!29759))

(assert (=> b!36779 d!5601))

(declare-fun d!5603 () Bool)

(declare-fun tail!97 (List!987) List!987)

(assert (=> d!5603 (= (tail!92 lm!252) (ListLongMap!980 (tail!97 (toList!505 lm!252))))))

(declare-fun bs!1416 () Bool)

(assert (= bs!1416 d!5603))

(declare-fun m!29761 () Bool)

(assert (=> bs!1416 m!29761))

(assert (=> b!36779 d!5603))

(declare-fun d!5605 () Bool)

(declare-fun e!23310 () Bool)

(assert (=> d!5605 e!23310))

(declare-fun res!22309 () Bool)

(assert (=> d!5605 (=> res!22309 e!23310)))

(declare-fun lt!13655 () Bool)

(assert (=> d!5605 (= res!22309 (not lt!13655))))

(declare-fun lt!13657 () Bool)

(assert (=> d!5605 (= lt!13655 lt!13657)))

(declare-fun lt!13654 () Unit!819)

(declare-fun e!23309 () Unit!819)

(assert (=> d!5605 (= lt!13654 e!23309)))

(declare-fun c!4228 () Bool)

(assert (=> d!5605 (= c!4228 lt!13657)))

(assert (=> d!5605 (= lt!13657 (containsKey!44 (toList!505 lt!13603) k!388))))

(assert (=> d!5605 (= (contains!453 lt!13603 k!388) lt!13655)))

(declare-fun b!36884 () Bool)

(declare-fun lt!13656 () Unit!819)

(assert (=> b!36884 (= e!23309 lt!13656)))

(assert (=> b!36884 (= lt!13656 (lemmaContainsKeyImpliesGetValueByKeyDefined!41 (toList!505 lt!13603) k!388))))

(assert (=> b!36884 (isDefined!42 (getValueByKey!80 (toList!505 lt!13603) k!388))))

(declare-fun b!36885 () Bool)

(declare-fun Unit!829 () Unit!819)

(assert (=> b!36885 (= e!23309 Unit!829)))

(declare-fun b!36886 () Bool)

(assert (=> b!36886 (= e!23310 (isDefined!42 (getValueByKey!80 (toList!505 lt!13603) k!388)))))

(assert (= (and d!5605 c!4228) b!36884))

(assert (= (and d!5605 (not c!4228)) b!36885))

(assert (= (and d!5605 (not res!22309)) b!36886))

(declare-fun m!29763 () Bool)

(assert (=> d!5605 m!29763))

(declare-fun m!29765 () Bool)

(assert (=> b!36884 m!29765))

(declare-fun m!29767 () Bool)

(assert (=> b!36884 m!29767))

(assert (=> b!36884 m!29767))

(declare-fun m!29769 () Bool)

(assert (=> b!36884 m!29769))

(assert (=> b!36886 m!29767))

(assert (=> b!36886 m!29767))

(assert (=> b!36886 m!29769))

(assert (=> b!36780 d!5605))

(declare-fun d!5607 () Bool)

(assert (=> d!5607 (= (head!839 (toList!505 lm!252)) (h!1551 (toList!505 lm!252)))))

(assert (=> b!36775 d!5607))

(declare-fun b!36891 () Bool)

(declare-fun e!23313 () Bool)

(declare-fun tp_is_empty!1661 () Bool)

(declare-fun tp!5474 () Bool)

(assert (=> b!36891 (= e!23313 (and tp_is_empty!1661 tp!5474))))

(assert (=> b!36778 (= tp!5452 e!23313)))

(assert (= (and b!36778 (is-Cons!983 (toList!505 lm!252))) b!36891))

(declare-fun b_lambda!1809 () Bool)

(assert (= b_lambda!1797 (or (and start!4762 b_free!1327) b_lambda!1809)))

(declare-fun b_lambda!1811 () Bool)

(assert (= b_lambda!1799 (or (and start!4762 b_free!1327) b_lambda!1811)))

(push 1)

(assert (not d!5603))

(assert (not b!36873))

(assert (not d!5589))

(assert (not b_lambda!1811))

(assert (not b!36839))

(assert (not b!36891))

(assert (not d!5605))

(assert (not b!36856))

(assert (not d!5593))

(assert (not b_lambda!1809))

(assert b_and!2203)

(assert tp_is_empty!1661)

(assert (not b!36886))

(assert (not b_next!1327))

(assert (not b!36837))

(assert (not d!5567))

(assert (not b!36884))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2203)

(assert (not b_next!1327))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5623 () Bool)

(declare-fun isEmpty!198 (Option!86) Bool)

(assert (=> d!5623 (= (isDefined!42 (getValueByKey!80 (toList!505 lm!252) k!388)) (not (isEmpty!198 (getValueByKey!80 (toList!505 lm!252) k!388))))))

(declare-fun bs!1419 () Bool)

(assert (= bs!1419 d!5623))

(assert (=> bs!1419 m!29705))

(declare-fun m!29787 () Bool)

(assert (=> bs!1419 m!29787))

(assert (=> b!36839 d!5623))

(declare-fun d!5627 () Bool)

(declare-fun c!4241 () Bool)

(assert (=> d!5627 (= c!4241 (and (is-Cons!983 (toList!505 lm!252)) (= (_1!709 (h!1551 (toList!505 lm!252))) k!388)))))

(declare-fun e!23346 () Option!86)

(assert (=> d!5627 (= (getValueByKey!80 (toList!505 lm!252) k!388) e!23346)))

(declare-fun b!36938 () Bool)

(declare-fun e!23347 () Option!86)

(assert (=> b!36938 (= e!23347 (getValueByKey!80 (t!3726 (toList!505 lm!252)) k!388))))

(declare-fun b!36937 () Bool)

(assert (=> b!36937 (= e!23346 e!23347)))

(declare-fun c!4242 () Bool)

(assert (=> b!36937 (= c!4242 (and (is-Cons!983 (toList!505 lm!252)) (not (= (_1!709 (h!1551 (toList!505 lm!252))) k!388))))))

(declare-fun b!36939 () Bool)

(assert (=> b!36939 (= e!23347 None!84)))

(declare-fun b!36936 () Bool)

(assert (=> b!36936 (= e!23346 (Some!85 (_2!709 (h!1551 (toList!505 lm!252)))))))

(assert (= (and d!5627 c!4241) b!36936))

(assert (= (and d!5627 (not c!4241)) b!36937))

(assert (= (and b!36937 c!4242) b!36938))

(assert (= (and b!36937 (not c!4242)) b!36939))

(declare-fun m!29797 () Bool)

(assert (=> b!36938 m!29797))

(assert (=> b!36839 d!5627))

(declare-fun d!5635 () Bool)

(declare-fun res!22336 () Bool)

(declare-fun e!23355 () Bool)

(assert (=> d!5635 (=> res!22336 e!23355)))

(assert (=> d!5635 (= res!22336 (and (is-Cons!983 (toList!505 lm!252)) (= (_1!709 (h!1551 (toList!505 lm!252))) k!388)))))

(assert (=> d!5635 (= (containsKey!44 (toList!505 lm!252) k!388) e!23355)))

(declare-fun b!36947 () Bool)

(declare-fun e!23356 () Bool)

(assert (=> b!36947 (= e!23355 e!23356)))

(declare-fun res!22337 () Bool)

(assert (=> b!36947 (=> (not res!22337) (not e!23356))))

(assert (=> b!36947 (= res!22337 (and (or (not (is-Cons!983 (toList!505 lm!252))) (bvsle (_1!709 (h!1551 (toList!505 lm!252))) k!388)) (is-Cons!983 (toList!505 lm!252)) (bvslt (_1!709 (h!1551 (toList!505 lm!252))) k!388)))))

(declare-fun b!36948 () Bool)

(assert (=> b!36948 (= e!23356 (containsKey!44 (t!3726 (toList!505 lm!252)) k!388))))

(assert (= (and d!5635 (not res!22336)) b!36947))

(assert (= (and b!36947 res!22337) b!36948))

(declare-fun m!29803 () Bool)

(assert (=> b!36948 m!29803))

(assert (=> d!5567 d!5635))

(declare-fun d!5643 () Bool)

(assert (=> d!5643 (= (isEmpty!195 (toList!505 lm!252)) (is-Nil!984 (toList!505 lm!252)))))

(assert (=> d!5593 d!5643))

(declare-fun d!5647 () Bool)

(assert (=> d!5647 (isDefined!42 (getValueByKey!80 (toList!505 lt!13603) k!388))))

(declare-fun lt!13664 () Unit!819)

(declare-fun choose!230 (List!987 (_ BitVec 64)) Unit!819)

(assert (=> d!5647 (= lt!13664 (choose!230 (toList!505 lt!13603) k!388))))

(declare-fun e!23363 () Bool)

(assert (=> d!5647 e!23363))

(declare-fun res!22340 () Bool)

(assert (=> d!5647 (=> (not res!22340) (not e!23363))))

(assert (=> d!5647 (= res!22340 (isStrictlySorted!176 (toList!505 lt!13603)))))

(assert (=> d!5647 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!41 (toList!505 lt!13603) k!388) lt!13664)))

(declare-fun b!36959 () Bool)

(assert (=> b!36959 (= e!23363 (containsKey!44 (toList!505 lt!13603) k!388))))

(assert (= (and d!5647 res!22340) b!36959))

(assert (=> d!5647 m!29767))

(assert (=> d!5647 m!29767))

(assert (=> d!5647 m!29769))

(declare-fun m!29807 () Bool)

(assert (=> d!5647 m!29807))

(declare-fun m!29809 () Bool)

(assert (=> d!5647 m!29809))

(assert (=> b!36959 m!29763))

(assert (=> b!36884 d!5647))

(declare-fun d!5649 () Bool)

(assert (=> d!5649 (= (isDefined!42 (getValueByKey!80 (toList!505 lt!13603) k!388)) (not (isEmpty!198 (getValueByKey!80 (toList!505 lt!13603) k!388))))))

(declare-fun bs!1421 () Bool)

(assert (= bs!1421 d!5649))

(assert (=> bs!1421 m!29767))

(declare-fun m!29811 () Bool)

(assert (=> bs!1421 m!29811))

(assert (=> b!36884 d!5649))

(declare-fun d!5651 () Bool)

(declare-fun c!4249 () Bool)

(assert (=> d!5651 (= c!4249 (and (is-Cons!983 (toList!505 lt!13603)) (= (_1!709 (h!1551 (toList!505 lt!13603))) k!388)))))

(declare-fun e!23366 () Option!86)

(assert (=> d!5651 (= (getValueByKey!80 (toList!505 lt!13603) k!388) e!23366)))

(declare-fun b!36966 () Bool)

(declare-fun e!23367 () Option!86)

(assert (=> b!36966 (= e!23367 (getValueByKey!80 (t!3726 (toList!505 lt!13603)) k!388))))

(declare-fun b!36965 () Bool)

(assert (=> b!36965 (= e!23366 e!23367)))

(declare-fun c!4250 () Bool)

(assert (=> b!36965 (= c!4250 (and (is-Cons!983 (toList!505 lt!13603)) (not (= (_1!709 (h!1551 (toList!505 lt!13603))) k!388))))))

(declare-fun b!36967 () Bool)

(assert (=> b!36967 (= e!23367 None!84)))

(declare-fun b!36964 () Bool)

(assert (=> b!36964 (= e!23366 (Some!85 (_2!709 (h!1551 (toList!505 lt!13603)))))))

(assert (= (and d!5651 c!4249) b!36964))

(assert (= (and d!5651 (not c!4249)) b!36965))

(assert (= (and b!36965 c!4250) b!36966))

(assert (= (and b!36965 (not c!4250)) b!36967))

(declare-fun m!29815 () Bool)

(assert (=> b!36966 m!29815))

(assert (=> b!36884 d!5651))

(declare-fun d!5655 () Bool)

(declare-fun res!22341 () Bool)

(declare-fun e!23368 () Bool)

(assert (=> d!5655 (=> res!22341 e!23368)))

(assert (=> d!5655 (= res!22341 (is-Nil!984 (t!3726 (toList!505 lt!13603))))))

(assert (=> d!5655 (= (forall!167 (t!3726 (toList!505 lt!13603)) p!304) e!23368)))

(declare-fun b!36968 () Bool)

(declare-fun e!23369 () Bool)

(assert (=> b!36968 (= e!23368 e!23369)))

(declare-fun res!22342 () Bool)

(assert (=> b!36968 (=> (not res!22342) (not e!23369))))

(assert (=> b!36968 (= res!22342 (dynLambda!171 p!304 (h!1551 (t!3726 (toList!505 lt!13603)))))))

(declare-fun b!36969 () Bool)

(assert (=> b!36969 (= e!23369 (forall!167 (t!3726 (t!3726 (toList!505 lt!13603))) p!304))))

(assert (= (and d!5655 (not res!22341)) b!36968))

(assert (= (and b!36968 res!22342) b!36969))

(declare-fun b_lambda!1821 () Bool)

(assert (=> (not b_lambda!1821) (not b!36968)))

(declare-fun t!3746 () Bool)

(declare-fun tb!743 () Bool)

(assert (=> (and start!4762 (= p!304 p!304) t!3746) tb!743))

(declare-fun result!1273 () Bool)

(assert (=> tb!743 (= result!1273 true)))

(assert (=> b!36968 t!3746))

(declare-fun b_and!2209 () Bool)

(assert (= b_and!2203 (and (=> t!3746 result!1273) b_and!2209)))

(declare-fun m!29817 () Bool)

(assert (=> b!36968 m!29817))

(declare-fun m!29819 () Bool)

(assert (=> b!36969 m!29819))

(assert (=> b!36873 d!5655))

(assert (=> b!36886 d!5649))

(assert (=> b!36886 d!5651))

(declare-fun d!5659 () Bool)

(declare-fun res!22343 () Bool)

(declare-fun e!23370 () Bool)

(assert (=> d!5659 (=> res!22343 e!23370)))

(assert (=> d!5659 (= res!22343 (and (is-Cons!983 (toList!505 lt!13603)) (= (_1!709 (h!1551 (toList!505 lt!13603))) k!388)))))

(assert (=> d!5659 (= (containsKey!44 (toList!505 lt!13603) k!388) e!23370)))

(declare-fun b!36970 () Bool)

(declare-fun e!23371 () Bool)

(assert (=> b!36970 (= e!23370 e!23371)))

(declare-fun res!22344 () Bool)

(assert (=> b!36970 (=> (not res!22344) (not e!23371))))

(assert (=> b!36970 (= res!22344 (and (or (not (is-Cons!983 (toList!505 lt!13603))) (bvsle (_1!709 (h!1551 (toList!505 lt!13603))) k!388)) (is-Cons!983 (toList!505 lt!13603)) (bvslt (_1!709 (h!1551 (toList!505 lt!13603))) k!388)))))

(declare-fun b!36971 () Bool)

(assert (=> b!36971 (= e!23371 (containsKey!44 (t!3726 (toList!505 lt!13603)) k!388))))

(assert (= (and d!5659 (not res!22343)) b!36970))

(assert (= (and b!36970 res!22344) b!36971))

(declare-fun m!29821 () Bool)

(assert (=> b!36971 m!29821))

(assert (=> d!5605 d!5659))

(declare-fun d!5661 () Bool)

(assert (=> d!5661 (= (tail!97 (toList!505 lm!252)) (t!3726 (toList!505 lm!252)))))

(assert (=> d!5603 d!5661))

(declare-fun d!5663 () Bool)

(declare-fun res!22355 () Bool)

(declare-fun e!23382 () Bool)

(assert (=> d!5663 (=> res!22355 e!23382)))

(assert (=> d!5663 (= res!22355 (or (is-Nil!984 (toList!505 lm!252)) (is-Nil!984 (t!3726 (toList!505 lm!252)))))))

(assert (=> d!5663 (= (isStrictlySorted!176 (toList!505 lm!252)) e!23382)))

(declare-fun b!36982 () Bool)

(declare-fun e!23383 () Bool)

(assert (=> b!36982 (= e!23382 e!23383)))

(declare-fun res!22356 () Bool)

(assert (=> b!36982 (=> (not res!22356) (not e!23383))))

(assert (=> b!36982 (= res!22356 (bvslt (_1!709 (h!1551 (toList!505 lm!252))) (_1!709 (h!1551 (t!3726 (toList!505 lm!252))))))))

(declare-fun b!36983 () Bool)

(assert (=> b!36983 (= e!23383 (isStrictlySorted!176 (t!3726 (toList!505 lm!252))))))

(assert (= (and d!5663 (not res!22355)) b!36982))

(assert (= (and b!36982 res!22356) b!36983))

(declare-fun m!29825 () Bool)

(assert (=> b!36983 m!29825))

(assert (=> d!5589 d!5663))

(declare-fun d!5667 () Bool)

(declare-fun res!22357 () Bool)

(declare-fun e!23384 () Bool)

(assert (=> d!5667 (=> res!22357 e!23384)))

(assert (=> d!5667 (= res!22357 (is-Nil!984 (t!3726 (toList!505 lm!252))))))

