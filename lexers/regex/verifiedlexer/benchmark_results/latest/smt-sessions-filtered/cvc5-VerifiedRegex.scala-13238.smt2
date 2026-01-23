; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720414 () Bool)

(assert start!720414)

(declare-fun b!7384903 () Bool)

(declare-fun res!2978212 () Bool)

(declare-fun e!4420426 () Bool)

(assert (=> b!7384903 (=> (not res!2978212) (not e!4420426))))

(declare-datatypes ((C!38974 0))(
  ( (C!38975 (val!29861 Int)) )
))
(declare-datatypes ((Regex!19350 0))(
  ( (ElementMatch!19350 (c!1372650 C!38974)) (Concat!28195 (regOne!39212 Regex!19350) (regTwo!39212 Regex!19350)) (EmptyExpr!19350) (Star!19350 (reg!19679 Regex!19350)) (EmptyLang!19350) (Union!19350 (regOne!39213 Regex!19350) (regTwo!39213 Regex!19350)) )
))
(declare-datatypes ((List!71860 0))(
  ( (Nil!71736) (Cons!71736 (h!78184 Regex!19350) (t!386411 List!71860)) )
))
(declare-datatypes ((Context!16580 0))(
  ( (Context!16581 (exprs!8790 List!71860)) )
))
(declare-fun c!10532 () Context!16580)

(declare-fun isEmpty!40990 (List!71860) Bool)

(assert (=> b!7384903 (= res!2978212 (not (isEmpty!40990 (exprs!8790 c!10532))))))

(declare-fun b!7384904 () Bool)

(declare-fun e!4420424 () Bool)

(declare-fun tp_is_empty!48963 () Bool)

(declare-fun tp!2101020 () Bool)

(assert (=> b!7384904 (= e!4420424 (and tp_is_empty!48963 tp!2101020))))

(declare-fun res!2978211 () Bool)

(assert (=> start!720414 (=> (not res!2978211) (not e!4420426))))

(declare-fun z!3451 () (Set Context!16580))

(assert (=> start!720414 (= res!2978211 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16580)))))))

(assert (=> start!720414 e!4420426))

(declare-fun condSetEmpty!55838 () Bool)

(assert (=> start!720414 (= condSetEmpty!55838 (= z!3451 (as set.empty (Set Context!16580))))))

(declare-fun setRes!55838 () Bool)

(assert (=> start!720414 setRes!55838))

(declare-fun e!4420425 () Bool)

(declare-fun inv!91737 (Context!16580) Bool)

(assert (=> start!720414 (and (inv!91737 c!10532) e!4420425)))

(assert (=> start!720414 tp_is_empty!48963))

(assert (=> start!720414 e!4420424))

(declare-fun setIsEmpty!55838 () Bool)

(assert (=> setIsEmpty!55838 setRes!55838))

(declare-fun b!7384905 () Bool)

(declare-fun e!4420423 () Bool)

(declare-fun tp!2101017 () Bool)

(assert (=> b!7384905 (= e!4420423 tp!2101017)))

(declare-fun b!7384906 () Bool)

(declare-fun res!2978214 () Bool)

(assert (=> b!7384906 (=> (not res!2978214) (not e!4420426))))

(declare-fun tail!14757 (List!71860) List!71860)

(assert (=> b!7384906 (= res!2978214 (isEmpty!40990 (tail!14757 (exprs!8790 c!10532))))))

(declare-fun b!7384907 () Bool)

(declare-datatypes ((List!71861 0))(
  ( (Nil!71737) (Cons!71737 (h!78185 C!38974) (t!386412 List!71861)) )
))
(declare-fun s!7927 () List!71861)

(declare-fun a!2228 () C!38974)

(assert (=> b!7384907 (= e!4420426 (and (is-Cons!71737 s!7927) (= (h!78185 s!7927) a!2228) (= s!7927 Nil!71737)))))

(declare-fun setElem!55838 () Context!16580)

(declare-fun tp!2101018 () Bool)

(declare-fun setNonEmpty!55838 () Bool)

(assert (=> setNonEmpty!55838 (= setRes!55838 (and tp!2101018 (inv!91737 setElem!55838) e!4420423))))

(declare-fun setRest!55838 () (Set Context!16580))

(assert (=> setNonEmpty!55838 (= z!3451 (set.union (set.insert setElem!55838 (as set.empty (Set Context!16580))) setRest!55838))))

(declare-fun b!7384908 () Bool)

(declare-fun tp!2101019 () Bool)

(assert (=> b!7384908 (= e!4420425 tp!2101019)))

(declare-fun b!7384909 () Bool)

(declare-fun res!2978213 () Bool)

(assert (=> b!7384909 (=> (not res!2978213) (not e!4420426))))

(declare-fun head!15088 (List!71860) Regex!19350)

(assert (=> b!7384909 (= res!2978213 (= (head!15088 (exprs!8790 c!10532)) (ElementMatch!19350 a!2228)))))

(assert (= (and start!720414 res!2978211) b!7384903))

(assert (= (and b!7384903 res!2978212) b!7384909))

(assert (= (and b!7384909 res!2978213) b!7384906))

(assert (= (and b!7384906 res!2978214) b!7384907))

(assert (= (and start!720414 condSetEmpty!55838) setIsEmpty!55838))

(assert (= (and start!720414 (not condSetEmpty!55838)) setNonEmpty!55838))

(assert (= setNonEmpty!55838 b!7384905))

(assert (= start!720414 b!7384908))

(assert (= (and start!720414 (is-Cons!71737 s!7927)) b!7384904))

(declare-fun m!8033564 () Bool)

(assert (=> b!7384903 m!8033564))

(declare-fun m!8033566 () Bool)

(assert (=> b!7384909 m!8033566))

(declare-fun m!8033568 () Bool)

(assert (=> start!720414 m!8033568))

(declare-fun m!8033570 () Bool)

(assert (=> start!720414 m!8033570))

(declare-fun m!8033572 () Bool)

(assert (=> setNonEmpty!55838 m!8033572))

(declare-fun m!8033574 () Bool)

(assert (=> b!7384906 m!8033574))

(assert (=> b!7384906 m!8033574))

(declare-fun m!8033576 () Bool)

(assert (=> b!7384906 m!8033576))

(push 1)

(assert (not b!7384904))

(assert (not b!7384909))

(assert (not b!7384908))

(assert tp_is_empty!48963)

(assert (not b!7384905))

(assert (not b!7384903))

(assert (not b!7384906))

(assert (not setNonEmpty!55838))

(assert (not start!720414))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

