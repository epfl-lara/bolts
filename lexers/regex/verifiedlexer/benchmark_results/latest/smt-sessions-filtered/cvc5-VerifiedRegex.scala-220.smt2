; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!3536 () Bool)

(assert start!3536)

(declare-fun b_free!1401 () Bool)

(declare-fun b_next!1401 () Bool)

(assert (=> start!3536 (= b_free!1401 (not b_next!1401))))

(declare-fun tp!32914 () Bool)

(declare-fun b_and!1439 () Bool)

(assert (=> start!3536 (= tp!32914 b_and!1439)))

(declare-fun b_free!1403 () Bool)

(declare-fun b_next!1403 () Bool)

(assert (=> start!3536 (= b_free!1403 (not b_next!1403))))

(declare-fun tp!32915 () Bool)

(declare-fun b_and!1441 () Bool)

(assert (=> start!3536 (= tp!32915 b_and!1441)))

(assert (=> start!3536 true))

(declare-fun lambda!983 () Int)

(declare-fun order!217 () Int)

(declare-fun f!1054 () Int)

(declare-fun order!219 () Int)

(declare-fun dynLambda!139 (Int Int) Int)

(declare-fun dynLambda!140 (Int Int) Int)

(assert (=> start!3536 (< (dynLambda!139 order!217 f!1054) (dynLambda!140 order!219 lambda!983))))

(assert (=> start!3536 true))

(declare-fun order!221 () Int)

(declare-fun p!1820 () Int)

(declare-fun dynLambda!141 (Int Int) Int)

(assert (=> start!3536 (< (dynLambda!141 order!221 p!1820) (dynLambda!140 order!219 lambda!983))))

(declare-fun setIsEmpty!1298 () Bool)

(declare-fun setRes!1298 () Bool)

(assert (=> setIsEmpty!1298 setRes!1298))

(declare-fun b!49347 () Bool)

(declare-fun e!28809 () Bool)

(declare-fun Forall!16 (Int) Bool)

(assert (=> b!49347 (= e!28809 (Forall!16 lambda!983))))

(declare-fun setNonEmpty!1298 () Bool)

(declare-fun tp!32913 () Bool)

(declare-fun tp_is_empty!507 () Bool)

(assert (=> setNonEmpty!1298 (= setRes!1298 (and tp!32913 tp_is_empty!507))))

(declare-datatypes ((A!189 0))(
  ( (A!190 (val!298 Int)) )
))
(declare-fun s!1504 () (Set A!189))

(declare-fun setElem!1298 () A!189)

(declare-fun setRest!1298 () (Set A!189))

(assert (=> setNonEmpty!1298 (= s!1504 (set.union (set.insert setElem!1298 (as set.empty (Set A!189))) setRest!1298))))

(declare-fun res!32423 () Bool)

(declare-fun e!28810 () Bool)

(assert (=> start!3536 (=> (not res!32423) (not e!28810))))

(assert (=> start!3536 (= res!32423 (Forall!16 lambda!983))))

(assert (=> start!3536 e!28810))

(assert (=> start!3536 tp!32914))

(assert (=> start!3536 tp!32915))

(declare-fun condSetEmpty!1298 () Bool)

(assert (=> start!3536 (= condSetEmpty!1298 (= s!1504 (as set.empty (Set A!189))))))

(assert (=> start!3536 setRes!1298))

(declare-fun b!49346 () Bool)

(assert (=> b!49346 (= e!28810 (not e!28809))))

(declare-fun res!32422 () Bool)

(assert (=> b!49346 (=> res!32422 e!28809)))

(assert (=> b!49346 (= res!32422 (not (Forall!16 lambda!983)))))

(declare-datatypes ((B!485 0))(
  ( (B!486 (val!299 Int)) )
))
(declare-datatypes ((List!852 0))(
  ( (Nil!846) (Cons!846 (h!6243 B!485) (t!17051 List!852)) )
))
(declare-fun lt!7696 () List!852)

(declare-fun subseq!2 (List!852 List!852) Bool)

(assert (=> b!49346 (subseq!2 lt!7696 lt!7696)))

(declare-datatypes ((Unit!450 0))(
  ( (Unit!451) )
))
(declare-fun lt!7697 () Unit!450)

(declare-fun lemmaSubseqRefl!3 (List!852) Unit!450)

(assert (=> b!49346 (= lt!7697 (lemmaSubseqRefl!3 lt!7696))))

(declare-fun toList!197 ((Set B!485)) List!852)

(declare-fun flatMap!4 ((Set A!189) Int) (Set B!485))

(assert (=> b!49346 (= lt!7696 (toList!197 (flatMap!4 s!1504 f!1054)))))

(assert (= (and start!3536 res!32423) b!49346))

(assert (= (and b!49346 (not res!32422)) b!49347))

(assert (= (and start!3536 condSetEmpty!1298) setIsEmpty!1298))

(assert (= (and start!3536 (not condSetEmpty!1298)) setNonEmpty!1298))

(declare-fun m!23170 () Bool)

(assert (=> b!49347 m!23170))

(assert (=> start!3536 m!23170))

(assert (=> b!49346 m!23170))

(declare-fun m!23172 () Bool)

(assert (=> b!49346 m!23172))

(declare-fun m!23174 () Bool)

(assert (=> b!49346 m!23174))

(declare-fun m!23176 () Bool)

(assert (=> b!49346 m!23176))

(assert (=> b!49346 m!23174))

(declare-fun m!23178 () Bool)

(assert (=> b!49346 m!23178))

(push 1)

(assert (not setNonEmpty!1298))

(assert (not b_next!1401))

(assert (not b_next!1403))

(assert tp_is_empty!507)

(assert b_and!1441)

(assert (not start!3536))

(assert (not b!49347))

(assert b_and!1439)

(assert (not b!49346))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1439)

(assert b_and!1441)

(assert (not b_next!1401))

(assert (not b_next!1403))

(check-sat)

(pop 1)

