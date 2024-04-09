; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88492 () Bool)

(assert start!88492)

(declare-fun b!1017591 () Bool)

(declare-fun e!572560 () Bool)

(declare-datatypes ((B!1594 0))(
  ( (B!1595 (val!11881 Int)) )
))
(declare-datatypes ((tuple2!15398 0))(
  ( (tuple2!15399 (_1!7709 (_ BitVec 64)) (_2!7709 B!1594)) )
))
(declare-datatypes ((List!21683 0))(
  ( (Nil!21680) (Cons!21679 (h!22877 tuple2!15398) (t!30692 List!21683)) )
))
(declare-fun l!1036 () List!21683)

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!627 0))(
  ( (Some!626 (v!14475 B!1594)) (None!625) )
))
(declare-fun isDefined!421 (Option!627) Bool)

(declare-fun getValueByKey!576 (List!21683 (_ BitVec 64)) Option!627)

(assert (=> b!1017591 (= e!572560 (not (isDefined!421 (getValueByKey!576 (t!30692 l!1036) key!271))))))

(declare-fun b!1017592 () Bool)

(declare-fun e!572559 () Bool)

(assert (=> b!1017592 (= e!572559 e!572560)))

(declare-fun res!682564 () Bool)

(assert (=> b!1017592 (=> res!682564 e!572560)))

(declare-fun isStrictlySorted!636 (List!21683) Bool)

(assert (=> b!1017592 (= res!682564 (not (isStrictlySorted!636 (t!30692 l!1036))))))

(declare-fun b!1017593 () Bool)

(declare-fun e!572558 () Bool)

(declare-fun tp_is_empty!23661 () Bool)

(declare-fun tp!70922 () Bool)

(assert (=> b!1017593 (= e!572558 (and tp_is_empty!23661 tp!70922))))

(declare-fun b!1017594 () Bool)

(declare-fun res!682566 () Bool)

(assert (=> b!1017594 (=> (not res!682566) (not e!572559))))

(get-info :version)

(assert (=> b!1017594 (= res!682566 (and ((_ is Cons!21679) l!1036) (not (= (_1!7709 (h!22877 l!1036)) key!271))))))

(declare-fun res!682565 () Bool)

(assert (=> start!88492 (=> (not res!682565) (not e!572559))))

(assert (=> start!88492 (= res!682565 (isStrictlySorted!636 l!1036))))

(assert (=> start!88492 e!572559))

(assert (=> start!88492 e!572558))

(assert (=> start!88492 true))

(declare-fun b!1017595 () Bool)

(declare-fun res!682563 () Bool)

(assert (=> b!1017595 (=> (not res!682563) (not e!572559))))

(assert (=> b!1017595 (= res!682563 (isDefined!421 (getValueByKey!576 l!1036 key!271)))))

(assert (= (and start!88492 res!682565) b!1017595))

(assert (= (and b!1017595 res!682563) b!1017594))

(assert (= (and b!1017594 res!682566) b!1017592))

(assert (= (and b!1017592 (not res!682564)) b!1017591))

(assert (= (and start!88492 ((_ is Cons!21679) l!1036)) b!1017593))

(declare-fun m!939011 () Bool)

(assert (=> b!1017591 m!939011))

(assert (=> b!1017591 m!939011))

(declare-fun m!939013 () Bool)

(assert (=> b!1017591 m!939013))

(declare-fun m!939015 () Bool)

(assert (=> b!1017592 m!939015))

(declare-fun m!939017 () Bool)

(assert (=> start!88492 m!939017))

(declare-fun m!939019 () Bool)

(assert (=> b!1017595 m!939019))

(assert (=> b!1017595 m!939019))

(declare-fun m!939021 () Bool)

(assert (=> b!1017595 m!939021))

(check-sat (not b!1017595) (not start!88492) (not b!1017593) (not b!1017592) (not b!1017591) tp_is_empty!23661)
(check-sat)
(get-model)

(declare-fun d!121627 () Bool)

(declare-fun isEmpty!913 (Option!627) Bool)

(assert (=> d!121627 (= (isDefined!421 (getValueByKey!576 l!1036 key!271)) (not (isEmpty!913 (getValueByKey!576 l!1036 key!271))))))

(declare-fun bs!29614 () Bool)

(assert (= bs!29614 d!121627))

(assert (=> bs!29614 m!939019))

(declare-fun m!939035 () Bool)

(assert (=> bs!29614 m!939035))

(assert (=> b!1017595 d!121627))

(declare-fun b!1017628 () Bool)

(declare-fun e!572579 () Option!627)

(assert (=> b!1017628 (= e!572579 None!625)))

(declare-fun d!121629 () Bool)

(declare-fun c!102990 () Bool)

(assert (=> d!121629 (= c!102990 (and ((_ is Cons!21679) l!1036) (= (_1!7709 (h!22877 l!1036)) key!271)))))

(declare-fun e!572578 () Option!627)

(assert (=> d!121629 (= (getValueByKey!576 l!1036 key!271) e!572578)))

(declare-fun b!1017625 () Bool)

(assert (=> b!1017625 (= e!572578 (Some!626 (_2!7709 (h!22877 l!1036))))))

(declare-fun b!1017627 () Bool)

(assert (=> b!1017627 (= e!572579 (getValueByKey!576 (t!30692 l!1036) key!271))))

(declare-fun b!1017626 () Bool)

(assert (=> b!1017626 (= e!572578 e!572579)))

(declare-fun c!102991 () Bool)

(assert (=> b!1017626 (= c!102991 (and ((_ is Cons!21679) l!1036) (not (= (_1!7709 (h!22877 l!1036)) key!271))))))

(assert (= (and d!121629 c!102990) b!1017625))

(assert (= (and d!121629 (not c!102990)) b!1017626))

(assert (= (and b!1017626 c!102991) b!1017627))

(assert (= (and b!1017626 (not c!102991)) b!1017628))

(assert (=> b!1017627 m!939011))

(assert (=> b!1017595 d!121629))

(declare-fun d!121637 () Bool)

(assert (=> d!121637 (= (isDefined!421 (getValueByKey!576 (t!30692 l!1036) key!271)) (not (isEmpty!913 (getValueByKey!576 (t!30692 l!1036) key!271))))))

(declare-fun bs!29616 () Bool)

(assert (= bs!29616 d!121637))

(assert (=> bs!29616 m!939011))

(declare-fun m!939039 () Bool)

(assert (=> bs!29616 m!939039))

(assert (=> b!1017591 d!121637))

(declare-fun b!1017640 () Bool)

(declare-fun e!572587 () Option!627)

(assert (=> b!1017640 (= e!572587 None!625)))

(declare-fun d!121639 () Bool)

(declare-fun c!102996 () Bool)

(assert (=> d!121639 (= c!102996 (and ((_ is Cons!21679) (t!30692 l!1036)) (= (_1!7709 (h!22877 (t!30692 l!1036))) key!271)))))

(declare-fun e!572586 () Option!627)

(assert (=> d!121639 (= (getValueByKey!576 (t!30692 l!1036) key!271) e!572586)))

(declare-fun b!1017637 () Bool)

(assert (=> b!1017637 (= e!572586 (Some!626 (_2!7709 (h!22877 (t!30692 l!1036)))))))

(declare-fun b!1017639 () Bool)

(assert (=> b!1017639 (= e!572587 (getValueByKey!576 (t!30692 (t!30692 l!1036)) key!271))))

(declare-fun b!1017638 () Bool)

(assert (=> b!1017638 (= e!572586 e!572587)))

(declare-fun c!102997 () Bool)

(assert (=> b!1017638 (= c!102997 (and ((_ is Cons!21679) (t!30692 l!1036)) (not (= (_1!7709 (h!22877 (t!30692 l!1036))) key!271))))))

(assert (= (and d!121639 c!102996) b!1017637))

(assert (= (and d!121639 (not c!102996)) b!1017638))

(assert (= (and b!1017638 c!102997) b!1017639))

(assert (= (and b!1017638 (not c!102997)) b!1017640))

(declare-fun m!939041 () Bool)

(assert (=> b!1017639 m!939041))

(assert (=> b!1017591 d!121639))

(declare-fun d!121643 () Bool)

(declare-fun res!682589 () Bool)

(declare-fun e!572600 () Bool)

(assert (=> d!121643 (=> res!682589 e!572600)))

(assert (=> d!121643 (= res!682589 (or ((_ is Nil!21680) (t!30692 l!1036)) ((_ is Nil!21680) (t!30692 (t!30692 l!1036)))))))

(assert (=> d!121643 (= (isStrictlySorted!636 (t!30692 l!1036)) e!572600)))

(declare-fun b!1017661 () Bool)

(declare-fun e!572601 () Bool)

(assert (=> b!1017661 (= e!572600 e!572601)))

(declare-fun res!682590 () Bool)

(assert (=> b!1017661 (=> (not res!682590) (not e!572601))))

(assert (=> b!1017661 (= res!682590 (bvslt (_1!7709 (h!22877 (t!30692 l!1036))) (_1!7709 (h!22877 (t!30692 (t!30692 l!1036))))))))

(declare-fun b!1017662 () Bool)

(assert (=> b!1017662 (= e!572601 (isStrictlySorted!636 (t!30692 (t!30692 l!1036))))))

(assert (= (and d!121643 (not res!682589)) b!1017661))

(assert (= (and b!1017661 res!682590) b!1017662))

(declare-fun m!939049 () Bool)

(assert (=> b!1017662 m!939049))

(assert (=> b!1017592 d!121643))

(declare-fun d!121653 () Bool)

(declare-fun res!682591 () Bool)

(declare-fun e!572602 () Bool)

(assert (=> d!121653 (=> res!682591 e!572602)))

(assert (=> d!121653 (= res!682591 (or ((_ is Nil!21680) l!1036) ((_ is Nil!21680) (t!30692 l!1036))))))

(assert (=> d!121653 (= (isStrictlySorted!636 l!1036) e!572602)))

(declare-fun b!1017663 () Bool)

(declare-fun e!572603 () Bool)

(assert (=> b!1017663 (= e!572602 e!572603)))

(declare-fun res!682592 () Bool)

(assert (=> b!1017663 (=> (not res!682592) (not e!572603))))

(assert (=> b!1017663 (= res!682592 (bvslt (_1!7709 (h!22877 l!1036)) (_1!7709 (h!22877 (t!30692 l!1036)))))))

(declare-fun b!1017664 () Bool)

(assert (=> b!1017664 (= e!572603 (isStrictlySorted!636 (t!30692 l!1036)))))

(assert (= (and d!121653 (not res!682591)) b!1017663))

(assert (= (and b!1017663 res!682592) b!1017664))

(assert (=> b!1017664 m!939015))

(assert (=> start!88492 d!121653))

(declare-fun b!1017673 () Bool)

(declare-fun e!572610 () Bool)

(declare-fun tp!70928 () Bool)

(assert (=> b!1017673 (= e!572610 (and tp_is_empty!23661 tp!70928))))

(assert (=> b!1017593 (= tp!70922 e!572610)))

(assert (= (and b!1017593 ((_ is Cons!21679) (t!30692 l!1036))) b!1017673))

(check-sat (not b!1017627) (not b!1017639) tp_is_empty!23661 (not b!1017673) (not d!121627) (not b!1017662) (not d!121637) (not b!1017664))
(check-sat)
