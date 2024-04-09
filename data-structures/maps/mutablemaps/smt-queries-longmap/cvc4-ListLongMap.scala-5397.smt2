; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72026 () Bool)

(assert start!72026)

(declare-fun res!569020 () Bool)

(declare-fun e!466528 () Bool)

(assert (=> start!72026 (=> (not res!569020) (not e!466528))))

(declare-datatypes ((B!1188 0))(
  ( (B!1189 (val!7676 Int)) )
))
(declare-datatypes ((tuple2!10230 0))(
  ( (tuple2!10231 (_1!5125 (_ BitVec 64)) (_2!5125 B!1188)) )
))
(declare-datatypes ((List!16035 0))(
  ( (Nil!16032) (Cons!16031 (h!17162 tuple2!10230) (t!22414 List!16035)) )
))
(declare-fun l!390 () List!16035)

(declare-fun isStrictlySorted!447 (List!16035) Bool)

(assert (=> start!72026 (= res!569020 (isStrictlySorted!447 l!390))))

(assert (=> start!72026 e!466528))

(declare-fun e!466529 () Bool)

(assert (=> start!72026 e!466529))

(declare-fun b!836173 () Bool)

(declare-fun ListPrimitiveSize!69 (List!16035) Int)

(assert (=> b!836173 (= e!466528 (< (ListPrimitiveSize!69 l!390) 0))))

(declare-fun b!836174 () Bool)

(declare-fun tp_is_empty!15257 () Bool)

(declare-fun tp!47429 () Bool)

(assert (=> b!836174 (= e!466529 (and tp_is_empty!15257 tp!47429))))

(assert (= (and start!72026 res!569020) b!836173))

(assert (= (and start!72026 (is-Cons!16031 l!390)) b!836174))

(declare-fun m!781617 () Bool)

(assert (=> start!72026 m!781617))

(declare-fun m!781619 () Bool)

(assert (=> b!836173 m!781619))

(push 1)

(assert (not start!72026))

(assert (not b!836173))

(assert (not b!836174))

(assert tp_is_empty!15257)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107485 () Bool)

(declare-fun res!569031 () Bool)

(declare-fun e!466543 () Bool)

(assert (=> d!107485 (=> res!569031 e!466543)))

(assert (=> d!107485 (= res!569031 (or (is-Nil!16032 l!390) (is-Nil!16032 (t!22414 l!390))))))

(assert (=> d!107485 (= (isStrictlySorted!447 l!390) e!466543)))

(declare-fun b!836191 () Bool)

(declare-fun e!466544 () Bool)

(assert (=> b!836191 (= e!466543 e!466544)))

(declare-fun res!569032 () Bool)

(assert (=> b!836191 (=> (not res!569032) (not e!466544))))

(assert (=> b!836191 (= res!569032 (bvslt (_1!5125 (h!17162 l!390)) (_1!5125 (h!17162 (t!22414 l!390)))))))

(declare-fun b!836192 () Bool)

(assert (=> b!836192 (= e!466544 (isStrictlySorted!447 (t!22414 l!390)))))

(assert (= (and d!107485 (not res!569031)) b!836191))

(assert (= (and b!836191 res!569032) b!836192))

(declare-fun m!781625 () Bool)

(assert (=> b!836192 m!781625))

(assert (=> start!72026 d!107485))

(declare-fun d!107491 () Bool)

(declare-fun lt!380337 () Int)

(assert (=> d!107491 (>= lt!380337 0)))

(declare-fun e!466556 () Int)

(assert (=> d!107491 (= lt!380337 e!466556)))

(declare-fun c!90952 () Bool)

(assert (=> d!107491 (= c!90952 (is-Nil!16032 l!390))))

(assert (=> d!107491 (= (ListPrimitiveSize!69 l!390) lt!380337)))

(declare-fun b!836213 () Bool)

(assert (=> b!836213 (= e!466556 0)))

(declare-fun b!836214 () Bool)

(assert (=> b!836214 (= e!466556 (+ 1 (ListPrimitiveSize!69 (t!22414 l!390))))))

(assert (= (and d!107491 c!90952) b!836213))

(assert (= (and d!107491 (not c!90952)) b!836214))

(declare-fun m!781631 () Bool)

(assert (=> b!836214 m!781631))

(assert (=> b!836173 d!107491))

(declare-fun b!836225 () Bool)

(declare-fun e!466565 () Bool)

(declare-fun tp!47438 () Bool)

(assert (=> b!836225 (= e!466565 (and tp_is_empty!15257 tp!47438))))

(assert (=> b!836174 (= tp!47429 e!466565)))

(assert (= (and b!836174 (is-Cons!16031 (t!22414 l!390))) b!836225))

(push 1)

