; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694894 () Bool)

(assert start!694894)

(declare-fun tp!1966152 () Bool)

(declare-fun e!4286807 () Bool)

(declare-datatypes ((C!36470 0))(
  ( (C!36471 (val!28161 Int)) )
))
(declare-datatypes ((Regex!18098 0))(
  ( (ElementMatch!18098 (c!1330354 C!36470)) (Concat!26943 (regOne!36708 Regex!18098) (regTwo!36708 Regex!18098)) (EmptyExpr!18098) (Star!18098 (reg!18427 Regex!18098)) (EmptyLang!18098) (Union!18098 (regOne!36709 Regex!18098) (regTwo!36709 Regex!18098)) )
))
(declare-datatypes ((List!69252 0))(
  ( (Nil!69128) (Cons!69128 (h!75576 Regex!18098) (t!383229 List!69252)) )
))
(declare-datatypes ((Context!14184 0))(
  ( (Context!14185 (exprs!7592 List!69252)) )
))
(declare-fun setElem!52269 () Context!14184)

(declare-fun setRes!52268 () Bool)

(declare-fun setNonEmpty!52268 () Bool)

(declare-fun inv!88277 (Context!14184) Bool)

(assert (=> setNonEmpty!52268 (= setRes!52268 (and tp!1966152 (inv!88277 setElem!52269) e!4286807))))

(declare-fun z2!457 () (Set Context!14184))

(declare-fun setRest!52269 () (Set Context!14184))

(assert (=> setNonEmpty!52268 (= z2!457 (set.union (set.insert setElem!52269 (as set.empty (Set Context!14184))) setRest!52269))))

(declare-fun b!7132996 () Bool)

(declare-fun e!4286801 () Bool)

(declare-datatypes ((List!69253 0))(
  ( (Nil!69129) (Cons!69129 (h!75577 C!36470) (t!383230 List!69253)) )
))
(declare-fun s2!1615 () List!69253)

(declare-fun matchZipper!3354 ((Set Context!14184) List!69253) Bool)

(assert (=> b!7132996 (= e!4286801 (not (matchZipper!3354 z2!457 s2!1615)))))

(declare-fun b!7132997 () Bool)

(declare-fun e!4286805 () Bool)

(declare-fun lt!2565116 () Bool)

(assert (=> b!7132997 (= e!4286805 lt!2565116)))

(declare-fun setIsEmpty!52268 () Bool)

(declare-fun setRes!52269 () Bool)

(assert (=> setIsEmpty!52268 setRes!52269))

(declare-fun tp!1966153 () Bool)

(declare-fun setNonEmpty!52269 () Bool)

(declare-fun e!4286806 () Bool)

(declare-fun setElem!52268 () Context!14184)

(assert (=> setNonEmpty!52269 (= setRes!52269 (and tp!1966153 (inv!88277 setElem!52268) e!4286806))))

(declare-fun z1!538 () (Set Context!14184))

(declare-fun setRest!52268 () (Set Context!14184))

(assert (=> setNonEmpty!52269 (= z1!538 (set.union (set.insert setElem!52268 (as set.empty (Set Context!14184))) setRest!52268))))

(declare-fun b!7132998 () Bool)

(declare-fun e!4286808 () Bool)

(declare-fun e!4286804 () Bool)

(assert (=> b!7132998 (= e!4286808 e!4286804)))

(declare-fun res!2910468 () Bool)

(assert (=> b!7132998 (=> (not res!2910468) (not e!4286804))))

(declare-datatypes ((tuple2!68410 0))(
  ( (tuple2!68411 (_1!37508 List!69253) (_2!37508 List!69253)) )
))
(declare-fun lt!2565115 () tuple2!68410)

(assert (=> b!7132998 (= res!2910468 (matchZipper!3354 z1!538 (_1!37508 lt!2565115)))))

(declare-datatypes ((Option!17037 0))(
  ( (None!17036) (Some!17036 (v!53530 tuple2!68410)) )
))
(declare-fun lt!2565117 () Option!17037)

(declare-fun get!24281 (Option!17037) tuple2!68410)

(assert (=> b!7132998 (= lt!2565115 (get!24281 lt!2565117))))

(declare-fun b!7132999 () Bool)

(declare-fun e!4286800 () Bool)

(declare-fun tp_is_empty!45801 () Bool)

(declare-fun tp!1966154 () Bool)

(assert (=> b!7132999 (= e!4286800 (and tp_is_empty!45801 tp!1966154))))

(declare-fun b!7133000 () Bool)

(declare-fun tp!1966151 () Bool)

(assert (=> b!7133000 (= e!4286806 tp!1966151)))

(declare-fun b!7133001 () Bool)

(declare-fun tp!1966148 () Bool)

(assert (=> b!7133001 (= e!4286807 tp!1966148)))

(declare-fun b!7133002 () Bool)

(declare-fun res!2910472 () Bool)

(assert (=> b!7133002 (=> (not res!2910472) (not e!4286804))))

(assert (=> b!7133002 (= res!2910472 (matchZipper!3354 z2!457 (_2!37508 lt!2565115)))))

(declare-fun b!7133003 () Bool)

(declare-fun e!4286803 () Bool)

(declare-fun tp!1966149 () Bool)

(assert (=> b!7133003 (= e!4286803 (and tp_is_empty!45801 tp!1966149))))

(declare-fun res!2910467 () Bool)

(declare-fun e!4286809 () Bool)

(assert (=> start!694894 (=> (not res!2910467) (not e!4286809))))

(declare-fun s1!1678 () List!69253)

(declare-fun s!7358 () List!69253)

(declare-fun ++!16238 (List!69253 List!69253) List!69253)

(assert (=> start!694894 (= res!2910467 (= (++!16238 s1!1678 s2!1615) s!7358))))

(assert (=> start!694894 e!4286809))

(declare-fun condSetEmpty!52269 () Bool)

(assert (=> start!694894 (= condSetEmpty!52269 (= z2!457 (as set.empty (Set Context!14184))))))

(assert (=> start!694894 setRes!52268))

(assert (=> start!694894 e!4286800))

(declare-fun condSetEmpty!52268 () Bool)

(assert (=> start!694894 (= condSetEmpty!52268 (= z1!538 (as set.empty (Set Context!14184))))))

(assert (=> start!694894 setRes!52269))

(assert (=> start!694894 e!4286803))

(declare-fun e!4286802 () Bool)

(assert (=> start!694894 e!4286802))

(declare-fun setIsEmpty!52269 () Bool)

(assert (=> setIsEmpty!52269 setRes!52268))

(declare-fun b!7133004 () Bool)

(declare-fun tp!1966150 () Bool)

(assert (=> b!7133004 (= e!4286802 (and tp_is_empty!45801 tp!1966150))))

(declare-fun b!7133005 () Bool)

(assert (=> b!7133005 (= e!4286809 (not e!4286805))))

(declare-fun res!2910469 () Bool)

(assert (=> b!7133005 (=> res!2910469 e!4286805)))

(assert (=> b!7133005 (= res!2910469 e!4286808)))

(declare-fun res!2910470 () Bool)

(assert (=> b!7133005 (=> (not res!2910470) (not e!4286808))))

(assert (=> b!7133005 (= res!2910470 (not lt!2565116))))

(declare-fun isDefined!13726 (Option!17037) Bool)

(assert (=> b!7133005 (= lt!2565116 (not (isDefined!13726 lt!2565117)))))

(declare-fun lt!2565118 () List!69253)

(declare-fun findConcatSeparationZippers!541 ((Set Context!14184) (Set Context!14184) List!69253 List!69253 List!69253) Option!17037)

(assert (=> b!7133005 (= lt!2565117 (findConcatSeparationZippers!541 z1!538 z2!457 lt!2565118 (t!383230 s2!1615) s!7358))))

(assert (=> b!7133005 (= (++!16238 lt!2565118 (t!383230 s2!1615)) s!7358)))

(assert (=> b!7133005 (= lt!2565118 (++!16238 s1!1678 (Cons!69129 (h!75577 s2!1615) Nil!69129)))))

(declare-datatypes ((Unit!163045 0))(
  ( (Unit!163046) )
))
(declare-fun lt!2565119 () Unit!163045)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3038 (List!69253 C!36470 List!69253 List!69253) Unit!163045)

(assert (=> b!7133005 (= lt!2565119 (lemmaMoveElementToOtherListKeepsConcatEq!3038 s1!1678 (h!75577 s2!1615) (t!383230 s2!1615) s!7358))))

(declare-fun b!7133006 () Bool)

(assert (=> b!7133006 (= e!4286804 (= (++!16238 (_1!37508 lt!2565115) (_2!37508 lt!2565115)) s!7358))))

(declare-fun b!7133007 () Bool)

(declare-fun res!2910466 () Bool)

(assert (=> b!7133007 (=> (not res!2910466) (not e!4286809))))

(assert (=> b!7133007 (= res!2910466 e!4286801)))

(declare-fun res!2910471 () Bool)

(assert (=> b!7133007 (=> res!2910471 e!4286801)))

(assert (=> b!7133007 (= res!2910471 (not (matchZipper!3354 z1!538 s1!1678)))))

(declare-fun b!7133008 () Bool)

(declare-fun res!2910473 () Bool)

(assert (=> b!7133008 (=> (not res!2910473) (not e!4286809))))

(assert (=> b!7133008 (= res!2910473 (not (is-Nil!69129 s2!1615)))))

(assert (= (and start!694894 res!2910467) b!7133007))

(assert (= (and b!7133007 (not res!2910471)) b!7132996))

(assert (= (and b!7133007 res!2910466) b!7133008))

(assert (= (and b!7133008 res!2910473) b!7133005))

(assert (= (and b!7133005 res!2910470) b!7132998))

(assert (= (and b!7132998 res!2910468) b!7133002))

(assert (= (and b!7133002 res!2910472) b!7133006))

(assert (= (and b!7133005 (not res!2910469)) b!7132997))

(assert (= (and start!694894 condSetEmpty!52269) setIsEmpty!52269))

(assert (= (and start!694894 (not condSetEmpty!52269)) setNonEmpty!52268))

(assert (= setNonEmpty!52268 b!7133001))

(assert (= (and start!694894 (is-Cons!69129 s2!1615)) b!7132999))

(assert (= (and start!694894 condSetEmpty!52268) setIsEmpty!52268))

(assert (= (and start!694894 (not condSetEmpty!52268)) setNonEmpty!52269))

(assert (= setNonEmpty!52269 b!7133000))

(assert (= (and start!694894 (is-Cons!69129 s1!1678)) b!7133003))

(assert (= (and start!694894 (is-Cons!69129 s!7358)) b!7133004))

(declare-fun m!7850062 () Bool)

(assert (=> b!7133007 m!7850062))

(declare-fun m!7850064 () Bool)

(assert (=> setNonEmpty!52268 m!7850064))

(declare-fun m!7850066 () Bool)

(assert (=> b!7132996 m!7850066))

(declare-fun m!7850068 () Bool)

(assert (=> b!7133005 m!7850068))

(declare-fun m!7850070 () Bool)

(assert (=> b!7133005 m!7850070))

(declare-fun m!7850072 () Bool)

(assert (=> b!7133005 m!7850072))

(declare-fun m!7850074 () Bool)

(assert (=> b!7133005 m!7850074))

(declare-fun m!7850076 () Bool)

(assert (=> b!7133005 m!7850076))

(declare-fun m!7850078 () Bool)

(assert (=> b!7133002 m!7850078))

(declare-fun m!7850080 () Bool)

(assert (=> b!7132998 m!7850080))

(declare-fun m!7850082 () Bool)

(assert (=> b!7132998 m!7850082))

(declare-fun m!7850084 () Bool)

(assert (=> b!7133006 m!7850084))

(declare-fun m!7850086 () Bool)

(assert (=> setNonEmpty!52269 m!7850086))

(declare-fun m!7850088 () Bool)

(assert (=> start!694894 m!7850088))

(push 1)

(assert (not b!7133006))

(assert tp_is_empty!45801)

(assert (not b!7132999))

(assert (not b!7133007))

(assert (not b!7133004))

(assert (not b!7133005))

(assert (not b!7132998))

(assert (not b!7132996))

(assert (not b!7133001))

(assert (not setNonEmpty!52268))

(assert (not b!7133003))

(assert (not b!7133000))

(assert (not setNonEmpty!52269))

(assert (not b!7133002))

(assert (not start!694894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7133057 () Bool)

(declare-fun e!4286844 () List!69253)

(assert (=> b!7133057 (= e!4286844 (Cons!69129 (h!75577 (_1!37508 lt!2565115)) (++!16238 (t!383230 (_1!37508 lt!2565115)) (_2!37508 lt!2565115))))))

(declare-fun d!2225851 () Bool)

(declare-fun e!4286845 () Bool)

(assert (=> d!2225851 e!4286845))

(declare-fun res!2910502 () Bool)

(assert (=> d!2225851 (=> (not res!2910502) (not e!4286845))))

(declare-fun lt!2565137 () List!69253)

(declare-fun content!14132 (List!69253) (Set C!36470))

(assert (=> d!2225851 (= res!2910502 (= (content!14132 lt!2565137) (set.union (content!14132 (_1!37508 lt!2565115)) (content!14132 (_2!37508 lt!2565115)))))))

(assert (=> d!2225851 (= lt!2565137 e!4286844)))

(declare-fun c!1330358 () Bool)

(assert (=> d!2225851 (= c!1330358 (is-Nil!69129 (_1!37508 lt!2565115)))))

(assert (=> d!2225851 (= (++!16238 (_1!37508 lt!2565115) (_2!37508 lt!2565115)) lt!2565137)))

(declare-fun b!7133058 () Bool)

(declare-fun res!2910503 () Bool)

(assert (=> b!7133058 (=> (not res!2910503) (not e!4286845))))

(declare-fun size!41498 (List!69253) Int)

(assert (=> b!7133058 (= res!2910503 (= (size!41498 lt!2565137) (+ (size!41498 (_1!37508 lt!2565115)) (size!41498 (_2!37508 lt!2565115)))))))

(declare-fun b!7133059 () Bool)

(assert (=> b!7133059 (= e!4286845 (or (not (= (_2!37508 lt!2565115) Nil!69129)) (= lt!2565137 (_1!37508 lt!2565115))))))

(declare-fun b!7133056 () Bool)

(assert (=> b!7133056 (= e!4286844 (_2!37508 lt!2565115))))

(assert (= (and d!2225851 c!1330358) b!7133056))

(assert (= (and d!2225851 (not c!1330358)) b!7133057))

(assert (= (and d!2225851 res!2910502) b!7133058))

(assert (= (and b!7133058 res!2910503) b!7133059))

(declare-fun m!7850118 () Bool)

(assert (=> b!7133057 m!7850118))

(declare-fun m!7850120 () Bool)

(assert (=> d!2225851 m!7850120))

(declare-fun m!7850122 () Bool)

(assert (=> d!2225851 m!7850122))

(declare-fun m!7850124 () Bool)

(assert (=> d!2225851 m!7850124))

(declare-fun m!7850126 () Bool)

(assert (=> b!7133058 m!7850126))

(declare-fun m!7850128 () Bool)

(assert (=> b!7133058 m!7850128))

(declare-fun m!7850130 () Bool)

(assert (=> b!7133058 m!7850130))

(assert (=> b!7133006 d!2225851))

(declare-fun b!7133061 () Bool)

(declare-fun e!4286846 () List!69253)

(assert (=> b!7133061 (= e!4286846 (Cons!69129 (h!75577 lt!2565118) (++!16238 (t!383230 lt!2565118) (t!383230 s2!1615))))))

(declare-fun d!2225855 () Bool)

(declare-fun e!4286847 () Bool)

(assert (=> d!2225855 e!4286847))

(declare-fun res!2910504 () Bool)

(assert (=> d!2225855 (=> (not res!2910504) (not e!4286847))))

(declare-fun lt!2565138 () List!69253)

(assert (=> d!2225855 (= res!2910504 (= (content!14132 lt!2565138) (set.union (content!14132 lt!2565118) (content!14132 (t!383230 s2!1615)))))))

(assert (=> d!2225855 (= lt!2565138 e!4286846)))

(declare-fun c!1330359 () Bool)

(assert (=> d!2225855 (= c!1330359 (is-Nil!69129 lt!2565118))))

(assert (=> d!2225855 (= (++!16238 lt!2565118 (t!383230 s2!1615)) lt!2565138)))

(declare-fun b!7133062 () Bool)

(declare-fun res!2910505 () Bool)

(assert (=> b!7133062 (=> (not res!2910505) (not e!4286847))))

(assert (=> b!7133062 (= res!2910505 (= (size!41498 lt!2565138) (+ (size!41498 lt!2565118) (size!41498 (t!383230 s2!1615)))))))

(declare-fun b!7133063 () Bool)

(assert (=> b!7133063 (= e!4286847 (or (not (= (t!383230 s2!1615) Nil!69129)) (= lt!2565138 lt!2565118)))))

(declare-fun b!7133060 () Bool)

(assert (=> b!7133060 (= e!4286846 (t!383230 s2!1615))))

(assert (= (and d!2225855 c!1330359) b!7133060))

(assert (= (and d!2225855 (not c!1330359)) b!7133061))

(assert (= (and d!2225855 res!2910504) b!7133062))

(assert (= (and b!7133062 res!2910505) b!7133063))

(declare-fun m!7850132 () Bool)

(assert (=> b!7133061 m!7850132))

(declare-fun m!7850134 () Bool)

(assert (=> d!2225855 m!7850134))

(declare-fun m!7850136 () Bool)

(assert (=> d!2225855 m!7850136))

(declare-fun m!7850138 () Bool)

(assert (=> d!2225855 m!7850138))

(declare-fun m!7850140 () Bool)

(assert (=> b!7133062 m!7850140))

(declare-fun m!7850142 () Bool)

(assert (=> b!7133062 m!7850142))

(declare-fun m!7850144 () Bool)

(assert (=> b!7133062 m!7850144))

(assert (=> b!7133005 d!2225855))

(declare-fun b!7133082 () Bool)

(declare-fun e!4286858 () Option!17037)

(assert (=> b!7133082 (= e!4286858 None!17036)))

(declare-fun d!2225857 () Bool)

(declare-fun e!4286862 () Bool)

(assert (=> d!2225857 e!4286862))

(declare-fun res!2910518 () Bool)

(assert (=> d!2225857 (=> res!2910518 e!4286862)))

(declare-fun e!4286860 () Bool)

(assert (=> d!2225857 (= res!2910518 e!4286860)))

(declare-fun res!2910517 () Bool)

(assert (=> d!2225857 (=> (not res!2910517) (not e!4286860))))

(declare-fun lt!2565146 () Option!17037)

(assert (=> d!2225857 (= res!2910517 (isDefined!13726 lt!2565146))))

(declare-fun e!4286859 () Option!17037)

(assert (=> d!2225857 (= lt!2565146 e!4286859)))

(declare-fun c!1330364 () Bool)

(declare-fun e!4286861 () Bool)

(assert (=> d!2225857 (= c!1330364 e!4286861)))

(declare-fun res!2910520 () Bool)

(assert (=> d!2225857 (=> (not res!2910520) (not e!4286861))))

(assert (=> d!2225857 (= res!2910520 (matchZipper!3354 z1!538 lt!2565118))))

(assert (=> d!2225857 (= (++!16238 lt!2565118 (t!383230 s2!1615)) s!7358)))

(assert (=> d!2225857 (= (findConcatSeparationZippers!541 z1!538 z2!457 lt!2565118 (t!383230 s2!1615) s!7358) lt!2565146)))

(declare-fun b!7133083 () Bool)

(declare-fun res!2910516 () Bool)

(assert (=> b!7133083 (=> (not res!2910516) (not e!4286860))))

(assert (=> b!7133083 (= res!2910516 (matchZipper!3354 z1!538 (_1!37508 (get!24281 lt!2565146))))))

(declare-fun b!7133084 () Bool)

(declare-fun res!2910519 () Bool)

(assert (=> b!7133084 (=> (not res!2910519) (not e!4286860))))

(assert (=> b!7133084 (= res!2910519 (matchZipper!3354 z2!457 (_2!37508 (get!24281 lt!2565146))))))

(declare-fun b!7133085 () Bool)

(assert (=> b!7133085 (= e!4286860 (= (++!16238 (_1!37508 (get!24281 lt!2565146)) (_2!37508 (get!24281 lt!2565146))) s!7358))))

(declare-fun b!7133086 () Bool)

(assert (=> b!7133086 (= e!4286861 (matchZipper!3354 z2!457 (t!383230 s2!1615)))))

(declare-fun b!7133087 () Bool)

(assert (=> b!7133087 (= e!4286862 (not (isDefined!13726 lt!2565146)))))

(declare-fun b!7133088 () Bool)

(assert (=> b!7133088 (= e!4286859 e!4286858)))

(declare-fun c!1330365 () Bool)

(assert (=> b!7133088 (= c!1330365 (is-Nil!69129 (t!383230 s2!1615)))))

(declare-fun b!7133089 () Bool)

(declare-fun lt!2565145 () Unit!163045)

(declare-fun lt!2565147 () Unit!163045)

(assert (=> b!7133089 (= lt!2565145 lt!2565147)))

(assert (=> b!7133089 (= (++!16238 (++!16238 lt!2565118 (Cons!69129 (h!75577 (t!383230 s2!1615)) Nil!69129)) (t!383230 (t!383230 s2!1615))) s!7358)))

(assert (=> b!7133089 (= lt!2565147 (lemmaMoveElementToOtherListKeepsConcatEq!3038 lt!2565118 (h!75577 (t!383230 s2!1615)) (t!383230 (t!383230 s2!1615)) s!7358))))

(assert (=> b!7133089 (= e!4286858 (findConcatSeparationZippers!541 z1!538 z2!457 (++!16238 lt!2565118 (Cons!69129 (h!75577 (t!383230 s2!1615)) Nil!69129)) (t!383230 (t!383230 s2!1615)) s!7358))))

(declare-fun b!7133090 () Bool)

(assert (=> b!7133090 (= e!4286859 (Some!17036 (tuple2!68411 lt!2565118 (t!383230 s2!1615))))))

(assert (= (and d!2225857 res!2910520) b!7133086))

(assert (= (and d!2225857 c!1330364) b!7133090))

(assert (= (and d!2225857 (not c!1330364)) b!7133088))

(assert (= (and b!7133088 c!1330365) b!7133082))

(assert (= (and b!7133088 (not c!1330365)) b!7133089))

(assert (= (and d!2225857 res!2910517) b!7133083))

(assert (= (and b!7133083 res!2910516) b!7133084))

(assert (= (and b!7133084 res!2910519) b!7133085))

(assert (= (and d!2225857 (not res!2910518)) b!7133087))

(declare-fun m!7850146 () Bool)

(assert (=> b!7133085 m!7850146))

(declare-fun m!7850148 () Bool)

(assert (=> b!7133085 m!7850148))

(declare-fun m!7850150 () Bool)

(assert (=> b!7133086 m!7850150))

(assert (=> b!7133084 m!7850146))

(declare-fun m!7850152 () Bool)

(assert (=> b!7133084 m!7850152))

(declare-fun m!7850154 () Bool)

(assert (=> b!7133089 m!7850154))

(assert (=> b!7133089 m!7850154))

(declare-fun m!7850156 () Bool)

(assert (=> b!7133089 m!7850156))

(declare-fun m!7850158 () Bool)

(assert (=> b!7133089 m!7850158))

(assert (=> b!7133089 m!7850154))

(declare-fun m!7850160 () Bool)

(assert (=> b!7133089 m!7850160))

(assert (=> b!7133083 m!7850146))

(declare-fun m!7850162 () Bool)

(assert (=> b!7133083 m!7850162))

(declare-fun m!7850164 () Bool)

(assert (=> b!7133087 m!7850164))

(assert (=> d!2225857 m!7850164))

(declare-fun m!7850166 () Bool)

(assert (=> d!2225857 m!7850166))

(assert (=> d!2225857 m!7850070))

(assert (=> b!7133005 d!2225857))

(declare-fun b!7133092 () Bool)

(declare-fun e!4286863 () List!69253)

(assert (=> b!7133092 (= e!4286863 (Cons!69129 (h!75577 s1!1678) (++!16238 (t!383230 s1!1678) (Cons!69129 (h!75577 s2!1615) Nil!69129))))))

(declare-fun d!2225859 () Bool)

(declare-fun e!4286864 () Bool)

(assert (=> d!2225859 e!4286864))

(declare-fun res!2910521 () Bool)

(assert (=> d!2225859 (=> (not res!2910521) (not e!4286864))))

(declare-fun lt!2565148 () List!69253)

(assert (=> d!2225859 (= res!2910521 (= (content!14132 lt!2565148) (set.union (content!14132 s1!1678) (content!14132 (Cons!69129 (h!75577 s2!1615) Nil!69129)))))))

(assert (=> d!2225859 (= lt!2565148 e!4286863)))

(declare-fun c!1330366 () Bool)

(assert (=> d!2225859 (= c!1330366 (is-Nil!69129 s1!1678))))

(assert (=> d!2225859 (= (++!16238 s1!1678 (Cons!69129 (h!75577 s2!1615) Nil!69129)) lt!2565148)))

(declare-fun b!7133093 () Bool)

(declare-fun res!2910522 () Bool)

(assert (=> b!7133093 (=> (not res!2910522) (not e!4286864))))

(assert (=> b!7133093 (= res!2910522 (= (size!41498 lt!2565148) (+ (size!41498 s1!1678) (size!41498 (Cons!69129 (h!75577 s2!1615) Nil!69129)))))))

(declare-fun b!7133094 () Bool)

(assert (=> b!7133094 (= e!4286864 (or (not (= (Cons!69129 (h!75577 s2!1615) Nil!69129) Nil!69129)) (= lt!2565148 s1!1678)))))

(declare-fun b!7133091 () Bool)

(assert (=> b!7133091 (= e!4286863 (Cons!69129 (h!75577 s2!1615) Nil!69129))))

(assert (= (and d!2225859 c!1330366) b!7133091))

(assert (= (and d!2225859 (not c!1330366)) b!7133092))

(assert (= (and d!2225859 res!2910521) b!7133093))

(assert (= (and b!7133093 res!2910522) b!7133094))

(declare-fun m!7850168 () Bool)

(assert (=> b!7133092 m!7850168))

(declare-fun m!7850170 () Bool)

(assert (=> d!2225859 m!7850170))

(declare-fun m!7850172 () Bool)

(assert (=> d!2225859 m!7850172))

(declare-fun m!7850174 () Bool)

(assert (=> d!2225859 m!7850174))

(declare-fun m!7850176 () Bool)

(assert (=> b!7133093 m!7850176))

(declare-fun m!7850178 () Bool)

(assert (=> b!7133093 m!7850178))

(declare-fun m!7850180 () Bool)

(assert (=> b!7133093 m!7850180))

(assert (=> b!7133005 d!2225859))

(declare-fun d!2225861 () Bool)

(declare-fun isEmpty!40038 (Option!17037) Bool)

(assert (=> d!2225861 (= (isDefined!13726 lt!2565117) (not (isEmpty!40038 lt!2565117)))))

(declare-fun bs!1887027 () Bool)

(assert (= bs!1887027 d!2225861))

(declare-fun m!7850182 () Bool)

(assert (=> bs!1887027 m!7850182))

(assert (=> b!7133005 d!2225861))

(declare-fun d!2225863 () Bool)

(assert (=> d!2225863 (= (++!16238 (++!16238 s1!1678 (Cons!69129 (h!75577 s2!1615) Nil!69129)) (t!383230 s2!1615)) s!7358)))

(declare-fun lt!2565151 () Unit!163045)

(declare-fun choose!55126 (List!69253 C!36470 List!69253 List!69253) Unit!163045)

(assert (=> d!2225863 (= lt!2565151 (choose!55126 s1!1678 (h!75577 s2!1615) (t!383230 s2!1615) s!7358))))

(assert (=> d!2225863 (= (++!16238 s1!1678 (Cons!69129 (h!75577 s2!1615) (t!383230 s2!1615))) s!7358)))

(assert (=> d!2225863 (= (lemmaMoveElementToOtherListKeepsConcatEq!3038 s1!1678 (h!75577 s2!1615) (t!383230 s2!1615) s!7358) lt!2565151)))

(declare-fun bs!1887028 () Bool)

(assert (= bs!1887028 d!2225863))

(assert (=> bs!1887028 m!7850074))

(assert (=> bs!1887028 m!7850074))

(declare-fun m!7850184 () Bool)

(assert (=> bs!1887028 m!7850184))

(declare-fun m!7850186 () Bool)

(assert (=> bs!1887028 m!7850186))

(declare-fun m!7850188 () Bool)

(assert (=> bs!1887028 m!7850188))

(assert (=> b!7133005 d!2225863))

(declare-fun d!2225865 () Bool)

(declare-fun c!1330369 () Bool)

(declare-fun isEmpty!40039 (List!69253) Bool)

(assert (=> d!2225865 (= c!1330369 (isEmpty!40039 s1!1678))))

(declare-fun e!4286867 () Bool)

(assert (=> d!2225865 (= (matchZipper!3354 z1!538 s1!1678) e!4286867)))

(declare-fun b!7133099 () Bool)

(declare-fun nullableZipper!2769 ((Set Context!14184)) Bool)

(assert (=> b!7133099 (= e!4286867 (nullableZipper!2769 z1!538))))

(declare-fun b!7133100 () Bool)

(declare-fun derivationStepZipper!3181 ((Set Context!14184) C!36470) (Set Context!14184))

(declare-fun head!14479 (List!69253) C!36470)

(declare-fun tail!13951 (List!69253) List!69253)

(assert (=> b!7133100 (= e!4286867 (matchZipper!3354 (derivationStepZipper!3181 z1!538 (head!14479 s1!1678)) (tail!13951 s1!1678)))))

(assert (= (and d!2225865 c!1330369) b!7133099))

(assert (= (and d!2225865 (not c!1330369)) b!7133100))

(declare-fun m!7850190 () Bool)

(assert (=> d!2225865 m!7850190))

(declare-fun m!7850192 () Bool)

(assert (=> b!7133099 m!7850192))

(declare-fun m!7850194 () Bool)

(assert (=> b!7133100 m!7850194))

(assert (=> b!7133100 m!7850194))

(declare-fun m!7850196 () Bool)

(assert (=> b!7133100 m!7850196))

(declare-fun m!7850198 () Bool)

(assert (=> b!7133100 m!7850198))

(assert (=> b!7133100 m!7850196))

(assert (=> b!7133100 m!7850198))

(declare-fun m!7850200 () Bool)

(assert (=> b!7133100 m!7850200))

(assert (=> b!7133007 d!2225865))

(declare-fun d!2225867 () Bool)

(declare-fun lambda!433249 () Int)

(declare-fun forall!16930 (List!69252 Int) Bool)

(assert (=> d!2225867 (= (inv!88277 setElem!52268) (forall!16930 (exprs!7592 setElem!52268) lambda!433249))))

(declare-fun bs!1887029 () Bool)

(assert (= bs!1887029 d!2225867))

(declare-fun m!7850202 () Bool)

(assert (=> bs!1887029 m!7850202))

(assert (=> setNonEmpty!52269 d!2225867))

(declare-fun b!7133102 () Bool)

(declare-fun e!4286868 () List!69253)

(assert (=> b!7133102 (= e!4286868 (Cons!69129 (h!75577 s1!1678) (++!16238 (t!383230 s1!1678) s2!1615)))))

(declare-fun d!2225869 () Bool)

(declare-fun e!4286869 () Bool)

(assert (=> d!2225869 e!4286869))

(declare-fun res!2910523 () Bool)

(assert (=> d!2225869 (=> (not res!2910523) (not e!4286869))))

(declare-fun lt!2565152 () List!69253)

(assert (=> d!2225869 (= res!2910523 (= (content!14132 lt!2565152) (set.union (content!14132 s1!1678) (content!14132 s2!1615))))))

(assert (=> d!2225869 (= lt!2565152 e!4286868)))

(declare-fun c!1330370 () Bool)

(assert (=> d!2225869 (= c!1330370 (is-Nil!69129 s1!1678))))

(assert (=> d!2225869 (= (++!16238 s1!1678 s2!1615) lt!2565152)))

(declare-fun b!7133103 () Bool)

(declare-fun res!2910524 () Bool)

(assert (=> b!7133103 (=> (not res!2910524) (not e!4286869))))

(assert (=> b!7133103 (= res!2910524 (= (size!41498 lt!2565152) (+ (size!41498 s1!1678) (size!41498 s2!1615))))))

(declare-fun b!7133104 () Bool)

(assert (=> b!7133104 (= e!4286869 (or (not (= s2!1615 Nil!69129)) (= lt!2565152 s1!1678)))))

(declare-fun b!7133101 () Bool)

(assert (=> b!7133101 (= e!4286868 s2!1615)))

(assert (= (and d!2225869 c!1330370) b!7133101))

(assert (= (and d!2225869 (not c!1330370)) b!7133102))

(assert (= (and d!2225869 res!2910523) b!7133103))

(assert (= (and b!7133103 res!2910524) b!7133104))

(declare-fun m!7850204 () Bool)

(assert (=> b!7133102 m!7850204))

(declare-fun m!7850206 () Bool)

(assert (=> d!2225869 m!7850206))

(assert (=> d!2225869 m!7850172))

(declare-fun m!7850208 () Bool)

(assert (=> d!2225869 m!7850208))

(declare-fun m!7850210 () Bool)

(assert (=> b!7133103 m!7850210))

(assert (=> b!7133103 m!7850178))

(declare-fun m!7850212 () Bool)

(assert (=> b!7133103 m!7850212))

(assert (=> start!694894 d!2225869))

(declare-fun d!2225871 () Bool)

(declare-fun c!1330371 () Bool)

(assert (=> d!2225871 (= c!1330371 (isEmpty!40039 (_2!37508 lt!2565115)))))

(declare-fun e!4286870 () Bool)

(assert (=> d!2225871 (= (matchZipper!3354 z2!457 (_2!37508 lt!2565115)) e!4286870)))

(declare-fun b!7133105 () Bool)

(assert (=> b!7133105 (= e!4286870 (nullableZipper!2769 z2!457))))

(declare-fun b!7133106 () Bool)

(assert (=> b!7133106 (= e!4286870 (matchZipper!3354 (derivationStepZipper!3181 z2!457 (head!14479 (_2!37508 lt!2565115))) (tail!13951 (_2!37508 lt!2565115))))))

(assert (= (and d!2225871 c!1330371) b!7133105))

(assert (= (and d!2225871 (not c!1330371)) b!7133106))

(declare-fun m!7850214 () Bool)

(assert (=> d!2225871 m!7850214))

(declare-fun m!7850216 () Bool)

(assert (=> b!7133105 m!7850216))

(declare-fun m!7850218 () Bool)

(assert (=> b!7133106 m!7850218))

(assert (=> b!7133106 m!7850218))

(declare-fun m!7850220 () Bool)

(assert (=> b!7133106 m!7850220))

(declare-fun m!7850222 () Bool)

(assert (=> b!7133106 m!7850222))

(assert (=> b!7133106 m!7850220))

(assert (=> b!7133106 m!7850222))

(declare-fun m!7850224 () Bool)

(assert (=> b!7133106 m!7850224))

(assert (=> b!7133002 d!2225871))

(declare-fun bs!1887030 () Bool)

(declare-fun d!2225873 () Bool)

(assert (= bs!1887030 (and d!2225873 d!2225867)))

(declare-fun lambda!433250 () Int)

(assert (=> bs!1887030 (= lambda!433250 lambda!433249)))

(assert (=> d!2225873 (= (inv!88277 setElem!52269) (forall!16930 (exprs!7592 setElem!52269) lambda!433250))))

(declare-fun bs!1887031 () Bool)

(assert (= bs!1887031 d!2225873))

(declare-fun m!7850226 () Bool)

(assert (=> bs!1887031 m!7850226))

(assert (=> setNonEmpty!52268 d!2225873))

(declare-fun d!2225875 () Bool)

(declare-fun c!1330372 () Bool)

(assert (=> d!2225875 (= c!1330372 (isEmpty!40039 (_1!37508 lt!2565115)))))

(declare-fun e!4286871 () Bool)

(assert (=> d!2225875 (= (matchZipper!3354 z1!538 (_1!37508 lt!2565115)) e!4286871)))

(declare-fun b!7133107 () Bool)

(assert (=> b!7133107 (= e!4286871 (nullableZipper!2769 z1!538))))

(declare-fun b!7133108 () Bool)

(assert (=> b!7133108 (= e!4286871 (matchZipper!3354 (derivationStepZipper!3181 z1!538 (head!14479 (_1!37508 lt!2565115))) (tail!13951 (_1!37508 lt!2565115))))))

(assert (= (and d!2225875 c!1330372) b!7133107))

(assert (= (and d!2225875 (not c!1330372)) b!7133108))

(declare-fun m!7850228 () Bool)

(assert (=> d!2225875 m!7850228))

(assert (=> b!7133107 m!7850192))

(declare-fun m!7850230 () Bool)

(assert (=> b!7133108 m!7850230))

(assert (=> b!7133108 m!7850230))

(declare-fun m!7850232 () Bool)

(assert (=> b!7133108 m!7850232))

(declare-fun m!7850234 () Bool)

(assert (=> b!7133108 m!7850234))

(assert (=> b!7133108 m!7850232))

(assert (=> b!7133108 m!7850234))

(declare-fun m!7850236 () Bool)

(assert (=> b!7133108 m!7850236))

(assert (=> b!7132998 d!2225875))

(declare-fun d!2225877 () Bool)

(assert (=> d!2225877 (= (get!24281 lt!2565117) (v!53530 lt!2565117))))

(assert (=> b!7132998 d!2225877))

(declare-fun d!2225879 () Bool)

(declare-fun c!1330373 () Bool)

(assert (=> d!2225879 (= c!1330373 (isEmpty!40039 s2!1615))))

(declare-fun e!4286872 () Bool)

(assert (=> d!2225879 (= (matchZipper!3354 z2!457 s2!1615) e!4286872)))

(declare-fun b!7133109 () Bool)

(assert (=> b!7133109 (= e!4286872 (nullableZipper!2769 z2!457))))

(declare-fun b!7133110 () Bool)

(assert (=> b!7133110 (= e!4286872 (matchZipper!3354 (derivationStepZipper!3181 z2!457 (head!14479 s2!1615)) (tail!13951 s2!1615)))))

(assert (= (and d!2225879 c!1330373) b!7133109))

(assert (= (and d!2225879 (not c!1330373)) b!7133110))

(declare-fun m!7850238 () Bool)

(assert (=> d!2225879 m!7850238))

(assert (=> b!7133109 m!7850216))

(declare-fun m!7850240 () Bool)

(assert (=> b!7133110 m!7850240))

(assert (=> b!7133110 m!7850240))

(declare-fun m!7850242 () Bool)

(assert (=> b!7133110 m!7850242))

(declare-fun m!7850244 () Bool)

(assert (=> b!7133110 m!7850244))

(assert (=> b!7133110 m!7850242))

(assert (=> b!7133110 m!7850244))

(declare-fun m!7850246 () Bool)

(assert (=> b!7133110 m!7850246))

(assert (=> b!7132996 d!2225879))

(declare-fun b!7133115 () Bool)

(declare-fun e!4286875 () Bool)

(declare-fun tp!1966180 () Bool)

(declare-fun tp!1966181 () Bool)

(assert (=> b!7133115 (= e!4286875 (and tp!1966180 tp!1966181))))

(assert (=> b!7133001 (= tp!1966148 e!4286875)))

(assert (= (and b!7133001 (is-Cons!69128 (exprs!7592 setElem!52269))) b!7133115))

(declare-fun b!7133120 () Bool)

(declare-fun e!4286878 () Bool)

(declare-fun tp!1966184 () Bool)

(assert (=> b!7133120 (= e!4286878 (and tp_is_empty!45801 tp!1966184))))

(assert (=> b!7133003 (= tp!1966149 e!4286878)))

(assert (= (and b!7133003 (is-Cons!69129 (t!383230 s1!1678))) b!7133120))

(declare-fun condSetEmpty!52278 () Bool)

(assert (=> setNonEmpty!52269 (= condSetEmpty!52278 (= setRest!52268 (as set.empty (Set Context!14184))))))

(declare-fun setRes!52278 () Bool)

(assert (=> setNonEmpty!52269 (= tp!1966153 setRes!52278)))

(declare-fun setIsEmpty!52278 () Bool)

(assert (=> setIsEmpty!52278 setRes!52278))

(declare-fun setNonEmpty!52278 () Bool)

(declare-fun e!4286881 () Bool)

(declare-fun setElem!52278 () Context!14184)

(declare-fun tp!1966189 () Bool)

(assert (=> setNonEmpty!52278 (= setRes!52278 (and tp!1966189 (inv!88277 setElem!52278) e!4286881))))

(declare-fun setRest!52278 () (Set Context!14184))

(assert (=> setNonEmpty!52278 (= setRest!52268 (set.union (set.insert setElem!52278 (as set.empty (Set Context!14184))) setRest!52278))))

(declare-fun b!7133125 () Bool)

(declare-fun tp!1966190 () Bool)

(assert (=> b!7133125 (= e!4286881 tp!1966190)))

(assert (= (and setNonEmpty!52269 condSetEmpty!52278) setIsEmpty!52278))

(assert (= (and setNonEmpty!52269 (not condSetEmpty!52278)) setNonEmpty!52278))

(assert (= setNonEmpty!52278 b!7133125))

(declare-fun m!7850248 () Bool)

(assert (=> setNonEmpty!52278 m!7850248))

(declare-fun b!7133126 () Bool)

(declare-fun e!4286882 () Bool)

(declare-fun tp!1966191 () Bool)

(assert (=> b!7133126 (= e!4286882 (and tp_is_empty!45801 tp!1966191))))

(assert (=> b!7132999 (= tp!1966154 e!4286882)))

(assert (= (and b!7132999 (is-Cons!69129 (t!383230 s2!1615))) b!7133126))

(declare-fun condSetEmpty!52279 () Bool)

(assert (=> setNonEmpty!52268 (= condSetEmpty!52279 (= setRest!52269 (as set.empty (Set Context!14184))))))

(declare-fun setRes!52279 () Bool)

(assert (=> setNonEmpty!52268 (= tp!1966152 setRes!52279)))

(declare-fun setIsEmpty!52279 () Bool)

(assert (=> setIsEmpty!52279 setRes!52279))

(declare-fun tp!1966192 () Bool)

(declare-fun setElem!52279 () Context!14184)

(declare-fun setNonEmpty!52279 () Bool)

(declare-fun e!4286883 () Bool)

(assert (=> setNonEmpty!52279 (= setRes!52279 (and tp!1966192 (inv!88277 setElem!52279) e!4286883))))

(declare-fun setRest!52279 () (Set Context!14184))

(assert (=> setNonEmpty!52279 (= setRest!52269 (set.union (set.insert setElem!52279 (as set.empty (Set Context!14184))) setRest!52279))))

(declare-fun b!7133127 () Bool)

(declare-fun tp!1966193 () Bool)

(assert (=> b!7133127 (= e!4286883 tp!1966193)))

(assert (= (and setNonEmpty!52268 condSetEmpty!52279) setIsEmpty!52279))

(assert (= (and setNonEmpty!52268 (not condSetEmpty!52279)) setNonEmpty!52279))

(assert (= setNonEmpty!52279 b!7133127))

(declare-fun m!7850250 () Bool)

(assert (=> setNonEmpty!52279 m!7850250))

(declare-fun b!7133128 () Bool)

(declare-fun e!4286884 () Bool)

(declare-fun tp!1966194 () Bool)

(declare-fun tp!1966195 () Bool)

(assert (=> b!7133128 (= e!4286884 (and tp!1966194 tp!1966195))))

(assert (=> b!7133000 (= tp!1966151 e!4286884)))

(assert (= (and b!7133000 (is-Cons!69128 (exprs!7592 setElem!52268))) b!7133128))

(declare-fun b!7133129 () Bool)

(declare-fun e!4286885 () Bool)

(declare-fun tp!1966196 () Bool)

(assert (=> b!7133129 (= e!4286885 (and tp_is_empty!45801 tp!1966196))))

(assert (=> b!7133004 (= tp!1966150 e!4286885)))

(assert (= (and b!7133004 (is-Cons!69129 (t!383230 s!7358))) b!7133129))

(push 1)

(assert (not b!7133062))

(assert (not b!7133083))

(assert (not b!7133115))

(assert (not setNonEmpty!52278))

(assert (not d!2225873))

(assert (not b!7133061))

(assert (not b!7133085))

(assert (not b!7133108))

(assert (not b!7133057))

(assert (not b!7133093))

(assert (not b!7133099))

(assert (not d!2225879))

(assert (not b!7133125))

(assert (not b!7133107))

(assert (not b!7133126))

(assert (not d!2225851))

(assert tp_is_empty!45801)

(assert (not d!2225855))

(assert (not d!2225861))

(assert (not b!7133128))

(assert (not b!7133084))

(assert (not d!2225875))

(assert (not b!7133109))

(assert (not b!7133103))

(assert (not b!7133058))

(assert (not b!7133089))

(assert (not d!2225865))

(assert (not b!7133110))

(assert (not d!2225867))

(assert (not d!2225859))

(assert (not b!7133120))

(assert (not d!2225863))

(assert (not b!7133105))

(assert (not b!7133087))

(assert (not setNonEmpty!52279))

(assert (not b!7133127))

(assert (not d!2225869))

(assert (not b!7133106))

(assert (not d!2225871))

(assert (not b!7133092))

(assert (not d!2225857))

(assert (not b!7133086))

(assert (not b!7133102))

(assert (not b!7133100))

(assert (not b!7133129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

