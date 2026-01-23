; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!534252 () Bool)

(assert start!534252)

(declare-fun b!5050764 () Bool)

(declare-fun res!2150946 () Bool)

(declare-fun e!3153410 () Bool)

(assert (=> b!5050764 (=> (not res!2150946) (not e!3153410))))

(declare-fun i!652 () Int)

(assert (=> b!5050764 (= res!2150946 (> i!652 0))))

(declare-fun res!2150944 () Bool)

(assert (=> start!534252 (=> (not res!2150944) (not e!3153410))))

(assert (=> start!534252 (= res!2150944 (<= 0 i!652))))

(assert (=> start!534252 e!3153410))

(assert (=> start!534252 true))

(declare-fun e!3153411 () Bool)

(assert (=> start!534252 e!3153411))

(declare-fun e!3153409 () Bool)

(assert (=> start!534252 e!3153409))

(declare-fun b!5050765 () Bool)

(declare-fun res!2150942 () Bool)

(assert (=> b!5050765 (=> (not res!2150942) (not e!3153410))))

(declare-datatypes ((T!104780 0))(
  ( (T!104781 (val!23599 Int)) )
))
(declare-datatypes ((List!58509 0))(
  ( (Nil!58385) (Cons!58385 (h!64833 T!104780) (t!371148 List!58509)) )
))
(declare-fun r!2041 () List!58509)

(declare-fun l!2757 () List!58509)

(declare-fun size!39008 (List!58509) Int)

(assert (=> b!5050765 (= res!2150942 (<= i!652 (+ (size!39008 l!2757) (size!39008 r!2041))))))

(declare-fun b!5050766 () Bool)

(declare-fun tp_is_empty!36953 () Bool)

(declare-fun tp!1412219 () Bool)

(assert (=> b!5050766 (= e!3153411 (and tp_is_empty!36953 tp!1412219))))

(declare-fun b!5050767 () Bool)

(assert (=> b!5050767 (= e!3153410 false)))

(declare-fun b!5050768 () Bool)

(declare-fun res!2150940 () Bool)

(assert (=> b!5050768 (=> (not res!2150940) (not e!3153410))))

(assert (=> b!5050768 (= res!2150940 (and (not (= l!2757 Nil!58385)) (not (= r!2041 Nil!58385))))))

(declare-fun b!5050769 () Bool)

(declare-fun res!2150945 () Bool)

(assert (=> b!5050769 (=> (not res!2150945) (not e!3153410))))

(declare-fun isEmpty!31568 (List!58509) Bool)

(assert (=> b!5050769 (= res!2150945 (not (isEmpty!31568 r!2041)))))

(declare-fun b!5050770 () Bool)

(declare-fun tp!1412218 () Bool)

(assert (=> b!5050770 (= e!3153409 (and tp_is_empty!36953 tp!1412218))))

(declare-fun b!5050771 () Bool)

(declare-fun res!2150941 () Bool)

(assert (=> b!5050771 (=> (not res!2150941) (not e!3153410))))

(assert (=> b!5050771 (= res!2150941 (not (isEmpty!31568 l!2757)))))

(declare-fun b!5050772 () Bool)

(declare-fun res!2150943 () Bool)

(assert (=> b!5050772 (=> (not res!2150943) (not e!3153410))))

(declare-fun tail!9939 (List!58509) List!58509)

(declare-fun ++!12752 (List!58509 List!58509) List!58509)

(assert (=> b!5050772 (= res!2150943 (= (tail!9939 (++!12752 l!2757 r!2041)) (++!12752 (tail!9939 l!2757) r!2041)))))

(assert (= (and start!534252 res!2150944) b!5050765))

(assert (= (and b!5050765 res!2150942) b!5050768))

(assert (= (and b!5050768 res!2150940) b!5050771))

(assert (= (and b!5050771 res!2150941) b!5050769))

(assert (= (and b!5050769 res!2150945) b!5050764))

(assert (= (and b!5050764 res!2150946) b!5050772))

(assert (= (and b!5050772 res!2150943) b!5050767))

(assert (= (and start!534252 (is-Cons!58385 l!2757)) b!5050766))

(assert (= (and start!534252 (is-Cons!58385 r!2041)) b!5050770))

(declare-fun m!6084934 () Bool)

(assert (=> b!5050765 m!6084934))

(declare-fun m!6084936 () Bool)

(assert (=> b!5050765 m!6084936))

(declare-fun m!6084938 () Bool)

(assert (=> b!5050769 m!6084938))

(declare-fun m!6084940 () Bool)

(assert (=> b!5050771 m!6084940))

(declare-fun m!6084942 () Bool)

(assert (=> b!5050772 m!6084942))

(assert (=> b!5050772 m!6084942))

(declare-fun m!6084944 () Bool)

(assert (=> b!5050772 m!6084944))

(declare-fun m!6084946 () Bool)

(assert (=> b!5050772 m!6084946))

(assert (=> b!5050772 m!6084946))

(declare-fun m!6084948 () Bool)

(assert (=> b!5050772 m!6084948))

(push 1)

(assert (not b!5050771))

(assert (not b!5050770))

(assert (not b!5050769))

(assert tp_is_empty!36953)

(assert (not b!5050765))

(assert (not b!5050772))

(assert (not b!5050766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

