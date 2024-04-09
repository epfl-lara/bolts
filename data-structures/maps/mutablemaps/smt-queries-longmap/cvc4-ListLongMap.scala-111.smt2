; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1928 () Bool)

(assert start!1928)

(declare-fun res!10296 () Bool)

(declare-fun e!7789 () Bool)

(assert (=> start!1928 (=> (not res!10296) (not e!7789))))

(declare-datatypes ((B!468 0))(
  ( (B!469 (val!332 Int)) )
))
(declare-datatypes ((tuple2!446 0))(
  ( (tuple2!447 (_1!223 (_ BitVec 64)) (_2!223 B!468)) )
))
(declare-datatypes ((List!382 0))(
  ( (Nil!379) (Cons!378 (h!944 tuple2!446) (t!2775 List!382)) )
))
(declare-fun l!522 () List!382)

(declare-fun isStrictlySorted!73 (List!382) Bool)

(assert (=> start!1928 (= res!10296 (isStrictlySorted!73 l!522))))

(assert (=> start!1928 e!7789))

(declare-fun e!7788 () Bool)

(assert (=> start!1928 e!7788))

(declare-fun tp_is_empty!647 () Bool)

(assert (=> start!1928 tp_is_empty!647))

(declare-fun b!12993 () Bool)

(declare-fun res!10297 () Bool)

(assert (=> b!12993 (=> (not res!10297) (not e!7789))))

(declare-fun value!159 () B!468)

(assert (=> b!12993 (= res!10297 (and (is-Cons!378 l!522) (= (_2!223 (h!944 l!522)) value!159)))))

(declare-fun b!12994 () Bool)

(assert (=> b!12994 (= e!7789 (not (isStrictlySorted!73 (t!2775 l!522))))))

(declare-fun b!12995 () Bool)

(declare-fun tp!2129 () Bool)

(assert (=> b!12995 (= e!7788 (and tp_is_empty!647 tp!2129))))

(assert (= (and start!1928 res!10296) b!12993))

(assert (= (and b!12993 res!10297) b!12994))

(assert (= (and start!1928 (is-Cons!378 l!522)) b!12995))

(declare-fun m!8907 () Bool)

(assert (=> start!1928 m!8907))

(declare-fun m!8909 () Bool)

(assert (=> b!12994 m!8909))

(push 1)

(assert (not start!1928))

(assert (not b!12994))

(assert (not b!12995))

(assert tp_is_empty!647)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1933 () Bool)

(declare-fun res!10318 () Bool)

(declare-fun e!7816 () Bool)

(assert (=> d!1933 (=> res!10318 e!7816)))

(assert (=> d!1933 (= res!10318 (or (is-Nil!379 l!522) (is-Nil!379 (t!2775 l!522))))))

(assert (=> d!1933 (= (isStrictlySorted!73 l!522) e!7816)))

(declare-fun b!13026 () Bool)

(declare-fun e!7817 () Bool)

(assert (=> b!13026 (= e!7816 e!7817)))

(declare-fun res!10319 () Bool)

(assert (=> b!13026 (=> (not res!10319) (not e!7817))))

(assert (=> b!13026 (= res!10319 (bvslt (_1!223 (h!944 l!522)) (_1!223 (h!944 (t!2775 l!522)))))))

(declare-fun b!13027 () Bool)

(assert (=> b!13027 (= e!7817 (isStrictlySorted!73 (t!2775 l!522)))))

(assert (= (and d!1933 (not res!10318)) b!13026))

(assert (= (and b!13026 res!10319) b!13027))

(assert (=> b!13027 m!8909))

(assert (=> start!1928 d!1933))

(declare-fun d!1939 () Bool)

(declare-fun res!10320 () Bool)

(declare-fun e!7818 () Bool)

(assert (=> d!1939 (=> res!10320 e!7818)))

(assert (=> d!1939 (= res!10320 (or (is-Nil!379 (t!2775 l!522)) (is-Nil!379 (t!2775 (t!2775 l!522)))))))

(assert (=> d!1939 (= (isStrictlySorted!73 (t!2775 l!522)) e!7818)))

(declare-fun b!13028 () Bool)

(declare-fun e!7819 () Bool)

(assert (=> b!13028 (= e!7818 e!7819)))

(declare-fun res!10321 () Bool)

(assert (=> b!13028 (=> (not res!10321) (not e!7819))))

(assert (=> b!13028 (= res!10321 (bvslt (_1!223 (h!944 (t!2775 l!522))) (_1!223 (h!944 (t!2775 (t!2775 l!522))))))))

