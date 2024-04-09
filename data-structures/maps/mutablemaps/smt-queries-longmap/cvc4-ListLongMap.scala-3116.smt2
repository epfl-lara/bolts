; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43802 () Bool)

(assert start!43802)

(declare-fun res!288328 () Bool)

(declare-fun e!284769 () Bool)

(assert (=> start!43802 (=> (not res!288328) (not e!284769))))

(declare-datatypes ((B!1122 0))(
  ( (B!1123 (val!7013 Int)) )
))
(declare-datatypes ((tuple2!9224 0))(
  ( (tuple2!9225 (_1!4622 (_ BitVec 64)) (_2!4622 B!1122)) )
))
(declare-datatypes ((List!9312 0))(
  ( (Nil!9309) (Cons!9308 (h!10164 tuple2!9224) (t!15542 List!9312)) )
))
(declare-fun l!956 () List!9312)

(declare-fun isStrictlySorted!412 (List!9312) Bool)

(assert (=> start!43802 (= res!288328 (isStrictlySorted!412 l!956))))

(assert (=> start!43802 e!284769))

(declare-fun e!284770 () Bool)

(assert (=> start!43802 e!284770))

(assert (=> start!43802 true))

(declare-fun b!483795 () Bool)

(declare-fun res!288329 () Bool)

(assert (=> b!483795 (=> (not res!288329) (not e!284769))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!378 (List!9312 (_ BitVec 64)) Bool)

(assert (=> b!483795 (= res!288329 (not (containsKey!378 l!956 key!251)))))

(declare-fun b!483796 () Bool)

(declare-fun ListPrimitiveSize!63 (List!9312) Int)

(assert (=> b!483796 (= e!284769 (< (ListPrimitiveSize!63 l!956) 0))))

(declare-fun b!483797 () Bool)

(declare-fun tp_is_empty!13931 () Bool)

(declare-fun tp!43486 () Bool)

(assert (=> b!483797 (= e!284770 (and tp_is_empty!13931 tp!43486))))

(assert (= (and start!43802 res!288328) b!483795))

(assert (= (and b!483795 res!288329) b!483796))

(assert (= (and start!43802 (is-Cons!9308 l!956)) b!483797))

(declare-fun m!464695 () Bool)

(assert (=> start!43802 m!464695))

(declare-fun m!464697 () Bool)

(assert (=> b!483795 m!464697))

(declare-fun m!464699 () Bool)

(assert (=> b!483796 m!464699))

(push 1)

(assert (not b!483795))

(assert tp_is_empty!13931)

(assert (not b!483796))

(assert (not b!483797))

(assert (not start!43802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76903 () Bool)

(declare-fun res!288340 () Bool)

(declare-fun e!284784 () Bool)

(assert (=> d!76903 (=> res!288340 e!284784)))

(assert (=> d!76903 (= res!288340 (or (is-Nil!9309 l!956) (is-Nil!9309 (t!15542 l!956))))))

(assert (=> d!76903 (= (isStrictlySorted!412 l!956) e!284784)))

(declare-fun b!483814 () Bool)

(declare-fun e!284785 () Bool)

(assert (=> b!483814 (= e!284784 e!284785)))

(declare-fun res!288341 () Bool)

(assert (=> b!483814 (=> (not res!288341) (not e!284785))))

(assert (=> b!483814 (= res!288341 (bvslt (_1!4622 (h!10164 l!956)) (_1!4622 (h!10164 (t!15542 l!956)))))))

(declare-fun b!483815 () Bool)

(assert (=> b!483815 (= e!284785 (isStrictlySorted!412 (t!15542 l!956)))))

(assert (= (and d!76903 (not res!288340)) b!483814))

(assert (= (and b!483814 res!288341) b!483815))

(declare-fun m!464705 () Bool)

(assert (=> b!483815 m!464705))

(assert (=> start!43802 d!76903))

(declare-fun d!76909 () Bool)

(declare-fun lt!219299 () Int)

(assert (=> d!76909 (>= lt!219299 0)))

(declare-fun e!284800 () Int)

(assert (=> d!76909 (= lt!219299 e!284800)))

(declare-fun c!58094 () Bool)

(assert (=> d!76909 (= c!58094 (is-Nil!9309 l!956))))

(assert (=> d!76909 (= (ListPrimitiveSize!63 l!956) lt!219299)))

(declare-fun b!483832 () Bool)

(assert (=> b!483832 (= e!284800 0)))

(declare-fun b!483833 () Bool)

(assert (=> b!483833 (= e!284800 (+ 1 (ListPrimitiveSize!63 (t!15542 l!956))))))

(assert (= (and d!76909 c!58094) b!483832))

(assert (= (and d!76909 (not c!58094)) b!483833))

(declare-fun m!464711 () Bool)

(assert (=> b!483833 m!464711))

(assert (=> b!483796 d!76909))

(declare-fun d!76915 () Bool)

(declare-fun res!288364 () Bool)

(declare-fun e!284820 () Bool)

(assert (=> d!76915 (=> res!288364 e!284820)))

(assert (=> d!76915 (= res!288364 (and (is-Cons!9308 l!956) (= (_1!4622 (h!10164 l!956)) key!251)))))

(assert (=> d!76915 (= (containsKey!378 l!956 key!251) e!284820)))

