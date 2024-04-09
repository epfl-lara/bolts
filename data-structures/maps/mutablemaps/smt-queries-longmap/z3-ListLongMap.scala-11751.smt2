; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137928 () Bool)

(assert start!137928)

(declare-fun res!1081648 () Bool)

(declare-fun e!883764 () Bool)

(assert (=> start!137928 (=> (not res!1081648) (not e!883764))))

(declare-datatypes ((B!2848 0))(
  ( (B!2849 (val!19786 Int)) )
))
(declare-datatypes ((tuple2!25904 0))(
  ( (tuple2!25905 (_1!12962 (_ BitVec 64)) (_2!12962 B!2848)) )
))
(declare-datatypes ((List!37067 0))(
  ( (Nil!37064) (Cons!37063 (h!38607 tuple2!25904) (t!51988 List!37067)) )
))
(declare-fun l!548 () List!37067)

(declare-fun isStrictlySorted!1138 (List!37067) Bool)

(assert (=> start!137928 (= res!1081648 (isStrictlySorted!1138 l!548))))

(assert (=> start!137928 e!883764))

(declare-fun e!883763 () Bool)

(assert (=> start!137928 e!883763))

(assert (=> start!137928 true))

(declare-fun b!1583265 () Bool)

(declare-fun res!1081649 () Bool)

(assert (=> b!1583265 (=> (not res!1081649) (not e!883764))))

(declare-fun key!159 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1583265 (= res!1081649 (and (not (= (_1!12962 (h!38607 l!548)) key!159)) ((_ is Cons!37063) l!548)))))

(declare-fun b!1583266 () Bool)

(assert (=> b!1583266 (= e!883764 (not (isStrictlySorted!1138 (t!51988 l!548))))))

(declare-fun b!1583267 () Bool)

(declare-fun tp_is_empty!39381 () Bool)

(declare-fun tp!114937 () Bool)

(assert (=> b!1583267 (= e!883763 (and tp_is_empty!39381 tp!114937))))

(assert (= (and start!137928 res!1081648) b!1583265))

(assert (= (and b!1583265 res!1081649) b!1583266))

(assert (= (and start!137928 ((_ is Cons!37063) l!548)) b!1583267))

(declare-fun m!1453221 () Bool)

(assert (=> start!137928 m!1453221))

(declare-fun m!1453223 () Bool)

(assert (=> b!1583266 m!1453223))

(check-sat (not start!137928) (not b!1583266) (not b!1583267) tp_is_empty!39381)
(check-sat)
(get-model)

(declare-fun d!167165 () Bool)

(declare-fun res!1081666 () Bool)

(declare-fun e!883781 () Bool)

(assert (=> d!167165 (=> res!1081666 e!883781)))

(assert (=> d!167165 (= res!1081666 (or ((_ is Nil!37064) l!548) ((_ is Nil!37064) (t!51988 l!548))))))

(assert (=> d!167165 (= (isStrictlySorted!1138 l!548) e!883781)))

(declare-fun b!1583285 () Bool)

(declare-fun e!883782 () Bool)

(assert (=> b!1583285 (= e!883781 e!883782)))

(declare-fun res!1081667 () Bool)

(assert (=> b!1583285 (=> (not res!1081667) (not e!883782))))

(assert (=> b!1583285 (= res!1081667 (bvslt (_1!12962 (h!38607 l!548)) (_1!12962 (h!38607 (t!51988 l!548)))))))

(declare-fun b!1583286 () Bool)

(assert (=> b!1583286 (= e!883782 (isStrictlySorted!1138 (t!51988 l!548)))))

(assert (= (and d!167165 (not res!1081666)) b!1583285))

(assert (= (and b!1583285 res!1081667) b!1583286))

(assert (=> b!1583286 m!1453223))

(assert (=> start!137928 d!167165))

(declare-fun d!167171 () Bool)

(declare-fun res!1081670 () Bool)

(declare-fun e!883785 () Bool)

(assert (=> d!167171 (=> res!1081670 e!883785)))

(assert (=> d!167171 (= res!1081670 (or ((_ is Nil!37064) (t!51988 l!548)) ((_ is Nil!37064) (t!51988 (t!51988 l!548)))))))

(assert (=> d!167171 (= (isStrictlySorted!1138 (t!51988 l!548)) e!883785)))

(declare-fun b!1583291 () Bool)

(declare-fun e!883786 () Bool)

(assert (=> b!1583291 (= e!883785 e!883786)))

(declare-fun res!1081671 () Bool)

(assert (=> b!1583291 (=> (not res!1081671) (not e!883786))))

(assert (=> b!1583291 (= res!1081671 (bvslt (_1!12962 (h!38607 (t!51988 l!548))) (_1!12962 (h!38607 (t!51988 (t!51988 l!548))))))))

(declare-fun b!1583292 () Bool)

(assert (=> b!1583292 (= e!883786 (isStrictlySorted!1138 (t!51988 (t!51988 l!548))))))

(assert (= (and d!167171 (not res!1081670)) b!1583291))

(assert (= (and b!1583291 res!1081671) b!1583292))

(declare-fun m!1453229 () Bool)

(assert (=> b!1583292 m!1453229))

(assert (=> b!1583266 d!167171))

(declare-fun b!1583303 () Bool)

(declare-fun e!883795 () Bool)

(declare-fun tp!114943 () Bool)

(assert (=> b!1583303 (= e!883795 (and tp_is_empty!39381 tp!114943))))

(assert (=> b!1583267 (= tp!114937 e!883795)))

(assert (= (and b!1583267 ((_ is Cons!37063) (t!51988 l!548))) b!1583303))

(check-sat (not b!1583292) (not b!1583286) (not b!1583303) tp_is_empty!39381)
(check-sat)
