; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471112 () Bool)

(assert start!471112)

(declare-fun res!1966235 () Bool)

(declare-fun e!2914761 () Bool)

(assert (=> start!471112 (=> (not res!1966235) (not e!2914761))))

(declare-datatypes ((K!13405 0))(
  ( (K!13406 (val!18995 Int)) )
))
(declare-datatypes ((V!13651 0))(
  ( (V!13652 (val!18996 Int)) )
))
(declare-datatypes ((tuple2!53228 0))(
  ( (tuple2!53229 (_1!29908 K!13405) (_2!29908 V!13651)) )
))
(declare-datatypes ((List!52167 0))(
  ( (Nil!52043) (Cons!52043 (h!58223 tuple2!53228) (t!359305 List!52167)) )
))
(declare-fun l!12991 () List!52167)

(declare-fun key!4532 () K!13405)

(declare-fun containsKey!2846 (List!52167 K!13405) Bool)

(assert (=> start!471112 (= res!1966235 (not (containsKey!2846 l!12991 key!4532)))))

(assert (=> start!471112 e!2914761))

(declare-fun e!2914762 () Bool)

(assert (=> start!471112 e!2914762))

(declare-fun tp_is_empty!30101 () Bool)

(assert (=> start!471112 tp_is_empty!30101))

(declare-fun b!4670810 () Bool)

(declare-fun res!1966236 () Bool)

(assert (=> b!4670810 (=> (not res!1966236) (not e!2914761))))

(declare-fun noDuplicateKeys!1702 (List!52167) Bool)

(assert (=> b!4670810 (= res!1966236 (noDuplicateKeys!1702 l!12991))))

(declare-fun b!4670811 () Bool)

(declare-fun ListPrimitiveSize!331 (List!52167) Int)

(assert (=> b!4670811 (= e!2914761 (< (ListPrimitiveSize!331 l!12991) 0))))

(declare-fun tp!1343851 () Bool)

(declare-fun tp_is_empty!30103 () Bool)

(declare-fun b!4670812 () Bool)

(assert (=> b!4670812 (= e!2914762 (and tp_is_empty!30101 tp_is_empty!30103 tp!1343851))))

(assert (= (and start!471112 res!1966235) b!4670810))

(assert (= (and b!4670810 res!1966236) b!4670811))

(get-info :version)

(assert (= (and start!471112 ((_ is Cons!52043) l!12991)) b!4670812))

(declare-fun m!5564121 () Bool)

(assert (=> start!471112 m!5564121))

(declare-fun m!5564123 () Bool)

(assert (=> b!4670810 m!5564123))

(declare-fun m!5564125 () Bool)

(assert (=> b!4670811 m!5564125))

(check-sat (not b!4670811) (not b!4670810) tp_is_empty!30103 (not start!471112) tp_is_empty!30101 (not b!4670812))
(check-sat)
(get-model)

(declare-fun d!1485289 () Bool)

(declare-fun res!1966247 () Bool)

(declare-fun e!2914773 () Bool)

(assert (=> d!1485289 (=> res!1966247 e!2914773)))

(assert (=> d!1485289 (= res!1966247 (not ((_ is Cons!52043) l!12991)))))

(assert (=> d!1485289 (= (noDuplicateKeys!1702 l!12991) e!2914773)))

(declare-fun b!4670823 () Bool)

(declare-fun e!2914774 () Bool)

(assert (=> b!4670823 (= e!2914773 e!2914774)))

(declare-fun res!1966248 () Bool)

(assert (=> b!4670823 (=> (not res!1966248) (not e!2914774))))

(assert (=> b!4670823 (= res!1966248 (not (containsKey!2846 (t!359305 l!12991) (_1!29908 (h!58223 l!12991)))))))

(declare-fun b!4670824 () Bool)

(assert (=> b!4670824 (= e!2914774 (noDuplicateKeys!1702 (t!359305 l!12991)))))

(assert (= (and d!1485289 (not res!1966247)) b!4670823))

(assert (= (and b!4670823 res!1966248) b!4670824))

(declare-fun m!5564129 () Bool)

(assert (=> b!4670823 m!5564129))

(declare-fun m!5564131 () Bool)

(assert (=> b!4670824 m!5564131))

(assert (=> b!4670810 d!1485289))

(declare-fun d!1485293 () Bool)

(declare-fun res!1966253 () Bool)

(declare-fun e!2914782 () Bool)

(assert (=> d!1485293 (=> res!1966253 e!2914782)))

(assert (=> d!1485293 (= res!1966253 (and ((_ is Cons!52043) l!12991) (= (_1!29908 (h!58223 l!12991)) key!4532)))))

(assert (=> d!1485293 (= (containsKey!2846 l!12991 key!4532) e!2914782)))

(declare-fun b!4670835 () Bool)

(declare-fun e!2914783 () Bool)

(assert (=> b!4670835 (= e!2914782 e!2914783)))

(declare-fun res!1966254 () Bool)

(assert (=> b!4670835 (=> (not res!1966254) (not e!2914783))))

(assert (=> b!4670835 (= res!1966254 ((_ is Cons!52043) l!12991))))

(declare-fun b!4670836 () Bool)

(assert (=> b!4670836 (= e!2914783 (containsKey!2846 (t!359305 l!12991) key!4532))))

(assert (= (and d!1485293 (not res!1966253)) b!4670835))

(assert (= (and b!4670835 res!1966254) b!4670836))

(declare-fun m!5564135 () Bool)

(assert (=> b!4670836 m!5564135))

(assert (=> start!471112 d!1485293))

(declare-fun d!1485297 () Bool)

(declare-fun lt!1832865 () Int)

(assert (=> d!1485297 (>= lt!1832865 0)))

(declare-fun e!2914795 () Int)

(assert (=> d!1485297 (= lt!1832865 e!2914795)))

(declare-fun c!799632 () Bool)

(assert (=> d!1485297 (= c!799632 ((_ is Nil!52043) l!12991))))

(assert (=> d!1485297 (= (ListPrimitiveSize!331 l!12991) lt!1832865)))

(declare-fun b!4670852 () Bool)

(assert (=> b!4670852 (= e!2914795 0)))

(declare-fun b!4670853 () Bool)

(assert (=> b!4670853 (= e!2914795 (+ 1 (ListPrimitiveSize!331 (t!359305 l!12991))))))

(assert (= (and d!1485297 c!799632) b!4670852))

(assert (= (and d!1485297 (not c!799632)) b!4670853))

(declare-fun m!5564141 () Bool)

(assert (=> b!4670853 m!5564141))

(assert (=> b!4670811 d!1485297))

(declare-fun b!4670858 () Bool)

(declare-fun e!2914798 () Bool)

(declare-fun tp!1343857 () Bool)

(assert (=> b!4670858 (= e!2914798 (and tp_is_empty!30101 tp_is_empty!30103 tp!1343857))))

(assert (=> b!4670812 (= tp!1343851 e!2914798)))

(assert (= (and b!4670812 ((_ is Cons!52043) (t!359305 l!12991))) b!4670858))

(check-sat (not b!4670853) (not b!4670836) tp_is_empty!30101 tp_is_empty!30103 (not b!4670823) (not b!4670858) (not b!4670824))
(check-sat)
