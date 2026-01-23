; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546188 () Bool)

(assert start!546188)

(declare-fun b!5163330 () Bool)

(declare-fun e!3217138 () Bool)

(assert (=> b!5163330 (= e!3217138 (not true))))

(declare-datatypes ((C!29342 0))(
  ( (C!29343 (val!24373 Int)) )
))
(declare-datatypes ((List!60029 0))(
  ( (Nil!59905) (Cons!59905 (h!66353 C!29342) (t!373182 List!60029)) )
))
(declare-fun lt!2123000 () List!60029)

(declare-fun input!5707 () List!60029)

(declare-fun ++!13087 (List!60029 List!60029) List!60029)

(assert (=> b!5163330 (= lt!2123000 (++!13087 Nil!59905 input!5707))))

(declare-fun e!3217139 () Bool)

(assert (=> b!5163330 e!3217139))

(declare-fun res!2195187 () Bool)

(assert (=> b!5163330 (=> res!2195187 e!3217139)))

(declare-datatypes ((tuple2!63650 0))(
  ( (tuple2!63651 (_1!35128 List!60029) (_2!35128 List!60029)) )
))
(declare-fun lt!2123002 () tuple2!63650)

(declare-fun isEmpty!32088 (List!60029) Bool)

(assert (=> b!5163330 (= res!2195187 (isEmpty!32088 (_1!35128 lt!2123002)))))

(declare-datatypes ((Regex!14538 0))(
  ( (ElementMatch!14538 (c!888303 C!29342)) (Concat!23383 (regOne!29588 Regex!14538) (regTwo!29588 Regex!14538)) (EmptyExpr!14538) (Star!14538 (reg!14867 Regex!14538)) (EmptyLang!14538) (Union!14538 (regOne!29589 Regex!14538) (regTwo!29589 Regex!14538)) )
))
(declare-datatypes ((List!60030 0))(
  ( (Nil!59906) (Cons!59906 (h!66354 Regex!14538) (t!373183 List!60030)) )
))
(declare-datatypes ((Context!7844 0))(
  ( (Context!7845 (exprs!4422 List!60030)) )
))
(declare-fun z!4413 () (Set Context!7844))

(declare-fun findLongestMatchInnerZipper!206 ((Set Context!7844) List!60029 Int List!60029 List!60029 Int) tuple2!63650)

(declare-fun size!39574 (List!60029) Int)

(declare-fun getSuffix!3327 (List!60029 List!60029) List!60029)

(assert (=> b!5163330 (= lt!2123002 (findLongestMatchInnerZipper!206 z!4413 Nil!59905 (size!39574 Nil!59905) (getSuffix!3327 input!5707 Nil!59905) input!5707 (size!39574 input!5707)))))

(declare-datatypes ((Unit!151347 0))(
  ( (Unit!151348) )
))
(declare-fun lt!2123001 () Unit!151347)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!4 ((Set Context!7844) (Set Context!7844) List!60029 List!60029) Unit!151347)

(assert (=> b!5163330 (= lt!2123001 (longestMatchIsAcceptedByMatchOrIsEmptyRec!4 z!4413 z!4413 Nil!59905 input!5707))))

(declare-fun b!5163331 () Bool)

(declare-fun matchZipper!940 ((Set Context!7844) List!60029) Bool)

(assert (=> b!5163331 (= e!3217139 (matchZipper!940 z!4413 (_1!35128 lt!2123002)))))

(declare-fun b!5163332 () Bool)

(declare-fun e!3217137 () Bool)

(declare-fun tp_is_empty!38325 () Bool)

(declare-fun tp!1448178 () Bool)

(assert (=> b!5163332 (= e!3217137 (and tp_is_empty!38325 tp!1448178))))

(declare-fun res!2195188 () Bool)

(assert (=> start!546188 (=> (not res!2195188) (not e!3217138))))

(declare-fun isPrefix!5669 (List!60029 List!60029) Bool)

(assert (=> start!546188 (= res!2195188 (isPrefix!5669 Nil!59905 input!5707))))

(assert (=> start!546188 e!3217138))

(assert (=> start!546188 e!3217137))

(declare-fun condSetEmpty!31403 () Bool)

(assert (=> start!546188 (= condSetEmpty!31403 (= z!4413 (as set.empty (Set Context!7844))))))

(declare-fun setRes!31403 () Bool)

(assert (=> start!546188 setRes!31403))

(declare-fun setNonEmpty!31403 () Bool)

(declare-fun e!3217140 () Bool)

(declare-fun tp!1448179 () Bool)

(declare-fun setElem!31403 () Context!7844)

(declare-fun inv!79590 (Context!7844) Bool)

(assert (=> setNonEmpty!31403 (= setRes!31403 (and tp!1448179 (inv!79590 setElem!31403) e!3217140))))

(declare-fun setRest!31403 () (Set Context!7844))

(assert (=> setNonEmpty!31403 (= z!4413 (set.union (set.insert setElem!31403 (as set.empty (Set Context!7844))) setRest!31403))))

(declare-fun setIsEmpty!31403 () Bool)

(assert (=> setIsEmpty!31403 setRes!31403))

(declare-fun b!5163333 () Bool)

(declare-fun tp!1448180 () Bool)

(assert (=> b!5163333 (= e!3217140 tp!1448180)))

(declare-fun b!5163334 () Bool)

(declare-fun res!2195189 () Bool)

(assert (=> b!5163334 (=> (not res!2195189) (not e!3217138))))

(declare-fun derivationZipper!161 ((Set Context!7844) List!60029) (Set Context!7844))

(assert (=> b!5163334 (= res!2195189 (= (derivationZipper!161 z!4413 Nil!59905) z!4413))))

(assert (= (and start!546188 res!2195188) b!5163334))

(assert (= (and b!5163334 res!2195189) b!5163330))

(assert (= (and b!5163330 (not res!2195187)) b!5163331))

(assert (= (and start!546188 (is-Cons!59905 input!5707)) b!5163332))

(assert (= (and start!546188 condSetEmpty!31403) setIsEmpty!31403))

(assert (= (and start!546188 (not condSetEmpty!31403)) setNonEmpty!31403))

(assert (= setNonEmpty!31403 b!5163333))

(declare-fun m!6213956 () Bool)

(assert (=> setNonEmpty!31403 m!6213956))

(declare-fun m!6213958 () Bool)

(assert (=> start!546188 m!6213958))

(declare-fun m!6213960 () Bool)

(assert (=> b!5163330 m!6213960))

(declare-fun m!6213962 () Bool)

(assert (=> b!5163330 m!6213962))

(declare-fun m!6213964 () Bool)

(assert (=> b!5163330 m!6213964))

(assert (=> b!5163330 m!6213964))

(assert (=> b!5163330 m!6213962))

(declare-fun m!6213966 () Bool)

(assert (=> b!5163330 m!6213966))

(declare-fun m!6213968 () Bool)

(assert (=> b!5163330 m!6213968))

(declare-fun m!6213970 () Bool)

(assert (=> b!5163330 m!6213970))

(declare-fun m!6213972 () Bool)

(assert (=> b!5163330 m!6213972))

(assert (=> b!5163330 m!6213966))

(declare-fun m!6213974 () Bool)

(assert (=> b!5163331 m!6213974))

(declare-fun m!6213976 () Bool)

(assert (=> b!5163334 m!6213976))

(push 1)

(assert (not b!5163332))

(assert (not b!5163331))

(assert (not setNonEmpty!31403))

(assert tp_is_empty!38325)

(assert (not start!546188))

(assert (not b!5163333))

(assert (not b!5163334))

(assert (not b!5163330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

