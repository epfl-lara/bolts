; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7208 () Bool)

(assert start!7208)

(declare-fun res!26982 () Bool)

(declare-fun e!29402 () Bool)

(assert (=> start!7208 (=> (not res!26982) (not e!29402))))

(declare-datatypes ((B!870 0))(
  ( (B!871 (val!1022 Int)) )
))
(declare-datatypes ((tuple2!1696 0))(
  ( (tuple2!1697 (_1!858 (_ BitVec 64)) (_2!858 B!870)) )
))
(declare-datatypes ((List!1256 0))(
  ( (Nil!1253) (Cons!1252 (h!1832 tuple2!1696) (t!4289 List!1256)) )
))
(declare-fun l!812 () List!1256)

(declare-fun isStrictlySorted!227 (List!1256) Bool)

(assert (=> start!7208 (= res!26982 (isStrictlySorted!227 l!812))))

(assert (=> start!7208 e!29402))

(declare-fun e!29401 () Bool)

(assert (=> start!7208 e!29401))

(assert (=> start!7208 true))

(declare-fun b!46157 () Bool)

(declare-fun res!26983 () Bool)

(assert (=> b!46157 (=> (not res!26983) (not e!29402))))

(assert (=> b!46157 (= res!26983 (not (is-Cons!1252 l!812)))))

(declare-fun b!46158 () Bool)

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!42 (List!1256 (_ BitVec 64)) List!1256)

(assert (=> b!46158 (= e!29402 (not (isStrictlySorted!227 (removeStrictlySorted!42 l!812 key2!27))))))

(declare-fun b!46159 () Bool)

(declare-fun tp_is_empty!1967 () Bool)

(declare-fun tp!6071 () Bool)

(assert (=> b!46159 (= e!29401 (and tp_is_empty!1967 tp!6071))))

(assert (= (and start!7208 res!26982) b!46157))

(assert (= (and b!46157 res!26983) b!46158))

(assert (= (and start!7208 (is-Cons!1252 l!812)) b!46159))

(declare-fun m!40659 () Bool)

(assert (=> start!7208 m!40659))

(declare-fun m!40661 () Bool)

(assert (=> b!46158 m!40661))

(assert (=> b!46158 m!40661))

(declare-fun m!40663 () Bool)

(assert (=> b!46158 m!40663))

(push 1)

(assert (not b!46158))

(assert (not start!7208))

(assert (not b!46159))

(assert tp_is_empty!1967)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9054 () Bool)

(declare-fun res!26996 () Bool)

(declare-fun e!29415 () Bool)

(assert (=> d!9054 (=> res!26996 e!29415)))

(assert (=> d!9054 (= res!26996 (or (is-Nil!1253 (removeStrictlySorted!42 l!812 key2!27)) (is-Nil!1253 (t!4289 (removeStrictlySorted!42 l!812 key2!27)))))))

(assert (=> d!9054 (= (isStrictlySorted!227 (removeStrictlySorted!42 l!812 key2!27)) e!29415)))

(declare-fun b!46172 () Bool)

(declare-fun e!29418 () Bool)

(assert (=> b!46172 (= e!29415 e!29418)))

(declare-fun res!26998 () Bool)

(assert (=> b!46172 (=> (not res!26998) (not e!29418))))

(assert (=> b!46172 (= res!26998 (bvslt (_1!858 (h!1832 (removeStrictlySorted!42 l!812 key2!27))) (_1!858 (h!1832 (t!4289 (removeStrictlySorted!42 l!812 key2!27))))))))

(declare-fun b!46173 () Bool)

(assert (=> b!46173 (= e!29418 (isStrictlySorted!227 (t!4289 (removeStrictlySorted!42 l!812 key2!27))))))

(assert (= (and d!9054 (not res!26996)) b!46172))

(assert (= (and b!46172 res!26998) b!46173))

(declare-fun m!40665 () Bool)

(assert (=> b!46173 m!40665))

(assert (=> b!46158 d!9054))

(declare-fun b!46219 () Bool)

(declare-fun e!29446 () Bool)

(declare-fun lt!20288 () List!1256)

(declare-fun containsKey!86 (List!1256 (_ BitVec 64)) Bool)

(assert (=> b!46219 (= e!29446 (not (containsKey!86 lt!20288 key2!27)))))

(declare-fun b!46220 () Bool)

(declare-fun e!29447 () List!1256)

(declare-fun e!29445 () List!1256)

(assert (=> b!46220 (= e!29447 e!29445)))

(declare-fun c!6260 () Bool)

(assert (=> b!46220 (= c!6260 (and (is-Cons!1252 l!812) (not (= (_1!858 (h!1832 l!812)) key2!27))))))

(declare-fun d!9059 () Bool)

(assert (=> d!9059 e!29446))

(declare-fun res!27010 () Bool)

(assert (=> d!9059 (=> (not res!27010) (not e!29446))))

(assert (=> d!9059 (= res!27010 (isStrictlySorted!227 lt!20288))))

(assert (=> d!9059 (= lt!20288 e!29447)))

(declare-fun c!6261 () Bool)

(assert (=> d!9059 (= c!6261 (and (is-Cons!1252 l!812) (= (_1!858 (h!1832 l!812)) key2!27)))))

(assert (=> d!9059 (isStrictlySorted!227 l!812)))

(assert (=> d!9059 (= (removeStrictlySorted!42 l!812 key2!27) lt!20288)))

(declare-fun b!46218 () Bool)

(declare-fun $colon$colon!42 (List!1256 tuple2!1696) List!1256)

(assert (=> b!46218 (= e!29445 ($colon$colon!42 (removeStrictlySorted!42 (t!4289 l!812) key2!27) (h!1832 l!812)))))

(declare-fun b!46221 () Bool)

(assert (=> b!46221 (= e!29447 (t!4289 l!812))))

(declare-fun b!46222 () Bool)

(assert (=> b!46222 (= e!29445 Nil!1253)))

(assert (= (and d!9059 c!6261) b!46221))

(assert (= (and d!9059 (not c!6261)) b!46220))

(assert (= (and b!46220 c!6260) b!46218))

(assert (= (and b!46220 (not c!6260)) b!46222))

(assert (= (and d!9059 res!27010) b!46219))

(declare-fun m!40675 () Bool)

(assert (=> b!46219 m!40675))

(declare-fun m!40679 () Bool)

(assert (=> d!9059 m!40679))

(assert (=> d!9059 m!40659))

(declare-fun m!40687 () Bool)

(assert (=> b!46218 m!40687))

(assert (=> b!46218 m!40687))

(declare-fun m!40693 () Bool)

(assert (=> b!46218 m!40693))

(assert (=> b!46158 d!9059))

(declare-fun d!9069 () Bool)

(declare-fun res!27015 () Bool)

(declare-fun e!29452 () Bool)

(assert (=> d!9069 (=> res!27015 e!29452)))

(assert (=> d!9069 (= res!27015 (or (is-Nil!1253 l!812) (is-Nil!1253 (t!4289 l!812))))))

(assert (=> d!9069 (= (isStrictlySorted!227 l!812) e!29452)))

(declare-fun b!46227 () Bool)

(declare-fun e!29453 () Bool)

(assert (=> b!46227 (= e!29452 e!29453)))

(declare-fun res!27016 () Bool)

(assert (=> b!46227 (=> (not res!27016) (not e!29453))))

(assert (=> b!46227 (= res!27016 (bvslt (_1!858 (h!1832 l!812)) (_1!858 (h!1832 (t!4289 l!812)))))))

(declare-fun b!46228 () Bool)

(assert (=> b!46228 (= e!29453 (isStrictlySorted!227 (t!4289 l!812)))))

(assert (= (and d!9069 (not res!27015)) b!46227))

(assert (= (and b!46227 res!27016) b!46228))

(declare-fun m!40699 () Bool)

(assert (=> b!46228 m!40699))

(assert (=> start!7208 d!9069))

(declare-fun b!46241 () Bool)

(declare-fun e!29460 () Bool)

