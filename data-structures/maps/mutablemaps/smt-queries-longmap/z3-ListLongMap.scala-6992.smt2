; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88660 () Bool)

(assert start!88660)

(declare-fun res!682976 () Bool)

(declare-fun e!573051 () Bool)

(assert (=> start!88660 (=> (not res!682976) (not e!573051))))

(declare-datatypes ((B!1660 0))(
  ( (B!1661 (val!11914 Int)) )
))
(declare-datatypes ((tuple2!15464 0))(
  ( (tuple2!15465 (_1!7742 (_ BitVec 64)) (_2!7742 B!1660)) )
))
(declare-datatypes ((List!21716 0))(
  ( (Nil!21713) (Cons!21712 (h!22910 tuple2!15464) (t!30725 List!21716)) )
))
(declare-fun l!996 () List!21716)

(declare-fun isStrictlySorted!663 (List!21716) Bool)

(assert (=> start!88660 (= res!682976 (isStrictlySorted!663 l!996))))

(assert (=> start!88660 e!573051))

(declare-fun e!573052 () Bool)

(assert (=> start!88660 e!573052))

(assert (=> start!88660 true))

(declare-fun tp_is_empty!23727 () Bool)

(assert (=> start!88660 tp_is_empty!23727))

(declare-fun b!1018382 () Bool)

(declare-fun res!682977 () Bool)

(assert (=> b!1018382 (=> (not res!682977) (not e!573051))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!528 (List!21716 (_ BitVec 64)) Bool)

(assert (=> b!1018382 (= res!682977 (containsKey!528 l!996 key!261))))

(declare-fun lt!449538 () List!21716)

(declare-fun b!1018383 () Bool)

(declare-fun value!172 () B!1660)

(get-info :version)

(assert (=> b!1018383 (= e!573051 (and ((_ is Cons!21712) l!996) (= (_1!7742 (h!22910 l!996)) key!261) (not (= lt!449538 (Cons!21712 (tuple2!15465 key!261 value!172) (t!30725 l!996))))))))

(declare-fun insertStrictlySorted!348 (List!21716 (_ BitVec 64) B!1660) List!21716)

(assert (=> b!1018383 (= lt!449538 (insertStrictlySorted!348 l!996 key!261 value!172))))

(declare-fun b!1018384 () Bool)

(declare-fun tp!71060 () Bool)

(assert (=> b!1018384 (= e!573052 (and tp_is_empty!23727 tp!71060))))

(assert (= (and start!88660 res!682976) b!1018382))

(assert (= (and b!1018382 res!682977) b!1018383))

(assert (= (and start!88660 ((_ is Cons!21712) l!996)) b!1018384))

(declare-fun m!939425 () Bool)

(assert (=> start!88660 m!939425))

(declare-fun m!939427 () Bool)

(assert (=> b!1018382 m!939427))

(declare-fun m!939429 () Bool)

(assert (=> b!1018383 m!939429))

(check-sat (not b!1018384) tp_is_empty!23727 (not b!1018382) (not b!1018383) (not start!88660))
(check-sat)
(get-model)

(declare-fun d!121835 () Bool)

(declare-fun res!682988 () Bool)

(declare-fun e!573063 () Bool)

(assert (=> d!121835 (=> res!682988 e!573063)))

(assert (=> d!121835 (= res!682988 (or ((_ is Nil!21713) l!996) ((_ is Nil!21713) (t!30725 l!996))))))

(assert (=> d!121835 (= (isStrictlySorted!663 l!996) e!573063)))

(declare-fun b!1018398 () Bool)

(declare-fun e!573064 () Bool)

(assert (=> b!1018398 (= e!573063 e!573064)))

(declare-fun res!682989 () Bool)

(assert (=> b!1018398 (=> (not res!682989) (not e!573064))))

(assert (=> b!1018398 (= res!682989 (bvslt (_1!7742 (h!22910 l!996)) (_1!7742 (h!22910 (t!30725 l!996)))))))

(declare-fun b!1018399 () Bool)

(assert (=> b!1018399 (= e!573064 (isStrictlySorted!663 (t!30725 l!996)))))

(assert (= (and d!121835 (not res!682988)) b!1018398))

(assert (= (and b!1018398 res!682989) b!1018399))

(declare-fun m!939437 () Bool)

(assert (=> b!1018399 m!939437))

(assert (=> start!88660 d!121835))

(declare-fun d!121841 () Bool)

(declare-fun res!682994 () Bool)

(declare-fun e!573069 () Bool)

(assert (=> d!121841 (=> res!682994 e!573069)))

(assert (=> d!121841 (= res!682994 (and ((_ is Cons!21712) l!996) (= (_1!7742 (h!22910 l!996)) key!261)))))

(assert (=> d!121841 (= (containsKey!528 l!996 key!261) e!573069)))

(declare-fun b!1018404 () Bool)

(declare-fun e!573070 () Bool)

(assert (=> b!1018404 (= e!573069 e!573070)))

(declare-fun res!682995 () Bool)

(assert (=> b!1018404 (=> (not res!682995) (not e!573070))))

(assert (=> b!1018404 (= res!682995 (and (or (not ((_ is Cons!21712) l!996)) (bvsle (_1!7742 (h!22910 l!996)) key!261)) ((_ is Cons!21712) l!996) (bvslt (_1!7742 (h!22910 l!996)) key!261)))))

(declare-fun b!1018405 () Bool)

(assert (=> b!1018405 (= e!573070 (containsKey!528 (t!30725 l!996) key!261))))

(assert (= (and d!121841 (not res!682994)) b!1018404))

(assert (= (and b!1018404 res!682995) b!1018405))

(declare-fun m!939439 () Bool)

(assert (=> b!1018405 m!939439))

(assert (=> b!1018382 d!121841))

(declare-fun e!573126 () List!21716)

(declare-fun b!1018498 () Bool)

(declare-fun c!103128 () Bool)

(declare-fun c!103126 () Bool)

(assert (=> b!1018498 (= e!573126 (ite c!103126 (t!30725 l!996) (ite c!103128 (Cons!21712 (h!22910 l!996) (t!30725 l!996)) Nil!21713)))))

(declare-fun b!1018499 () Bool)

(declare-fun e!573124 () List!21716)

(declare-fun e!573127 () List!21716)

(assert (=> b!1018499 (= e!573124 e!573127)))

(assert (=> b!1018499 (= c!103126 (and ((_ is Cons!21712) l!996) (= (_1!7742 (h!22910 l!996)) key!261)))))

(declare-fun bm!42983 () Bool)

(declare-fun call!42988 () List!21716)

(declare-fun call!42986 () List!21716)

(assert (=> bm!42983 (= call!42988 call!42986)))

(declare-fun b!1018500 () Bool)

(assert (=> b!1018500 (= e!573126 (insertStrictlySorted!348 (t!30725 l!996) key!261 value!172))))

(declare-fun b!1018501 () Bool)

(declare-fun e!573123 () List!21716)

(declare-fun call!42987 () List!21716)

(assert (=> b!1018501 (= e!573123 call!42987)))

(declare-fun bm!42984 () Bool)

(declare-fun c!103129 () Bool)

(declare-fun $colon$colon!582 (List!21716 tuple2!15464) List!21716)

(assert (=> bm!42984 (= call!42986 ($colon$colon!582 e!573126 (ite c!103129 (h!22910 l!996) (tuple2!15465 key!261 value!172))))))

(declare-fun c!103127 () Bool)

(assert (=> bm!42984 (= c!103127 c!103129)))

(declare-fun b!1018502 () Bool)

(assert (=> b!1018502 (= c!103128 (and ((_ is Cons!21712) l!996) (bvsgt (_1!7742 (h!22910 l!996)) key!261)))))

(assert (=> b!1018502 (= e!573127 e!573123)))

(declare-fun d!121843 () Bool)

(declare-fun e!573125 () Bool)

(assert (=> d!121843 e!573125))

(declare-fun res!683025 () Bool)

(assert (=> d!121843 (=> (not res!683025) (not e!573125))))

(declare-fun lt!449550 () List!21716)

(assert (=> d!121843 (= res!683025 (isStrictlySorted!663 lt!449550))))

(assert (=> d!121843 (= lt!449550 e!573124)))

(assert (=> d!121843 (= c!103129 (and ((_ is Cons!21712) l!996) (bvslt (_1!7742 (h!22910 l!996)) key!261)))))

(assert (=> d!121843 (isStrictlySorted!663 l!996)))

(assert (=> d!121843 (= (insertStrictlySorted!348 l!996 key!261 value!172) lt!449550)))

(declare-fun b!1018503 () Bool)

(declare-fun res!683024 () Bool)

(assert (=> b!1018503 (=> (not res!683024) (not e!573125))))

(assert (=> b!1018503 (= res!683024 (containsKey!528 lt!449550 key!261))))

(declare-fun b!1018504 () Bool)

(declare-fun contains!5911 (List!21716 tuple2!15464) Bool)

(assert (=> b!1018504 (= e!573125 (contains!5911 lt!449550 (tuple2!15465 key!261 value!172)))))

(declare-fun b!1018505 () Bool)

(assert (=> b!1018505 (= e!573124 call!42986)))

(declare-fun b!1018506 () Bool)

(assert (=> b!1018506 (= e!573123 call!42987)))

(declare-fun b!1018507 () Bool)

(assert (=> b!1018507 (= e!573127 call!42988)))

(declare-fun bm!42985 () Bool)

(assert (=> bm!42985 (= call!42987 call!42988)))

(assert (= (and d!121843 c!103129) b!1018505))

(assert (= (and d!121843 (not c!103129)) b!1018499))

(assert (= (and b!1018499 c!103126) b!1018507))

(assert (= (and b!1018499 (not c!103126)) b!1018502))

(assert (= (and b!1018502 c!103128) b!1018506))

(assert (= (and b!1018502 (not c!103128)) b!1018501))

(assert (= (or b!1018506 b!1018501) bm!42985))

(assert (= (or b!1018507 bm!42985) bm!42983))

(assert (= (or b!1018505 bm!42983) bm!42984))

(assert (= (and bm!42984 c!103127) b!1018500))

(assert (= (and bm!42984 (not c!103127)) b!1018498))

(assert (= (and d!121843 res!683025) b!1018503))

(assert (= (and b!1018503 res!683024) b!1018504))

(declare-fun m!939465 () Bool)

(assert (=> bm!42984 m!939465))

(declare-fun m!939467 () Bool)

(assert (=> d!121843 m!939467))

(assert (=> d!121843 m!939425))

(declare-fun m!939469 () Bool)

(assert (=> b!1018504 m!939469))

(declare-fun m!939471 () Bool)

(assert (=> b!1018503 m!939471))

(declare-fun m!939473 () Bool)

(assert (=> b!1018500 m!939473))

(assert (=> b!1018383 d!121843))

(declare-fun b!1018522 () Bool)

(declare-fun e!573140 () Bool)

(declare-fun tp!71066 () Bool)

(assert (=> b!1018522 (= e!573140 (and tp_is_empty!23727 tp!71066))))

(assert (=> b!1018384 (= tp!71060 e!573140)))

(assert (= (and b!1018384 ((_ is Cons!21712) (t!30725 l!996))) b!1018522))

(check-sat (not b!1018503) tp_is_empty!23727 (not b!1018405) (not bm!42984) (not b!1018504) (not b!1018399) (not b!1018500) (not d!121843) (not b!1018522))
(check-sat)
(get-model)

(declare-fun d!121871 () Bool)

(declare-fun lt!449558 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!489 (List!21716) (InoxSet tuple2!15464))

(assert (=> d!121871 (= lt!449558 (select (content!489 lt!449550) (tuple2!15465 key!261 value!172)))))

(declare-fun e!573185 () Bool)

(assert (=> d!121871 (= lt!449558 e!573185)))

(declare-fun res!683066 () Bool)

(assert (=> d!121871 (=> (not res!683066) (not e!573185))))

(assert (=> d!121871 (= res!683066 ((_ is Cons!21712) lt!449550))))

(assert (=> d!121871 (= (contains!5911 lt!449550 (tuple2!15465 key!261 value!172)) lt!449558)))

(declare-fun b!1018580 () Bool)

(declare-fun e!573184 () Bool)

(assert (=> b!1018580 (= e!573185 e!573184)))

(declare-fun res!683067 () Bool)

(assert (=> b!1018580 (=> res!683067 e!573184)))

(assert (=> b!1018580 (= res!683067 (= (h!22910 lt!449550) (tuple2!15465 key!261 value!172)))))

(declare-fun b!1018581 () Bool)

(assert (=> b!1018581 (= e!573184 (contains!5911 (t!30725 lt!449550) (tuple2!15465 key!261 value!172)))))

(assert (= (and d!121871 res!683066) b!1018580))

(assert (= (and b!1018580 (not res!683067)) b!1018581))

(declare-fun m!939519 () Bool)

(assert (=> d!121871 m!939519))

(declare-fun m!939521 () Bool)

(assert (=> d!121871 m!939521))

(declare-fun m!939523 () Bool)

(assert (=> b!1018581 m!939523))

(assert (=> b!1018504 d!121871))

(declare-fun b!1018586 () Bool)

(declare-fun e!573193 () List!21716)

(declare-fun c!103140 () Bool)

(declare-fun c!103138 () Bool)

(assert (=> b!1018586 (= e!573193 (ite c!103138 (t!30725 (t!30725 l!996)) (ite c!103140 (Cons!21712 (h!22910 (t!30725 l!996)) (t!30725 (t!30725 l!996))) Nil!21713)))))

(declare-fun b!1018587 () Bool)

(declare-fun e!573191 () List!21716)

(declare-fun e!573194 () List!21716)

(assert (=> b!1018587 (= e!573191 e!573194)))

(assert (=> b!1018587 (= c!103138 (and ((_ is Cons!21712) (t!30725 l!996)) (= (_1!7742 (h!22910 (t!30725 l!996))) key!261)))))

(declare-fun bm!42992 () Bool)

(declare-fun call!42997 () List!21716)

(declare-fun call!42995 () List!21716)

(assert (=> bm!42992 (= call!42997 call!42995)))

(declare-fun b!1018588 () Bool)

(assert (=> b!1018588 (= e!573193 (insertStrictlySorted!348 (t!30725 (t!30725 l!996)) key!261 value!172))))

(declare-fun b!1018589 () Bool)

(declare-fun e!573190 () List!21716)

(declare-fun call!42996 () List!21716)

(assert (=> b!1018589 (= e!573190 call!42996)))

(declare-fun c!103141 () Bool)

(declare-fun bm!42993 () Bool)

(assert (=> bm!42993 (= call!42995 ($colon$colon!582 e!573193 (ite c!103141 (h!22910 (t!30725 l!996)) (tuple2!15465 key!261 value!172))))))

(declare-fun c!103139 () Bool)

(assert (=> bm!42993 (= c!103139 c!103141)))

(declare-fun b!1018590 () Bool)

(assert (=> b!1018590 (= c!103140 (and ((_ is Cons!21712) (t!30725 l!996)) (bvsgt (_1!7742 (h!22910 (t!30725 l!996))) key!261)))))

(assert (=> b!1018590 (= e!573194 e!573190)))

(declare-fun d!121881 () Bool)

(declare-fun e!573192 () Bool)

(assert (=> d!121881 e!573192))

(declare-fun res!683073 () Bool)

(assert (=> d!121881 (=> (not res!683073) (not e!573192))))

(declare-fun lt!449561 () List!21716)

(assert (=> d!121881 (= res!683073 (isStrictlySorted!663 lt!449561))))

(assert (=> d!121881 (= lt!449561 e!573191)))

(assert (=> d!121881 (= c!103141 (and ((_ is Cons!21712) (t!30725 l!996)) (bvslt (_1!7742 (h!22910 (t!30725 l!996))) key!261)))))

(assert (=> d!121881 (isStrictlySorted!663 (t!30725 l!996))))

(assert (=> d!121881 (= (insertStrictlySorted!348 (t!30725 l!996) key!261 value!172) lt!449561)))

(declare-fun b!1018591 () Bool)

(declare-fun res!683071 () Bool)

(assert (=> b!1018591 (=> (not res!683071) (not e!573192))))

(assert (=> b!1018591 (= res!683071 (containsKey!528 lt!449561 key!261))))

(declare-fun b!1018592 () Bool)

(assert (=> b!1018592 (= e!573192 (contains!5911 lt!449561 (tuple2!15465 key!261 value!172)))))

(declare-fun b!1018593 () Bool)

(assert (=> b!1018593 (= e!573191 call!42995)))

(declare-fun b!1018594 () Bool)

(assert (=> b!1018594 (= e!573190 call!42996)))

(declare-fun b!1018595 () Bool)

(assert (=> b!1018595 (= e!573194 call!42997)))

(declare-fun bm!42994 () Bool)

(assert (=> bm!42994 (= call!42996 call!42997)))

(assert (= (and d!121881 c!103141) b!1018593))

(assert (= (and d!121881 (not c!103141)) b!1018587))

(assert (= (and b!1018587 c!103138) b!1018595))

(assert (= (and b!1018587 (not c!103138)) b!1018590))

(assert (= (and b!1018590 c!103140) b!1018594))

(assert (= (and b!1018590 (not c!103140)) b!1018589))

(assert (= (or b!1018594 b!1018589) bm!42994))

(assert (= (or b!1018595 bm!42994) bm!42992))

(assert (= (or b!1018593 bm!42992) bm!42993))

(assert (= (and bm!42993 c!103139) b!1018588))

(assert (= (and bm!42993 (not c!103139)) b!1018586))

(assert (= (and d!121881 res!683073) b!1018591))

(assert (= (and b!1018591 res!683071) b!1018592))

(declare-fun m!939525 () Bool)

(assert (=> bm!42993 m!939525))

(declare-fun m!939527 () Bool)

(assert (=> d!121881 m!939527))

(assert (=> d!121881 m!939437))

(declare-fun m!939529 () Bool)

(assert (=> b!1018592 m!939529))

(declare-fun m!939531 () Bool)

(assert (=> b!1018591 m!939531))

(declare-fun m!939533 () Bool)

(assert (=> b!1018588 m!939533))

(assert (=> b!1018500 d!121881))

(declare-fun d!121883 () Bool)

(declare-fun res!683076 () Bool)

(declare-fun e!573197 () Bool)

(assert (=> d!121883 (=> res!683076 e!573197)))

(assert (=> d!121883 (= res!683076 (and ((_ is Cons!21712) (t!30725 l!996)) (= (_1!7742 (h!22910 (t!30725 l!996))) key!261)))))

(assert (=> d!121883 (= (containsKey!528 (t!30725 l!996) key!261) e!573197)))

(declare-fun b!1018598 () Bool)

(declare-fun e!573198 () Bool)

(assert (=> b!1018598 (= e!573197 e!573198)))

(declare-fun res!683077 () Bool)

(assert (=> b!1018598 (=> (not res!683077) (not e!573198))))

(assert (=> b!1018598 (= res!683077 (and (or (not ((_ is Cons!21712) (t!30725 l!996))) (bvsle (_1!7742 (h!22910 (t!30725 l!996))) key!261)) ((_ is Cons!21712) (t!30725 l!996)) (bvslt (_1!7742 (h!22910 (t!30725 l!996))) key!261)))))

(declare-fun b!1018599 () Bool)

(assert (=> b!1018599 (= e!573198 (containsKey!528 (t!30725 (t!30725 l!996)) key!261))))

(assert (= (and d!121883 (not res!683076)) b!1018598))

(assert (= (and b!1018598 res!683077) b!1018599))

(declare-fun m!939541 () Bool)

(assert (=> b!1018599 m!939541))

(assert (=> b!1018405 d!121883))

(declare-fun d!121887 () Bool)

(declare-fun res!683080 () Bool)

(declare-fun e!573201 () Bool)

(assert (=> d!121887 (=> res!683080 e!573201)))

(assert (=> d!121887 (= res!683080 (and ((_ is Cons!21712) lt!449550) (= (_1!7742 (h!22910 lt!449550)) key!261)))))

(assert (=> d!121887 (= (containsKey!528 lt!449550 key!261) e!573201)))

(declare-fun b!1018602 () Bool)

(declare-fun e!573202 () Bool)

(assert (=> b!1018602 (= e!573201 e!573202)))

(declare-fun res!683081 () Bool)

(assert (=> b!1018602 (=> (not res!683081) (not e!573202))))

(assert (=> b!1018602 (= res!683081 (and (or (not ((_ is Cons!21712) lt!449550)) (bvsle (_1!7742 (h!22910 lt!449550)) key!261)) ((_ is Cons!21712) lt!449550) (bvslt (_1!7742 (h!22910 lt!449550)) key!261)))))

(declare-fun b!1018603 () Bool)

(assert (=> b!1018603 (= e!573202 (containsKey!528 (t!30725 lt!449550) key!261))))

(assert (= (and d!121887 (not res!683080)) b!1018602))

(assert (= (and b!1018602 res!683081) b!1018603))

(declare-fun m!939545 () Bool)

(assert (=> b!1018603 m!939545))

(assert (=> b!1018503 d!121887))

(declare-fun d!121889 () Bool)

(declare-fun res!683082 () Bool)

(declare-fun e!573204 () Bool)

(assert (=> d!121889 (=> res!683082 e!573204)))

(assert (=> d!121889 (= res!683082 (or ((_ is Nil!21713) lt!449550) ((_ is Nil!21713) (t!30725 lt!449550))))))

(assert (=> d!121889 (= (isStrictlySorted!663 lt!449550) e!573204)))

(declare-fun b!1018605 () Bool)

(declare-fun e!573205 () Bool)

(assert (=> b!1018605 (= e!573204 e!573205)))

(declare-fun res!683083 () Bool)

(assert (=> b!1018605 (=> (not res!683083) (not e!573205))))

(assert (=> b!1018605 (= res!683083 (bvslt (_1!7742 (h!22910 lt!449550)) (_1!7742 (h!22910 (t!30725 lt!449550)))))))

(declare-fun b!1018606 () Bool)

(assert (=> b!1018606 (= e!573205 (isStrictlySorted!663 (t!30725 lt!449550)))))

(assert (= (and d!121889 (not res!683082)) b!1018605))

(assert (= (and b!1018605 res!683083) b!1018606))

(declare-fun m!939547 () Bool)

(assert (=> b!1018606 m!939547))

(assert (=> d!121843 d!121889))

(assert (=> d!121843 d!121835))

(declare-fun d!121891 () Bool)

(assert (=> d!121891 (= ($colon$colon!582 e!573126 (ite c!103129 (h!22910 l!996) (tuple2!15465 key!261 value!172))) (Cons!21712 (ite c!103129 (h!22910 l!996) (tuple2!15465 key!261 value!172)) e!573126))))

(assert (=> bm!42984 d!121891))

(declare-fun d!121893 () Bool)

(declare-fun res!683084 () Bool)

(declare-fun e!573206 () Bool)

(assert (=> d!121893 (=> res!683084 e!573206)))

(assert (=> d!121893 (= res!683084 (or ((_ is Nil!21713) (t!30725 l!996)) ((_ is Nil!21713) (t!30725 (t!30725 l!996)))))))

(assert (=> d!121893 (= (isStrictlySorted!663 (t!30725 l!996)) e!573206)))

(declare-fun b!1018607 () Bool)

(declare-fun e!573207 () Bool)

(assert (=> b!1018607 (= e!573206 e!573207)))

(declare-fun res!683085 () Bool)

(assert (=> b!1018607 (=> (not res!683085) (not e!573207))))

(assert (=> b!1018607 (= res!683085 (bvslt (_1!7742 (h!22910 (t!30725 l!996))) (_1!7742 (h!22910 (t!30725 (t!30725 l!996))))))))

(declare-fun b!1018608 () Bool)

(assert (=> b!1018608 (= e!573207 (isStrictlySorted!663 (t!30725 (t!30725 l!996))))))

(assert (= (and d!121893 (not res!683084)) b!1018607))

(assert (= (and b!1018607 res!683085) b!1018608))

(declare-fun m!939549 () Bool)

(assert (=> b!1018608 m!939549))

(assert (=> b!1018399 d!121893))

(declare-fun b!1018609 () Bool)

(declare-fun e!573208 () Bool)

(declare-fun tp!71075 () Bool)

(assert (=> b!1018609 (= e!573208 (and tp_is_empty!23727 tp!71075))))

(assert (=> b!1018522 (= tp!71066 e!573208)))

(assert (= (and b!1018522 ((_ is Cons!21712) (t!30725 (t!30725 l!996)))) b!1018609))

(check-sat (not b!1018609) tp_is_empty!23727 (not b!1018606) (not b!1018581) (not bm!42993) (not d!121881) (not b!1018592) (not b!1018599) (not b!1018608) (not b!1018591) (not b!1018603) (not b!1018588) (not d!121871))
(check-sat)
