; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138330 () Bool)

(assert start!138330)

(declare-fun b!1585672 () Bool)

(declare-fun res!1082998 () Bool)

(declare-fun e!885386 () Bool)

(assert (=> b!1585672 (=> res!1082998 e!885386)))

(declare-datatypes ((B!2992 0))(
  ( (B!2993 (val!19858 Int)) )
))
(declare-datatypes ((tuple2!26048 0))(
  ( (tuple2!26049 (_1!13034 (_ BitVec 64)) (_2!13034 B!2992)) )
))
(declare-datatypes ((List!37139 0))(
  ( (Nil!37136) (Cons!37135 (h!38679 tuple2!26048) (t!52069 List!37139)) )
))
(declare-fun lt!677349 () List!37139)

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun containsKey!1011 (List!37139 (_ BitVec 64)) Bool)

(assert (=> b!1585672 (= res!1082998 (not (containsKey!1011 lt!677349 newKey!21)))))

(declare-fun b!1585673 () Bool)

(declare-fun e!885385 () Bool)

(assert (=> b!1585673 (= e!885385 e!885386)))

(declare-fun res!1082996 () Bool)

(assert (=> b!1585673 (=> res!1082996 e!885386)))

(declare-fun isStrictlySorted!1198 (List!37139) Bool)

(assert (=> b!1585673 (= res!1082996 (not (isStrictlySorted!1198 lt!677349)))))

(declare-fun l!556 () List!37139)

(declare-fun lt!677350 () tuple2!26048)

(declare-fun $colon$colon!1044 (List!37139 tuple2!26048) List!37139)

(assert (=> b!1585673 (= lt!677349 ($colon$colon!1044 (t!52069 l!556) lt!677350))))

(declare-fun newValue!21 () B!2992)

(assert (=> b!1585673 (= lt!677350 (tuple2!26049 newKey!21 newValue!21))))

(declare-fun res!1082999 () Bool)

(assert (=> start!138330 (=> (not res!1082999) (not e!885385))))

(assert (=> start!138330 (= res!1082999 (isStrictlySorted!1198 l!556))))

(assert (=> start!138330 e!885385))

(declare-fun e!885387 () Bool)

(assert (=> start!138330 e!885387))

(assert (=> start!138330 true))

(declare-fun tp_is_empty!39525 () Bool)

(assert (=> start!138330 tp_is_empty!39525))

(declare-fun b!1585674 () Bool)

(declare-fun res!1082997 () Bool)

(assert (=> b!1585674 (=> (not res!1082997) (not e!885385))))

(get-info :version)

(assert (=> b!1585674 (= res!1082997 (and (bvsge (_1!13034 (h!38679 l!556)) newKey!21) ((_ is Cons!37135) l!556) (= (_1!13034 (h!38679 l!556)) newKey!21)))))

(declare-fun b!1585675 () Bool)

(declare-fun tp!115288 () Bool)

(assert (=> b!1585675 (= e!885387 (and tp_is_empty!39525 tp!115288))))

(declare-fun b!1585676 () Bool)

(declare-fun contains!10553 (List!37139 tuple2!26048) Bool)

(assert (=> b!1585676 (= e!885386 (not (contains!10553 lt!677349 lt!677350)))))

(assert (= (and start!138330 res!1082999) b!1585674))

(assert (= (and b!1585674 res!1082997) b!1585673))

(assert (= (and b!1585673 (not res!1082996)) b!1585672))

(assert (= (and b!1585672 (not res!1082998)) b!1585676))

(assert (= (and start!138330 ((_ is Cons!37135) l!556)) b!1585675))

(declare-fun m!1454437 () Bool)

(assert (=> b!1585672 m!1454437))

(declare-fun m!1454439 () Bool)

(assert (=> b!1585673 m!1454439))

(declare-fun m!1454441 () Bool)

(assert (=> b!1585673 m!1454441))

(declare-fun m!1454443 () Bool)

(assert (=> start!138330 m!1454443))

(declare-fun m!1454445 () Bool)

(assert (=> b!1585676 m!1454445))

(check-sat (not b!1585672) (not b!1585676) (not b!1585673) tp_is_empty!39525 (not b!1585675) (not start!138330))
(check-sat)
(get-model)

(declare-fun d!167779 () Bool)

(declare-fun lt!677365 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!873 (List!37139) (InoxSet tuple2!26048))

(assert (=> d!167779 (= lt!677365 (select (content!873 lt!677349) lt!677350))))

(declare-fun e!885448 () Bool)

(assert (=> d!167779 (= lt!677365 e!885448)))

(declare-fun res!1083056 () Bool)

(assert (=> d!167779 (=> (not res!1083056) (not e!885448))))

(assert (=> d!167779 (= res!1083056 ((_ is Cons!37135) lt!677349))))

(assert (=> d!167779 (= (contains!10553 lt!677349 lt!677350) lt!677365)))

(declare-fun b!1585746 () Bool)

(declare-fun e!885447 () Bool)

(assert (=> b!1585746 (= e!885448 e!885447)))

(declare-fun res!1083057 () Bool)

(assert (=> b!1585746 (=> res!1083057 e!885447)))

(assert (=> b!1585746 (= res!1083057 (= (h!38679 lt!677349) lt!677350))))

(declare-fun b!1585747 () Bool)

(assert (=> b!1585747 (= e!885447 (contains!10553 (t!52069 lt!677349) lt!677350))))

(assert (= (and d!167779 res!1083056) b!1585746))

(assert (= (and b!1585746 (not res!1083057)) b!1585747))

(declare-fun m!1454481 () Bool)

(assert (=> d!167779 m!1454481))

(declare-fun m!1454483 () Bool)

(assert (=> d!167779 m!1454483))

(declare-fun m!1454485 () Bool)

(assert (=> b!1585747 m!1454485))

(assert (=> b!1585676 d!167779))

(declare-fun d!167781 () Bool)

(declare-fun res!1083062 () Bool)

(declare-fun e!885453 () Bool)

(assert (=> d!167781 (=> res!1083062 e!885453)))

(assert (=> d!167781 (= res!1083062 (and ((_ is Cons!37135) lt!677349) (= (_1!13034 (h!38679 lt!677349)) newKey!21)))))

(assert (=> d!167781 (= (containsKey!1011 lt!677349 newKey!21) e!885453)))

(declare-fun b!1585752 () Bool)

(declare-fun e!885454 () Bool)

(assert (=> b!1585752 (= e!885453 e!885454)))

(declare-fun res!1083063 () Bool)

(assert (=> b!1585752 (=> (not res!1083063) (not e!885454))))

(assert (=> b!1585752 (= res!1083063 (and (or (not ((_ is Cons!37135) lt!677349)) (bvsle (_1!13034 (h!38679 lt!677349)) newKey!21)) ((_ is Cons!37135) lt!677349) (bvslt (_1!13034 (h!38679 lt!677349)) newKey!21)))))

(declare-fun b!1585753 () Bool)

(assert (=> b!1585753 (= e!885454 (containsKey!1011 (t!52069 lt!677349) newKey!21))))

(assert (= (and d!167781 (not res!1083062)) b!1585752))

(assert (= (and b!1585752 res!1083063) b!1585753))

(declare-fun m!1454487 () Bool)

(assert (=> b!1585753 m!1454487))

(assert (=> b!1585672 d!167781))

(declare-fun d!167783 () Bool)

(declare-fun res!1083068 () Bool)

(declare-fun e!885459 () Bool)

(assert (=> d!167783 (=> res!1083068 e!885459)))

(assert (=> d!167783 (= res!1083068 (or ((_ is Nil!37136) l!556) ((_ is Nil!37136) (t!52069 l!556))))))

(assert (=> d!167783 (= (isStrictlySorted!1198 l!556) e!885459)))

(declare-fun b!1585758 () Bool)

(declare-fun e!885460 () Bool)

(assert (=> b!1585758 (= e!885459 e!885460)))

(declare-fun res!1083069 () Bool)

(assert (=> b!1585758 (=> (not res!1083069) (not e!885460))))

(assert (=> b!1585758 (= res!1083069 (bvslt (_1!13034 (h!38679 l!556)) (_1!13034 (h!38679 (t!52069 l!556)))))))

(declare-fun b!1585759 () Bool)

(assert (=> b!1585759 (= e!885460 (isStrictlySorted!1198 (t!52069 l!556)))))

(assert (= (and d!167783 (not res!1083068)) b!1585758))

(assert (= (and b!1585758 res!1083069) b!1585759))

(declare-fun m!1454489 () Bool)

(assert (=> b!1585759 m!1454489))

(assert (=> start!138330 d!167783))

(declare-fun d!167785 () Bool)

(declare-fun res!1083070 () Bool)

(declare-fun e!885461 () Bool)

(assert (=> d!167785 (=> res!1083070 e!885461)))

(assert (=> d!167785 (= res!1083070 (or ((_ is Nil!37136) lt!677349) ((_ is Nil!37136) (t!52069 lt!677349))))))

(assert (=> d!167785 (= (isStrictlySorted!1198 lt!677349) e!885461)))

(declare-fun b!1585760 () Bool)

(declare-fun e!885462 () Bool)

(assert (=> b!1585760 (= e!885461 e!885462)))

(declare-fun res!1083071 () Bool)

(assert (=> b!1585760 (=> (not res!1083071) (not e!885462))))

(assert (=> b!1585760 (= res!1083071 (bvslt (_1!13034 (h!38679 lt!677349)) (_1!13034 (h!38679 (t!52069 lt!677349)))))))

(declare-fun b!1585761 () Bool)

(assert (=> b!1585761 (= e!885462 (isStrictlySorted!1198 (t!52069 lt!677349)))))

(assert (= (and d!167785 (not res!1083070)) b!1585760))

(assert (= (and b!1585760 res!1083071) b!1585761))

(declare-fun m!1454491 () Bool)

(assert (=> b!1585761 m!1454491))

(assert (=> b!1585673 d!167785))

(declare-fun d!167787 () Bool)

(assert (=> d!167787 (= ($colon$colon!1044 (t!52069 l!556) lt!677350) (Cons!37135 lt!677350 (t!52069 l!556)))))

(assert (=> b!1585673 d!167787))

(declare-fun b!1585766 () Bool)

(declare-fun e!885465 () Bool)

(declare-fun tp!115300 () Bool)

(assert (=> b!1585766 (= e!885465 (and tp_is_empty!39525 tp!115300))))

(assert (=> b!1585675 (= tp!115288 e!885465)))

(assert (= (and b!1585675 ((_ is Cons!37135) (t!52069 l!556))) b!1585766))

(check-sat (not d!167779) (not b!1585747) (not b!1585753) (not b!1585766) (not b!1585761) tp_is_empty!39525 (not b!1585759))
(check-sat)
