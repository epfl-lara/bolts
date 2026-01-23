; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697486 () Bool)

(assert start!697486)

(declare-fun b!7155966 () Bool)

(declare-fun tp!1978741 () Bool)

(declare-datatypes ((C!36810 0))(
  ( (C!36811 (val!28353 Int)) )
))
(declare-datatypes ((Regex!18268 0))(
  ( (ElementMatch!18268 (c!1333581 C!36810)) (Concat!27113 (regOne!37048 Regex!18268) (regTwo!37048 Regex!18268)) (EmptyExpr!18268) (Star!18268 (reg!18597 Regex!18268)) (EmptyLang!18268) (Union!18268 (regOne!37049 Regex!18268) (regTwo!37049 Regex!18268)) )
))
(declare-datatypes ((List!69572 0))(
  ( (Nil!69448) (Cons!69448 (h!75896 Regex!18268) (t!383589 List!69572)) )
))
(declare-datatypes ((Context!14440 0))(
  ( (Context!14441 (exprs!7720 List!69572)) )
))
(declare-datatypes ((List!69573 0))(
  ( (Nil!69449) (Cons!69449 (h!75897 Context!14440) (t!383590 List!69573)) )
))
(declare-fun zl!300 () List!69573)

(declare-fun e!4298752 () Bool)

(declare-fun e!4298754 () Bool)

(declare-fun inv!88693 (Context!14440) Bool)

(assert (=> b!7155966 (= e!4298754 (and (inv!88693 (h!75897 zl!300)) e!4298752 tp!1978741))))

(declare-fun b!7155967 () Bool)

(declare-fun tp!1978740 () Bool)

(assert (=> b!7155967 (= e!4298752 tp!1978740)))

(declare-fun res!2917855 () Bool)

(declare-fun e!4298751 () Bool)

(assert (=> start!697486 (=> (not res!2917855) (not e!4298751))))

(declare-fun c!7723 () Context!14440)

(declare-fun contains!20658 (List!69573 Context!14440) Bool)

(assert (=> start!697486 (= res!2917855 (contains!20658 zl!300 c!7723))))

(assert (=> start!697486 e!4298751))

(assert (=> start!697486 e!4298754))

(declare-fun e!4298753 () Bool)

(assert (=> start!697486 (and (inv!88693 c!7723) e!4298753)))

(declare-fun b!7155968 () Bool)

(declare-fun res!2917854 () Bool)

(assert (=> b!7155968 (=> (not res!2917854) (not e!4298751))))

(assert (=> b!7155968 (= res!2917854 (and (is-Cons!69449 zl!300) (not (= (h!75897 zl!300) c!7723))))))

(declare-fun b!7155969 () Bool)

(declare-fun tp!1978742 () Bool)

(assert (=> b!7155969 (= e!4298753 tp!1978742)))

(declare-fun b!7155970 () Bool)

(assert (=> b!7155970 (= e!4298751 false)))

(declare-fun lt!2569193 () Bool)

(assert (=> b!7155970 (= lt!2569193 (contains!20658 (t!383590 zl!300) c!7723))))

(assert (= (and start!697486 res!2917855) b!7155968))

(assert (= (and b!7155968 res!2917854) b!7155970))

(assert (= b!7155966 b!7155967))

(assert (= (and start!697486 (is-Cons!69449 zl!300)) b!7155966))

(assert (= start!697486 b!7155969))

(declare-fun m!7862736 () Bool)

(assert (=> b!7155966 m!7862736))

(declare-fun m!7862738 () Bool)

(assert (=> start!697486 m!7862738))

(declare-fun m!7862740 () Bool)

(assert (=> start!697486 m!7862740))

(declare-fun m!7862742 () Bool)

(assert (=> b!7155970 m!7862742))

(push 1)

(assert (not start!697486))

(assert (not b!7155969))

(assert (not b!7155966))

(assert (not b!7155967))

(assert (not b!7155970))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

