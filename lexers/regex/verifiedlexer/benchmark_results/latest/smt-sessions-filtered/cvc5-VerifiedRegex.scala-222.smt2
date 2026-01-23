; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!3544 () Bool)

(assert start!3544)

(declare-fun b_free!1417 () Bool)

(declare-fun b_next!1417 () Bool)

(assert (=> start!3544 (= b_free!1417 (not b_next!1417))))

(declare-fun tp!32949 () Bool)

(declare-fun b_and!1455 () Bool)

(assert (=> start!3544 (= tp!32949 b_and!1455)))

(declare-fun b_free!1419 () Bool)

(declare-fun b_next!1419 () Bool)

(assert (=> start!3544 (= b_free!1419 (not b_next!1419))))

(declare-fun tp!32951 () Bool)

(declare-fun b_and!1457 () Bool)

(assert (=> start!3544 (= tp!32951 b_and!1457)))

(assert (=> start!3544 true))

(declare-fun lambda!1001 () Int)

(declare-fun f!1054 () Int)

(declare-fun order!241 () Int)

(declare-fun order!243 () Int)

(declare-fun dynLambda!151 (Int Int) Int)

(declare-fun dynLambda!152 (Int Int) Int)

(assert (=> start!3544 (< (dynLambda!151 order!241 f!1054) (dynLambda!152 order!243 lambda!1001))))

(assert (=> start!3544 true))

(declare-fun order!245 () Int)

(declare-fun p!1820 () Int)

(declare-fun dynLambda!153 (Int Int) Int)

(assert (=> start!3544 (< (dynLambda!153 order!245 p!1820) (dynLambda!152 order!243 lambda!1001))))

(declare-fun res!32438 () Bool)

(declare-fun e!28825 () Bool)

(assert (=> start!3544 (=> (not res!32438) (not e!28825))))

(declare-fun Forall!20 (Int) Bool)

(assert (=> start!3544 (= res!32438 (Forall!20 lambda!1001))))

(assert (=> start!3544 e!28825))

(assert (=> start!3544 tp!32949))

(assert (=> start!3544 tp!32951))

(declare-fun condSetEmpty!1310 () Bool)

(declare-datatypes ((A!197 0))(
  ( (A!198 (val!306 Int)) )
))
(declare-fun s!1504 () (Set A!197))

(assert (=> start!3544 (= condSetEmpty!1310 (= s!1504 (as set.empty (Set A!197))))))

(declare-fun setRes!1310 () Bool)

(assert (=> start!3544 setRes!1310))

(declare-fun b!49378 () Bool)

(assert (=> b!49378 (= e!28825 (not (Forall!20 lambda!1001)))))

(declare-datatypes ((B!493 0))(
  ( (B!494 (val!307 Int)) )
))
(declare-datatypes ((List!856 0))(
  ( (Nil!850) (Cons!850 (h!6247 B!493) (t!17055 List!856)) )
))
(declare-fun lt!7721 () List!856)

(declare-fun subseq!6 (List!856 List!856) Bool)

(assert (=> b!49378 (subseq!6 lt!7721 lt!7721)))

(declare-datatypes ((Unit!458 0))(
  ( (Unit!459) )
))
(declare-fun lt!7720 () Unit!458)

(declare-fun lemmaSubseqRefl!7 (List!856) Unit!458)

(assert (=> b!49378 (= lt!7720 (lemmaSubseqRefl!7 lt!7721))))

(declare-fun toList!201 ((Set B!493)) List!856)

(declare-fun flatMap!8 ((Set A!197) Int) (Set B!493))

(assert (=> b!49378 (= lt!7721 (toList!201 (flatMap!8 s!1504 f!1054)))))

(declare-fun setIsEmpty!1310 () Bool)

(assert (=> setIsEmpty!1310 setRes!1310))

(declare-fun setNonEmpty!1310 () Bool)

(declare-fun tp!32950 () Bool)

(declare-fun tp_is_empty!515 () Bool)

(assert (=> setNonEmpty!1310 (= setRes!1310 (and tp!32950 tp_is_empty!515))))

(declare-fun setElem!1310 () A!197)

(declare-fun setRest!1310 () (Set A!197))

(assert (=> setNonEmpty!1310 (= s!1504 (set.union (set.insert setElem!1310 (as set.empty (Set A!197))) setRest!1310))))

(assert (= (and start!3544 res!32438) b!49378))

(assert (= (and start!3544 condSetEmpty!1310) setIsEmpty!1310))

(assert (= (and start!3544 (not condSetEmpty!1310)) setNonEmpty!1310))

(declare-fun m!23210 () Bool)

(assert (=> start!3544 m!23210))

(assert (=> b!49378 m!23210))

(declare-fun m!23212 () Bool)

(assert (=> b!49378 m!23212))

(declare-fun m!23214 () Bool)

(assert (=> b!49378 m!23214))

(declare-fun m!23216 () Bool)

(assert (=> b!49378 m!23216))

(declare-fun m!23218 () Bool)

(assert (=> b!49378 m!23218))

(assert (=> b!49378 m!23212))

(push 1)

(assert b_and!1457)

(assert tp_is_empty!515)

(assert (not start!3544))

(assert (not b_next!1417))

(assert (not b!49378))

(assert (not b_next!1419))

(assert (not setNonEmpty!1310))

(assert b_and!1455)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1455)

(assert b_and!1457)

(assert (not b_next!1417))

(assert (not b_next!1419))

(check-sat)

(pop 1)

