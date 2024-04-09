; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134426 () Bool)

(assert start!134426)

(declare-fun b!1569189 () Bool)

(declare-fun res!1072576 () Bool)

(declare-fun e!874781 () Bool)

(assert (=> b!1569189 (=> (not res!1072576) (not e!874781))))

(declare-datatypes ((B!2508 0))(
  ( (B!2509 (val!19616 Int)) )
))
(declare-datatypes ((tuple2!25498 0))(
  ( (tuple2!25499 (_1!12759 (_ BitVec 64)) (_2!12759 B!2508)) )
))
(declare-datatypes ((List!36897 0))(
  ( (Nil!36894) (Cons!36893 (h!38341 tuple2!25498) (t!51812 List!36897)) )
))
(declare-fun l!750 () List!36897)

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(assert (=> b!1569189 (= res!1072576 (or (not (is-Cons!36893 l!750)) (bvsge (_1!12759 (h!38341 l!750)) key1!37) (bvsge (_1!12759 (h!38341 l!750)) key2!21)))))

(declare-fun res!1072577 () Bool)

(assert (=> start!134426 (=> (not res!1072577) (not e!874781))))

(assert (=> start!134426 (= res!1072577 (not (= key1!37 key2!21)))))

(assert (=> start!134426 e!874781))

(assert (=> start!134426 true))

(declare-fun e!874782 () Bool)

(assert (=> start!134426 e!874782))

(declare-fun tp_is_empty!39059 () Bool)

(assert (=> start!134426 tp_is_empty!39059))

(declare-fun b!1569188 () Bool)

(declare-fun res!1072575 () Bool)

(assert (=> b!1569188 (=> (not res!1072575) (not e!874781))))

(declare-fun isStrictlySorted!1004 (List!36897) Bool)

(assert (=> b!1569188 (= res!1072575 (isStrictlySorted!1004 l!750))))

(declare-fun b!1569191 () Bool)

(declare-fun tp!114109 () Bool)

(assert (=> b!1569191 (= e!874782 (and tp_is_empty!39059 tp!114109))))

(declare-fun v1!32 () B!2508)

(declare-fun b!1569190 () Bool)

(declare-fun insertStrictlySorted!591 (List!36897 (_ BitVec 64) B!2508) List!36897)

(assert (=> b!1569190 (= e!874781 (not (isStrictlySorted!1004 (insertStrictlySorted!591 l!750 key1!37 v1!32))))))

(assert (= (and start!134426 res!1072577) b!1569188))

(assert (= (and b!1569188 res!1072575) b!1569189))

(assert (= (and b!1569189 res!1072576) b!1569190))

(assert (= (and start!134426 (is-Cons!36893 l!750)) b!1569191))

(declare-fun m!1443673 () Bool)

(assert (=> b!1569188 m!1443673))

(declare-fun m!1443675 () Bool)

(assert (=> b!1569190 m!1443675))

(assert (=> b!1569190 m!1443675))

(declare-fun m!1443677 () Bool)

(assert (=> b!1569190 m!1443677))

(push 1)

(assert (not b!1569190))

(assert (not b!1569188))

(assert (not b!1569191))

(assert tp_is_empty!39059)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163797 () Bool)

(declare-fun res!1072588 () Bool)

(declare-fun e!874793 () Bool)

(assert (=> d!163797 (=> res!1072588 e!874793)))

(assert (=> d!163797 (= res!1072588 (or (is-Nil!36894 (insertStrictlySorted!591 l!750 key1!37 v1!32)) (is-Nil!36894 (t!51812 (insertStrictlySorted!591 l!750 key1!37 v1!32)))))))

(assert (=> d!163797 (= (isStrictlySorted!1004 (insertStrictlySorted!591 l!750 key1!37 v1!32)) e!874793)))

(declare-fun b!1569202 () Bool)

(declare-fun e!874794 () Bool)

(assert (=> b!1569202 (= e!874793 e!874794)))

(declare-fun res!1072589 () Bool)

(assert (=> b!1569202 (=> (not res!1072589) (not e!874794))))

(assert (=> b!1569202 (= res!1072589 (bvslt (_1!12759 (h!38341 (insertStrictlySorted!591 l!750 key1!37 v1!32))) (_1!12759 (h!38341 (t!51812 (insertStrictlySorted!591 l!750 key1!37 v1!32))))))))

(declare-fun b!1569203 () Bool)

(assert (=> b!1569203 (= e!874794 (isStrictlySorted!1004 (t!51812 (insertStrictlySorted!591 l!750 key1!37 v1!32))))))

(assert (= (and d!163797 (not res!1072588)) b!1569202))

(assert (= (and b!1569202 res!1072589) b!1569203))

(declare-fun m!1443681 () Bool)

(assert (=> b!1569203 m!1443681))

(assert (=> b!1569190 d!163797))

(declare-fun b!1569287 () Bool)

(declare-fun res!1072612 () Bool)

(declare-fun e!874841 () Bool)

(assert (=> b!1569287 (=> (not res!1072612) (not e!874841))))

(declare-fun lt!673227 () List!36897)

(declare-fun containsKey!862 (List!36897 (_ BitVec 64)) Bool)

(assert (=> b!1569287 (= res!1072612 (containsKey!862 lt!673227 key1!37))))

(declare-fun b!1569288 () Bool)

(declare-fun e!874845 () List!36897)

(declare-fun call!72085 () List!36897)

(assert (=> b!1569288 (= e!874845 call!72085)))

(declare-fun b!1569289 () Bool)

(declare-fun e!874843 () List!36897)

(declare-fun e!874844 () List!36897)

(assert (=> b!1569289 (= e!874843 e!874844)))

(declare-fun c!144665 () Bool)

(assert (=> b!1569289 (= c!144665 (and (is-Cons!36893 l!750) (= (_1!12759 (h!38341 l!750)) key1!37)))))

(declare-fun b!1569290 () Bool)

(declare-fun call!72084 () List!36897)

(assert (=> b!1569290 (= e!874844 call!72084)))

(declare-fun bm!72081 () Bool)

(declare-fun call!72086 () List!36897)

(assert (=> bm!72081 (= call!72084 call!72086)))

(declare-fun b!1569291 () Bool)

