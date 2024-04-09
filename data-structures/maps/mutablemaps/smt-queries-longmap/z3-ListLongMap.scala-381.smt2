; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7206 () Bool)

(assert start!7206)

(declare-fun res!26976 () Bool)

(declare-fun e!29396 () Bool)

(assert (=> start!7206 (=> (not res!26976) (not e!29396))))

(declare-datatypes ((B!868 0))(
  ( (B!869 (val!1021 Int)) )
))
(declare-datatypes ((tuple2!1694 0))(
  ( (tuple2!1695 (_1!857 (_ BitVec 64)) (_2!857 B!868)) )
))
(declare-datatypes ((List!1255 0))(
  ( (Nil!1252) (Cons!1251 (h!1831 tuple2!1694) (t!4288 List!1255)) )
))
(declare-fun l!812 () List!1255)

(declare-fun isStrictlySorted!226 (List!1255) Bool)

(assert (=> start!7206 (= res!26976 (isStrictlySorted!226 l!812))))

(assert (=> start!7206 e!29396))

(declare-fun e!29395 () Bool)

(assert (=> start!7206 e!29395))

(assert (=> start!7206 true))

(declare-fun b!46148 () Bool)

(declare-fun res!26977 () Bool)

(assert (=> b!46148 (=> (not res!26977) (not e!29396))))

(get-info :version)

(assert (=> b!46148 (= res!26977 (not ((_ is Cons!1251) l!812)))))

(declare-fun b!46149 () Bool)

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!41 (List!1255 (_ BitVec 64)) List!1255)

(assert (=> b!46149 (= e!29396 (not (isStrictlySorted!226 (removeStrictlySorted!41 l!812 key2!27))))))

(declare-fun b!46150 () Bool)

(declare-fun tp_is_empty!1965 () Bool)

(declare-fun tp!6068 () Bool)

(assert (=> b!46150 (= e!29395 (and tp_is_empty!1965 tp!6068))))

(assert (= (and start!7206 res!26976) b!46148))

(assert (= (and b!46148 res!26977) b!46149))

(assert (= (and start!7206 ((_ is Cons!1251) l!812)) b!46150))

(declare-fun m!40653 () Bool)

(assert (=> start!7206 m!40653))

(declare-fun m!40655 () Bool)

(assert (=> b!46149 m!40655))

(assert (=> b!46149 m!40655))

(declare-fun m!40657 () Bool)

(assert (=> b!46149 m!40657))

(check-sat (not b!46149) (not start!7206) (not b!46150) tp_is_empty!1965)
(check-sat)
(get-model)

(declare-fun d!9057 () Bool)

(declare-fun res!26997 () Bool)

(declare-fun e!29417 () Bool)

(assert (=> d!9057 (=> res!26997 e!29417)))

(assert (=> d!9057 (= res!26997 (or ((_ is Nil!1252) (removeStrictlySorted!41 l!812 key2!27)) ((_ is Nil!1252) (t!4288 (removeStrictlySorted!41 l!812 key2!27)))))))

(assert (=> d!9057 (= (isStrictlySorted!226 (removeStrictlySorted!41 l!812 key2!27)) e!29417)))

(declare-fun b!46174 () Bool)

(declare-fun e!29419 () Bool)

(assert (=> b!46174 (= e!29417 e!29419)))

(declare-fun res!26999 () Bool)

(assert (=> b!46174 (=> (not res!26999) (not e!29419))))

(assert (=> b!46174 (= res!26999 (bvslt (_1!857 (h!1831 (removeStrictlySorted!41 l!812 key2!27))) (_1!857 (h!1831 (t!4288 (removeStrictlySorted!41 l!812 key2!27))))))))

(declare-fun b!46175 () Bool)

(assert (=> b!46175 (= e!29419 (isStrictlySorted!226 (t!4288 (removeStrictlySorted!41 l!812 key2!27))))))

(assert (= (and d!9057 (not res!26997)) b!46174))

(assert (= (and b!46174 res!26999) b!46175))

(declare-fun m!40667 () Bool)

(assert (=> b!46175 m!40667))

(assert (=> b!46149 d!9057))

(declare-fun b!46208 () Bool)

(declare-fun e!29442 () List!1255)

(declare-fun e!29440 () List!1255)

(assert (=> b!46208 (= e!29442 e!29440)))

(declare-fun c!6258 () Bool)

(assert (=> b!46208 (= c!6258 (and ((_ is Cons!1251) l!812) (not (= (_1!857 (h!1831 l!812)) key2!27))))))

(declare-fun b!46209 () Bool)

(declare-fun $colon$colon!40 (List!1255 tuple2!1694) List!1255)

(assert (=> b!46209 (= e!29440 ($colon$colon!40 (removeStrictlySorted!41 (t!4288 l!812) key2!27) (h!1831 l!812)))))

(declare-fun b!46210 () Bool)

(assert (=> b!46210 (= e!29440 Nil!1252)))

(declare-fun b!46211 () Bool)

(assert (=> b!46211 (= e!29442 (t!4288 l!812))))

(declare-fun b!46212 () Bool)

(declare-fun e!29439 () Bool)

(declare-fun lt!20286 () List!1255)

(declare-fun containsKey!87 (List!1255 (_ BitVec 64)) Bool)

(assert (=> b!46212 (= e!29439 (not (containsKey!87 lt!20286 key2!27)))))

(declare-fun d!9061 () Bool)

(assert (=> d!9061 e!29439))

(declare-fun res!27008 () Bool)

(assert (=> d!9061 (=> (not res!27008) (not e!29439))))

(assert (=> d!9061 (= res!27008 (isStrictlySorted!226 lt!20286))))

(assert (=> d!9061 (= lt!20286 e!29442)))

(declare-fun c!6256 () Bool)

(assert (=> d!9061 (= c!6256 (and ((_ is Cons!1251) l!812) (= (_1!857 (h!1831 l!812)) key2!27)))))

(assert (=> d!9061 (isStrictlySorted!226 l!812)))

(assert (=> d!9061 (= (removeStrictlySorted!41 l!812 key2!27) lt!20286)))

(assert (= (and d!9061 c!6256) b!46211))

(assert (= (and d!9061 (not c!6256)) b!46208))

(assert (= (and b!46208 c!6258) b!46209))

(assert (= (and b!46208 (not c!6258)) b!46210))

(assert (= (and d!9061 res!27008) b!46212))

(declare-fun m!40673 () Bool)

(assert (=> b!46209 m!40673))

(assert (=> b!46209 m!40673))

(declare-fun m!40681 () Bool)

(assert (=> b!46209 m!40681))

(declare-fun m!40685 () Bool)

(assert (=> b!46212 m!40685))

(declare-fun m!40689 () Bool)

(assert (=> d!9061 m!40689))

(assert (=> d!9061 m!40653))

(assert (=> b!46149 d!9061))

(declare-fun d!9067 () Bool)

(declare-fun res!27012 () Bool)

(declare-fun e!29449 () Bool)

(assert (=> d!9067 (=> res!27012 e!29449)))

(assert (=> d!9067 (= res!27012 (or ((_ is Nil!1252) l!812) ((_ is Nil!1252) (t!4288 l!812))))))

(assert (=> d!9067 (= (isStrictlySorted!226 l!812) e!29449)))

(declare-fun b!46224 () Bool)

(declare-fun e!29451 () Bool)

(assert (=> b!46224 (= e!29449 e!29451)))

(declare-fun res!27014 () Bool)

(assert (=> b!46224 (=> (not res!27014) (not e!29451))))

(assert (=> b!46224 (= res!27014 (bvslt (_1!857 (h!1831 l!812)) (_1!857 (h!1831 (t!4288 l!812)))))))

(declare-fun b!46226 () Bool)

(assert (=> b!46226 (= e!29451 (isStrictlySorted!226 (t!4288 l!812)))))

(assert (= (and d!9067 (not res!27012)) b!46224))

(assert (= (and b!46224 res!27014) b!46226))

(declare-fun m!40697 () Bool)

(assert (=> b!46226 m!40697))

(assert (=> start!7206 d!9067))

(declare-fun b!46242 () Bool)

(declare-fun e!29461 () Bool)

(declare-fun tp!6079 () Bool)

(assert (=> b!46242 (= e!29461 (and tp_is_empty!1965 tp!6079))))

(assert (=> b!46150 (= tp!6068 e!29461)))

(assert (= (and b!46150 ((_ is Cons!1251) (t!4288 l!812))) b!46242))

(check-sat (not b!46175) (not b!46212) (not b!46209) (not d!9061) (not b!46242) (not b!46226) tp_is_empty!1965)
(check-sat)
