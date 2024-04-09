; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42736 () Bool)

(assert start!42736)

(declare-fun b_free!12075 () Bool)

(declare-fun b_next!12075 () Bool)

(assert (=> start!42736 (= b_free!12075 (not b_next!12075))))

(declare-fun tp!42280 () Bool)

(declare-fun b_and!20629 () Bool)

(assert (=> start!42736 (= tp!42280 b_and!20629)))

(assert (=> start!42736 false))

(declare-datatypes ((B!1024 0))(
  ( (B!1025 (val!6796 Int)) )
))
(declare-datatypes ((tuple2!8962 0))(
  ( (tuple2!8963 (_1!4491 (_ BitVec 64)) (_2!4491 B!1024)) )
))
(declare-datatypes ((List!9070 0))(
  ( (Nil!9067) (Cons!9066 (h!9922 tuple2!8962) (t!15062 List!9070)) )
))
(declare-datatypes ((ListLongMap!7889 0))(
  ( (ListLongMap!7890 (toList!3960 List!9070)) )
))
(declare-fun lm!215 () ListLongMap!7889)

(declare-fun e!279764 () Bool)

(declare-fun inv!15456 (ListLongMap!7889) Bool)

(assert (=> start!42736 (and (inv!15456 lm!215) e!279764)))

(assert (=> start!42736 tp!42280))

(declare-fun b!476295 () Bool)

(declare-fun tp!42279 () Bool)

(assert (=> b!476295 (= e!279764 tp!42279)))

(assert (= start!42736 b!476295))

(declare-fun m!458639 () Bool)

(assert (=> start!42736 m!458639))

(check-sat (not start!42736) (not b!476295) b_and!20629 (not b_next!12075))
(check-sat b_and!20629 (not b_next!12075))
