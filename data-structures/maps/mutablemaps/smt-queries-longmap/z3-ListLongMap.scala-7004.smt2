; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88974 () Bool)

(assert start!88974)

(declare-fun b!1020349 () Bool)

(declare-fun e!574369 () Bool)

(declare-datatypes ((B!1732 0))(
  ( (B!1733 (val!11950 Int)) )
))
(declare-datatypes ((tuple2!15536 0))(
  ( (tuple2!15537 (_1!7778 (_ BitVec 64)) (_2!7778 B!1732)) )
))
(declare-datatypes ((List!21752 0))(
  ( (Nil!21749) (Cons!21748 (h!22946 tuple2!15536) (t!30769 List!21752)) )
))
(declare-fun l!1367 () List!21752)

(declare-fun lt!449833 () tuple2!15536)

(declare-fun contains!5943 (List!21752 tuple2!15536) Bool)

(assert (=> b!1020349 (= e!574369 (not (contains!5943 (t!30769 l!1367) lt!449833)))))

(declare-fun b!1020350 () Bool)

(declare-fun e!574366 () Bool)

(assert (=> b!1020350 (= e!574366 e!574369)))

(declare-fun res!683985 () Bool)

(assert (=> b!1020350 (=> res!683985 e!574369)))

(declare-fun isStrictlySorted!699 (List!21752) Bool)

(assert (=> b!1020350 (= res!683985 (not (isStrictlySorted!699 (t!30769 l!1367))))))

(declare-fun b!1020351 () Bool)

(declare-fun res!683987 () Bool)

(assert (=> b!1020351 (=> (not res!683987) (not e!574366))))

(get-info :version)

(assert (=> b!1020351 (= res!683987 (and ((_ is Cons!21748) l!1367) (not (= (h!22946 l!1367) lt!449833))))))

(declare-fun b!1020352 () Bool)

(declare-fun e!574368 () Bool)

(assert (=> b!1020352 (= e!574368 e!574366)))

(declare-fun res!683986 () Bool)

(assert (=> b!1020352 (=> (not res!683986) (not e!574366))))

(assert (=> b!1020352 (= res!683986 (contains!5943 l!1367 lt!449833))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1732)

(assert (=> b!1020352 (= lt!449833 (tuple2!15537 key!393 value!188))))

(declare-fun b!1020353 () Bool)

(declare-fun e!574367 () Bool)

(declare-fun tp_is_empty!23799 () Bool)

(declare-fun tp!71258 () Bool)

(assert (=> b!1020353 (= e!574367 (and tp_is_empty!23799 tp!71258))))

(declare-fun res!683988 () Bool)

(assert (=> start!88974 (=> (not res!683988) (not e!574368))))

(assert (=> start!88974 (= res!683988 (isStrictlySorted!699 l!1367))))

(assert (=> start!88974 e!574368))

(assert (=> start!88974 e!574367))

(assert (=> start!88974 true))

(assert (=> start!88974 tp_is_empty!23799))

(assert (= (and start!88974 res!683988) b!1020352))

(assert (= (and b!1020352 res!683986) b!1020351))

(assert (= (and b!1020351 res!683987) b!1020350))

(assert (= (and b!1020350 (not res!683985)) b!1020349))

(assert (= (and start!88974 ((_ is Cons!21748) l!1367)) b!1020353))

(declare-fun m!940443 () Bool)

(assert (=> b!1020349 m!940443))

(declare-fun m!940445 () Bool)

(assert (=> b!1020350 m!940445))

(declare-fun m!940447 () Bool)

(assert (=> b!1020352 m!940447))

(declare-fun m!940449 () Bool)

(assert (=> start!88974 m!940449))

(check-sat (not b!1020350) (not b!1020349) (not start!88974) (not b!1020353) tp_is_empty!23799 (not b!1020352))
(check-sat)
(get-model)

(declare-fun d!122305 () Bool)

(declare-fun lt!449842 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!501 (List!21752) (InoxSet tuple2!15536))

(assert (=> d!122305 (= lt!449842 (select (content!501 l!1367) lt!449833))))

(declare-fun e!574399 () Bool)

(assert (=> d!122305 (= lt!449842 e!574399)))

(declare-fun res!684018 () Bool)

(assert (=> d!122305 (=> (not res!684018) (not e!574399))))

(assert (=> d!122305 (= res!684018 ((_ is Cons!21748) l!1367))))

(assert (=> d!122305 (= (contains!5943 l!1367 lt!449833) lt!449842)))

(declare-fun b!1020385 () Bool)

(declare-fun e!574398 () Bool)

(assert (=> b!1020385 (= e!574399 e!574398)))

(declare-fun res!684017 () Bool)

(assert (=> b!1020385 (=> res!684017 e!574398)))

(assert (=> b!1020385 (= res!684017 (= (h!22946 l!1367) lt!449833))))

(declare-fun b!1020386 () Bool)

(assert (=> b!1020386 (= e!574398 (contains!5943 (t!30769 l!1367) lt!449833))))

(assert (= (and d!122305 res!684018) b!1020385))

(assert (= (and b!1020385 (not res!684017)) b!1020386))

(declare-fun m!940465 () Bool)

(assert (=> d!122305 m!940465))

(declare-fun m!940467 () Bool)

(assert (=> d!122305 m!940467))

(assert (=> b!1020386 m!940443))

(assert (=> b!1020352 d!122305))

(declare-fun d!122313 () Bool)

(declare-fun lt!449843 () Bool)

(assert (=> d!122313 (= lt!449843 (select (content!501 (t!30769 l!1367)) lt!449833))))

(declare-fun e!574403 () Bool)

(assert (=> d!122313 (= lt!449843 e!574403)))

(declare-fun res!684022 () Bool)

(assert (=> d!122313 (=> (not res!684022) (not e!574403))))

(assert (=> d!122313 (= res!684022 ((_ is Cons!21748) (t!30769 l!1367)))))

(assert (=> d!122313 (= (contains!5943 (t!30769 l!1367) lt!449833) lt!449843)))

(declare-fun b!1020387 () Bool)

(declare-fun e!574400 () Bool)

(assert (=> b!1020387 (= e!574403 e!574400)))

(declare-fun res!684019 () Bool)

(assert (=> b!1020387 (=> res!684019 e!574400)))

(assert (=> b!1020387 (= res!684019 (= (h!22946 (t!30769 l!1367)) lt!449833))))

(declare-fun b!1020388 () Bool)

(assert (=> b!1020388 (= e!574400 (contains!5943 (t!30769 (t!30769 l!1367)) lt!449833))))

(assert (= (and d!122313 res!684022) b!1020387))

(assert (= (and b!1020387 (not res!684019)) b!1020388))

(declare-fun m!940469 () Bool)

(assert (=> d!122313 m!940469))

(declare-fun m!940471 () Bool)

(assert (=> d!122313 m!940471))

(declare-fun m!940473 () Bool)

(assert (=> b!1020388 m!940473))

(assert (=> b!1020349 d!122313))

(declare-fun d!122315 () Bool)

(declare-fun res!684041 () Bool)

(declare-fun e!574425 () Bool)

(assert (=> d!122315 (=> res!684041 e!574425)))

(assert (=> d!122315 (= res!684041 (or ((_ is Nil!21749) (t!30769 l!1367)) ((_ is Nil!21749) (t!30769 (t!30769 l!1367)))))))

(assert (=> d!122315 (= (isStrictlySorted!699 (t!30769 l!1367)) e!574425)))

(declare-fun b!1020414 () Bool)

(declare-fun e!574426 () Bool)

(assert (=> b!1020414 (= e!574425 e!574426)))

(declare-fun res!684042 () Bool)

(assert (=> b!1020414 (=> (not res!684042) (not e!574426))))

(assert (=> b!1020414 (= res!684042 (bvslt (_1!7778 (h!22946 (t!30769 l!1367))) (_1!7778 (h!22946 (t!30769 (t!30769 l!1367))))))))

(declare-fun b!1020415 () Bool)

(assert (=> b!1020415 (= e!574426 (isStrictlySorted!699 (t!30769 (t!30769 l!1367))))))

(assert (= (and d!122315 (not res!684041)) b!1020414))

(assert (= (and b!1020414 res!684042) b!1020415))

(declare-fun m!940487 () Bool)

(assert (=> b!1020415 m!940487))

(assert (=> b!1020350 d!122315))

(declare-fun d!122323 () Bool)

(declare-fun res!684045 () Bool)

(declare-fun e!574429 () Bool)

(assert (=> d!122323 (=> res!684045 e!574429)))

(assert (=> d!122323 (= res!684045 (or ((_ is Nil!21749) l!1367) ((_ is Nil!21749) (t!30769 l!1367))))))

(assert (=> d!122323 (= (isStrictlySorted!699 l!1367) e!574429)))

(declare-fun b!1020418 () Bool)

(declare-fun e!574430 () Bool)

(assert (=> b!1020418 (= e!574429 e!574430)))

(declare-fun res!684046 () Bool)

(assert (=> b!1020418 (=> (not res!684046) (not e!574430))))

(assert (=> b!1020418 (= res!684046 (bvslt (_1!7778 (h!22946 l!1367)) (_1!7778 (h!22946 (t!30769 l!1367)))))))

(declare-fun b!1020419 () Bool)

(assert (=> b!1020419 (= e!574430 (isStrictlySorted!699 (t!30769 l!1367)))))

(assert (= (and d!122323 (not res!684045)) b!1020418))

(assert (= (and b!1020418 res!684046) b!1020419))

(assert (=> b!1020419 m!940445))

(assert (=> start!88974 d!122323))

(declare-fun b!1020430 () Bool)

(declare-fun e!574437 () Bool)

(declare-fun tp!71269 () Bool)

(assert (=> b!1020430 (= e!574437 (and tp_is_empty!23799 tp!71269))))

(assert (=> b!1020353 (= tp!71258 e!574437)))

(assert (= (and b!1020353 ((_ is Cons!21748) (t!30769 l!1367))) b!1020430))

(check-sat (not b!1020386) (not b!1020430) (not b!1020388) (not d!122313) tp_is_empty!23799 (not b!1020419) (not d!122305) (not b!1020415))
(check-sat)
