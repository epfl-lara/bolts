; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7704 () Bool)

(assert start!7704)

(declare-fun b!49071 () Bool)

(declare-fun e!31515 () Bool)

(declare-fun tp_is_empty!2133 () Bool)

(declare-fun tp!6479 () Bool)

(assert (=> b!49071 (= e!31515 (and tp_is_empty!2133 tp!6479))))

(declare-fun b!49068 () Bool)

(declare-fun res!28442 () Bool)

(declare-fun e!31516 () Bool)

(assert (=> b!49068 (=> (not res!28442) (not e!31516))))

(declare-datatypes ((B!982 0))(
  ( (B!983 (val!1111 Int)) )
))
(declare-datatypes ((tuple2!1808 0))(
  ( (tuple2!1809 (_1!914 (_ BitVec 64)) (_2!914 B!982)) )
))
(declare-datatypes ((List!1327 0))(
  ( (Nil!1324) (Cons!1323 (h!1903 tuple2!1808) (t!4366 List!1327)) )
))
(declare-fun l!1333 () List!1327)

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!120 (List!1327 (_ BitVec 64)) Bool)

(assert (=> b!49068 (= res!28442 (not (containsKey!120 l!1333 newKey!147)))))

(declare-fun b!49069 () Bool)

(declare-fun res!28443 () Bool)

(assert (=> b!49069 (=> (not res!28443) (not e!31516))))

(get-info :version)

(assert (=> b!49069 (= res!28443 (not ((_ is Nil!1324) l!1333)))))

(declare-fun b!49070 () Bool)

(declare-fun ListPrimitiveSize!53 (List!1327) Int)

(assert (=> b!49070 (= e!31516 (>= (ListPrimitiveSize!53 (t!4366 l!1333)) (ListPrimitiveSize!53 l!1333)))))

(declare-fun res!28441 () Bool)

(assert (=> start!7704 (=> (not res!28441) (not e!31516))))

(declare-fun isStrictlySorted!268 (List!1327) Bool)

(assert (=> start!7704 (= res!28441 (isStrictlySorted!268 l!1333))))

(assert (=> start!7704 e!31516))

(assert (=> start!7704 e!31515))

(assert (=> start!7704 true))

(assert (= (and start!7704 res!28441) b!49068))

(assert (= (and b!49068 res!28442) b!49069))

(assert (= (and b!49069 res!28443) b!49070))

(assert (= (and start!7704 ((_ is Cons!1323) l!1333)) b!49071))

(declare-fun m!42641 () Bool)

(assert (=> b!49068 m!42641))

(declare-fun m!42643 () Bool)

(assert (=> b!49070 m!42643))

(declare-fun m!42645 () Bool)

(assert (=> b!49070 m!42645))

(declare-fun m!42647 () Bool)

(assert (=> start!7704 m!42647))

(check-sat tp_is_empty!2133 (not b!49070) (not start!7704) (not b!49068) (not b!49071))
(check-sat)
(get-model)

(declare-fun d!9799 () Bool)

(declare-fun res!28467 () Bool)

(declare-fun e!31537 () Bool)

(assert (=> d!9799 (=> res!28467 e!31537)))

(assert (=> d!9799 (= res!28467 (and ((_ is Cons!1323) l!1333) (= (_1!914 (h!1903 l!1333)) newKey!147)))))

(assert (=> d!9799 (= (containsKey!120 l!1333 newKey!147) e!31537)))

(declare-fun b!49098 () Bool)

(declare-fun e!31538 () Bool)

(assert (=> b!49098 (= e!31537 e!31538)))

(declare-fun res!28468 () Bool)

(assert (=> b!49098 (=> (not res!28468) (not e!31538))))

(assert (=> b!49098 (= res!28468 (and (or (not ((_ is Cons!1323) l!1333)) (bvsle (_1!914 (h!1903 l!1333)) newKey!147)) ((_ is Cons!1323) l!1333) (bvslt (_1!914 (h!1903 l!1333)) newKey!147)))))

(declare-fun b!49099 () Bool)

(assert (=> b!49099 (= e!31538 (containsKey!120 (t!4366 l!1333) newKey!147))))

(assert (= (and d!9799 (not res!28467)) b!49098))

(assert (= (and b!49098 res!28468) b!49099))

(declare-fun m!42659 () Bool)

(assert (=> b!49099 m!42659))

(assert (=> b!49068 d!9799))

(declare-fun d!9807 () Bool)

(declare-fun lt!20723 () Int)

(assert (=> d!9807 (>= lt!20723 0)))

(declare-fun e!31548 () Int)

(assert (=> d!9807 (= lt!20723 e!31548)))

(declare-fun c!6620 () Bool)

(assert (=> d!9807 (= c!6620 ((_ is Nil!1324) (t!4366 l!1333)))))

(assert (=> d!9807 (= (ListPrimitiveSize!53 (t!4366 l!1333)) lt!20723)))

(declare-fun b!49116 () Bool)

(assert (=> b!49116 (= e!31548 0)))

(declare-fun b!49117 () Bool)

(assert (=> b!49117 (= e!31548 (+ 1 (ListPrimitiveSize!53 (t!4366 (t!4366 l!1333)))))))

(assert (= (and d!9807 c!6620) b!49116))

(assert (= (and d!9807 (not c!6620)) b!49117))

(declare-fun m!42665 () Bool)

(assert (=> b!49117 m!42665))

(assert (=> b!49070 d!9807))

(declare-fun d!9813 () Bool)

(declare-fun lt!20726 () Int)

(assert (=> d!9813 (>= lt!20726 0)))

(declare-fun e!31551 () Int)

(assert (=> d!9813 (= lt!20726 e!31551)))

(declare-fun c!6623 () Bool)

(assert (=> d!9813 (= c!6623 ((_ is Nil!1324) l!1333))))

(assert (=> d!9813 (= (ListPrimitiveSize!53 l!1333) lt!20726)))

(declare-fun b!49122 () Bool)

(assert (=> b!49122 (= e!31551 0)))

(declare-fun b!49123 () Bool)

(assert (=> b!49123 (= e!31551 (+ 1 (ListPrimitiveSize!53 (t!4366 l!1333))))))

(assert (= (and d!9813 c!6623) b!49122))

(assert (= (and d!9813 (not c!6623)) b!49123))

(assert (=> b!49123 m!42643))

(assert (=> b!49070 d!9813))

(declare-fun d!9819 () Bool)

(declare-fun res!28483 () Bool)

(declare-fun e!31565 () Bool)

(assert (=> d!9819 (=> res!28483 e!31565)))

(assert (=> d!9819 (= res!28483 (or ((_ is Nil!1324) l!1333) ((_ is Nil!1324) (t!4366 l!1333))))))

(assert (=> d!9819 (= (isStrictlySorted!268 l!1333) e!31565)))

(declare-fun b!49138 () Bool)

(declare-fun e!31566 () Bool)

(assert (=> b!49138 (= e!31565 e!31566)))

(declare-fun res!28484 () Bool)

(assert (=> b!49138 (=> (not res!28484) (not e!31566))))

(assert (=> b!49138 (= res!28484 (bvslt (_1!914 (h!1903 l!1333)) (_1!914 (h!1903 (t!4366 l!1333)))))))

(declare-fun b!49139 () Bool)

(assert (=> b!49139 (= e!31566 (isStrictlySorted!268 (t!4366 l!1333)))))

(assert (= (and d!9819 (not res!28483)) b!49138))

(assert (= (and b!49138 res!28484) b!49139))

(declare-fun m!42669 () Bool)

(assert (=> b!49139 m!42669))

(assert (=> start!7704 d!9819))

(declare-fun b!49156 () Bool)

(declare-fun e!31577 () Bool)

(declare-fun tp!6489 () Bool)

(assert (=> b!49156 (= e!31577 (and tp_is_empty!2133 tp!6489))))

(assert (=> b!49071 (= tp!6479 e!31577)))

(assert (= (and b!49071 ((_ is Cons!1323) (t!4366 l!1333))) b!49156))

(check-sat tp_is_empty!2133 (not b!49123) (not b!49156) (not b!49139) (not b!49099) (not b!49117))
(check-sat)
