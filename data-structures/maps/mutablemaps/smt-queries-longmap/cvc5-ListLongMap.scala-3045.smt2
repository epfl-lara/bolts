; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42740 () Bool)

(assert start!42740)

(declare-fun b_free!12079 () Bool)

(declare-fun b_next!12079 () Bool)

(assert (=> start!42740 (= b_free!12079 (not b_next!12079))))

(declare-fun tp!42291 () Bool)

(declare-fun b_and!20633 () Bool)

(assert (=> start!42740 (= tp!42291 b_and!20633)))

(declare-fun b!476310 () Bool)

(declare-fun e!279772 () Bool)

(declare-fun tp!42292 () Bool)

(assert (=> b!476310 (= e!279772 tp!42292)))

(declare-fun b!476308 () Bool)

(declare-fun res!284390 () Bool)

(declare-fun e!279773 () Bool)

(assert (=> b!476308 (=> (not res!284390) (not e!279773))))

(declare-datatypes ((B!1028 0))(
  ( (B!1029 (val!6798 Int)) )
))
(declare-datatypes ((tuple2!8966 0))(
  ( (tuple2!8967 (_1!4493 (_ BitVec 64)) (_2!4493 B!1028)) )
))
(declare-datatypes ((List!9072 0))(
  ( (Nil!9069) (Cons!9068 (h!9924 tuple2!8966) (t!15066 List!9072)) )
))
(declare-datatypes ((ListLongMap!7893 0))(
  ( (ListLongMap!7894 (toList!3962 List!9072)) )
))
(declare-fun lm!215 () ListLongMap!7893)

(declare-fun isEmpty!591 (ListLongMap!7893) Bool)

(assert (=> b!476308 (= res!284390 (not (isEmpty!591 lm!215)))))

(declare-fun res!284391 () Bool)

(assert (=> start!42740 (=> (not res!284391) (not e!279773))))

(declare-fun p!166 () Int)

(declare-fun forall!185 (List!9072 Int) Bool)

(assert (=> start!42740 (= res!284391 (forall!185 (toList!3962 lm!215) p!166))))

(assert (=> start!42740 e!279773))

(declare-fun inv!15463 (ListLongMap!7893) Bool)

(assert (=> start!42740 (and (inv!15463 lm!215) e!279772)))

(assert (=> start!42740 tp!42291))

(assert (=> start!42740 true))

(declare-fun tp_is_empty!13501 () Bool)

(assert (=> start!42740 tp_is_empty!13501))

(declare-fun b!476307 () Bool)

(declare-fun res!284392 () Bool)

(assert (=> b!476307 (=> (not res!284392) (not e!279773))))

(declare-fun b!85 () B!1028)

(declare-fun a!501 () (_ BitVec 64))

(declare-fun dynLambda!931 (Int tuple2!8966) Bool)

(assert (=> b!476307 (= res!284392 (dynLambda!931 p!166 (tuple2!8967 a!501 b!85)))))

(declare-fun b!476309 () Bool)

(assert (=> b!476309 (= e!279773 false)))

(declare-fun lt!217255 () Bool)

(declare-fun tail!110 (ListLongMap!7893) ListLongMap!7893)

(assert (=> b!476309 (= lt!217255 (forall!185 (toList!3962 (tail!110 lm!215)) p!166))))

(assert (= (and start!42740 res!284391) b!476307))

(assert (= (and b!476307 res!284392) b!476308))

(assert (= (and b!476308 res!284390) b!476309))

(assert (= start!42740 b!476310))

(declare-fun b_lambda!10395 () Bool)

(assert (=> (not b_lambda!10395) (not b!476307)))

(declare-fun t!15065 () Bool)

(declare-fun tb!3951 () Bool)

(assert (=> (and start!42740 (= p!166 p!166) t!15065) tb!3951))

(declare-fun result!7495 () Bool)

(assert (=> tb!3951 (= result!7495 true)))

(assert (=> b!476307 t!15065))

(declare-fun b_and!20635 () Bool)

(assert (= b_and!20633 (and (=> t!15065 result!7495) b_and!20635)))

(declare-fun m!458643 () Bool)

(assert (=> b!476308 m!458643))

(declare-fun m!458645 () Bool)

(assert (=> start!42740 m!458645))

(declare-fun m!458647 () Bool)

(assert (=> start!42740 m!458647))

(declare-fun m!458649 () Bool)

(assert (=> b!476307 m!458649))

(declare-fun m!458651 () Bool)

(assert (=> b!476309 m!458651))

(declare-fun m!458653 () Bool)

(assert (=> b!476309 m!458653))

(push 1)

(assert (not b!476310))

(assert (not start!42740))

(assert tp_is_empty!13501)

(assert (not b!476308))

(assert (not b_next!12079))

(assert (not b!476309))

(assert b_and!20635)

(assert (not b_lambda!10395))

(check-sat)

(pop 1)

