; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103528 () Bool)

(assert start!103528)

(declare-fun res!827746 () Bool)

(declare-fun e!703072 () Bool)

(assert (=> start!103528 (=> (not res!827746) (not e!703072))))

(declare-fun a1!66 () (_ BitVec 64))

(declare-fun a2!55 () (_ BitVec 64))

(assert (=> start!103528 (= res!827746 (not (= a1!66 a2!55)))))

(assert (=> start!103528 e!703072))

(assert (=> start!103528 true))

(declare-datatypes ((B!1794 0))(
  ( (B!1795 (val!15659 Int)) )
))
(declare-datatypes ((tuple2!20346 0))(
  ( (tuple2!20347 (_1!10183 (_ BitVec 64)) (_2!10183 B!1794)) )
))
(declare-datatypes ((List!27488 0))(
  ( (Nil!27485) (Cons!27484 (h!28693 tuple2!20346) (t!40958 List!27488)) )
))
(declare-datatypes ((ListLongMap!18327 0))(
  ( (ListLongMap!18328 (toList!9179 List!27488)) )
))
(declare-fun lm!211 () ListLongMap!18327)

(declare-fun e!703073 () Bool)

(declare-fun inv!42767 (ListLongMap!18327) Bool)

(assert (=> start!103528 (and (inv!42767 lm!211) e!703073)))

(declare-fun b!1240361 () Bool)

(declare-fun isStrictlySorted!728 (List!27488) Bool)

(assert (=> b!1240361 (= e!703072 (not (isStrictlySorted!728 (toList!9179 lm!211))))))

(declare-fun b!1240362 () Bool)

(declare-fun tp!92526 () Bool)

(assert (=> b!1240362 (= e!703073 tp!92526)))

(assert (= (and start!103528 res!827746) b!1240361))

(assert (= start!103528 b!1240362))

(declare-fun m!1143679 () Bool)

(assert (=> start!103528 m!1143679))

(declare-fun m!1143681 () Bool)

(assert (=> b!1240361 m!1143681))

(push 1)

(assert (not start!103528))

(assert (not b!1240361))

(assert (not b!1240362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136193 () Bool)

(assert (=> d!136193 (= (inv!42767 lm!211) (isStrictlySorted!728 (toList!9179 lm!211)))))

(declare-fun bs!34900 () Bool)

(assert (= bs!34900 d!136193))

(assert (=> bs!34900 m!1143681))

(assert (=> start!103528 d!136193))

(declare-fun d!136195 () Bool)

(declare-fun res!827751 () Bool)

(declare-fun e!703078 () Bool)

(assert (=> d!136195 (=> res!827751 e!703078)))

(assert (=> d!136195 (= res!827751 (or (is-Nil!27485 (toList!9179 lm!211)) (is-Nil!27485 (t!40958 (toList!9179 lm!211)))))))

(assert (=> d!136195 (= (isStrictlySorted!728 (toList!9179 lm!211)) e!703078)))

(declare-fun b!1240367 () Bool)

(declare-fun e!703079 () Bool)

(assert (=> b!1240367 (= e!703078 e!703079)))

(declare-fun res!827752 () Bool)

(assert (=> b!1240367 (=> (not res!827752) (not e!703079))))

(assert (=> b!1240367 (= res!827752 (bvslt (_1!10183 (h!28693 (toList!9179 lm!211))) (_1!10183 (h!28693 (t!40958 (toList!9179 lm!211))))))))

(declare-fun b!1240368 () Bool)

(assert (=> b!1240368 (= e!703079 (isStrictlySorted!728 (t!40958 (toList!9179 lm!211))))))

(assert (= (and d!136195 (not res!827751)) b!1240367))

(assert (= (and b!1240367 res!827752) b!1240368))

(declare-fun m!1143683 () Bool)

(assert (=> b!1240368 m!1143683))

(assert (=> b!1240361 d!136195))

(declare-fun b!1240377 () Bool)

(declare-fun e!703086 () Bool)

(declare-fun tp_is_empty!31189 () Bool)

(declare-fun tp!92529 () Bool)

(assert (=> b!1240377 (= e!703086 (and tp_is_empty!31189 tp!92529))))

(assert (=> b!1240362 (= tp!92526 e!703086)))

(assert (= (and b!1240362 (is-Cons!27484 (toList!9179 lm!211))) b!1240377))

(push 1)

