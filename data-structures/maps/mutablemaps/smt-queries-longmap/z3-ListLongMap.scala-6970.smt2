; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88128 () Bool)

(assert start!88128)

(declare-fun b!1016272 () Bool)

(assert (=> b!1016272 true))

(assert (=> b!1016272 true))

(declare-fun b!1016268 () Bool)

(declare-fun res!681759 () Bool)

(declare-fun e!571742 () Bool)

(assert (=> b!1016268 (=> (not res!681759) (not e!571742))))

(declare-datatypes ((List!21633 0))(
  ( (Nil!21630) (Cons!21629 (h!22827 (_ BitVec 64)) (t!30642 List!21633)) )
))
(declare-fun keys!40 () List!21633)

(get-info :version)

(assert (=> b!1016268 (= res!681759 ((_ is Cons!21629) keys!40))))

(declare-fun res!681757 () Bool)

(assert (=> start!88128 (=> (not res!681757) (not e!571742))))

(declare-datatypes ((B!1528 0))(
  ( (B!1529 (val!11848 Int)) )
))
(declare-datatypes ((tuple2!15332 0))(
  ( (tuple2!15333 (_1!7676 (_ BitVec 64)) (_2!7676 B!1528)) )
))
(declare-datatypes ((List!21634 0))(
  ( (Nil!21631) (Cons!21630 (h!22828 tuple2!15332) (t!30643 List!21634)) )
))
(declare-fun l!1114 () List!21634)

(declare-fun isStrictlySorted!612 (List!21634) Bool)

(assert (=> start!88128 (= res!681757 (isStrictlySorted!612 l!1114))))

(assert (=> start!88128 e!571742))

(declare-fun e!571741 () Bool)

(assert (=> start!88128 e!571741))

(assert (=> start!88128 true))

(declare-fun tp_is_empty!23595 () Bool)

(assert (=> start!88128 tp_is_empty!23595))

(declare-fun b!1016269 () Bool)

(declare-fun res!681758 () Bool)

(assert (=> b!1016269 (=> (not res!681758) (not e!571742))))

(declare-fun isEmpty!882 (List!21634) Bool)

(assert (=> b!1016269 (= res!681758 (not (isEmpty!882 l!1114)))))

(declare-fun b!1016270 () Bool)

(declare-fun tp!70758 () Bool)

(assert (=> b!1016270 (= e!571741 (and tp_is_empty!23595 tp!70758))))

(declare-fun b!1016271 () Bool)

(declare-datatypes ((Option!604 0))(
  ( (Some!603 (v!14452 B!1528)) (None!602) )
))
(declare-fun isDefined!400 (Option!604) Bool)

(declare-fun getValueByKey!553 (List!21634 (_ BitVec 64)) Option!604)

(assert (=> b!1016271 (= e!571742 (not (isDefined!400 (getValueByKey!553 l!1114 (h!22827 keys!40)))))))

(declare-fun res!681756 () Bool)

(assert (=> b!1016272 (=> (not res!681756) (not e!571742))))

(declare-fun lambda!1013 () Int)

(declare-fun forall!281 (List!21633 Int) Bool)

(assert (=> b!1016272 (= res!681756 (forall!281 keys!40 lambda!1013))))

(declare-fun b!1016273 () Bool)

(declare-fun res!681760 () Bool)

(assert (=> b!1016273 (=> (not res!681760) (not e!571742))))

(declare-fun newHead!31 () tuple2!15332)

(declare-fun head!963 (List!21634) tuple2!15332)

(assert (=> b!1016273 (= res!681760 (bvslt (_1!7676 newHead!31) (_1!7676 (head!963 l!1114))))))

(assert (= (and start!88128 res!681757) b!1016269))

(assert (= (and b!1016269 res!681758) b!1016272))

(assert (= (and b!1016272 res!681756) b!1016273))

(assert (= (and b!1016273 res!681760) b!1016268))

(assert (= (and b!1016268 res!681759) b!1016271))

(assert (= (and start!88128 ((_ is Cons!21630) l!1114)) b!1016270))

(declare-fun m!938145 () Bool)

(assert (=> b!1016273 m!938145))

(declare-fun m!938147 () Bool)

(assert (=> start!88128 m!938147))

(declare-fun m!938149 () Bool)

(assert (=> b!1016271 m!938149))

(assert (=> b!1016271 m!938149))

(declare-fun m!938151 () Bool)

(assert (=> b!1016271 m!938151))

(declare-fun m!938153 () Bool)

(assert (=> b!1016269 m!938153))

(declare-fun m!938155 () Bool)

(assert (=> b!1016272 m!938155))

(check-sat (not start!88128) (not b!1016273) (not b!1016269) (not b!1016271) tp_is_empty!23595 (not b!1016272) (not b!1016270))
(check-sat)
(get-model)

(declare-fun d!121165 () Bool)

(assert (=> d!121165 (= (isEmpty!882 l!1114) ((_ is Nil!21631) l!1114))))

(assert (=> b!1016269 d!121165))

(declare-fun d!121167 () Bool)

(declare-fun res!681780 () Bool)

(declare-fun e!571753 () Bool)

(assert (=> d!121167 (=> res!681780 e!571753)))

(assert (=> d!121167 (= res!681780 ((_ is Nil!21630) keys!40))))

(assert (=> d!121167 (= (forall!281 keys!40 lambda!1013) e!571753)))

(declare-fun b!1016304 () Bool)

(declare-fun e!571754 () Bool)

(assert (=> b!1016304 (= e!571753 e!571754)))

(declare-fun res!681781 () Bool)

(assert (=> b!1016304 (=> (not res!681781) (not e!571754))))

(declare-fun dynLambda!1918 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016304 (= res!681781 (dynLambda!1918 lambda!1013 (h!22827 keys!40)))))

(declare-fun b!1016305 () Bool)

(assert (=> b!1016305 (= e!571754 (forall!281 (t!30642 keys!40) lambda!1013))))

(assert (= (and d!121167 (not res!681780)) b!1016304))

(assert (= (and b!1016304 res!681781) b!1016305))

(declare-fun b_lambda!15529 () Bool)

(assert (=> (not b_lambda!15529) (not b!1016304)))

(declare-fun m!938169 () Bool)

(assert (=> b!1016304 m!938169))

(declare-fun m!938171 () Bool)

(assert (=> b!1016305 m!938171))

(assert (=> b!1016272 d!121167))

(declare-fun d!121169 () Bool)

(declare-fun isEmpty!885 (Option!604) Bool)

(assert (=> d!121169 (= (isDefined!400 (getValueByKey!553 l!1114 (h!22827 keys!40))) (not (isEmpty!885 (getValueByKey!553 l!1114 (h!22827 keys!40)))))))

(declare-fun bs!29507 () Bool)

(assert (= bs!29507 d!121169))

(assert (=> bs!29507 m!938149))

(declare-fun m!938173 () Bool)

(assert (=> bs!29507 m!938173))

(assert (=> b!1016271 d!121169))

(declare-fun b!1016314 () Bool)

(declare-fun e!571759 () Option!604)

(assert (=> b!1016314 (= e!571759 (Some!603 (_2!7676 (h!22828 l!1114))))))

(declare-fun b!1016318 () Bool)

(declare-fun e!571760 () Option!604)

(assert (=> b!1016318 (= e!571760 (getValueByKey!553 (t!30643 l!1114) (h!22827 keys!40)))))

(declare-fun b!1016319 () Bool)

(assert (=> b!1016319 (= e!571760 None!602)))

(declare-fun b!1016317 () Bool)

(assert (=> b!1016317 (= e!571759 e!571760)))

(declare-fun c!102876 () Bool)

(assert (=> b!1016317 (= c!102876 (and ((_ is Cons!21630) l!1114) (not (= (_1!7676 (h!22828 l!1114)) (h!22827 keys!40)))))))

(declare-fun d!121171 () Bool)

(declare-fun c!102875 () Bool)

(assert (=> d!121171 (= c!102875 (and ((_ is Cons!21630) l!1114) (= (_1!7676 (h!22828 l!1114)) (h!22827 keys!40))))))

(assert (=> d!121171 (= (getValueByKey!553 l!1114 (h!22827 keys!40)) e!571759)))

(assert (= (and d!121171 c!102875) b!1016314))

(assert (= (and d!121171 (not c!102875)) b!1016317))

(assert (= (and b!1016317 c!102876) b!1016318))

(assert (= (and b!1016317 (not c!102876)) b!1016319))

(declare-fun m!938177 () Bool)

(assert (=> b!1016318 m!938177))

(assert (=> b!1016271 d!121171))

(declare-fun d!121179 () Bool)

(assert (=> d!121179 (= (head!963 l!1114) (h!22828 l!1114))))

(assert (=> b!1016273 d!121179))

(declare-fun d!121181 () Bool)

(declare-fun res!681792 () Bool)

(declare-fun e!571777 () Bool)

(assert (=> d!121181 (=> res!681792 e!571777)))

(assert (=> d!121181 (= res!681792 (or ((_ is Nil!21631) l!1114) ((_ is Nil!21631) (t!30643 l!1114))))))

(assert (=> d!121181 (= (isStrictlySorted!612 l!1114) e!571777)))

(declare-fun b!1016340 () Bool)

(declare-fun e!571778 () Bool)

(assert (=> b!1016340 (= e!571777 e!571778)))

(declare-fun res!681793 () Bool)

(assert (=> b!1016340 (=> (not res!681793) (not e!571778))))

(assert (=> b!1016340 (= res!681793 (bvslt (_1!7676 (h!22828 l!1114)) (_1!7676 (h!22828 (t!30643 l!1114)))))))

(declare-fun b!1016341 () Bool)

(assert (=> b!1016341 (= e!571778 (isStrictlySorted!612 (t!30643 l!1114)))))

(assert (= (and d!121181 (not res!681792)) b!1016340))

(assert (= (and b!1016340 res!681793) b!1016341))

(declare-fun m!938187 () Bool)

(assert (=> b!1016341 m!938187))

(assert (=> start!88128 d!121181))

(declare-fun b!1016354 () Bool)

(declare-fun e!571785 () Bool)

(declare-fun tp!70764 () Bool)

(assert (=> b!1016354 (= e!571785 (and tp_is_empty!23595 tp!70764))))

(assert (=> b!1016270 (= tp!70758 e!571785)))

(assert (= (and b!1016270 ((_ is Cons!21630) (t!30643 l!1114))) b!1016354))

(declare-fun b_lambda!15533 () Bool)

(assert (= b_lambda!15529 (or b!1016272 b_lambda!15533)))

(declare-fun bs!29510 () Bool)

(declare-fun d!121195 () Bool)

(assert (= bs!29510 (and d!121195 b!1016272)))

(declare-fun value!178 () B!1528)

(assert (=> bs!29510 (= (dynLambda!1918 lambda!1013 (h!22827 keys!40)) (= (getValueByKey!553 l!1114 (h!22827 keys!40)) (Some!603 value!178)))))

(assert (=> bs!29510 m!938149))

(assert (=> b!1016304 d!121195))

(check-sat tp_is_empty!23595 (not bs!29510) (not b!1016318) (not b!1016305) (not b_lambda!15533) (not b!1016354) (not d!121169) (not b!1016341))
(check-sat)
(get-model)

(declare-fun b!1016387 () Bool)

(declare-fun e!571812 () Option!604)

(assert (=> b!1016387 (= e!571812 (Some!603 (_2!7676 (h!22828 (t!30643 l!1114)))))))

(declare-fun b!1016389 () Bool)

(declare-fun e!571813 () Option!604)

(assert (=> b!1016389 (= e!571813 (getValueByKey!553 (t!30643 (t!30643 l!1114)) (h!22827 keys!40)))))

(declare-fun b!1016390 () Bool)

(assert (=> b!1016390 (= e!571813 None!602)))

(declare-fun b!1016388 () Bool)

(assert (=> b!1016388 (= e!571812 e!571813)))

(declare-fun c!102890 () Bool)

(assert (=> b!1016388 (= c!102890 (and ((_ is Cons!21630) (t!30643 l!1114)) (not (= (_1!7676 (h!22828 (t!30643 l!1114))) (h!22827 keys!40)))))))

(declare-fun d!121207 () Bool)

(declare-fun c!102889 () Bool)

(assert (=> d!121207 (= c!102889 (and ((_ is Cons!21630) (t!30643 l!1114)) (= (_1!7676 (h!22828 (t!30643 l!1114))) (h!22827 keys!40))))))

(assert (=> d!121207 (= (getValueByKey!553 (t!30643 l!1114) (h!22827 keys!40)) e!571812)))

(assert (= (and d!121207 c!102889) b!1016387))

(assert (= (and d!121207 (not c!102889)) b!1016388))

(assert (= (and b!1016388 c!102890) b!1016389))

(assert (= (and b!1016388 (not c!102890)) b!1016390))

(declare-fun m!938199 () Bool)

(assert (=> b!1016389 m!938199))

(assert (=> b!1016318 d!121207))

(declare-fun d!121209 () Bool)

(declare-fun res!681812 () Bool)

(declare-fun e!571814 () Bool)

(assert (=> d!121209 (=> res!681812 e!571814)))

(assert (=> d!121209 (= res!681812 ((_ is Nil!21630) (t!30642 keys!40)))))

(assert (=> d!121209 (= (forall!281 (t!30642 keys!40) lambda!1013) e!571814)))

(declare-fun b!1016391 () Bool)

(declare-fun e!571815 () Bool)

(assert (=> b!1016391 (= e!571814 e!571815)))

(declare-fun res!681813 () Bool)

(assert (=> b!1016391 (=> (not res!681813) (not e!571815))))

(assert (=> b!1016391 (= res!681813 (dynLambda!1918 lambda!1013 (h!22827 (t!30642 keys!40))))))

(declare-fun b!1016392 () Bool)

(assert (=> b!1016392 (= e!571815 (forall!281 (t!30642 (t!30642 keys!40)) lambda!1013))))

(assert (= (and d!121209 (not res!681812)) b!1016391))

(assert (= (and b!1016391 res!681813) b!1016392))

(declare-fun b_lambda!15541 () Bool)

(assert (=> (not b_lambda!15541) (not b!1016391)))

(declare-fun m!938201 () Bool)

(assert (=> b!1016391 m!938201))

(declare-fun m!938203 () Bool)

(assert (=> b!1016392 m!938203))

(assert (=> b!1016305 d!121209))

(declare-fun d!121211 () Bool)

(declare-fun res!681814 () Bool)

(declare-fun e!571816 () Bool)

(assert (=> d!121211 (=> res!681814 e!571816)))

(assert (=> d!121211 (= res!681814 (or ((_ is Nil!21631) (t!30643 l!1114)) ((_ is Nil!21631) (t!30643 (t!30643 l!1114)))))))

(assert (=> d!121211 (= (isStrictlySorted!612 (t!30643 l!1114)) e!571816)))

(declare-fun b!1016393 () Bool)

(declare-fun e!571817 () Bool)

(assert (=> b!1016393 (= e!571816 e!571817)))

(declare-fun res!681815 () Bool)

(assert (=> b!1016393 (=> (not res!681815) (not e!571817))))

(assert (=> b!1016393 (= res!681815 (bvslt (_1!7676 (h!22828 (t!30643 l!1114))) (_1!7676 (h!22828 (t!30643 (t!30643 l!1114))))))))

(declare-fun b!1016394 () Bool)

(assert (=> b!1016394 (= e!571817 (isStrictlySorted!612 (t!30643 (t!30643 l!1114))))))

(assert (= (and d!121211 (not res!681814)) b!1016393))

(assert (= (and b!1016393 res!681815) b!1016394))

(declare-fun m!938205 () Bool)

(assert (=> b!1016394 m!938205))

(assert (=> b!1016341 d!121211))

(assert (=> bs!29510 d!121171))

(declare-fun d!121213 () Bool)

(assert (=> d!121213 (= (isEmpty!885 (getValueByKey!553 l!1114 (h!22827 keys!40))) (not ((_ is Some!603) (getValueByKey!553 l!1114 (h!22827 keys!40)))))))

(assert (=> d!121169 d!121213))

(declare-fun b!1016395 () Bool)

(declare-fun e!571818 () Bool)

(declare-fun tp!70771 () Bool)

(assert (=> b!1016395 (= e!571818 (and tp_is_empty!23595 tp!70771))))

(assert (=> b!1016354 (= tp!70764 e!571818)))

(assert (= (and b!1016354 ((_ is Cons!21630) (t!30643 (t!30643 l!1114)))) b!1016395))

(declare-fun b_lambda!15543 () Bool)

(assert (= b_lambda!15541 (or b!1016272 b_lambda!15543)))

(declare-fun bs!29513 () Bool)

(declare-fun d!121215 () Bool)

(assert (= bs!29513 (and d!121215 b!1016272)))

(assert (=> bs!29513 (= (dynLambda!1918 lambda!1013 (h!22827 (t!30642 keys!40))) (= (getValueByKey!553 l!1114 (h!22827 (t!30642 keys!40))) (Some!603 value!178)))))

(declare-fun m!938207 () Bool)

(assert (=> bs!29513 m!938207))

(assert (=> b!1016391 d!121215))

(check-sat (not bs!29513) (not b!1016394) (not b!1016389) (not b!1016395) (not b_lambda!15543) (not b_lambda!15533) tp_is_empty!23595 (not b!1016392))
(check-sat)
