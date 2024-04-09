; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5166 () Bool)

(assert start!5166)

(declare-fun res!22825 () Bool)

(declare-fun e!23990 () Bool)

(assert (=> start!5166 (=> (not res!22825) (not e!23990))))

(declare-datatypes ((B!766 0))(
  ( (B!767 (val!883 Int)) )
))
(declare-fun b!99 () B!766)

(declare-datatypes ((tuple2!1430 0))(
  ( (tuple2!1431 (_1!725 (_ BitVec 64)) (_2!725 B!766)) )
))
(declare-datatypes ((List!1009 0))(
  ( (Nil!1006) (Cons!1005 (h!1573 tuple2!1430) (t!3850 List!1009)) )
))
(declare-datatypes ((ListLongMap!1011 0))(
  ( (ListLongMap!1012 (toList!521 List!1009)) )
))
(declare-fun lm!264 () ListLongMap!1011)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!469 (List!1009 tuple2!1430) Bool)

(assert (=> start!5166 (= res!22825 (contains!469 (toList!521 lm!264) (tuple2!1431 a!526 b!99)))))

(assert (=> start!5166 e!23990))

(declare-fun e!23991 () Bool)

(declare-fun inv!1668 (ListLongMap!1011) Bool)

(assert (=> start!5166 (and (inv!1668 lm!264) e!23991)))

(assert (=> start!5166 true))

(declare-fun tp_is_empty!1689 () Bool)

(assert (=> start!5166 tp_is_empty!1689))

(declare-fun b!37844 () Bool)

(assert (=> b!37844 (= e!23990 false)))

(declare-fun b!37845 () Bool)

(declare-fun tp!5591 () Bool)

(assert (=> b!37845 (= e!23991 tp!5591)))

(assert (= (and start!5166 res!22825) b!37844))

(assert (= start!5166 b!37845))

(declare-fun m!30585 () Bool)

(assert (=> start!5166 m!30585))

(declare-fun m!30587 () Bool)

(assert (=> start!5166 m!30587))

(check-sat (not start!5166) (not b!37845) tp_is_empty!1689)
(check-sat)
