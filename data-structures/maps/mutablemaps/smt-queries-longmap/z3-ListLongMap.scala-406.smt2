; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7608 () Bool)

(assert start!7608)

(declare-fun res!28152 () Bool)

(declare-fun e!31155 () Bool)

(assert (=> start!7608 (=> (not res!28152) (not e!31155))))

(declare-datatypes ((B!952 0))(
  ( (B!953 (val!1096 Int)) )
))
(declare-datatypes ((tuple2!1778 0))(
  ( (tuple2!1779 (_1!899 (_ BitVec 64)) (_2!899 B!952)) )
))
(declare-datatypes ((List!1312 0))(
  ( (Nil!1309) (Cons!1308 (h!1888 tuple2!1778) (t!4348 List!1312)) )
))
(declare-fun l!1333 () List!1312)

(declare-fun isStrictlySorted!256 (List!1312) Bool)

(assert (=> start!7608 (= res!28152 (isStrictlySorted!256 l!1333))))

(assert (=> start!7608 e!31155))

(declare-fun e!31156 () Bool)

(assert (=> start!7608 e!31156))

(assert (=> start!7608 true))

(declare-fun b!48536 () Bool)

(declare-fun res!28154 () Bool)

(assert (=> b!48536 (=> (not res!28154) (not e!31155))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!108 (List!1312 (_ BitVec 64)) Bool)

(assert (=> b!48536 (= res!28154 (not (containsKey!108 l!1333 newKey!147)))))

(declare-fun b!48537 () Bool)

(declare-fun res!28155 () Bool)

(assert (=> b!48537 (=> (not res!28155) (not e!31155))))

(get-info :version)

(assert (=> b!48537 (= res!28155 (not ((_ is Nil!1309) l!1333)))))

(declare-fun b!48538 () Bool)

(declare-fun res!28153 () Bool)

(assert (=> b!48538 (=> (not res!28153) (not e!31155))))

(assert (=> b!48538 (= res!28153 (isStrictlySorted!256 (t!4348 l!1333)))))

(declare-fun b!48539 () Bool)

(declare-fun tp_is_empty!2103 () Bool)

(declare-fun tp!6404 () Bool)

(assert (=> b!48539 (= e!31156 (and tp_is_empty!2103 tp!6404))))

(declare-fun b!48540 () Bool)

(assert (=> b!48540 (= e!31155 (containsKey!108 (t!4348 l!1333) newKey!147))))

(assert (= (and start!7608 res!28152) b!48536))

(assert (= (and b!48536 res!28154) b!48537))

(assert (= (and b!48537 res!28155) b!48538))

(assert (= (and b!48538 res!28153) b!48540))

(assert (= (and start!7608 ((_ is Cons!1308) l!1333)) b!48539))

(declare-fun m!42353 () Bool)

(assert (=> start!7608 m!42353))

(declare-fun m!42355 () Bool)

(assert (=> b!48536 m!42355))

(declare-fun m!42357 () Bool)

(assert (=> b!48538 m!42357))

(declare-fun m!42359 () Bool)

(assert (=> b!48540 m!42359))

(check-sat tp_is_empty!2103 (not b!48540) (not start!7608) (not b!48536) (not b!48539) (not b!48538))
(check-sat)
(get-model)

(declare-fun d!9665 () Bool)

(declare-fun res!28182 () Bool)

(declare-fun e!31177 () Bool)

(assert (=> d!9665 (=> res!28182 e!31177)))

(assert (=> d!9665 (= res!28182 (and ((_ is Cons!1308) l!1333) (= (_1!899 (h!1888 l!1333)) newKey!147)))))

(assert (=> d!9665 (= (containsKey!108 l!1333 newKey!147) e!31177)))

(declare-fun b!48570 () Bool)

(declare-fun e!31178 () Bool)

(assert (=> b!48570 (= e!31177 e!31178)))

(declare-fun res!28183 () Bool)

(assert (=> b!48570 (=> (not res!28183) (not e!31178))))

(assert (=> b!48570 (= res!28183 (and (or (not ((_ is Cons!1308) l!1333)) (bvsle (_1!899 (h!1888 l!1333)) newKey!147)) ((_ is Cons!1308) l!1333) (bvslt (_1!899 (h!1888 l!1333)) newKey!147)))))

(declare-fun b!48571 () Bool)

(assert (=> b!48571 (= e!31178 (containsKey!108 (t!4348 l!1333) newKey!147))))

(assert (= (and d!9665 (not res!28182)) b!48570))

(assert (= (and b!48570 res!28183) b!48571))

(assert (=> b!48571 m!42359))

(assert (=> b!48536 d!9665))

(declare-fun d!9671 () Bool)

(declare-fun res!28184 () Bool)

(declare-fun e!31179 () Bool)

(assert (=> d!9671 (=> res!28184 e!31179)))

(assert (=> d!9671 (= res!28184 (and ((_ is Cons!1308) (t!4348 l!1333)) (= (_1!899 (h!1888 (t!4348 l!1333))) newKey!147)))))

(assert (=> d!9671 (= (containsKey!108 (t!4348 l!1333) newKey!147) e!31179)))

(declare-fun b!48572 () Bool)

(declare-fun e!31180 () Bool)

(assert (=> b!48572 (= e!31179 e!31180)))

(declare-fun res!28185 () Bool)

(assert (=> b!48572 (=> (not res!28185) (not e!31180))))

(assert (=> b!48572 (= res!28185 (and (or (not ((_ is Cons!1308) (t!4348 l!1333))) (bvsle (_1!899 (h!1888 (t!4348 l!1333))) newKey!147)) ((_ is Cons!1308) (t!4348 l!1333)) (bvslt (_1!899 (h!1888 (t!4348 l!1333))) newKey!147)))))

(declare-fun b!48573 () Bool)

(assert (=> b!48573 (= e!31180 (containsKey!108 (t!4348 (t!4348 l!1333)) newKey!147))))

(assert (= (and d!9671 (not res!28184)) b!48572))

(assert (= (and b!48572 res!28185) b!48573))

(declare-fun m!42369 () Bool)

(assert (=> b!48573 m!42369))

(assert (=> b!48540 d!9671))

(declare-fun d!9673 () Bool)

(declare-fun res!28204 () Bool)

(declare-fun e!31199 () Bool)

(assert (=> d!9673 (=> res!28204 e!31199)))

(assert (=> d!9673 (= res!28204 (or ((_ is Nil!1309) l!1333) ((_ is Nil!1309) (t!4348 l!1333))))))

(assert (=> d!9673 (= (isStrictlySorted!256 l!1333) e!31199)))

(declare-fun b!48592 () Bool)

(declare-fun e!31200 () Bool)

(assert (=> b!48592 (= e!31199 e!31200)))

(declare-fun res!28205 () Bool)

(assert (=> b!48592 (=> (not res!28205) (not e!31200))))

(assert (=> b!48592 (= res!28205 (bvslt (_1!899 (h!1888 l!1333)) (_1!899 (h!1888 (t!4348 l!1333)))))))

(declare-fun b!48593 () Bool)

(assert (=> b!48593 (= e!31200 (isStrictlySorted!256 (t!4348 l!1333)))))

(assert (= (and d!9673 (not res!28204)) b!48592))

(assert (= (and b!48592 res!28205) b!48593))

(assert (=> b!48593 m!42357))

(assert (=> start!7608 d!9673))

(declare-fun d!9681 () Bool)

(declare-fun res!28210 () Bool)

(declare-fun e!31205 () Bool)

(assert (=> d!9681 (=> res!28210 e!31205)))

(assert (=> d!9681 (= res!28210 (or ((_ is Nil!1309) (t!4348 l!1333)) ((_ is Nil!1309) (t!4348 (t!4348 l!1333)))))))

(assert (=> d!9681 (= (isStrictlySorted!256 (t!4348 l!1333)) e!31205)))

(declare-fun b!48598 () Bool)

(declare-fun e!31206 () Bool)

(assert (=> b!48598 (= e!31205 e!31206)))

(declare-fun res!28211 () Bool)

(assert (=> b!48598 (=> (not res!28211) (not e!31206))))

(assert (=> b!48598 (= res!28211 (bvslt (_1!899 (h!1888 (t!4348 l!1333))) (_1!899 (h!1888 (t!4348 (t!4348 l!1333))))))))

(declare-fun b!48599 () Bool)

(assert (=> b!48599 (= e!31206 (isStrictlySorted!256 (t!4348 (t!4348 l!1333))))))

(assert (= (and d!9681 (not res!28210)) b!48598))

(assert (= (and b!48598 res!28211) b!48599))

(declare-fun m!42379 () Bool)

(assert (=> b!48599 m!42379))

(assert (=> b!48538 d!9681))

(declare-fun b!48617 () Bool)

(declare-fun e!31218 () Bool)

(declare-fun tp!6413 () Bool)

(assert (=> b!48617 (= e!31218 (and tp_is_empty!2103 tp!6413))))

(assert (=> b!48539 (= tp!6404 e!31218)))

(assert (= (and b!48539 ((_ is Cons!1308) (t!4348 l!1333))) b!48617))

(check-sat tp_is_empty!2103 (not b!48617) (not b!48593) (not b!48571) (not b!48599) (not b!48573))
(check-sat)
