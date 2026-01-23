; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696734 () Bool)

(assert start!696734)

(declare-fun b!7145764 () Bool)

(declare-fun e!4294218 () Bool)

(declare-fun tp_is_empty!46053 () Bool)

(assert (=> b!7145764 (= e!4294218 tp_is_empty!46053)))

(declare-fun b!7145765 () Bool)

(declare-fun res!2915538 () Bool)

(declare-fun e!4294220 () Bool)

(assert (=> b!7145765 (=> (not res!2915538) (not e!4294220))))

(declare-datatypes ((C!36690 0))(
  ( (C!36691 (val!28293 Int)) )
))
(declare-datatypes ((Regex!18208 0))(
  ( (ElementMatch!18208 (c!1332553 C!36690)) (Concat!27053 (regOne!36928 Regex!18208) (regTwo!36928 Regex!18208)) (EmptyExpr!18208) (Star!18208 (reg!18537 Regex!18208)) (EmptyLang!18208) (Union!18208 (regOne!36929 Regex!18208) (regTwo!36929 Regex!18208)) )
))
(declare-datatypes ((List!69494 0))(
  ( (Nil!69370) (Cons!69370 (h!75818 Regex!18208) (t!383511 List!69494)) )
))
(declare-datatypes ((Context!14404 0))(
  ( (Context!14405 (exprs!7702 List!69494)) )
))
(declare-datatypes ((List!69495 0))(
  ( (Nil!69371) (Cons!69371 (h!75819 Context!14404) (t!383512 List!69495)) )
))
(declare-fun zl!333 () List!69495)

(declare-fun r!7278 () Regex!18208)

(declare-fun generalisedConcat!2385 (List!69494) Regex!18208)

(assert (=> b!7145765 (= res!2915538 (not (= (generalisedConcat!2385 (exprs!7702 (h!75819 zl!333))) r!7278)))))

(declare-fun b!7145766 () Bool)

(declare-fun e!4294219 () Bool)

(declare-fun tp!1971398 () Bool)

(assert (=> b!7145766 (= e!4294219 tp!1971398)))

(declare-fun res!2915536 () Bool)

(assert (=> start!696734 (=> (not res!2915536) (not e!4294220))))

(declare-fun contains!20640 (List!69494 Regex!18208) Bool)

(declare-fun unfocusZipperList!2249 (List!69495) List!69494)

(assert (=> start!696734 (= res!2915536 (contains!20640 (unfocusZipperList!2249 zl!333) r!7278))))

(assert (=> start!696734 e!4294220))

(declare-fun e!4294217 () Bool)

(assert (=> start!696734 e!4294217))

(assert (=> start!696734 e!4294218))

(declare-fun b!7145767 () Bool)

(declare-fun tp!1971400 () Bool)

(declare-fun tp!1971394 () Bool)

(assert (=> b!7145767 (= e!4294218 (and tp!1971400 tp!1971394))))

(declare-fun b!7145768 () Bool)

(assert (=> b!7145768 (= e!4294220 false)))

(declare-fun lt!2568817 () Bool)

(assert (=> b!7145768 (= lt!2568817 (contains!20640 (unfocusZipperList!2249 (t!383512 zl!333)) r!7278))))

(declare-fun b!7145769 () Bool)

(declare-fun res!2915537 () Bool)

(assert (=> b!7145769 (=> (not res!2915537) (not e!4294220))))

(assert (=> b!7145769 (= res!2915537 (is-Cons!69371 zl!333))))

(declare-fun b!7145770 () Bool)

(declare-fun tp!1971399 () Bool)

(assert (=> b!7145770 (= e!4294218 tp!1971399)))

(declare-fun tp!1971395 () Bool)

(declare-fun b!7145771 () Bool)

(declare-fun inv!88585 (Context!14404) Bool)

(assert (=> b!7145771 (= e!4294217 (and (inv!88585 (h!75819 zl!333)) e!4294219 tp!1971395))))

(declare-fun b!7145772 () Bool)

(declare-fun tp!1971397 () Bool)

(declare-fun tp!1971396 () Bool)

(assert (=> b!7145772 (= e!4294218 (and tp!1971397 tp!1971396))))

(assert (= (and start!696734 res!2915536) b!7145769))

(assert (= (and b!7145769 res!2915537) b!7145765))

(assert (= (and b!7145765 res!2915538) b!7145768))

(assert (= b!7145771 b!7145766))

(assert (= (and start!696734 (is-Cons!69371 zl!333)) b!7145771))

(assert (= (and start!696734 (is-ElementMatch!18208 r!7278)) b!7145764))

(assert (= (and start!696734 (is-Concat!27053 r!7278)) b!7145772))

(assert (= (and start!696734 (is-Star!18208 r!7278)) b!7145770))

(assert (= (and start!696734 (is-Union!18208 r!7278)) b!7145767))

(declare-fun m!7859030 () Bool)

(assert (=> b!7145765 m!7859030))

(declare-fun m!7859032 () Bool)

(assert (=> start!696734 m!7859032))

(assert (=> start!696734 m!7859032))

(declare-fun m!7859034 () Bool)

(assert (=> start!696734 m!7859034))

(declare-fun m!7859036 () Bool)

(assert (=> b!7145768 m!7859036))

(assert (=> b!7145768 m!7859036))

(declare-fun m!7859038 () Bool)

(assert (=> b!7145768 m!7859038))

(declare-fun m!7859040 () Bool)

(assert (=> b!7145771 m!7859040))

(push 1)

(assert (not start!696734))

(assert tp_is_empty!46053)

(assert (not b!7145772))

(assert (not b!7145771))

(assert (not b!7145765))

(assert (not b!7145767))

(assert (not b!7145768))

(assert (not b!7145766))

(assert (not b!7145770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

