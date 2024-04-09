; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5244 () Bool)

(assert start!5244)

(declare-datatypes ((B!796 0))(
  ( (B!797 (val!898 Int)) )
))
(declare-datatypes ((tuple2!1460 0))(
  ( (tuple2!1461 (_1!740 (_ BitVec 64)) (_2!740 B!796)) )
))
(declare-datatypes ((List!1024 0))(
  ( (Nil!1021) (Cons!1020 (h!1588 tuple2!1460) (t!3865 List!1024)) )
))
(declare-datatypes ((ListLongMap!1041 0))(
  ( (ListLongMap!1042 (toList!536 List!1024)) )
))
(declare-fun lm!266 () ListLongMap!1041)

(declare-fun isStrictlySorted!200 (List!1024) Bool)

(assert (=> start!5244 (not (isStrictlySorted!200 (toList!536 lm!266)))))

(declare-fun e!24201 () Bool)

(declare-fun inv!1708 (ListLongMap!1041) Bool)

(assert (=> start!5244 (and (inv!1708 lm!266) e!24201)))

(declare-fun b!38067 () Bool)

(declare-fun tp!5654 () Bool)

(assert (=> b!38067 (= e!24201 tp!5654)))

(assert (= start!5244 b!38067))

(declare-fun m!30771 () Bool)

(assert (=> start!5244 m!30771))

(declare-fun m!30773 () Bool)

(assert (=> start!5244 m!30773))

(check-sat (not start!5244) (not b!38067))
(check-sat)
(get-model)

(declare-fun d!6185 () Bool)

(declare-fun res!22987 () Bool)

(declare-fun e!24219 () Bool)

(assert (=> d!6185 (=> res!22987 e!24219)))

(get-info :version)

(assert (=> d!6185 (= res!22987 (or ((_ is Nil!1021) (toList!536 lm!266)) ((_ is Nil!1021) (t!3865 (toList!536 lm!266)))))))

(assert (=> d!6185 (= (isStrictlySorted!200 (toList!536 lm!266)) e!24219)))

(declare-fun b!38085 () Bool)

(declare-fun e!24220 () Bool)

(assert (=> b!38085 (= e!24219 e!24220)))

(declare-fun res!22988 () Bool)

(assert (=> b!38085 (=> (not res!22988) (not e!24220))))

(assert (=> b!38085 (= res!22988 (bvslt (_1!740 (h!1588 (toList!536 lm!266))) (_1!740 (h!1588 (t!3865 (toList!536 lm!266))))))))

(declare-fun b!38086 () Bool)

(assert (=> b!38086 (= e!24220 (isStrictlySorted!200 (t!3865 (toList!536 lm!266))))))

(assert (= (and d!6185 (not res!22987)) b!38085))

(assert (= (and b!38085 res!22988) b!38086))

(declare-fun m!30781 () Bool)

(assert (=> b!38086 m!30781))

(assert (=> start!5244 d!6185))

(declare-fun d!6191 () Bool)

(assert (=> d!6191 (= (inv!1708 lm!266) (isStrictlySorted!200 (toList!536 lm!266)))))

(declare-fun bs!1520 () Bool)

(assert (= bs!1520 d!6191))

(assert (=> bs!1520 m!30771))

(assert (=> start!5244 d!6191))

(declare-fun b!38098 () Bool)

(declare-fun e!24228 () Bool)

(declare-fun tp_is_empty!1718 () Bool)

(declare-fun tp!5663 () Bool)

(assert (=> b!38098 (= e!24228 (and tp_is_empty!1718 tp!5663))))

(assert (=> b!38067 (= tp!5654 e!24228)))

(assert (= (and b!38067 ((_ is Cons!1020) (toList!536 lm!266))) b!38098))

(check-sat (not d!6191) (not b!38086) (not b!38098) tp_is_empty!1718)
(check-sat)
