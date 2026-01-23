; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538394 () Bool)

(assert start!538394)

(declare-datatypes ((C!28426 0))(
  ( (C!28427 (val!23865 Int)) )
))
(declare-datatypes ((Regex!14080 0))(
  ( (ElementMatch!14080 (c!877076 C!28426)) (Concat!22925 (regOne!28672 Regex!14080) (regTwo!28672 Regex!14080)) (EmptyExpr!14080) (Star!14080 (reg!14409 Regex!14080)) (EmptyLang!14080) (Union!14080 (regOne!28673 Regex!14080) (regTwo!28673 Regex!14080)) )
))
(declare-datatypes ((List!59030 0))(
  ( (Nil!58906) (Cons!58906 (h!65354 Regex!14080) (t!372031 List!59030)) )
))
(declare-datatypes ((Context!6928 0))(
  ( (Context!6929 (exprs!3964 List!59030)) )
))
(declare-fun setElem!29353 () Context!6928)

(declare-fun tp!1424275 () Bool)

(declare-fun e!3184518 () Bool)

(declare-fun setNonEmpty!29353 () Bool)

(declare-fun setRes!29353 () Bool)

(declare-fun inv!78382 (Context!6928) Bool)

(assert (=> setNonEmpty!29353 (= setRes!29353 (and tp!1424275 (inv!78382 setElem!29353) e!3184518))))

(declare-fun baseZ!39 () (Set Context!6928))

(declare-fun setRest!29353 () (Set Context!6928))

(assert (=> setNonEmpty!29353 (= baseZ!39 (set.union (set.insert setElem!29353 (as set.empty (Set Context!6928))) setRest!29353))))

(declare-fun b!5105863 () Bool)

(declare-fun tp!1424273 () Bool)

(assert (=> b!5105863 (= e!3184518 tp!1424273)))

(declare-fun b!5105864 () Bool)

(declare-fun e!3184516 () Bool)

(declare-fun tp_is_empty!37433 () Bool)

(declare-fun tp!1424276 () Bool)

(assert (=> b!5105864 (= e!3184516 (and tp_is_empty!37433 tp!1424276))))

(declare-fun setIsEmpty!29353 () Bool)

(assert (=> setIsEmpty!29353 setRes!29353))

(declare-fun b!5105865 () Bool)

(declare-fun res!2173329 () Bool)

(declare-fun e!3184517 () Bool)

(assert (=> b!5105865 (=> (not res!2173329) (not e!3184517))))

(declare-datatypes ((List!59031 0))(
  ( (Nil!58907) (Cons!58907 (h!65355 C!28426) (t!372032 List!59031)) )
))
(declare-fun bigger!41 () List!59031)

(declare-fun returnP!41 () List!59031)

(declare-fun size!39386 (List!59031) Int)

(assert (=> b!5105865 (= res!2173329 (>= (size!39386 bigger!41) (size!39386 returnP!41)))))

(declare-fun b!5105866 () Bool)

(declare-fun e!3184515 () Bool)

(declare-fun tp!1424272 () Bool)

(assert (=> b!5105866 (= e!3184515 (and tp_is_empty!37433 tp!1424272))))

(declare-fun b!5105867 () Bool)

(declare-fun res!2173327 () Bool)

(assert (=> b!5105867 (=> (not res!2173327) (not e!3184517))))

(declare-fun input!5723 () List!59031)

(declare-fun isPrefix!5485 (List!59031 List!59031) Bool)

(assert (=> b!5105867 (= res!2173327 (isPrefix!5485 bigger!41 input!5723))))

(declare-fun b!5105868 () Bool)

(declare-fun e!3184514 () Bool)

(declare-fun tp!1424274 () Bool)

(assert (=> b!5105868 (= e!3184514 (and tp_is_empty!37433 tp!1424274))))

(declare-fun res!2173328 () Bool)

(assert (=> start!538394 (=> (not res!2173328) (not e!3184517))))

(assert (=> start!538394 (= res!2173328 (isPrefix!5485 returnP!41 input!5723))))

(assert (=> start!538394 e!3184517))

(assert (=> start!538394 e!3184514))

(assert (=> start!538394 e!3184515))

(assert (=> start!538394 e!3184516))

(declare-fun condSetEmpty!29353 () Bool)

(assert (=> start!538394 (= condSetEmpty!29353 (= baseZ!39 (as set.empty (Set Context!6928))))))

(assert (=> start!538394 setRes!29353))

(declare-fun b!5105862 () Bool)

(assert (=> b!5105862 (= e!3184517 false)))

(declare-datatypes ((tuple2!63546 0))(
  ( (tuple2!63547 (_1!35076 List!59031) (_2!35076 List!59031)) )
))
(declare-fun lt!2101639 () tuple2!63546)

(declare-fun findLongestMatchInnerZipper!154 ((Set Context!6928) List!59031 Int List!59031 List!59031 Int) tuple2!63546)

(assert (=> b!5105862 (= lt!2101639 (findLongestMatchInnerZipper!154 baseZ!39 Nil!58907 (size!39386 Nil!58907) input!5723 input!5723 (size!39386 input!5723)))))

(assert (= (and start!538394 res!2173328) b!5105867))

(assert (= (and b!5105867 res!2173327) b!5105865))

(assert (= (and b!5105865 res!2173329) b!5105862))

(assert (= (and start!538394 (is-Cons!58907 returnP!41)) b!5105868))

(assert (= (and start!538394 (is-Cons!58907 input!5723)) b!5105866))

(assert (= (and start!538394 (is-Cons!58907 bigger!41)) b!5105864))

(assert (= (and start!538394 condSetEmpty!29353) setIsEmpty!29353))

(assert (= (and start!538394 (not condSetEmpty!29353)) setNonEmpty!29353))

(assert (= setNonEmpty!29353 b!5105863))

(declare-fun m!6163250 () Bool)

(assert (=> b!5105862 m!6163250))

(declare-fun m!6163252 () Bool)

(assert (=> b!5105862 m!6163252))

(assert (=> b!5105862 m!6163250))

(assert (=> b!5105862 m!6163252))

(declare-fun m!6163254 () Bool)

(assert (=> b!5105862 m!6163254))

(declare-fun m!6163256 () Bool)

(assert (=> setNonEmpty!29353 m!6163256))

(declare-fun m!6163258 () Bool)

(assert (=> start!538394 m!6163258))

(declare-fun m!6163260 () Bool)

(assert (=> b!5105865 m!6163260))

(declare-fun m!6163262 () Bool)

(assert (=> b!5105865 m!6163262))

(declare-fun m!6163264 () Bool)

(assert (=> b!5105867 m!6163264))

(push 1)

(assert (not start!538394))

(assert (not b!5105863))

(assert (not b!5105866))

(assert (not setNonEmpty!29353))

(assert (not b!5105867))

(assert (not b!5105864))

(assert (not b!5105862))

(assert (not b!5105865))

(assert tp_is_empty!37433)

(assert (not b!5105868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

