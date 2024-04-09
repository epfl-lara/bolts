; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138270 () Bool)

(assert start!138270)

(declare-fun res!1082788 () Bool)

(declare-fun e!885113 () Bool)

(assert (=> start!138270 (=> (not res!1082788) (not e!885113))))

(declare-datatypes ((B!2980 0))(
  ( (B!2981 (val!19852 Int)) )
))
(declare-datatypes ((tuple2!26036 0))(
  ( (tuple2!26037 (_1!13028 (_ BitVec 64)) (_2!13028 B!2980)) )
))
(declare-datatypes ((List!37133 0))(
  ( (Nil!37130) (Cons!37129 (h!38673 tuple2!26036) (t!52060 List!37133)) )
))
(declare-fun l!556 () List!37133)

(declare-fun isStrictlySorted!1192 (List!37133) Bool)

(assert (=> start!138270 (= res!1082788 (isStrictlySorted!1192 l!556))))

(assert (=> start!138270 e!885113))

(declare-fun e!885114 () Bool)

(assert (=> start!138270 e!885114))

(assert (=> start!138270 true))

(declare-fun b!1585275 () Bool)

(declare-fun res!1082789 () Bool)

(assert (=> b!1585275 (=> (not res!1082789) (not e!885113))))

(declare-fun newKey!21 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1585275 (= res!1082789 (and ((_ is Cons!37129) l!556) (bvslt (_1!13028 (h!38673 l!556)) newKey!21)))))

(declare-fun b!1585276 () Bool)

(declare-fun ListPrimitiveSize!227 (List!37133) Int)

(assert (=> b!1585276 (= e!885113 (>= (ListPrimitiveSize!227 (t!52060 l!556)) (ListPrimitiveSize!227 l!556)))))

(declare-fun b!1585277 () Bool)

(declare-fun tp_is_empty!39513 () Bool)

(declare-fun tp!115249 () Bool)

(assert (=> b!1585277 (= e!885114 (and tp_is_empty!39513 tp!115249))))

(assert (= (and start!138270 res!1082788) b!1585275))

(assert (= (and b!1585275 res!1082789) b!1585276))

(assert (= (and start!138270 ((_ is Cons!37129) l!556)) b!1585277))

(declare-fun m!1454199 () Bool)

(assert (=> start!138270 m!1454199))

(declare-fun m!1454201 () Bool)

(assert (=> b!1585276 m!1454201))

(declare-fun m!1454203 () Bool)

(assert (=> b!1585276 m!1454203))

(check-sat (not b!1585276) (not start!138270) (not b!1585277) tp_is_empty!39513)
(check-sat)
(get-model)

(declare-fun d!167641 () Bool)

(declare-fun lt!677293 () Int)

(assert (=> d!167641 (>= lt!677293 0)))

(declare-fun e!885123 () Int)

(assert (=> d!167641 (= lt!677293 e!885123)))

(declare-fun c!146916 () Bool)

(assert (=> d!167641 (= c!146916 ((_ is Nil!37130) (t!52060 l!556)))))

(assert (=> d!167641 (= (ListPrimitiveSize!227 (t!52060 l!556)) lt!677293)))

(declare-fun b!1585291 () Bool)

(assert (=> b!1585291 (= e!885123 0)))

(declare-fun b!1585292 () Bool)

(assert (=> b!1585292 (= e!885123 (+ 1 (ListPrimitiveSize!227 (t!52060 (t!52060 l!556)))))))

(assert (= (and d!167641 c!146916) b!1585291))

(assert (= (and d!167641 (not c!146916)) b!1585292))

(declare-fun m!1454211 () Bool)

(assert (=> b!1585292 m!1454211))

(assert (=> b!1585276 d!167641))

(declare-fun d!167643 () Bool)

(declare-fun lt!677294 () Int)

(assert (=> d!167643 (>= lt!677294 0)))

(declare-fun e!885124 () Int)

(assert (=> d!167643 (= lt!677294 e!885124)))

(declare-fun c!146917 () Bool)

(assert (=> d!167643 (= c!146917 ((_ is Nil!37130) l!556))))

(assert (=> d!167643 (= (ListPrimitiveSize!227 l!556) lt!677294)))

(declare-fun b!1585293 () Bool)

(assert (=> b!1585293 (= e!885124 0)))

(declare-fun b!1585294 () Bool)

(assert (=> b!1585294 (= e!885124 (+ 1 (ListPrimitiveSize!227 (t!52060 l!556))))))

(assert (= (and d!167643 c!146917) b!1585293))

(assert (= (and d!167643 (not c!146917)) b!1585294))

(assert (=> b!1585294 m!1454201))

(assert (=> b!1585276 d!167643))

(declare-fun d!167647 () Bool)

(declare-fun res!1082800 () Bool)

(declare-fun e!885132 () Bool)

(assert (=> d!167647 (=> res!1082800 e!885132)))

(assert (=> d!167647 (= res!1082800 (or ((_ is Nil!37130) l!556) ((_ is Nil!37130) (t!52060 l!556))))))

(assert (=> d!167647 (= (isStrictlySorted!1192 l!556) e!885132)))

(declare-fun b!1585305 () Bool)

(declare-fun e!885133 () Bool)

(assert (=> b!1585305 (= e!885132 e!885133)))

(declare-fun res!1082801 () Bool)

(assert (=> b!1585305 (=> (not res!1082801) (not e!885133))))

(assert (=> b!1585305 (= res!1082801 (bvslt (_1!13028 (h!38673 l!556)) (_1!13028 (h!38673 (t!52060 l!556)))))))

(declare-fun b!1585306 () Bool)

(assert (=> b!1585306 (= e!885133 (isStrictlySorted!1192 (t!52060 l!556)))))

(assert (= (and d!167647 (not res!1082800)) b!1585305))

(assert (= (and b!1585305 res!1082801) b!1585306))

(declare-fun m!1454215 () Bool)

(assert (=> b!1585306 m!1454215))

(assert (=> start!138270 d!167647))

(declare-fun b!1585313 () Bool)

(declare-fun e!885137 () Bool)

(declare-fun tp!115255 () Bool)

(assert (=> b!1585313 (= e!885137 (and tp_is_empty!39513 tp!115255))))

(assert (=> b!1585277 (= tp!115249 e!885137)))

(assert (= (and b!1585277 ((_ is Cons!37129) (t!52060 l!556))) b!1585313))

(check-sat (not b!1585294) (not b!1585292) (not b!1585306) tp_is_empty!39513 (not b!1585313))
(check-sat)
