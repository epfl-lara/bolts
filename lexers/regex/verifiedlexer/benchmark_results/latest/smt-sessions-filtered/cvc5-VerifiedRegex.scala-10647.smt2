; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546236 () Bool)

(assert start!546236)

(declare-fun setIsEmpty!31421 () Bool)

(declare-fun setRes!31421 () Bool)

(assert (=> setIsEmpty!31421 setRes!31421))

(declare-fun b!5163646 () Bool)

(declare-fun e!3217340 () Bool)

(declare-fun e!3217339 () Bool)

(assert (=> b!5163646 (= e!3217340 (not e!3217339))))

(declare-fun res!2195292 () Bool)

(assert (=> b!5163646 (=> res!2195292 e!3217339)))

(declare-datatypes ((C!29350 0))(
  ( (C!29351 (val!24377 Int)) )
))
(declare-datatypes ((Regex!14542 0))(
  ( (ElementMatch!14542 (c!888387 C!29350)) (Concat!23387 (regOne!29596 Regex!14542) (regTwo!29596 Regex!14542)) (EmptyExpr!14542) (Star!14542 (reg!14871 Regex!14542)) (EmptyLang!14542) (Union!14542 (regOne!29597 Regex!14542) (regTwo!29597 Regex!14542)) )
))
(declare-datatypes ((List!60037 0))(
  ( (Nil!59913) (Cons!59913 (h!66361 Regex!14542) (t!373190 List!60037)) )
))
(declare-datatypes ((Context!7852 0))(
  ( (Context!7853 (exprs!4426 List!60037)) )
))
(declare-fun z!4413 () (Set Context!7852))

(declare-fun lt!2123299 () Int)

(declare-fun lt!2123294 () Int)

(declare-datatypes ((List!60038 0))(
  ( (Nil!59914) (Cons!59914 (h!66362 C!29350) (t!373191 List!60038)) )
))
(declare-fun input!5707 () List!60038)

(declare-fun isEmpty!32092 (List!60038) Bool)

(declare-datatypes ((tuple2!63658 0))(
  ( (tuple2!63659 (_1!35132 List!60038) (_2!35132 List!60038)) )
))
(declare-fun findLongestMatchInnerZipper!210 ((Set Context!7852) List!60038 Int List!60038 List!60038 Int) tuple2!63658)

(assert (=> b!5163646 (= res!2195292 (isEmpty!32092 (_1!35132 (findLongestMatchInnerZipper!210 z!4413 Nil!59914 lt!2123294 input!5707 input!5707 lt!2123299))))))

(declare-fun e!3217337 () Bool)

(assert (=> b!5163646 e!3217337))

(declare-fun res!2195290 () Bool)

(assert (=> b!5163646 (=> res!2195290 e!3217337)))

(declare-fun lt!2123298 () tuple2!63658)

(assert (=> b!5163646 (= res!2195290 (isEmpty!32092 (_1!35132 lt!2123298)))))

(declare-fun lt!2123295 () List!60038)

(assert (=> b!5163646 (= lt!2123298 (findLongestMatchInnerZipper!210 z!4413 Nil!59914 lt!2123294 lt!2123295 input!5707 lt!2123299))))

(declare-fun size!39578 (List!60038) Int)

(assert (=> b!5163646 (= lt!2123299 (size!39578 input!5707))))

(declare-fun getSuffix!3331 (List!60038 List!60038) List!60038)

(assert (=> b!5163646 (= lt!2123295 (getSuffix!3331 input!5707 Nil!59914))))

(assert (=> b!5163646 (= lt!2123294 (size!39578 Nil!59914))))

(declare-datatypes ((Unit!151367 0))(
  ( (Unit!151368) )
))
(declare-fun lt!2123296 () Unit!151367)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!8 ((Set Context!7852) (Set Context!7852) List!60038 List!60038) Unit!151367)

(assert (=> b!5163646 (= lt!2123296 (longestMatchIsAcceptedByMatchOrIsEmptyRec!8 z!4413 z!4413 Nil!59914 input!5707))))

(declare-fun setNonEmpty!31421 () Bool)

(declare-fun tp!1448245 () Bool)

(declare-fun e!3217341 () Bool)

(declare-fun setElem!31421 () Context!7852)

(declare-fun inv!79600 (Context!7852) Bool)

(assert (=> setNonEmpty!31421 (= setRes!31421 (and tp!1448245 (inv!79600 setElem!31421) e!3217341))))

(declare-fun setRest!31421 () (Set Context!7852))

(assert (=> setNonEmpty!31421 (= z!4413 (set.union (set.insert setElem!31421 (as set.empty (Set Context!7852))) setRest!31421))))

(declare-fun b!5163647 () Bool)

(declare-fun e!3217338 () Bool)

(declare-fun tp_is_empty!38333 () Bool)

(declare-fun tp!1448244 () Bool)

(assert (=> b!5163647 (= e!3217338 (and tp_is_empty!38333 tp!1448244))))

(declare-fun b!5163648 () Bool)

(declare-fun matchZipper!944 ((Set Context!7852) List!60038) Bool)

(assert (=> b!5163648 (= e!3217337 (matchZipper!944 z!4413 (_1!35132 lt!2123298)))))

(declare-fun b!5163649 () Bool)

(assert (=> b!5163649 (= e!3217339 true)))

(declare-fun lt!2123297 () List!60038)

(declare-fun ++!13091 (List!60038 List!60038) List!60038)

(assert (=> b!5163649 (= lt!2123297 (++!13091 Nil!59914 input!5707))))

(declare-fun b!5163650 () Bool)

(declare-fun res!2195289 () Bool)

(assert (=> b!5163650 (=> (not res!2195289) (not e!3217340))))

(declare-fun derivationZipper!165 ((Set Context!7852) List!60038) (Set Context!7852))

(assert (=> b!5163650 (= res!2195289 (= (derivationZipper!165 z!4413 Nil!59914) z!4413))))

(declare-fun res!2195291 () Bool)

(assert (=> start!546236 (=> (not res!2195291) (not e!3217340))))

(declare-fun isPrefix!5673 (List!60038 List!60038) Bool)

(assert (=> start!546236 (= res!2195291 (isPrefix!5673 Nil!59914 input!5707))))

(assert (=> start!546236 e!3217340))

(assert (=> start!546236 e!3217338))

(declare-fun condSetEmpty!31421 () Bool)

(assert (=> start!546236 (= condSetEmpty!31421 (= z!4413 (as set.empty (Set Context!7852))))))

(assert (=> start!546236 setRes!31421))

(declare-fun b!5163651 () Bool)

(declare-fun tp!1448246 () Bool)

(assert (=> b!5163651 (= e!3217341 tp!1448246)))

(assert (= (and start!546236 res!2195291) b!5163650))

(assert (= (and b!5163650 res!2195289) b!5163646))

(assert (= (and b!5163646 (not res!2195290)) b!5163648))

(assert (= (and b!5163646 (not res!2195292)) b!5163649))

(assert (= (and start!546236 (is-Cons!59914 input!5707)) b!5163647))

(assert (= (and start!546236 condSetEmpty!31421) setIsEmpty!31421))

(assert (= (and start!546236 (not condSetEmpty!31421)) setNonEmpty!31421))

(assert (= setNonEmpty!31421 b!5163651))

(declare-fun m!6214312 () Bool)

(assert (=> b!5163646 m!6214312))

(declare-fun m!6214314 () Bool)

(assert (=> b!5163646 m!6214314))

(declare-fun m!6214316 () Bool)

(assert (=> b!5163646 m!6214316))

(declare-fun m!6214318 () Bool)

(assert (=> b!5163646 m!6214318))

(declare-fun m!6214320 () Bool)

(assert (=> b!5163646 m!6214320))

(declare-fun m!6214322 () Bool)

(assert (=> b!5163646 m!6214322))

(declare-fun m!6214324 () Bool)

(assert (=> b!5163646 m!6214324))

(declare-fun m!6214326 () Bool)

(assert (=> b!5163646 m!6214326))

(declare-fun m!6214328 () Bool)

(assert (=> start!546236 m!6214328))

(declare-fun m!6214330 () Bool)

(assert (=> b!5163648 m!6214330))

(declare-fun m!6214332 () Bool)

(assert (=> setNonEmpty!31421 m!6214332))

(declare-fun m!6214334 () Bool)

(assert (=> b!5163650 m!6214334))

(declare-fun m!6214336 () Bool)

(assert (=> b!5163649 m!6214336))

(push 1)

(assert (not b!5163648))

(assert (not b!5163649))

(assert (not b!5163651))

(assert (not b!5163650))

(assert (not b!5163647))

(assert (not setNonEmpty!31421))

(assert tp_is_empty!38333)

(assert (not b!5163646))

(assert (not start!546236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

