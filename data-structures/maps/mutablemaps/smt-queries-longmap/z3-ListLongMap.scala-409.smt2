; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7638 () Bool)

(assert start!7638)

(declare-fun res!28254 () Bool)

(declare-fun e!31258 () Bool)

(assert (=> start!7638 (=> (not res!28254) (not e!31258))))

(declare-datatypes ((B!970 0))(
  ( (B!971 (val!1105 Int)) )
))
(declare-datatypes ((tuple2!1796 0))(
  ( (tuple2!1797 (_1!908 (_ BitVec 64)) (_2!908 B!970)) )
))
(declare-datatypes ((List!1321 0))(
  ( (Nil!1318) (Cons!1317 (h!1897 tuple2!1796) (t!4357 List!1321)) )
))
(declare-fun l!1333 () List!1321)

(declare-fun isStrictlySorted!262 (List!1321) Bool)

(assert (=> start!7638 (= res!28254 (isStrictlySorted!262 l!1333))))

(assert (=> start!7638 e!31258))

(declare-fun e!31257 () Bool)

(assert (=> start!7638 e!31257))

(assert (=> start!7638 true))

(declare-fun b!48679 () Bool)

(declare-fun res!28253 () Bool)

(assert (=> b!48679 (=> (not res!28253) (not e!31258))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!114 (List!1321 (_ BitVec 64)) Bool)

(assert (=> b!48679 (= res!28253 (not (containsKey!114 l!1333 newKey!147)))))

(declare-fun b!48680 () Bool)

(declare-fun ListPrimitiveSize!50 (List!1321) Int)

(assert (=> b!48680 (= e!31258 (< (ListPrimitiveSize!50 l!1333) 0))))

(declare-fun b!48681 () Bool)

(declare-fun tp_is_empty!2121 () Bool)

(declare-fun tp!6440 () Bool)

(assert (=> b!48681 (= e!31257 (and tp_is_empty!2121 tp!6440))))

(assert (= (and start!7638 res!28254) b!48679))

(assert (= (and b!48679 res!28253) b!48680))

(get-info :version)

(assert (= (and start!7638 ((_ is Cons!1317) l!1333)) b!48681))

(declare-fun m!42405 () Bool)

(assert (=> start!7638 m!42405))

(declare-fun m!42407 () Bool)

(assert (=> b!48679 m!42407))

(declare-fun m!42409 () Bool)

(assert (=> b!48680 m!42409))

(check-sat (not b!48679) tp_is_empty!2121 (not b!48680) (not b!48681) (not start!7638))
(check-sat)
(get-model)

(declare-fun d!9693 () Bool)

(declare-fun res!28271 () Bool)

(declare-fun e!31275 () Bool)

(assert (=> d!9693 (=> res!28271 e!31275)))

(assert (=> d!9693 (= res!28271 (or ((_ is Nil!1318) l!1333) ((_ is Nil!1318) (t!4357 l!1333))))))

(assert (=> d!9693 (= (isStrictlySorted!262 l!1333) e!31275)))

(declare-fun b!48701 () Bool)

(declare-fun e!31277 () Bool)

(assert (=> b!48701 (= e!31275 e!31277)))

(declare-fun res!28272 () Bool)

(assert (=> b!48701 (=> (not res!28272) (not e!31277))))

(assert (=> b!48701 (= res!28272 (bvslt (_1!908 (h!1897 l!1333)) (_1!908 (h!1897 (t!4357 l!1333)))))))

(declare-fun b!48702 () Bool)

(assert (=> b!48702 (= e!31277 (isStrictlySorted!262 (t!4357 l!1333)))))

(assert (= (and d!9693 (not res!28271)) b!48701))

(assert (= (and b!48701 res!28272) b!48702))

(declare-fun m!42417 () Bool)

(assert (=> b!48702 m!42417))

(assert (=> start!7638 d!9693))

(declare-fun d!9699 () Bool)

(declare-fun lt!20690 () Int)

(assert (=> d!9699 (>= lt!20690 0)))

(declare-fun e!31287 () Int)

(assert (=> d!9699 (= lt!20690 e!31287)))

(declare-fun c!6542 () Bool)

(assert (=> d!9699 (= c!6542 ((_ is Nil!1318) l!1333))))

(assert (=> d!9699 (= (ListPrimitiveSize!50 l!1333) lt!20690)))

(declare-fun b!48717 () Bool)

(assert (=> b!48717 (= e!31287 0)))

(declare-fun b!48718 () Bool)

(assert (=> b!48718 (= e!31287 (+ 1 (ListPrimitiveSize!50 (t!4357 l!1333))))))

(assert (= (and d!9699 c!6542) b!48717))

(assert (= (and d!9699 (not c!6542)) b!48718))

(declare-fun m!42423 () Bool)

(assert (=> b!48718 m!42423))

(assert (=> b!48680 d!9699))

(declare-fun d!9705 () Bool)

(declare-fun res!28291 () Bool)

(declare-fun e!31304 () Bool)

(assert (=> d!9705 (=> res!28291 e!31304)))

(assert (=> d!9705 (= res!28291 (and ((_ is Cons!1317) l!1333) (= (_1!908 (h!1897 l!1333)) newKey!147)))))

(assert (=> d!9705 (= (containsKey!114 l!1333 newKey!147) e!31304)))

(declare-fun b!48739 () Bool)

(declare-fun e!31305 () Bool)

(assert (=> b!48739 (= e!31304 e!31305)))

(declare-fun res!28292 () Bool)

(assert (=> b!48739 (=> (not res!28292) (not e!31305))))

(assert (=> b!48739 (= res!28292 (and (or (not ((_ is Cons!1317) l!1333)) (bvsle (_1!908 (h!1897 l!1333)) newKey!147)) ((_ is Cons!1317) l!1333) (bvslt (_1!908 (h!1897 l!1333)) newKey!147)))))

(declare-fun b!48740 () Bool)

(assert (=> b!48740 (= e!31305 (containsKey!114 (t!4357 l!1333) newKey!147))))

(assert (= (and d!9705 (not res!28291)) b!48739))

(assert (= (and b!48739 res!28292) b!48740))

(declare-fun m!42429 () Bool)

(assert (=> b!48740 m!42429))

(assert (=> b!48679 d!9705))

(declare-fun b!48753 () Bool)

(declare-fun e!31314 () Bool)

(declare-fun tp!6446 () Bool)

(assert (=> b!48753 (= e!31314 (and tp_is_empty!2121 tp!6446))))

(assert (=> b!48681 (= tp!6440 e!31314)))

(assert (= (and b!48681 ((_ is Cons!1317) (t!4357 l!1333))) b!48753))

(check-sat (not b!48740) tp_is_empty!2121 (not b!48753) (not b!48702) (not b!48718))
(check-sat)
