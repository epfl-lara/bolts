; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88092 () Bool)

(assert start!88092)

(declare-fun b!1016138 () Bool)

(assert (=> b!1016138 true))

(assert (=> b!1016138 true))

(declare-fun b!1016137 () Bool)

(declare-fun e!571669 () Bool)

(declare-fun tp_is_empty!23589 () Bool)

(declare-fun tp!70740 () Bool)

(assert (=> b!1016137 (= e!571669 (and tp_is_empty!23589 tp!70740))))

(declare-fun res!681680 () Bool)

(declare-fun e!571670 () Bool)

(assert (=> b!1016138 (=> (not res!681680) (not e!571670))))

(declare-datatypes ((List!21627 0))(
  ( (Nil!21624) (Cons!21623 (h!22821 (_ BitVec 64)) (t!30636 List!21627)) )
))
(declare-fun keys!40 () List!21627)

(declare-fun lambda!1004 () Int)

(declare-fun forall!278 (List!21627 Int) Bool)

(assert (=> b!1016138 (= res!681680 (forall!278 keys!40 lambda!1004))))

(declare-fun b!1016139 () Bool)

(declare-fun res!681679 () Bool)

(assert (=> b!1016139 (=> (not res!681679) (not e!571670))))

(declare-datatypes ((B!1522 0))(
  ( (B!1523 (val!11845 Int)) )
))
(declare-datatypes ((tuple2!15326 0))(
  ( (tuple2!15327 (_1!7673 (_ BitVec 64)) (_2!7673 B!1522)) )
))
(declare-datatypes ((List!21628 0))(
  ( (Nil!21625) (Cons!21624 (h!22822 tuple2!15326) (t!30637 List!21628)) )
))
(declare-fun l!1114 () List!21628)

(declare-fun isEmpty!879 (List!21628) Bool)

(assert (=> b!1016139 (= res!681679 (not (isEmpty!879 l!1114)))))

(declare-fun b!1016140 () Bool)

(declare-fun ListPrimitiveSize!122 (List!21627) Int)

(assert (=> b!1016140 (= e!571670 (< (ListPrimitiveSize!122 keys!40) 0))))

(declare-fun res!681681 () Bool)

(assert (=> start!88092 (=> (not res!681681) (not e!571670))))

(declare-fun isStrictlySorted!609 (List!21628) Bool)

(assert (=> start!88092 (= res!681681 (isStrictlySorted!609 l!1114))))

(assert (=> start!88092 e!571670))

(assert (=> start!88092 e!571669))

(assert (=> start!88092 true))

(assert (=> start!88092 tp_is_empty!23589))

(declare-fun b!1016141 () Bool)

(declare-fun res!681682 () Bool)

(assert (=> b!1016141 (=> (not res!681682) (not e!571670))))

(declare-fun newHead!31 () tuple2!15326)

(declare-fun head!960 (List!21628) tuple2!15326)

(assert (=> b!1016141 (= res!681682 (bvslt (_1!7673 newHead!31) (_1!7673 (head!960 l!1114))))))

(assert (= (and start!88092 res!681681) b!1016139))

(assert (= (and b!1016139 res!681679) b!1016138))

(assert (= (and b!1016138 res!681680) b!1016141))

(assert (= (and b!1016141 res!681682) b!1016140))

(get-info :version)

(assert (= (and start!88092 ((_ is Cons!21624) l!1114)) b!1016137))

(declare-fun m!938083 () Bool)

(assert (=> b!1016141 m!938083))

(declare-fun m!938085 () Bool)

(assert (=> b!1016138 m!938085))

(declare-fun m!938087 () Bool)

(assert (=> b!1016140 m!938087))

(declare-fun m!938089 () Bool)

(assert (=> start!88092 m!938089))

(declare-fun m!938091 () Bool)

(assert (=> b!1016139 m!938091))

(check-sat (not start!88092) (not b!1016140) tp_is_empty!23589 (not b!1016141) (not b!1016137) (not b!1016139) (not b!1016138))
(check-sat)
(get-model)

(declare-fun d!121127 () Bool)

(assert (=> d!121127 (= (head!960 l!1114) (h!22822 l!1114))))

(assert (=> b!1016141 d!121127))

(declare-fun d!121129 () Bool)

(declare-fun res!681703 () Bool)

(declare-fun e!571685 () Bool)

(assert (=> d!121129 (=> res!681703 e!571685)))

(assert (=> d!121129 (= res!681703 (or ((_ is Nil!21625) l!1114) ((_ is Nil!21625) (t!30637 l!1114))))))

(assert (=> d!121129 (= (isStrictlySorted!609 l!1114) e!571685)))

(declare-fun b!1016173 () Bool)

(declare-fun e!571686 () Bool)

(assert (=> b!1016173 (= e!571685 e!571686)))

(declare-fun res!681704 () Bool)

(assert (=> b!1016173 (=> (not res!681704) (not e!571686))))

(assert (=> b!1016173 (= res!681704 (bvslt (_1!7673 (h!22822 l!1114)) (_1!7673 (h!22822 (t!30637 l!1114)))))))

(declare-fun b!1016174 () Bool)

(assert (=> b!1016174 (= e!571686 (isStrictlySorted!609 (t!30637 l!1114)))))

(assert (= (and d!121129 (not res!681703)) b!1016173))

(assert (= (and b!1016173 res!681704) b!1016174))

(declare-fun m!938103 () Bool)

(assert (=> b!1016174 m!938103))

(assert (=> start!88092 d!121129))

(declare-fun d!121133 () Bool)

(declare-fun res!681715 () Bool)

(declare-fun e!571697 () Bool)

(assert (=> d!121133 (=> res!681715 e!571697)))

(assert (=> d!121133 (= res!681715 ((_ is Nil!21624) keys!40))))

(assert (=> d!121133 (= (forall!278 keys!40 lambda!1004) e!571697)))

(declare-fun b!1016185 () Bool)

(declare-fun e!571698 () Bool)

(assert (=> b!1016185 (= e!571697 e!571698)))

(declare-fun res!681716 () Bool)

(assert (=> b!1016185 (=> (not res!681716) (not e!571698))))

(declare-fun dynLambda!1916 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016185 (= res!681716 (dynLambda!1916 lambda!1004 (h!22821 keys!40)))))

(declare-fun b!1016186 () Bool)

(assert (=> b!1016186 (= e!571698 (forall!278 (t!30636 keys!40) lambda!1004))))

(assert (= (and d!121133 (not res!681715)) b!1016185))

(assert (= (and b!1016185 res!681716) b!1016186))

(declare-fun b_lambda!15519 () Bool)

(assert (=> (not b_lambda!15519) (not b!1016185)))

(declare-fun m!938109 () Bool)

(assert (=> b!1016185 m!938109))

(declare-fun m!938111 () Bool)

(assert (=> b!1016186 m!938111))

(assert (=> b!1016138 d!121133))

(declare-fun d!121139 () Bool)

(assert (=> d!121139 (= (isEmpty!879 l!1114) ((_ is Nil!21625) l!1114))))

(assert (=> b!1016139 d!121139))

(declare-fun d!121144 () Bool)

(declare-fun lt!449235 () Int)

(assert (=> d!121144 (>= lt!449235 0)))

(declare-fun e!571710 () Int)

(assert (=> d!121144 (= lt!449235 e!571710)))

(declare-fun c!102867 () Bool)

(assert (=> d!121144 (= c!102867 ((_ is Nil!21624) keys!40))))

(assert (=> d!121144 (= (ListPrimitiveSize!122 keys!40) lt!449235)))

(declare-fun b!1016203 () Bool)

(assert (=> b!1016203 (= e!571710 0)))

(declare-fun b!1016204 () Bool)

(assert (=> b!1016204 (= e!571710 (+ 1 (ListPrimitiveSize!122 (t!30636 keys!40))))))

(assert (= (and d!121144 c!102867) b!1016203))

(assert (= (and d!121144 (not c!102867)) b!1016204))

(declare-fun m!938117 () Bool)

(assert (=> b!1016204 m!938117))

(assert (=> b!1016140 d!121144))

(declare-fun b!1016216 () Bool)

(declare-fun e!571718 () Bool)

(declare-fun tp!70749 () Bool)

(assert (=> b!1016216 (= e!571718 (and tp_is_empty!23589 tp!70749))))

(assert (=> b!1016137 (= tp!70740 e!571718)))

(assert (= (and b!1016137 ((_ is Cons!21624) (t!30637 l!1114))) b!1016216))

(declare-fun b_lambda!15525 () Bool)

(assert (= b_lambda!15519 (or b!1016138 b_lambda!15525)))

(declare-fun bs!29502 () Bool)

(declare-fun d!121157 () Bool)

(assert (= bs!29502 (and d!121157 b!1016138)))

(declare-fun value!178 () B!1522)

(declare-datatypes ((Option!602 0))(
  ( (Some!601 (v!14450 B!1522)) (None!600) )
))
(declare-fun getValueByKey!551 (List!21628 (_ BitVec 64)) Option!602)

(assert (=> bs!29502 (= (dynLambda!1916 lambda!1004 (h!22821 keys!40)) (= (getValueByKey!551 l!1114 (h!22821 keys!40)) (Some!601 value!178)))))

(declare-fun m!938125 () Bool)

(assert (=> bs!29502 m!938125))

(assert (=> b!1016185 d!121157))

(check-sat (not bs!29502) tp_is_empty!23589 (not b!1016204) (not b!1016186) (not b!1016174) (not b_lambda!15525) (not b!1016216))
(check-sat)
