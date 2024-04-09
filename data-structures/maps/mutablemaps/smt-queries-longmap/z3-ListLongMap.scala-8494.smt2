; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103526 () Bool)

(assert start!103526)

(declare-fun res!827743 () Bool)

(declare-fun e!703066 () Bool)

(assert (=> start!103526 (=> (not res!827743) (not e!703066))))

(declare-fun a1!66 () (_ BitVec 64))

(declare-fun a2!55 () (_ BitVec 64))

(assert (=> start!103526 (= res!827743 (not (= a1!66 a2!55)))))

(assert (=> start!103526 e!703066))

(assert (=> start!103526 true))

(declare-datatypes ((B!1792 0))(
  ( (B!1793 (val!15658 Int)) )
))
(declare-datatypes ((tuple2!20344 0))(
  ( (tuple2!20345 (_1!10182 (_ BitVec 64)) (_2!10182 B!1792)) )
))
(declare-datatypes ((List!27487 0))(
  ( (Nil!27484) (Cons!27483 (h!28692 tuple2!20344) (t!40957 List!27487)) )
))
(declare-datatypes ((ListLongMap!18325 0))(
  ( (ListLongMap!18326 (toList!9178 List!27487)) )
))
(declare-fun lm!211 () ListLongMap!18325)

(declare-fun e!703067 () Bool)

(declare-fun inv!42766 (ListLongMap!18325) Bool)

(assert (=> start!103526 (and (inv!42766 lm!211) e!703067)))

(declare-fun b!1240355 () Bool)

(declare-fun isStrictlySorted!727 (List!27487) Bool)

(assert (=> b!1240355 (= e!703066 (not (isStrictlySorted!727 (toList!9178 lm!211))))))

(declare-fun b!1240356 () Bool)

(declare-fun tp!92523 () Bool)

(assert (=> b!1240356 (= e!703067 tp!92523)))

(assert (= (and start!103526 res!827743) b!1240355))

(assert (= start!103526 b!1240356))

(declare-fun m!1143675 () Bool)

(assert (=> start!103526 m!1143675))

(declare-fun m!1143677 () Bool)

(assert (=> b!1240355 m!1143677))

(check-sat (not start!103526) (not b!1240355) (not b!1240356))
(check-sat)
(get-model)

(declare-fun d!136197 () Bool)

(assert (=> d!136197 (= (inv!42766 lm!211) (isStrictlySorted!727 (toList!9178 lm!211)))))

(declare-fun bs!34901 () Bool)

(assert (= bs!34901 d!136197))

(assert (=> bs!34901 m!1143677))

(assert (=> start!103526 d!136197))

(declare-fun d!136199 () Bool)

(declare-fun res!827757 () Bool)

(declare-fun e!703087 () Bool)

(assert (=> d!136199 (=> res!827757 e!703087)))

(get-info :version)

(assert (=> d!136199 (= res!827757 (or ((_ is Nil!27484) (toList!9178 lm!211)) ((_ is Nil!27484) (t!40957 (toList!9178 lm!211)))))))

(assert (=> d!136199 (= (isStrictlySorted!727 (toList!9178 lm!211)) e!703087)))

(declare-fun b!1240378 () Bool)

(declare-fun e!703088 () Bool)

(assert (=> b!1240378 (= e!703087 e!703088)))

(declare-fun res!827758 () Bool)

(assert (=> b!1240378 (=> (not res!827758) (not e!703088))))

(assert (=> b!1240378 (= res!827758 (bvslt (_1!10182 (h!28692 (toList!9178 lm!211))) (_1!10182 (h!28692 (t!40957 (toList!9178 lm!211))))))))

(declare-fun b!1240379 () Bool)

(assert (=> b!1240379 (= e!703088 (isStrictlySorted!727 (t!40957 (toList!9178 lm!211))))))

(assert (= (and d!136199 (not res!827757)) b!1240378))

(assert (= (and b!1240378 res!827758) b!1240379))

(declare-fun m!1143685 () Bool)

(assert (=> b!1240379 m!1143685))

(assert (=> b!1240355 d!136199))

(declare-fun b!1240388 () Bool)

(declare-fun e!703095 () Bool)

(declare-fun tp_is_empty!31191 () Bool)

(declare-fun tp!92532 () Bool)

(assert (=> b!1240388 (= e!703095 (and tp_is_empty!31191 tp!92532))))

(assert (=> b!1240356 (= tp!92523 e!703095)))

(assert (= (and b!1240356 ((_ is Cons!27483) (toList!9178 lm!211))) b!1240388))

(check-sat (not d!136197) (not b!1240379) (not b!1240388) tp_is_empty!31191)
(check-sat)
