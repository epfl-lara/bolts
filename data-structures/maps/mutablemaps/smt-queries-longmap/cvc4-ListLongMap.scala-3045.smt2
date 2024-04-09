; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42744 () Bool)

(assert start!42744)

(declare-fun b_free!12083 () Bool)

(declare-fun b_next!12083 () Bool)

(assert (=> start!42744 (= b_free!12083 (not b_next!12083))))

(declare-fun tp!42304 () Bool)

(declare-fun b_and!20641 () Bool)

(assert (=> start!42744 (= tp!42304 b_and!20641)))

(declare-fun res!284409 () Bool)

(declare-fun e!279785 () Bool)

(assert (=> start!42744 (=> (not res!284409) (not e!279785))))

(declare-datatypes ((B!1032 0))(
  ( (B!1033 (val!6800 Int)) )
))
(declare-datatypes ((tuple2!8970 0))(
  ( (tuple2!8971 (_1!4495 (_ BitVec 64)) (_2!4495 B!1032)) )
))
(declare-datatypes ((List!9074 0))(
  ( (Nil!9071) (Cons!9070 (h!9926 tuple2!8970) (t!15072 List!9074)) )
))
(declare-datatypes ((ListLongMap!7897 0))(
  ( (ListLongMap!7898 (toList!3964 List!9074)) )
))
(declare-fun lm!215 () ListLongMap!7897)

(declare-fun p!166 () Int)

(declare-fun forall!187 (List!9074 Int) Bool)

(assert (=> start!42744 (= res!284409 (forall!187 (toList!3964 lm!215) p!166))))

(assert (=> start!42744 e!279785))

(declare-fun e!279784 () Bool)

(declare-fun inv!15465 (ListLongMap!7897) Bool)

(assert (=> start!42744 (and (inv!15465 lm!215) e!279784)))

(assert (=> start!42744 tp!42304))

(assert (=> start!42744 true))

(declare-fun tp_is_empty!13505 () Bool)

(assert (=> start!42744 tp_is_empty!13505))

(declare-fun b!476332 () Bool)

(declare-fun res!284408 () Bool)

(assert (=> b!476332 (=> (not res!284408) (not e!279785))))

(declare-fun isEmpty!593 (ListLongMap!7897) Bool)

(assert (=> b!476332 (= res!284408 (not (isEmpty!593 lm!215)))))

(declare-fun b!476333 () Bool)

(assert (=> b!476333 (= e!279785 false)))

(declare-fun lt!217261 () Bool)

(declare-fun tail!112 (ListLongMap!7897) ListLongMap!7897)

(assert (=> b!476333 (= lt!217261 (forall!187 (toList!3964 (tail!112 lm!215)) p!166))))

(declare-fun b!476331 () Bool)

(declare-fun res!284410 () Bool)

(assert (=> b!476331 (=> (not res!284410) (not e!279785))))

(declare-fun b!85 () B!1032)

(declare-fun a!501 () (_ BitVec 64))

(declare-fun dynLambda!933 (Int tuple2!8970) Bool)

(assert (=> b!476331 (= res!284410 (dynLambda!933 p!166 (tuple2!8971 a!501 b!85)))))

(declare-fun b!476334 () Bool)

(declare-fun tp!42303 () Bool)

(assert (=> b!476334 (= e!279784 tp!42303)))

(assert (= (and start!42744 res!284409) b!476331))

(assert (= (and b!476331 res!284410) b!476332))

(assert (= (and b!476332 res!284408) b!476333))

(assert (= start!42744 b!476334))

(declare-fun b_lambda!10399 () Bool)

(assert (=> (not b_lambda!10399) (not b!476331)))

(declare-fun t!15071 () Bool)

(declare-fun tb!3955 () Bool)

(assert (=> (and start!42744 (= p!166 p!166) t!15071) tb!3955))

(declare-fun result!7499 () Bool)

(assert (=> tb!3955 (= result!7499 true)))

(assert (=> b!476331 t!15071))

(declare-fun b_and!20643 () Bool)

(assert (= b_and!20641 (and (=> t!15071 result!7499) b_and!20643)))

(declare-fun m!458667 () Bool)

(assert (=> start!42744 m!458667))

(declare-fun m!458669 () Bool)

(assert (=> start!42744 m!458669))

(declare-fun m!458671 () Bool)

(assert (=> b!476332 m!458671))

(declare-fun m!458673 () Bool)

(assert (=> b!476333 m!458673))

(declare-fun m!458675 () Bool)

(assert (=> b!476333 m!458675))

(declare-fun m!458677 () Bool)

(assert (=> b!476331 m!458677))

(push 1)

(assert tp_is_empty!13505)

(assert (not start!42744))

(assert (not b!476332))

(assert b_and!20643)

(assert (not b_next!12083))

(assert (not b!476333))

(assert (not b_lambda!10399))

(assert (not b!476334))

(check-sat)

