; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138328 () Bool)

(assert start!138328)

(declare-fun b!1585657 () Bool)

(declare-fun e!885377 () Bool)

(declare-datatypes ((B!2990 0))(
  ( (B!2991 (val!19857 Int)) )
))
(declare-datatypes ((tuple2!26046 0))(
  ( (tuple2!26047 (_1!13033 (_ BitVec 64)) (_2!13033 B!2990)) )
))
(declare-datatypes ((List!37138 0))(
  ( (Nil!37135) (Cons!37134 (h!38678 tuple2!26046) (t!52068 List!37138)) )
))
(declare-fun lt!677344 () List!37138)

(declare-fun lt!677343 () tuple2!26046)

(declare-fun contains!10552 (List!37138 tuple2!26046) Bool)

(assert (=> b!1585657 (= e!885377 (not (contains!10552 lt!677344 lt!677343)))))

(declare-fun b!1585658 () Bool)

(declare-fun e!885376 () Bool)

(assert (=> b!1585658 (= e!885376 e!885377)))

(declare-fun res!1082985 () Bool)

(assert (=> b!1585658 (=> res!1082985 e!885377)))

(declare-fun isStrictlySorted!1197 (List!37138) Bool)

(assert (=> b!1585658 (= res!1082985 (not (isStrictlySorted!1197 lt!677344)))))

(declare-fun l!556 () List!37138)

(declare-fun $colon$colon!1043 (List!37138 tuple2!26046) List!37138)

(assert (=> b!1585658 (= lt!677344 ($colon$colon!1043 (t!52068 l!556) lt!677343))))

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun newValue!21 () B!2990)

(assert (=> b!1585658 (= lt!677343 (tuple2!26047 newKey!21 newValue!21))))

(declare-fun b!1585659 () Bool)

(declare-fun res!1082986 () Bool)

(assert (=> b!1585659 (=> (not res!1082986) (not e!885376))))

(assert (=> b!1585659 (= res!1082986 (and (bvsge (_1!13033 (h!38678 l!556)) newKey!21) (is-Cons!37134 l!556) (= (_1!13033 (h!38678 l!556)) newKey!21)))))

(declare-fun res!1082987 () Bool)

(assert (=> start!138328 (=> (not res!1082987) (not e!885376))))

(assert (=> start!138328 (= res!1082987 (isStrictlySorted!1197 l!556))))

(assert (=> start!138328 e!885376))

(declare-fun e!885378 () Bool)

(assert (=> start!138328 e!885378))

(assert (=> start!138328 true))

(declare-fun tp_is_empty!39523 () Bool)

(assert (=> start!138328 tp_is_empty!39523))

(declare-fun b!1585660 () Bool)

(declare-fun tp!115285 () Bool)

(assert (=> b!1585660 (= e!885378 (and tp_is_empty!39523 tp!115285))))

(declare-fun b!1585661 () Bool)

(declare-fun res!1082984 () Bool)

(assert (=> b!1585661 (=> res!1082984 e!885377)))

(declare-fun containsKey!1010 (List!37138 (_ BitVec 64)) Bool)

(assert (=> b!1585661 (= res!1082984 (not (containsKey!1010 lt!677344 newKey!21)))))

(assert (= (and start!138328 res!1082987) b!1585659))

(assert (= (and b!1585659 res!1082986) b!1585658))

(assert (= (and b!1585658 (not res!1082985)) b!1585661))

(assert (= (and b!1585661 (not res!1082984)) b!1585657))

(assert (= (and start!138328 (is-Cons!37134 l!556)) b!1585660))

(declare-fun m!1454427 () Bool)

(assert (=> b!1585657 m!1454427))

(declare-fun m!1454429 () Bool)

(assert (=> b!1585658 m!1454429))

(declare-fun m!1454431 () Bool)

(assert (=> b!1585658 m!1454431))

(declare-fun m!1454433 () Bool)

(assert (=> start!138328 m!1454433))

(declare-fun m!1454435 () Bool)

(assert (=> b!1585661 m!1454435))

(push 1)

(assert (not b!1585661))

(assert tp_is_empty!39523)

(assert (not start!138328))

(assert (not b!1585657))

(assert (not b!1585660))

(assert (not b!1585658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167761 () Bool)

(declare-fun res!1083024 () Bool)

(declare-fun e!885409 () Bool)

(assert (=> d!167761 (=> res!1083024 e!885409)))

(assert (=> d!167761 (= res!1083024 (and (is-Cons!37134 lt!677344) (= (_1!13033 (h!38678 lt!677344)) newKey!21)))))

(assert (=> d!167761 (= (containsKey!1010 lt!677344 newKey!21) e!885409)))

(declare-fun b!1585702 () Bool)

(declare-fun e!885410 () Bool)

(assert (=> b!1585702 (= e!885409 e!885410)))

(declare-fun res!1083025 () Bool)

(assert (=> b!1585702 (=> (not res!1083025) (not e!885410))))

(assert (=> b!1585702 (= res!1083025 (and (or (not (is-Cons!37134 lt!677344)) (bvsle (_1!13033 (h!38678 lt!677344)) newKey!21)) (is-Cons!37134 lt!677344) (bvslt (_1!13033 (h!38678 lt!677344)) newKey!21)))))

(declare-fun b!1585703 () Bool)

(assert (=> b!1585703 (= e!885410 (containsKey!1010 (t!52068 lt!677344) newKey!21))))

(assert (= (and d!167761 (not res!1083024)) b!1585702))

(assert (= (and b!1585702 res!1083025) b!1585703))

(declare-fun m!1454459 () Bool)

(assert (=> b!1585703 m!1454459))

(assert (=> b!1585661 d!167761))

(declare-fun d!167765 () Bool)

(declare-fun res!1083034 () Bool)

(declare-fun e!885419 () Bool)

(assert (=> d!167765 (=> res!1083034 e!885419)))

(assert (=> d!167765 (= res!1083034 (or (is-Nil!37135 l!556) (is-Nil!37135 (t!52068 l!556))))))

(assert (=> d!167765 (= (isStrictlySorted!1197 l!556) e!885419)))

(declare-fun b!1585714 () Bool)

(declare-fun e!885420 () Bool)

(assert (=> b!1585714 (= e!885419 e!885420)))

(declare-fun res!1083035 () Bool)

(assert (=> b!1585714 (=> (not res!1083035) (not e!885420))))

(assert (=> b!1585714 (= res!1083035 (bvslt (_1!13033 (h!38678 l!556)) (_1!13033 (h!38678 (t!52068 l!556)))))))

(declare-fun b!1585715 () Bool)

(assert (=> b!1585715 (= e!885420 (isStrictlySorted!1197 (t!52068 l!556)))))

(assert (= (and d!167765 (not res!1083034)) b!1585714))

(assert (= (and b!1585714 res!1083035) b!1585715))

(declare-fun m!1454463 () Bool)

(assert (=> b!1585715 m!1454463))

(assert (=> start!138328 d!167765))

(declare-fun d!167769 () Bool)

(declare-fun lt!677362 () Bool)

(declare-fun content!871 (List!37138) (Set tuple2!26046))

(assert (=> d!167769 (= lt!677362 (set.member lt!677343 (content!871 lt!677344)))))

(declare-fun e!885435 () Bool)

(assert (=> d!167769 (= lt!677362 e!885435)))

(declare-fun res!1083048 () Bool)

(assert (=> d!167769 (=> (not res!1083048) (not e!885435))))

(assert (=> d!167769 (= res!1083048 (is-Cons!37134 lt!677344))))

(assert (=> d!167769 (= (contains!10552 lt!677344 lt!677343) lt!677362)))

(declare-fun b!1585732 () Bool)

(declare-fun e!885436 () Bool)

(assert (=> b!1585732 (= e!885435 e!885436)))

(declare-fun res!1083049 () Bool)

(assert (=> b!1585732 (=> res!1083049 e!885436)))

(assert (=> b!1585732 (= res!1083049 (= (h!38678 lt!677344) lt!677343))))

(declare-fun b!1585733 () Bool)

(assert (=> b!1585733 (= e!885436 (contains!10552 (t!52068 lt!677344) lt!677343))))

(assert (= (and d!167769 res!1083048) b!1585732))

(assert (= (and b!1585732 (not res!1083049)) b!1585733))

(declare-fun m!1454473 () Bool)

(assert (=> d!167769 m!1454473))

(declare-fun m!1454475 () Bool)

(assert (=> d!167769 m!1454475))

(declare-fun m!1454477 () Bool)

(assert (=> b!1585733 m!1454477))

(assert (=> b!1585657 d!167769))

(declare-fun d!167775 () Bool)

(declare-fun res!1083050 () Bool)

(declare-fun e!885438 () Bool)

(assert (=> d!167775 (=> res!1083050 e!885438)))

(assert (=> d!167775 (= res!1083050 (or (is-Nil!37135 lt!677344) (is-Nil!37135 (t!52068 lt!677344))))))

(assert (=> d!167775 (= (isStrictlySorted!1197 lt!677344) e!885438)))

(declare-fun b!1585735 () Bool)

(declare-fun e!885439 () Bool)

(assert (=> b!1585735 (= e!885438 e!885439)))

(declare-fun res!1083051 () Bool)

(assert (=> b!1585735 (=> (not res!1083051) (not e!885439))))

(assert (=> b!1585735 (= res!1083051 (bvslt (_1!13033 (h!38678 lt!677344)) (_1!13033 (h!38678 (t!52068 lt!677344)))))))

(declare-fun b!1585736 () Bool)

(assert (=> b!1585736 (= e!885439 (isStrictlySorted!1197 (t!52068 lt!677344)))))

(assert (= (and d!167775 (not res!1083050)) b!1585735))

(assert (= (and b!1585735 res!1083051) b!1585736))

(declare-fun m!1454479 () Bool)

(assert (=> b!1585736 m!1454479))

(assert (=> b!1585658 d!167775))

(declare-fun d!167777 () Bool)

(assert (=> d!167777 (= ($colon$colon!1043 (t!52068 l!556) lt!677343) (Cons!37134 lt!677343 (t!52068 l!556)))))

(assert (=> b!1585658 d!167777))

(declare-fun b!1585741 () Bool)

(declare-fun e!885442 () Bool)

(declare-fun tp!115297 () Bool)

(assert (=> b!1585741 (= e!885442 (and tp_is_empty!39523 tp!115297))))

(assert (=> b!1585660 (= tp!115285 e!885442)))

(assert (= (and b!1585660 (is-Cons!37134 (t!52068 l!556))) b!1585741))

(push 1)

(assert tp_is_empty!39523)

(assert (not b!1585741))

(assert (not d!167769))

(assert (not b!1585736))

(assert (not b!1585703))

(assert (not b!1585733))

(assert (not b!1585715))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

