; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138360 () Bool)

(assert start!138360)

(declare-fun res!1083093 () Bool)

(declare-fun e!885482 () Bool)

(assert (=> start!138360 (=> (not res!1083093) (not e!885482))))

(declare-datatypes ((B!2998 0))(
  ( (B!2999 (val!19861 Int)) )
))
(declare-datatypes ((tuple2!26054 0))(
  ( (tuple2!26055 (_1!13037 (_ BitVec 64)) (_2!13037 B!2998)) )
))
(declare-datatypes ((List!37142 0))(
  ( (Nil!37139) (Cons!37138 (h!38682 tuple2!26054) (t!52075 List!37142)) )
))
(declare-fun l!556 () List!37142)

(declare-fun isStrictlySorted!1201 (List!37142) Bool)

(assert (=> start!138360 (= res!1083093 (isStrictlySorted!1201 l!556))))

(assert (=> start!138360 e!885482))

(declare-fun e!885481 () Bool)

(assert (=> start!138360 e!885481))

(assert (=> start!138360 true))

(declare-fun tp_is_empty!39531 () Bool)

(assert (=> start!138360 tp_is_empty!39531))

(declare-fun b!1585792 () Bool)

(declare-fun res!1083092 () Bool)

(declare-fun e!885483 () Bool)

(assert (=> b!1585792 (=> res!1083092 e!885483)))

(declare-fun lt!677377 () List!37142)

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun containsKey!1014 (List!37142 (_ BitVec 64)) Bool)

(assert (=> b!1585792 (= res!1083092 (not (containsKey!1014 lt!677377 newKey!21)))))

(declare-fun b!1585793 () Bool)

(declare-fun res!1083095 () Bool)

(assert (=> b!1585793 (=> (not res!1083095) (not e!885482))))

(get-info :version)

(assert (=> b!1585793 (= res!1083095 (and (or (not ((_ is Cons!37138) l!556)) (bvsge (_1!13037 (h!38682 l!556)) newKey!21)) (not (= (_1!13037 (h!38682 l!556)) newKey!21)) ((_ is Cons!37138) l!556) (bvsgt (_1!13037 (h!38682 l!556)) newKey!21)))))

(declare-fun b!1585794 () Bool)

(assert (=> b!1585794 (= e!885482 e!885483)))

(declare-fun res!1083094 () Bool)

(assert (=> b!1585794 (=> res!1083094 e!885483)))

(assert (=> b!1585794 (= res!1083094 (not (isStrictlySorted!1201 lt!677377)))))

(declare-fun lt!677376 () tuple2!26054)

(declare-fun $colon$colon!1047 (List!37142 tuple2!26054) List!37142)

(assert (=> b!1585794 (= lt!677377 ($colon$colon!1047 l!556 lt!677376))))

(declare-fun newValue!21 () B!2998)

(assert (=> b!1585794 (= lt!677376 (tuple2!26055 newKey!21 newValue!21))))

(declare-fun b!1585795 () Bool)

(declare-fun tp!115306 () Bool)

(assert (=> b!1585795 (= e!885481 (and tp_is_empty!39531 tp!115306))))

(declare-fun b!1585796 () Bool)

(declare-fun contains!10556 (List!37142 tuple2!26054) Bool)

(assert (=> b!1585796 (= e!885483 (not (contains!10556 lt!677377 lt!677376)))))

(assert (= (and start!138360 res!1083093) b!1585793))

(assert (= (and b!1585793 res!1083095) b!1585794))

(assert (= (and b!1585794 (not res!1083094)) b!1585792))

(assert (= (and b!1585792 (not res!1083092)) b!1585796))

(assert (= (and start!138360 ((_ is Cons!37138) l!556)) b!1585795))

(declare-fun m!1454503 () Bool)

(assert (=> start!138360 m!1454503))

(declare-fun m!1454505 () Bool)

(assert (=> b!1585792 m!1454505))

(declare-fun m!1454507 () Bool)

(assert (=> b!1585794 m!1454507))

(declare-fun m!1454509 () Bool)

(assert (=> b!1585794 m!1454509))

(declare-fun m!1454511 () Bool)

(assert (=> b!1585796 m!1454511))

(check-sat (not b!1585796) tp_is_empty!39531 (not b!1585794) (not b!1585792) (not start!138360) (not b!1585795))
(check-sat)
(get-model)

(declare-fun d!167791 () Bool)

(declare-fun res!1083112 () Bool)

(declare-fun e!885497 () Bool)

(assert (=> d!167791 (=> res!1083112 e!885497)))

(assert (=> d!167791 (= res!1083112 (or ((_ is Nil!37139) l!556) ((_ is Nil!37139) (t!52075 l!556))))))

(assert (=> d!167791 (= (isStrictlySorted!1201 l!556) e!885497)))

(declare-fun b!1585816 () Bool)

(declare-fun e!885498 () Bool)

(assert (=> b!1585816 (= e!885497 e!885498)))

(declare-fun res!1083113 () Bool)

(assert (=> b!1585816 (=> (not res!1083113) (not e!885498))))

(assert (=> b!1585816 (= res!1083113 (bvslt (_1!13037 (h!38682 l!556)) (_1!13037 (h!38682 (t!52075 l!556)))))))

(declare-fun b!1585817 () Bool)

(assert (=> b!1585817 (= e!885498 (isStrictlySorted!1201 (t!52075 l!556)))))

(assert (= (and d!167791 (not res!1083112)) b!1585816))

(assert (= (and b!1585816 res!1083113) b!1585817))

(declare-fun m!1454523 () Bool)

(assert (=> b!1585817 m!1454523))

(assert (=> start!138360 d!167791))

(declare-fun d!167795 () Bool)

(declare-fun res!1083128 () Bool)

(declare-fun e!885513 () Bool)

(assert (=> d!167795 (=> res!1083128 e!885513)))

(assert (=> d!167795 (= res!1083128 (and ((_ is Cons!37138) lt!677377) (= (_1!13037 (h!38682 lt!677377)) newKey!21)))))

(assert (=> d!167795 (= (containsKey!1014 lt!677377 newKey!21) e!885513)))

(declare-fun b!1585832 () Bool)

(declare-fun e!885514 () Bool)

(assert (=> b!1585832 (= e!885513 e!885514)))

(declare-fun res!1083129 () Bool)

(assert (=> b!1585832 (=> (not res!1083129) (not e!885514))))

(assert (=> b!1585832 (= res!1083129 (and (or (not ((_ is Cons!37138) lt!677377)) (bvsle (_1!13037 (h!38682 lt!677377)) newKey!21)) ((_ is Cons!37138) lt!677377) (bvslt (_1!13037 (h!38682 lt!677377)) newKey!21)))))

(declare-fun b!1585833 () Bool)

(assert (=> b!1585833 (= e!885514 (containsKey!1014 (t!52075 lt!677377) newKey!21))))

(assert (= (and d!167795 (not res!1083128)) b!1585832))

(assert (= (and b!1585832 res!1083129) b!1585833))

(declare-fun m!1454527 () Bool)

(assert (=> b!1585833 m!1454527))

(assert (=> b!1585792 d!167795))

(declare-fun d!167799 () Bool)

(declare-fun res!1083130 () Bool)

(declare-fun e!885515 () Bool)

(assert (=> d!167799 (=> res!1083130 e!885515)))

(assert (=> d!167799 (= res!1083130 (or ((_ is Nil!37139) lt!677377) ((_ is Nil!37139) (t!52075 lt!677377))))))

(assert (=> d!167799 (= (isStrictlySorted!1201 lt!677377) e!885515)))

(declare-fun b!1585834 () Bool)

(declare-fun e!885516 () Bool)

(assert (=> b!1585834 (= e!885515 e!885516)))

(declare-fun res!1083131 () Bool)

(assert (=> b!1585834 (=> (not res!1083131) (not e!885516))))

(assert (=> b!1585834 (= res!1083131 (bvslt (_1!13037 (h!38682 lt!677377)) (_1!13037 (h!38682 (t!52075 lt!677377)))))))

(declare-fun b!1585835 () Bool)

(assert (=> b!1585835 (= e!885516 (isStrictlySorted!1201 (t!52075 lt!677377)))))

(assert (= (and d!167799 (not res!1083130)) b!1585834))

(assert (= (and b!1585834 res!1083131) b!1585835))

(declare-fun m!1454529 () Bool)

(assert (=> b!1585835 m!1454529))

(assert (=> b!1585794 d!167799))

(declare-fun d!167801 () Bool)

(assert (=> d!167801 (= ($colon$colon!1047 l!556 lt!677376) (Cons!37138 lt!677376 l!556))))

(assert (=> b!1585794 d!167801))

(declare-fun d!167807 () Bool)

(declare-fun lt!677389 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!875 (List!37142) (InoxSet tuple2!26054))

(assert (=> d!167807 (= lt!677389 (select (content!875 lt!677377) lt!677376))))

(declare-fun e!885534 () Bool)

(assert (=> d!167807 (= lt!677389 e!885534)))

(declare-fun res!1083146 () Bool)

(assert (=> d!167807 (=> (not res!1083146) (not e!885534))))

(assert (=> d!167807 (= res!1083146 ((_ is Cons!37138) lt!677377))))

(assert (=> d!167807 (= (contains!10556 lt!677377 lt!677376) lt!677389)))

(declare-fun b!1585855 () Bool)

(declare-fun e!885535 () Bool)

(assert (=> b!1585855 (= e!885534 e!885535)))

(declare-fun res!1083147 () Bool)

(assert (=> b!1585855 (=> res!1083147 e!885535)))

(assert (=> b!1585855 (= res!1083147 (= (h!38682 lt!677377) lt!677376))))

(declare-fun b!1585856 () Bool)

(assert (=> b!1585856 (= e!885535 (contains!10556 (t!52075 lt!677377) lt!677376))))

(assert (= (and d!167807 res!1083146) b!1585855))

(assert (= (and b!1585855 (not res!1083147)) b!1585856))

(declare-fun m!1454541 () Bool)

(assert (=> d!167807 m!1454541))

(declare-fun m!1454543 () Bool)

(assert (=> d!167807 m!1454543))

(declare-fun m!1454545 () Bool)

(assert (=> b!1585856 m!1454545))

(assert (=> b!1585796 d!167807))

(declare-fun b!1585861 () Bool)

(declare-fun e!885538 () Bool)

(declare-fun tp!115315 () Bool)

(assert (=> b!1585861 (= e!885538 (and tp_is_empty!39531 tp!115315))))

(assert (=> b!1585795 (= tp!115306 e!885538)))

(assert (= (and b!1585795 ((_ is Cons!37138) (t!52075 l!556))) b!1585861))

(check-sat (not b!1585856) (not b!1585835) (not b!1585833) (not b!1585861) (not d!167807) (not b!1585817) tp_is_empty!39531)
