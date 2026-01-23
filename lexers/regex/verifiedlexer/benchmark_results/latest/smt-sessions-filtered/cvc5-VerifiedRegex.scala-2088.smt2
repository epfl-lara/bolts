; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!105810 () Bool)

(assert start!105810)

(declare-fun res!537867 () Bool)

(declare-fun e!765493 () Bool)

(assert (=> start!105810 (=> (not res!537867) (not e!765493))))

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(assert (=> start!105810 (= res!537867 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!105810 e!765493))

(assert (=> start!105810 true))

(declare-datatypes ((T!21444 0))(
  ( (T!21445 (val!3839 Int)) )
))
(declare-datatypes ((List!12018 0))(
  ( (Nil!11994) (Cons!11994 (h!17395 T!21444) (t!112230 List!12018)) )
))
(declare-datatypes ((IArray!7859 0))(
  ( (IArray!7860 (innerList!3987 List!12018)) )
))
(declare-datatypes ((Conc!3927 0))(
  ( (Node!3927 (left!10439 Conc!3927) (right!10769 Conc!3927) (csize!8084 Int) (cheight!4138 Int)) (Leaf!6016 (xs!6632 IArray!7859) (csize!8085 Int)) (Empty!3927) )
))
(declare-fun t!4115 () Conc!3927)

(declare-fun e!765491 () Bool)

(declare-fun inv!15865 (Conc!3927) Bool)

(assert (=> start!105810 (and (inv!15865 t!4115) e!765491)))

(declare-fun tp!339789 () Bool)

(declare-fun b!1190667 () Bool)

(declare-fun tp!339788 () Bool)

(assert (=> b!1190667 (= e!765491 (and (inv!15865 (left!10439 t!4115)) tp!339789 (inv!15865 (right!10769 t!4115)) tp!339788))))

(declare-fun b!1190668 () Bool)

(declare-fun res!537864 () Bool)

(assert (=> b!1190668 (=> (not res!537864) (not e!765493))))

(declare-fun isBalanced!1112 (Conc!3927) Bool)

(assert (=> b!1190668 (= res!537864 (isBalanced!1112 t!4115))))

(declare-fun b!1190669 () Bool)

(declare-fun e!765492 () Bool)

(declare-fun tp!339790 () Bool)

(assert (=> b!1190669 (= e!765492 tp!339790)))

(declare-fun b!1190670 () Bool)

(declare-fun res!537866 () Bool)

(assert (=> b!1190670 (=> (not res!537866) (not e!765493))))

(declare-fun size!9468 (Conc!3927) Int)

(assert (=> b!1190670 (= res!537866 (<= until!31 (size!9468 t!4115)))))

(declare-fun b!1190671 () Bool)

(declare-fun res!537865 () Bool)

(assert (=> b!1190671 (=> (not res!537865) (not e!765493))))

(assert (=> b!1190671 (= res!537865 (isBalanced!1112 Empty!3927))))

(declare-fun b!1190672 () Bool)

(declare-fun res!537863 () Bool)

(assert (=> b!1190672 (=> (not res!537863) (not e!765493))))

(assert (=> b!1190672 (= res!537863 (and (not (= from!553 until!31)) (is-Leaf!6016 t!4115) (= (- until!31 from!553) 0)))))

(declare-fun b!1190673 () Bool)

(declare-fun size!9469 (List!12018) Int)

(declare-fun list!4402 (Conc!3927) List!12018)

(assert (=> b!1190673 (= e!765493 (> until!31 (size!9469 (list!4402 t!4115))))))

(declare-fun b!1190674 () Bool)

(declare-fun inv!15866 (IArray!7859) Bool)

(assert (=> b!1190674 (= e!765491 (and (inv!15866 (xs!6632 t!4115)) e!765492))))

(assert (= (and start!105810 res!537867) b!1190670))

(assert (= (and b!1190670 res!537866) b!1190668))

(assert (= (and b!1190668 res!537864) b!1190672))

(assert (= (and b!1190672 res!537863) b!1190671))

(assert (= (and b!1190671 res!537865) b!1190673))

(assert (= (and start!105810 (is-Node!3927 t!4115)) b!1190667))

(assert (= b!1190674 b!1190669))

(assert (= (and start!105810 (is-Leaf!6016 t!4115)) b!1190674))

(declare-fun m!1365627 () Bool)

(assert (=> b!1190668 m!1365627))

(declare-fun m!1365629 () Bool)

(assert (=> b!1190673 m!1365629))

(assert (=> b!1190673 m!1365629))

(declare-fun m!1365631 () Bool)

(assert (=> b!1190673 m!1365631))

(declare-fun m!1365633 () Bool)

(assert (=> b!1190671 m!1365633))

(declare-fun m!1365635 () Bool)

(assert (=> b!1190670 m!1365635))

(declare-fun m!1365637 () Bool)

(assert (=> b!1190667 m!1365637))

(declare-fun m!1365639 () Bool)

(assert (=> b!1190667 m!1365639))

(declare-fun m!1365641 () Bool)

(assert (=> b!1190674 m!1365641))

(declare-fun m!1365643 () Bool)

(assert (=> start!105810 m!1365643))

(push 1)

(assert (not b!1190674))

(assert (not b!1190668))

(assert (not b!1190670))

(assert (not b!1190671))

(assert (not start!105810))

(assert (not b!1190667))

(assert (not b!1190673))

(assert (not b!1190669))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

