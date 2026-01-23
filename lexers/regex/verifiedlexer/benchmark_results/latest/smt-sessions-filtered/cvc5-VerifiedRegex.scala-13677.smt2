; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732886 () Bool)

(assert start!732886)

(declare-fun b!7600960 () Bool)

(assert (=> b!7600960 true))

(assert (=> b!7600960 true))

(assert (=> b!7600960 true))

(declare-fun bs!1942405 () Bool)

(declare-fun b!7600963 () Bool)

(assert (= bs!1942405 (and b!7600963 b!7600960)))

(declare-fun lambda!467611 () Int)

(declare-fun lambda!467610 () Int)

(assert (=> bs!1942405 (not (= lambda!467611 lambda!467610))))

(assert (=> b!7600963 true))

(assert (=> b!7600963 true))

(assert (=> b!7600963 true))

(declare-fun b!7600956 () Bool)

(declare-fun res!3043413 () Bool)

(declare-fun e!4522118 () Bool)

(assert (=> b!7600956 (=> (not res!3043413) (not e!4522118))))

(declare-fun Exists!4376 (Int) Bool)

(assert (=> b!7600956 (= res!3043413 (not (Exists!4376 lambda!467610)))))

(declare-fun b!7600957 () Bool)

(declare-fun e!4522117 () Bool)

(declare-fun tp!2216102 () Bool)

(declare-fun tp!2216113 () Bool)

(assert (=> b!7600957 (= e!4522117 (and tp!2216102 tp!2216113))))

(declare-fun b!7600958 () Bool)

(declare-fun e!4522120 () Bool)

(declare-fun tp!2216106 () Bool)

(declare-fun tp!2216110 () Bool)

(assert (=> b!7600958 (= e!4522120 (and tp!2216106 tp!2216110))))

(declare-fun b!7600959 () Bool)

(declare-fun tp!2216104 () Bool)

(assert (=> b!7600959 (= e!4522120 tp!2216104)))

(declare-fun res!3043410 () Bool)

(assert (=> b!7600960 (=> (not res!3043410) (not e!4522118))))

(assert (=> b!7600960 (= res!3043410 (not (Exists!4376 lambda!467610)))))

(declare-fun b!7600961 () Bool)

(declare-fun e!4522119 () Bool)

(declare-fun tp_is_empty!50651 () Bool)

(declare-fun tp!2216111 () Bool)

(assert (=> b!7600961 (= e!4522119 (and tp_is_empty!50651 tp!2216111))))

(declare-fun res!3043412 () Bool)

(assert (=> start!732886 (=> (not res!3043412) (not e!4522118))))

(declare-datatypes ((C!40622 0))(
  ( (C!40623 (val!30751 Int)) )
))
(declare-datatypes ((Regex!20148 0))(
  ( (ElementMatch!20148 (c!1402237 C!40622)) (Concat!28993 (regOne!40808 Regex!20148) (regTwo!40808 Regex!20148)) (EmptyExpr!20148) (Star!20148 (reg!20477 Regex!20148)) (EmptyLang!20148) (Union!20148 (regOne!40809 Regex!20148) (regTwo!40809 Regex!20148)) )
))
(declare-fun r1!3349 () Regex!20148)

(declare-fun validRegex!10576 (Regex!20148) Bool)

(assert (=> start!732886 (= res!3043412 (validRegex!10576 r1!3349))))

(assert (=> start!732886 e!4522118))

(assert (=> start!732886 e!4522120))

(assert (=> start!732886 e!4522117))

(declare-fun e!4522121 () Bool)

(assert (=> start!732886 e!4522121))

(declare-fun e!4522116 () Bool)

(assert (=> start!732886 (and e!4522119 e!4522116)))

(declare-fun b!7600962 () Bool)

(declare-fun tp!2216109 () Bool)

(declare-fun tp!2216103 () Bool)

(assert (=> b!7600962 (= e!4522120 (and tp!2216109 tp!2216103))))

(declare-fun res!3043409 () Bool)

(assert (=> b!7600963 (=> (not res!3043409) (not e!4522118))))

(assert (=> b!7600963 (= res!3043409 (Exists!4376 lambda!467611))))

(declare-fun b!7600964 () Bool)

(assert (=> b!7600964 (= e!4522117 tp_is_empty!50651)))

(declare-fun b!7600965 () Bool)

(declare-fun res!3043411 () Bool)

(assert (=> b!7600965 (=> (not res!3043411) (not e!4522118))))

(declare-fun r2!3249 () Regex!20148)

(assert (=> b!7600965 (= res!3043411 (validRegex!10576 r2!3249))))

(declare-fun b!7600966 () Bool)

(declare-fun tp!2216108 () Bool)

(assert (=> b!7600966 (= e!4522121 (and tp_is_empty!50651 tp!2216108))))

(declare-fun b!7600967 () Bool)

(declare-fun tp!2216114 () Bool)

(assert (=> b!7600967 (= e!4522117 tp!2216114)))

(declare-fun b!7600968 () Bool)

(assert (=> b!7600968 (= e!4522118 false)))

(declare-datatypes ((List!73031 0))(
  ( (Nil!72907) (Cons!72907 (h!79355 C!40622) (t!387766 List!73031)) )
))
(declare-fun lt!2654333 () List!73031)

(declare-datatypes ((tuple2!69014 0))(
  ( (tuple2!69015 (_1!37810 List!73031) (_2!37810 List!73031)) )
))
(declare-fun cut!37 () tuple2!69014)

(declare-fun ++!17554 (List!73031 List!73031) List!73031)

(assert (=> b!7600968 (= lt!2654333 (++!17554 (_1!37810 cut!37) (_2!37810 cut!37)))))

(declare-fun b!7600969 () Bool)

(declare-fun tp!2216107 () Bool)

(declare-fun tp!2216105 () Bool)

(assert (=> b!7600969 (= e!4522117 (and tp!2216107 tp!2216105))))

(declare-fun b!7600970 () Bool)

(declare-fun tp!2216112 () Bool)

(assert (=> b!7600970 (= e!4522116 (and tp_is_empty!50651 tp!2216112))))

(declare-fun b!7600971 () Bool)

(assert (=> b!7600971 (= e!4522120 tp_is_empty!50651)))

(assert (= (and start!732886 res!3043412) b!7600965))

(assert (= (and b!7600965 res!3043411) b!7600960))

(assert (= (and b!7600960 res!3043410) b!7600956))

(assert (= (and b!7600956 res!3043413) b!7600963))

(assert (= (and b!7600963 res!3043409) b!7600968))

(assert (= (and start!732886 (is-ElementMatch!20148 r1!3349)) b!7600971))

(assert (= (and start!732886 (is-Concat!28993 r1!3349)) b!7600962))

(assert (= (and start!732886 (is-Star!20148 r1!3349)) b!7600959))

(assert (= (and start!732886 (is-Union!20148 r1!3349)) b!7600958))

(assert (= (and start!732886 (is-ElementMatch!20148 r2!3249)) b!7600964))

(assert (= (and start!732886 (is-Concat!28993 r2!3249)) b!7600969))

(assert (= (and start!732886 (is-Star!20148 r2!3249)) b!7600967))

(assert (= (and start!732886 (is-Union!20148 r2!3249)) b!7600957))

(declare-fun s!10235 () List!73031)

(assert (= (and start!732886 (is-Cons!72907 s!10235)) b!7600966))

(assert (= (and start!732886 (is-Cons!72907 (_1!37810 cut!37))) b!7600961))

(assert (= (and start!732886 (is-Cons!72907 (_2!37810 cut!37))) b!7600970))

(declare-fun m!8145074 () Bool)

(assert (=> b!7600960 m!8145074))

(declare-fun m!8145076 () Bool)

(assert (=> b!7600963 m!8145076))

(assert (=> b!7600956 m!8145074))

(declare-fun m!8145078 () Bool)

(assert (=> start!732886 m!8145078))

(declare-fun m!8145080 () Bool)

(assert (=> b!7600968 m!8145080))

(declare-fun m!8145082 () Bool)

(assert (=> b!7600965 m!8145082))

(push 1)

(assert (not start!732886))

(assert (not b!7600957))

(assert (not b!7600970))

(assert (not b!7600969))

(assert (not b!7600966))

(assert (not b!7600959))

(assert (not b!7600963))

(assert tp_is_empty!50651)

(assert (not b!7600962))

(assert (not b!7600958))

(assert (not b!7600965))

(assert (not b!7600956))

(assert (not b!7600967))

(assert (not b!7600960))

(assert (not b!7600968))

(assert (not b!7600961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

