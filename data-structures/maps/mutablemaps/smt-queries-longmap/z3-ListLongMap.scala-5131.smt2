; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69690 () Bool)

(assert start!69690)

(declare-datatypes ((B!1168 0))(
  ( (B!1169 (val!7036 Int)) )
))
(declare-datatypes ((tuple2!9270 0))(
  ( (tuple2!9271 (_1!4645 (_ BitVec 64)) (_2!4645 B!1168)) )
))
(declare-datatypes ((List!15122 0))(
  ( (Nil!15119) (Cons!15118 (h!16247 tuple2!9270) (t!21445 List!15122)) )
))
(declare-datatypes ((ListLongMap!8107 0))(
  ( (ListLongMap!8108 (toList!4069 List!15122)) )
))
(declare-fun thiss!191 () ListLongMap!8107)

(declare-fun isStrictlySorted!435 (List!15122) Bool)

(assert (=> start!69690 (not (isStrictlySorted!435 (toList!4069 thiss!191)))))

(declare-fun e!449221 () Bool)

(declare-fun inv!25918 (ListLongMap!8107) Bool)

(assert (=> start!69690 (and (inv!25918 thiss!191) e!449221)))

(declare-fun b!811629 () Bool)

(declare-fun tp!43624 () Bool)

(assert (=> b!811629 (= e!449221 tp!43624)))

(assert (= start!69690 b!811629))

(declare-fun m!754205 () Bool)

(assert (=> start!69690 m!754205))

(declare-fun m!754207 () Bool)

(assert (=> start!69690 m!754207))

(check-sat (not start!69690) (not b!811629))
(check-sat)
(get-model)

(declare-fun d!104129 () Bool)

(declare-fun res!554851 () Bool)

(declare-fun e!449241 () Bool)

(assert (=> d!104129 (=> res!554851 e!449241)))

(get-info :version)

(assert (=> d!104129 (= res!554851 (or ((_ is Nil!15119) (toList!4069 thiss!191)) ((_ is Nil!15119) (t!21445 (toList!4069 thiss!191)))))))

(assert (=> d!104129 (= (isStrictlySorted!435 (toList!4069 thiss!191)) e!449241)))

(declare-fun b!811651 () Bool)

(declare-fun e!449242 () Bool)

(assert (=> b!811651 (= e!449241 e!449242)))

(declare-fun res!554852 () Bool)

(assert (=> b!811651 (=> (not res!554852) (not e!449242))))

(assert (=> b!811651 (= res!554852 (bvslt (_1!4645 (h!16247 (toList!4069 thiss!191))) (_1!4645 (h!16247 (t!21445 (toList!4069 thiss!191))))))))

(declare-fun b!811652 () Bool)

(assert (=> b!811652 (= e!449242 (isStrictlySorted!435 (t!21445 (toList!4069 thiss!191))))))

(assert (= (and d!104129 (not res!554851)) b!811651))

(assert (= (and b!811651 res!554852) b!811652))

(declare-fun m!754215 () Bool)

(assert (=> b!811652 m!754215))

(assert (=> start!69690 d!104129))

(declare-fun d!104135 () Bool)

(assert (=> d!104135 (= (inv!25918 thiss!191) (isStrictlySorted!435 (toList!4069 thiss!191)))))

(declare-fun bs!22463 () Bool)

(assert (= bs!22463 d!104135))

(assert (=> bs!22463 m!754205))

(assert (=> start!69690 d!104135))

(declare-fun b!811660 () Bool)

(declare-fun e!449248 () Bool)

(declare-fun tp_is_empty!13977 () Bool)

(declare-fun tp!43633 () Bool)

(assert (=> b!811660 (= e!449248 (and tp_is_empty!13977 tp!43633))))

(assert (=> b!811629 (= tp!43624 e!449248)))

(assert (= (and b!811629 ((_ is Cons!15118) (toList!4069 thiss!191))) b!811660))

(check-sat (not d!104135) (not b!811652) (not b!811660) tp_is_empty!13977)
