; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1926 () Bool)

(assert start!1926)

(declare-fun res!10291 () Bool)

(declare-fun e!7782 () Bool)

(assert (=> start!1926 (=> (not res!10291) (not e!7782))))

(declare-datatypes ((B!466 0))(
  ( (B!467 (val!331 Int)) )
))
(declare-datatypes ((tuple2!444 0))(
  ( (tuple2!445 (_1!222 (_ BitVec 64)) (_2!222 B!466)) )
))
(declare-datatypes ((List!381 0))(
  ( (Nil!378) (Cons!377 (h!943 tuple2!444) (t!2774 List!381)) )
))
(declare-fun l!522 () List!381)

(declare-fun isStrictlySorted!72 (List!381) Bool)

(assert (=> start!1926 (= res!10291 (isStrictlySorted!72 l!522))))

(assert (=> start!1926 e!7782))

(declare-fun e!7783 () Bool)

(assert (=> start!1926 e!7783))

(declare-fun tp_is_empty!645 () Bool)

(assert (=> start!1926 tp_is_empty!645))

(declare-fun b!12984 () Bool)

(declare-fun res!10290 () Bool)

(assert (=> b!12984 (=> (not res!10290) (not e!7782))))

(declare-fun value!159 () B!466)

(get-info :version)

(assert (=> b!12984 (= res!10290 (and ((_ is Cons!377) l!522) (= (_2!222 (h!943 l!522)) value!159)))))

(declare-fun b!12985 () Bool)

(assert (=> b!12985 (= e!7782 (not (isStrictlySorted!72 (t!2774 l!522))))))

(declare-fun b!12986 () Bool)

(declare-fun tp!2126 () Bool)

(assert (=> b!12986 (= e!7783 (and tp_is_empty!645 tp!2126))))

(assert (= (and start!1926 res!10291) b!12984))

(assert (= (and b!12984 res!10290) b!12985))

(assert (= (and start!1926 ((_ is Cons!377) l!522)) b!12986))

(declare-fun m!8903 () Bool)

(assert (=> start!1926 m!8903))

(declare-fun m!8905 () Bool)

(assert (=> b!12985 m!8905))

(check-sat (not start!1926) (not b!12985) (not b!12986) tp_is_empty!645)
(check-sat)
(get-model)

(declare-fun d!1931 () Bool)

(declare-fun res!10308 () Bool)

(declare-fun e!7800 () Bool)

(assert (=> d!1931 (=> res!10308 e!7800)))

(assert (=> d!1931 (= res!10308 (or ((_ is Nil!378) l!522) ((_ is Nil!378) (t!2774 l!522))))))

(assert (=> d!1931 (= (isStrictlySorted!72 l!522) e!7800)))

(declare-fun b!13006 () Bool)

(declare-fun e!7801 () Bool)

(assert (=> b!13006 (= e!7800 e!7801)))

(declare-fun res!10309 () Bool)

(assert (=> b!13006 (=> (not res!10309) (not e!7801))))

(assert (=> b!13006 (= res!10309 (bvslt (_1!222 (h!943 l!522)) (_1!222 (h!943 (t!2774 l!522)))))))

(declare-fun b!13007 () Bool)

(assert (=> b!13007 (= e!7801 (isStrictlySorted!72 (t!2774 l!522)))))

(assert (= (and d!1931 (not res!10308)) b!13006))

(assert (= (and b!13006 res!10309) b!13007))

(assert (=> b!13007 m!8905))

(assert (=> start!1926 d!1931))

(declare-fun d!1937 () Bool)

(declare-fun res!10312 () Bool)

(declare-fun e!7804 () Bool)

(assert (=> d!1937 (=> res!10312 e!7804)))

(assert (=> d!1937 (= res!10312 (or ((_ is Nil!378) (t!2774 l!522)) ((_ is Nil!378) (t!2774 (t!2774 l!522)))))))

(assert (=> d!1937 (= (isStrictlySorted!72 (t!2774 l!522)) e!7804)))

(declare-fun b!13010 () Bool)

(declare-fun e!7805 () Bool)

(assert (=> b!13010 (= e!7804 e!7805)))

(declare-fun res!10313 () Bool)

(assert (=> b!13010 (=> (not res!10313) (not e!7805))))

(assert (=> b!13010 (= res!10313 (bvslt (_1!222 (h!943 (t!2774 l!522))) (_1!222 (h!943 (t!2774 (t!2774 l!522))))))))

(declare-fun b!13011 () Bool)

(assert (=> b!13011 (= e!7805 (isStrictlySorted!72 (t!2774 (t!2774 l!522))))))

(assert (= (and d!1937 (not res!10312)) b!13010))

(assert (= (and b!13010 res!10313) b!13011))

(declare-fun m!8913 () Bool)

(assert (=> b!13011 m!8913))

(assert (=> b!12985 d!1937))

(declare-fun b!13024 () Bool)

(declare-fun e!7814 () Bool)

(declare-fun tp!2134 () Bool)

(assert (=> b!13024 (= e!7814 (and tp_is_empty!645 tp!2134))))

(assert (=> b!12986 (= tp!2126 e!7814)))

(assert (= (and b!12986 ((_ is Cons!377) (t!2774 l!522))) b!13024))

(check-sat (not b!13007) (not b!13011) (not b!13024) tp_is_empty!645)
(check-sat)
