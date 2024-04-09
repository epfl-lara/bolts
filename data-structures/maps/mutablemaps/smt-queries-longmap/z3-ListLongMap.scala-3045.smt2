; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42742 () Bool)

(assert start!42742)

(declare-fun b_free!12081 () Bool)

(declare-fun b_next!12081 () Bool)

(assert (=> start!42742 (= b_free!12081 (not b_next!12081))))

(declare-fun tp!42297 () Bool)

(declare-fun b_and!20637 () Bool)

(assert (=> start!42742 (= tp!42297 b_and!20637)))

(declare-fun res!284401 () Bool)

(declare-fun e!279778 () Bool)

(assert (=> start!42742 (=> (not res!284401) (not e!279778))))

(declare-datatypes ((B!1030 0))(
  ( (B!1031 (val!6799 Int)) )
))
(declare-datatypes ((tuple2!8968 0))(
  ( (tuple2!8969 (_1!4494 (_ BitVec 64)) (_2!4494 B!1030)) )
))
(declare-datatypes ((List!9073 0))(
  ( (Nil!9070) (Cons!9069 (h!9925 tuple2!8968) (t!15069 List!9073)) )
))
(declare-datatypes ((ListLongMap!7895 0))(
  ( (ListLongMap!7896 (toList!3963 List!9073)) )
))
(declare-fun lm!215 () ListLongMap!7895)

(declare-fun p!166 () Int)

(declare-fun forall!186 (List!9073 Int) Bool)

(assert (=> start!42742 (= res!284401 (forall!186 (toList!3963 lm!215) p!166))))

(assert (=> start!42742 e!279778))

(declare-fun e!279779 () Bool)

(declare-fun inv!15464 (ListLongMap!7895) Bool)

(assert (=> start!42742 (and (inv!15464 lm!215) e!279779)))

(assert (=> start!42742 tp!42297))

(assert (=> start!42742 true))

(declare-fun tp_is_empty!13503 () Bool)

(assert (=> start!42742 tp_is_empty!13503))

(declare-fun b!476319 () Bool)

(declare-fun res!284400 () Bool)

(assert (=> b!476319 (=> (not res!284400) (not e!279778))))

(declare-fun a!501 () (_ BitVec 64))

(declare-fun b!85 () B!1030)

(declare-fun dynLambda!932 (Int tuple2!8968) Bool)

(assert (=> b!476319 (= res!284400 (dynLambda!932 p!166 (tuple2!8969 a!501 b!85)))))

(declare-fun b!476322 () Bool)

(declare-fun tp!42298 () Bool)

(assert (=> b!476322 (= e!279779 tp!42298)))

(declare-fun b!476320 () Bool)

(declare-fun res!284399 () Bool)

(assert (=> b!476320 (=> (not res!284399) (not e!279778))))

(declare-fun isEmpty!592 (ListLongMap!7895) Bool)

(assert (=> b!476320 (= res!284399 (not (isEmpty!592 lm!215)))))

(declare-fun b!476321 () Bool)

(assert (=> b!476321 (= e!279778 false)))

(declare-fun lt!217258 () Bool)

(declare-fun tail!111 (ListLongMap!7895) ListLongMap!7895)

(assert (=> b!476321 (= lt!217258 (forall!186 (toList!3963 (tail!111 lm!215)) p!166))))

(assert (= (and start!42742 res!284401) b!476319))

(assert (= (and b!476319 res!284400) b!476320))

(assert (= (and b!476320 res!284399) b!476321))

(assert (= start!42742 b!476322))

(declare-fun b_lambda!10397 () Bool)

(assert (=> (not b_lambda!10397) (not b!476319)))

(declare-fun t!15068 () Bool)

(declare-fun tb!3953 () Bool)

(assert (=> (and start!42742 (= p!166 p!166) t!15068) tb!3953))

(declare-fun result!7497 () Bool)

(assert (=> tb!3953 (= result!7497 true)))

(assert (=> b!476319 t!15068))

(declare-fun b_and!20639 () Bool)

(assert (= b_and!20637 (and (=> t!15068 result!7497) b_and!20639)))

(declare-fun m!458655 () Bool)

(assert (=> start!42742 m!458655))

(declare-fun m!458657 () Bool)

(assert (=> start!42742 m!458657))

(declare-fun m!458659 () Bool)

(assert (=> b!476319 m!458659))

(declare-fun m!458661 () Bool)

(assert (=> b!476320 m!458661))

(declare-fun m!458663 () Bool)

(assert (=> b!476321 m!458663))

(declare-fun m!458665 () Bool)

(assert (=> b!476321 m!458665))

(check-sat b_and!20639 (not b_next!12081) (not b!476321) (not start!42742) tp_is_empty!13503 (not b_lambda!10397) (not b!476320) (not b!476322))
(check-sat b_and!20639 (not b_next!12081))
