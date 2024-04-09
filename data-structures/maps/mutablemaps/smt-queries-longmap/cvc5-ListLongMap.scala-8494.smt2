; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103524 () Bool)

(assert start!103524)

(declare-fun res!827740 () Bool)

(declare-fun e!703060 () Bool)

(assert (=> start!103524 (=> (not res!827740) (not e!703060))))

(declare-fun a1!66 () (_ BitVec 64))

(declare-fun a2!55 () (_ BitVec 64))

(assert (=> start!103524 (= res!827740 (not (= a1!66 a2!55)))))

(assert (=> start!103524 e!703060))

(assert (=> start!103524 true))

(declare-datatypes ((B!1790 0))(
  ( (B!1791 (val!15657 Int)) )
))
(declare-datatypes ((tuple2!20342 0))(
  ( (tuple2!20343 (_1!10181 (_ BitVec 64)) (_2!10181 B!1790)) )
))
(declare-datatypes ((List!27486 0))(
  ( (Nil!27483) (Cons!27482 (h!28691 tuple2!20342) (t!40956 List!27486)) )
))
(declare-datatypes ((ListLongMap!18323 0))(
  ( (ListLongMap!18324 (toList!9177 List!27486)) )
))
(declare-fun lm!211 () ListLongMap!18323)

(declare-fun e!703061 () Bool)

(declare-fun inv!42765 (ListLongMap!18323) Bool)

(assert (=> start!103524 (and (inv!42765 lm!211) e!703061)))

(declare-fun b!1240349 () Bool)

(declare-fun isStrictlySorted!726 (List!27486) Bool)

(assert (=> b!1240349 (= e!703060 (not (isStrictlySorted!726 (toList!9177 lm!211))))))

(declare-fun b!1240350 () Bool)

(declare-fun tp!92520 () Bool)

(assert (=> b!1240350 (= e!703061 tp!92520)))

(assert (= (and start!103524 res!827740) b!1240349))

(assert (= start!103524 b!1240350))

(declare-fun m!1143671 () Bool)

(assert (=> start!103524 m!1143671))

(declare-fun m!1143673 () Bool)

(assert (=> b!1240349 m!1143673))

(push 1)

(assert (not start!103524))

(assert (not b!1240349))

(assert (not b!1240350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136201 () Bool)

(assert (=> d!136201 (= (inv!42765 lm!211) (isStrictlySorted!726 (toList!9177 lm!211)))))

(declare-fun bs!34902 () Bool)

(assert (= bs!34902 d!136201))

(assert (=> bs!34902 m!1143673))

(assert (=> start!103524 d!136201))

(declare-fun d!136203 () Bool)

(declare-fun res!827763 () Bool)

(declare-fun e!703096 () Bool)

(assert (=> d!136203 (=> res!827763 e!703096)))

(assert (=> d!136203 (= res!827763 (or (is-Nil!27483 (toList!9177 lm!211)) (is-Nil!27483 (t!40956 (toList!9177 lm!211)))))))

(assert (=> d!136203 (= (isStrictlySorted!726 (toList!9177 lm!211)) e!703096)))

(declare-fun b!1240389 () Bool)

(declare-fun e!703097 () Bool)

(assert (=> b!1240389 (= e!703096 e!703097)))

(declare-fun res!827764 () Bool)

(assert (=> b!1240389 (=> (not res!827764) (not e!703097))))

(assert (=> b!1240389 (= res!827764 (bvslt (_1!10181 (h!28691 (toList!9177 lm!211))) (_1!10181 (h!28691 (t!40956 (toList!9177 lm!211))))))))

(declare-fun b!1240390 () Bool)

(assert (=> b!1240390 (= e!703097 (isStrictlySorted!726 (t!40956 (toList!9177 lm!211))))))

(assert (= (and d!136203 (not res!827763)) b!1240389))

(assert (= (and b!1240389 res!827764) b!1240390))

(declare-fun m!1143687 () Bool)

(assert (=> b!1240390 m!1143687))

(assert (=> b!1240349 d!136203))

(declare-fun b!1240395 () Bool)

(declare-fun e!703100 () Bool)

(declare-fun tp_is_empty!31193 () Bool)

(declare-fun tp!92535 () Bool)

(assert (=> b!1240395 (= e!703100 (and tp_is_empty!31193 tp!92535))))

(assert (=> b!1240350 (= tp!92520 e!703100)))

(assert (= (and b!1240350 (is-Cons!27482 (toList!9177 lm!211))) b!1240395))

(push 1)

