; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!3540 () Bool)

(assert start!3540)

(declare-fun b_free!1409 () Bool)

(declare-fun b_next!1409 () Bool)

(assert (=> start!3540 (= b_free!1409 (not b_next!1409))))

(declare-fun tp!32933 () Bool)

(declare-fun b_and!1447 () Bool)

(assert (=> start!3540 (= tp!32933 b_and!1447)))

(declare-fun b_free!1411 () Bool)

(declare-fun b_next!1411 () Bool)

(assert (=> start!3540 (= b_free!1411 (not b_next!1411))))

(declare-fun tp!32931 () Bool)

(declare-fun b_and!1449 () Bool)

(assert (=> start!3540 (= tp!32931 b_and!1449)))

(assert (=> start!3540 true))

(declare-fun order!231 () Int)

(declare-fun lambda!993 () Int)

(declare-fun order!229 () Int)

(declare-fun f!1054 () Int)

(declare-fun dynLambda!145 (Int Int) Int)

(declare-fun dynLambda!146 (Int Int) Int)

(assert (=> start!3540 (< (dynLambda!145 order!229 f!1054) (dynLambda!146 order!231 lambda!993))))

(assert (=> start!3540 true))

(declare-fun p!1820 () Int)

(declare-fun order!233 () Int)

(declare-fun dynLambda!147 (Int Int) Int)

(assert (=> start!3540 (< (dynLambda!147 order!233 p!1820) (dynLambda!146 order!231 lambda!993))))

(declare-fun res!32432 () Bool)

(declare-fun e!28819 () Bool)

(assert (=> start!3540 (=> (not res!32432) (not e!28819))))

(declare-fun Forall!18 (Int) Bool)

(assert (=> start!3540 (= res!32432 (Forall!18 lambda!993))))

(assert (=> start!3540 e!28819))

(assert (=> start!3540 tp!32933))

(assert (=> start!3540 tp!32931))

(declare-fun condSetEmpty!1304 () Bool)

(declare-datatypes ((A!193 0))(
  ( (A!194 (val!302 Int)) )
))
(declare-fun s!1504 () (Set A!193))

(assert (=> start!3540 (= condSetEmpty!1304 (= s!1504 (as set.empty (Set A!193))))))

(declare-fun setRes!1304 () Bool)

(assert (=> start!3540 setRes!1304))

(declare-fun b!49364 () Bool)

(assert (=> b!49364 (= e!28819 (not true))))

(declare-datatypes ((B!489 0))(
  ( (B!490 (val!303 Int)) )
))
(declare-datatypes ((List!854 0))(
  ( (Nil!848) (Cons!848 (h!6245 B!489) (t!17053 List!854)) )
))
(declare-fun lt!7708 () List!854)

(declare-fun subseq!4 (List!854 List!854) Bool)

(assert (=> b!49364 (subseq!4 lt!7708 lt!7708)))

(declare-datatypes ((Unit!454 0))(
  ( (Unit!455) )
))
(declare-fun lt!7709 () Unit!454)

(declare-fun lemmaSubseqRefl!5 (List!854) Unit!454)

(assert (=> b!49364 (= lt!7709 (lemmaSubseqRefl!5 lt!7708))))

(declare-fun toList!199 ((Set B!489)) List!854)

(declare-fun flatMap!6 ((Set A!193) Int) (Set B!489))

(assert (=> b!49364 (= lt!7708 (toList!199 (flatMap!6 s!1504 f!1054)))))

(declare-fun setIsEmpty!1304 () Bool)

(assert (=> setIsEmpty!1304 setRes!1304))

(declare-fun setNonEmpty!1304 () Bool)

(declare-fun tp!32932 () Bool)

(declare-fun tp_is_empty!511 () Bool)

(assert (=> setNonEmpty!1304 (= setRes!1304 (and tp!32932 tp_is_empty!511))))

(declare-fun setElem!1304 () A!193)

(declare-fun setRest!1304 () (Set A!193))

(assert (=> setNonEmpty!1304 (= s!1504 (set.union (set.insert setElem!1304 (as set.empty (Set A!193))) setRest!1304))))

(assert (= (and start!3540 res!32432) b!49364))

(assert (= (and start!3540 condSetEmpty!1304) setIsEmpty!1304))

(assert (= (and start!3540 (not condSetEmpty!1304)) setNonEmpty!1304))

(declare-fun m!23190 () Bool)

(assert (=> start!3540 m!23190))

(declare-fun m!23192 () Bool)

(assert (=> b!49364 m!23192))

(declare-fun m!23194 () Bool)

(assert (=> b!49364 m!23194))

(declare-fun m!23196 () Bool)

(assert (=> b!49364 m!23196))

(assert (=> b!49364 m!23196))

(declare-fun m!23198 () Bool)

(assert (=> b!49364 m!23198))

(push 1)

(assert (not b_next!1411))

(assert b_and!1447)

(assert (not b!49364))

(assert b_and!1449)

(assert tp_is_empty!511)

(assert (not start!3540))

(assert (not setNonEmpty!1304))

(assert (not b_next!1409))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1447)

(assert b_and!1449)

(assert (not b_next!1409))

(assert (not b_next!1411))

(check-sat)

(pop 1)

