; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72040 () Bool)

(assert start!72040)

(declare-fun res!569043 () Bool)

(declare-fun e!466571 () Bool)

(assert (=> start!72040 (=> (not res!569043) (not e!466571))))

(declare-datatypes ((B!1190 0))(
  ( (B!1191 (val!7677 Int)) )
))
(declare-datatypes ((tuple2!10232 0))(
  ( (tuple2!10233 (_1!5126 (_ BitVec 64)) (_2!5126 B!1190)) )
))
(declare-datatypes ((List!16036 0))(
  ( (Nil!16033) (Cons!16032 (h!17163 tuple2!10232) (t!22415 List!16036)) )
))
(declare-fun l!390 () List!16036)

(declare-fun isStrictlySorted!448 (List!16036) Bool)

(assert (=> start!72040 (= res!569043 (isStrictlySorted!448 l!390))))

(assert (=> start!72040 e!466571))

(declare-fun e!466570 () Bool)

(assert (=> start!72040 e!466570))

(declare-fun b!836232 () Bool)

(declare-fun res!569044 () Bool)

(assert (=> b!836232 (=> (not res!569044) (not e!466571))))

(assert (=> b!836232 (= res!569044 (is-Cons!16032 l!390))))

(declare-fun b!836233 () Bool)

(declare-fun ListPrimitiveSize!70 (List!16036) Int)

(assert (=> b!836233 (= e!466571 (>= (ListPrimitiveSize!70 (t!22415 l!390)) (ListPrimitiveSize!70 l!390)))))

(declare-fun b!836234 () Bool)

(declare-fun tp_is_empty!15259 () Bool)

(declare-fun tp!47441 () Bool)

(assert (=> b!836234 (= e!466570 (and tp_is_empty!15259 tp!47441))))

(assert (= (and start!72040 res!569043) b!836232))

(assert (= (and b!836232 res!569044) b!836233))

(assert (= (and start!72040 (is-Cons!16032 l!390)) b!836234))

(declare-fun m!781633 () Bool)

(assert (=> start!72040 m!781633))

(declare-fun m!781635 () Bool)

(assert (=> b!836233 m!781635))

(declare-fun m!781637 () Bool)

(assert (=> b!836233 m!781637))

(push 1)

(assert (not start!72040))

(assert (not b!836233))

(assert (not b!836234))

(assert tp_is_empty!15259)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107497 () Bool)

(declare-fun res!569071 () Bool)

(declare-fun e!466598 () Bool)

(assert (=> d!107497 (=> res!569071 e!466598)))

(assert (=> d!107497 (= res!569071 (or (is-Nil!16033 l!390) (is-Nil!16033 (t!22415 l!390))))))

(assert (=> d!107497 (= (isStrictlySorted!448 l!390) e!466598)))

(declare-fun b!836267 () Bool)

(declare-fun e!466599 () Bool)

(assert (=> b!836267 (= e!466598 e!466599)))

(declare-fun res!569072 () Bool)

(assert (=> b!836267 (=> (not res!569072) (not e!466599))))

(assert (=> b!836267 (= res!569072 (bvslt (_1!5126 (h!17163 l!390)) (_1!5126 (h!17163 (t!22415 l!390)))))))

(declare-fun b!836268 () Bool)

(assert (=> b!836268 (= e!466599 (isStrictlySorted!448 (t!22415 l!390)))))

(assert (= (and d!107497 (not res!569071)) b!836267))

(assert (= (and b!836267 res!569072) b!836268))

(declare-fun m!781653 () Bool)

(assert (=> b!836268 m!781653))

(assert (=> start!72040 d!107497))

(declare-fun d!107503 () Bool)

(declare-fun lt!380346 () Int)

(assert (=> d!107503 (>= lt!380346 0)))

(declare-fun e!466613 () Int)

(assert (=> d!107503 (= lt!380346 e!466613)))

(declare-fun c!90961 () Bool)

(assert (=> d!107503 (= c!90961 (is-Nil!16033 (t!22415 l!390)))))

(assert (=> d!107503 (= (ListPrimitiveSize!70 (t!22415 l!390)) lt!380346)))

(declare-fun b!836292 () Bool)

(assert (=> b!836292 (= e!466613 0)))

(declare-fun b!836293 () Bool)

(assert (=> b!836293 (= e!466613 (+ 1 (ListPrimitiveSize!70 (t!22415 (t!22415 l!390)))))))

(assert (= (and d!107503 c!90961) b!836292))

(assert (= (and d!107503 (not c!90961)) b!836293))

(declare-fun m!781659 () Bool)

(assert (=> b!836293 m!781659))

(assert (=> b!836233 d!107503))

(declare-fun d!107509 () Bool)

(declare-fun lt!380347 () Int)

(assert (=> d!107509 (>= lt!380347 0)))

(declare-fun e!466614 () Int)

(assert (=> d!107509 (= lt!380347 e!466614)))

(declare-fun c!90962 () Bool)

(assert (=> d!107509 (= c!90962 (is-Nil!16033 l!390))))

(assert (=> d!107509 (= (ListPrimitiveSize!70 l!390) lt!380347)))

(declare-fun b!836294 () Bool)

(assert (=> b!836294 (= e!466614 0)))

(declare-fun b!836295 () Bool)

(assert (=> b!836295 (= e!466614 (+ 1 (ListPrimitiveSize!70 (t!22415 l!390))))))

(assert (= (and d!107509 c!90962) b!836294))

(assert (= (and d!107509 (not c!90962)) b!836295))

(assert (=> b!836295 m!781635))

