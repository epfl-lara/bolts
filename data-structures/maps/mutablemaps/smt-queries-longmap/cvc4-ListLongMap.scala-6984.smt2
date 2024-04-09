; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88584 () Bool)

(assert start!88584)

(declare-fun b!1018072 () Bool)

(declare-fun e!572839 () Bool)

(declare-fun tp_is_empty!23681 () Bool)

(declare-fun tp!70979 () Bool)

(assert (=> b!1018072 (= e!572839 (and tp_is_empty!23681 tp!70979))))

(declare-fun res!682799 () Bool)

(declare-fun e!572838 () Bool)

(assert (=> start!88584 (=> (not res!682799) (not e!572838))))

(declare-datatypes ((B!1614 0))(
  ( (B!1615 (val!11891 Int)) )
))
(declare-datatypes ((tuple2!15418 0))(
  ( (tuple2!15419 (_1!7719 (_ BitVec 64)) (_2!7719 B!1614)) )
))
(declare-datatypes ((List!21693 0))(
  ( (Nil!21690) (Cons!21689 (h!22887 tuple2!15418) (t!30702 List!21693)) )
))
(declare-fun l!1036 () List!21693)

(declare-fun isStrictlySorted!646 (List!21693) Bool)

(assert (=> start!88584 (= res!682799 (isStrictlySorted!646 l!1036))))

(assert (=> start!88584 e!572838))

(assert (=> start!88584 e!572839))

(assert (=> start!88584 true))

(declare-fun b!1018070 () Bool)

(declare-fun res!682800 () Bool)

(assert (=> b!1018070 (=> (not res!682800) (not e!572838))))

(declare-fun key!271 () (_ BitVec 64))

(assert (=> b!1018070 (= res!682800 (or (not (is-Cons!21689 l!1036)) (= (_1!7719 (h!22887 l!1036)) key!271)))))

(declare-fun b!1018069 () Bool)

(declare-fun res!682798 () Bool)

(assert (=> b!1018069 (=> (not res!682798) (not e!572838))))

(declare-datatypes ((Option!637 0))(
  ( (Some!636 (v!14485 B!1614)) (None!635) )
))
(declare-fun isDefined!431 (Option!637) Bool)

(declare-fun getValueByKey!586 (List!21693 (_ BitVec 64)) Option!637)

(assert (=> b!1018069 (= res!682798 (isDefined!431 (getValueByKey!586 l!1036 key!271)))))

(declare-fun b!1018071 () Bool)

(declare-fun containsKey!511 (List!21693 (_ BitVec 64)) Bool)

(assert (=> b!1018071 (= e!572838 (not (containsKey!511 l!1036 key!271)))))

(assert (= (and start!88584 res!682799) b!1018069))

(assert (= (and b!1018069 res!682798) b!1018070))

(assert (= (and b!1018070 res!682800) b!1018071))

(assert (= (and start!88584 (is-Cons!21689 l!1036)) b!1018072))

(declare-fun m!939243 () Bool)

(assert (=> start!88584 m!939243))

(declare-fun m!939245 () Bool)

(assert (=> b!1018069 m!939245))

(assert (=> b!1018069 m!939245))

(declare-fun m!939247 () Bool)

(assert (=> b!1018069 m!939247))

(declare-fun m!939249 () Bool)

(assert (=> b!1018071 m!939249))

(push 1)

(assert (not b!1018072))

(assert (not start!88584))

(assert (not b!1018071))

(assert tp_is_empty!23681)

(assert (not b!1018069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121775 () Bool)

(declare-fun isEmpty!923 (Option!637) Bool)

(assert (=> d!121775 (= (isDefined!431 (getValueByKey!586 l!1036 key!271)) (not (isEmpty!923 (getValueByKey!586 l!1036 key!271))))))

(declare-fun bs!29642 () Bool)

(assert (= bs!29642 d!121775))

(assert (=> bs!29642 m!939245))

(declare-fun m!939253 () Bool)

(assert (=> bs!29642 m!939253))

(assert (=> b!1018069 d!121775))

(declare-fun b!1018108 () Bool)

(declare-fun e!572863 () Option!637)

(assert (=> b!1018108 (= e!572863 None!635)))

(declare-fun b!1018106 () Bool)

(declare-fun e!572862 () Option!637)

(assert (=> b!1018106 (= e!572862 e!572863)))

(declare-fun c!103081 () Bool)

(assert (=> b!1018106 (= c!103081 (and (is-Cons!21689 l!1036) (not (= (_1!7719 (h!22887 l!1036)) key!271))))))

(declare-fun d!121779 () Bool)

(declare-fun c!103080 () Bool)

(assert (=> d!121779 (= c!103080 (and (is-Cons!21689 l!1036) (= (_1!7719 (h!22887 l!1036)) key!271)))))

(assert (=> d!121779 (= (getValueByKey!586 l!1036 key!271) e!572862)))

(declare-fun b!1018107 () Bool)

(assert (=> b!1018107 (= e!572863 (getValueByKey!586 (t!30702 l!1036) key!271))))

(declare-fun b!1018105 () Bool)

(assert (=> b!1018105 (= e!572862 (Some!636 (_2!7719 (h!22887 l!1036))))))

(assert (= (and d!121779 c!103080) b!1018105))

(assert (= (and d!121779 (not c!103080)) b!1018106))

(assert (= (and b!1018106 c!103081) b!1018107))

(assert (= (and b!1018106 (not c!103081)) b!1018108))

(declare-fun m!939263 () Bool)

(assert (=> b!1018107 m!939263))

(assert (=> b!1018069 d!121779))

(declare-fun d!121789 () Bool)

(declare-fun res!682821 () Bool)

(declare-fun e!572876 () Bool)

(assert (=> d!121789 (=> res!682821 e!572876)))

(assert (=> d!121789 (= res!682821 (and (is-Cons!21689 l!1036) (= (_1!7719 (h!22887 l!1036)) key!271)))))

(assert (=> d!121789 (= (containsKey!511 l!1036 key!271) e!572876)))

(declare-fun b!1018125 () Bool)

(declare-fun e!572877 () Bool)

(assert (=> b!1018125 (= e!572876 e!572877)))

(declare-fun res!682822 () Bool)

(assert (=> b!1018125 (=> (not res!682822) (not e!572877))))

(assert (=> b!1018125 (= res!682822 (and (or (not (is-Cons!21689 l!1036)) (bvsle (_1!7719 (h!22887 l!1036)) key!271)) (is-Cons!21689 l!1036) (bvslt (_1!7719 (h!22887 l!1036)) key!271)))))

(declare-fun b!1018126 () Bool)

(assert (=> b!1018126 (= e!572877 (containsKey!511 (t!30702 l!1036) key!271))))

(assert (= (and d!121789 (not res!682821)) b!1018125))

(assert (= (and b!1018125 res!682822) b!1018126))

(declare-fun m!939265 () Bool)

(assert (=> b!1018126 m!939265))

(assert (=> b!1018071 d!121789))

(declare-fun d!121791 () Bool)

(declare-fun res!682835 () Bool)

(declare-fun e!572895 () Bool)

(assert (=> d!121791 (=> res!682835 e!572895)))

(assert (=> d!121791 (= res!682835 (or (is-Nil!21690 l!1036) (is-Nil!21690 (t!30702 l!1036))))))

(assert (=> d!121791 (= (isStrictlySorted!646 l!1036) e!572895)))

(declare-fun b!1018148 () Bool)

(declare-fun e!572896 () Bool)

(assert (=> b!1018148 (= e!572895 e!572896)))

(declare-fun res!682836 () Bool)

(assert (=> b!1018148 (=> (not res!682836) (not e!572896))))

(assert (=> b!1018148 (= res!682836 (bvslt (_1!7719 (h!22887 l!1036)) (_1!7719 (h!22887 (t!30702 l!1036)))))))

(declare-fun b!1018149 () Bool)

(assert (=> b!1018149 (= e!572896 (isStrictlySorted!646 (t!30702 l!1036)))))

(assert (= (and d!121791 (not res!682835)) b!1018148))

(assert (= (and b!1018148 res!682836) b!1018149))

(declare-fun m!939273 () Bool)

(assert (=> b!1018149 m!939273))

(assert (=> start!88584 d!121791))

(declare-fun b!1018159 () Bool)

(declare-fun e!572902 () Bool)

(declare-fun tp!70988 () Bool)

(assert (=> b!1018159 (= e!572902 (and tp_is_empty!23681 tp!70988))))

(assert (=> b!1018072 (= tp!70979 e!572902)))

(assert (= (and b!1018072 (is-Cons!21689 (t!30702 l!1036))) b!1018159))

(push 1)

(assert (not b!1018149))

(assert (not b!1018126))

(assert (not b!1018159))

(assert (not b!1018107))

(assert tp_is_empty!23681)

(assert (not d!121775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121811 () Bool)

(assert (=> d!121811 (= (isEmpty!923 (getValueByKey!586 l!1036 key!271)) (not (is-Some!636 (getValueByKey!586 l!1036 key!271))))))

(assert (=> d!121775 d!121811))

(declare-fun d!121813 () Bool)

(declare-fun res!682845 () Bool)

(declare-fun e!572917 () Bool)

(assert (=> d!121813 (=> res!682845 e!572917)))

(assert (=> d!121813 (= res!682845 (or (is-Nil!21690 (t!30702 l!1036)) (is-Nil!21690 (t!30702 (t!30702 l!1036)))))))

(assert (=> d!121813 (= (isStrictlySorted!646 (t!30702 l!1036)) e!572917)))

(declare-fun b!1018178 () Bool)

