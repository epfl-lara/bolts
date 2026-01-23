; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!145318 () Bool)

(assert start!145318)

(declare-fun b!1563999 () Bool)

(declare-fun e!1004411 () Bool)

(declare-fun tp_is_empty!7123 () Bool)

(declare-fun tp!460613 () Bool)

(assert (=> b!1563999 (= e!1004411 (and tp_is_empty!7123 tp!460613))))

(declare-fun b!1563997 () Bool)

(declare-fun res!697188 () Bool)

(declare-fun e!1004412 () Bool)

(assert (=> b!1563997 (=> (not res!697188) (not e!1004412))))

(declare-datatypes ((B!1427 0))(
  ( (B!1428 (val!4977 Int)) )
))
(declare-datatypes ((List!17044 0))(
  ( (Nil!16974) (Cons!16974 (h!22375 B!1427) (t!141623 List!17044)) )
))
(declare-fun l!3627 () List!17044)

(assert (=> b!1563997 (= res!697188 (not (is-Cons!16974 l!3627)))))

(declare-fun b!1563996 () Bool)

(declare-fun res!697186 () Bool)

(assert (=> b!1563996 (=> (not res!697186) (not e!1004412))))

(declare-fun elmt!170 () B!1427)

(declare-fun contains!2995 (List!17044 B!1427) Bool)

(assert (=> b!1563996 (= res!697186 (not (contains!2995 l!3627 elmt!170)))))

(declare-fun b!1563998 () Bool)

(declare-fun noDuplicate!237 (List!17044) Bool)

(declare-fun ++!4427 (List!17044 List!17044) List!17044)

(assert (=> b!1563998 (= e!1004412 (not (noDuplicate!237 (++!4427 l!3627 (Cons!16974 elmt!170 Nil!16974)))))))

(declare-fun res!697187 () Bool)

(assert (=> start!145318 (=> (not res!697187) (not e!1004412))))

(assert (=> start!145318 (= res!697187 (noDuplicate!237 l!3627))))

(assert (=> start!145318 e!1004412))

(assert (=> start!145318 e!1004411))

(assert (=> start!145318 tp_is_empty!7123))

(assert (= (and start!145318 res!697187) b!1563996))

(assert (= (and b!1563996 res!697186) b!1563997))

(assert (= (and b!1563997 res!697188) b!1563998))

(assert (= (and start!145318 (is-Cons!16974 l!3627)) b!1563999))

(declare-fun m!1835451 () Bool)

(assert (=> b!1563996 m!1835451))

(declare-fun m!1835453 () Bool)

(assert (=> b!1563998 m!1835453))

(assert (=> b!1563998 m!1835453))

(declare-fun m!1835455 () Bool)

(assert (=> b!1563998 m!1835455))

(declare-fun m!1835457 () Bool)

(assert (=> start!145318 m!1835457))

(push 1)

(assert (not b!1563996))

(assert (not b!1563998))

(assert (not b!1563999))

(assert (not start!145318))

(assert tp_is_empty!7123)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!463260 () Bool)

(declare-fun lt!541505 () Bool)

(declare-fun content!2355 (List!17044) (Set B!1427))

(assert (=> d!463260 (= lt!541505 (set.member elmt!170 (content!2355 l!3627)))))

(declare-fun e!1004424 () Bool)

(assert (=> d!463260 (= lt!541505 e!1004424)))

(declare-fun res!697203 () Bool)

(assert (=> d!463260 (=> (not res!697203) (not e!1004424))))

(assert (=> d!463260 (= res!697203 (is-Cons!16974 l!3627))))

(assert (=> d!463260 (= (contains!2995 l!3627 elmt!170) lt!541505)))

(declare-fun b!1564016 () Bool)

(declare-fun e!1004423 () Bool)

(assert (=> b!1564016 (= e!1004424 e!1004423)))

(declare-fun res!697202 () Bool)

(assert (=> b!1564016 (=> res!697202 e!1004423)))

(assert (=> b!1564016 (= res!697202 (= (h!22375 l!3627) elmt!170))))

(declare-fun b!1564017 () Bool)

(assert (=> b!1564017 (= e!1004423 (contains!2995 (t!141623 l!3627) elmt!170))))

(assert (= (and d!463260 res!697203) b!1564016))

(assert (= (and b!1564016 (not res!697202)) b!1564017))

(declare-fun m!1835467 () Bool)

(assert (=> d!463260 m!1835467))

(declare-fun m!1835469 () Bool)

(assert (=> d!463260 m!1835469))

(declare-fun m!1835471 () Bool)

(assert (=> b!1564017 m!1835471))

(assert (=> b!1563996 d!463260))

(declare-fun d!463262 () Bool)

(declare-fun res!697208 () Bool)

(declare-fun e!1004429 () Bool)

(assert (=> d!463262 (=> res!697208 e!1004429)))

(assert (=> d!463262 (= res!697208 (is-Nil!16974 (++!4427 l!3627 (Cons!16974 elmt!170 Nil!16974))))))

(assert (=> d!463262 (= (noDuplicate!237 (++!4427 l!3627 (Cons!16974 elmt!170 Nil!16974))) e!1004429)))

(declare-fun b!1564022 () Bool)

(declare-fun e!1004430 () Bool)

(assert (=> b!1564022 (= e!1004429 e!1004430)))

(declare-fun res!697209 () Bool)

(assert (=> b!1564022 (=> (not res!697209) (not e!1004430))))

(assert (=> b!1564022 (= res!697209 (not (contains!2995 (t!141623 (++!4427 l!3627 (Cons!16974 elmt!170 Nil!16974))) (h!22375 (++!4427 l!3627 (Cons!16974 elmt!170 Nil!16974))))))))

(declare-fun b!1564023 () Bool)

(assert (=> b!1564023 (= e!1004430 (noDuplicate!237 (t!141623 (++!4427 l!3627 (Cons!16974 elmt!170 Nil!16974)))))))

(assert (= (and d!463262 (not res!697208)) b!1564022))

(assert (= (and b!1564022 res!697209) b!1564023))

(declare-fun m!1835473 () Bool)

(assert (=> b!1564022 m!1835473))

(declare-fun m!1835475 () Bool)

(assert (=> b!1564023 m!1835475))

(assert (=> b!1563998 d!463262))

(declare-fun b!1564040 () Bool)

(declare-fun res!697218 () Bool)

(declare-fun e!1004440 () Bool)

(assert (=> b!1564040 (=> (not res!697218) (not e!1004440))))

(declare-fun lt!541508 () List!17044)

(declare-fun size!13769 (List!17044) Int)

(assert (=> b!1564040 (= res!697218 (= (size!13769 lt!541508) (+ (size!13769 l!3627) (size!13769 (Cons!16974 elmt!170 Nil!16974)))))))

(declare-fun d!463266 () Bool)

(assert (=> d!463266 e!1004440))

(declare-fun res!697220 () Bool)

(assert (=> d!463266 (=> (not res!697220) (not e!1004440))))

(assert (=> d!463266 (= res!697220 (= (content!2355 lt!541508) (set.union (content!2355 l!3627) (content!2355 (Cons!16974 elmt!170 Nil!16974)))))))

(declare-fun e!1004442 () List!17044)

(assert (=> d!463266 (= lt!541508 e!1004442)))

(declare-fun c!253509 () Bool)

(assert (=> d!463266 (= c!253509 (is-Nil!16974 l!3627))))

(assert (=> d!463266 (= (++!4427 l!3627 (Cons!16974 elmt!170 Nil!16974)) lt!541508)))

(declare-fun b!1564041 () Bool)

(assert (=> b!1564041 (= e!1004440 (or (not (= (Cons!16974 elmt!170 Nil!16974) Nil!16974)) (= lt!541508 l!3627)))))

(declare-fun b!1564039 () Bool)

(assert (=> b!1564039 (= e!1004442 (Cons!16974 (h!22375 l!3627) (++!4427 (t!141623 l!3627) (Cons!16974 elmt!170 Nil!16974))))))

(declare-fun b!1564037 () Bool)

(assert (=> b!1564037 (= e!1004442 (Cons!16974 elmt!170 Nil!16974))))

(assert (= (and d!463266 c!253509) b!1564037))

(assert (= (and d!463266 (not c!253509)) b!1564039))

(assert (= (and d!463266 res!697220) b!1564040))

(assert (= (and b!1564040 res!697218) b!1564041))

(declare-fun m!1835477 () Bool)

(assert (=> b!1564040 m!1835477))

(declare-fun m!1835479 () Bool)

(assert (=> b!1564040 m!1835479))

(declare-fun m!1835481 () Bool)

(assert (=> b!1564040 m!1835481))

(declare-fun m!1835483 () Bool)

(assert (=> d!463266 m!1835483))

(assert (=> d!463266 m!1835467))

(declare-fun m!1835485 () Bool)

(assert (=> d!463266 m!1835485))

(declare-fun m!1835487 () Bool)

(assert (=> b!1564039 m!1835487))

(assert (=> b!1563998 d!463266))

(declare-fun d!463268 () Bool)

(declare-fun res!697222 () Bool)

(declare-fun e!1004443 () Bool)

(assert (=> d!463268 (=> res!697222 e!1004443)))

(assert (=> d!463268 (= res!697222 (is-Nil!16974 l!3627))))

(assert (=> d!463268 (= (noDuplicate!237 l!3627) e!1004443)))

(declare-fun b!1564042 () Bool)

(declare-fun e!1004444 () Bool)

(assert (=> b!1564042 (= e!1004443 e!1004444)))

(declare-fun res!697223 () Bool)

(assert (=> b!1564042 (=> (not res!697223) (not e!1004444))))

(assert (=> b!1564042 (= res!697223 (not (contains!2995 (t!141623 l!3627) (h!22375 l!3627))))))

(declare-fun b!1564043 () Bool)

(assert (=> b!1564043 (= e!1004444 (noDuplicate!237 (t!141623 l!3627)))))

(assert (= (and d!463268 (not res!697222)) b!1564042))

(assert (= (and b!1564042 res!697223) b!1564043))

(declare-fun m!1835493 () Bool)

(assert (=> b!1564042 m!1835493))

(declare-fun m!1835495 () Bool)

(assert (=> b!1564043 m!1835495))

(assert (=> start!145318 d!463268))

(declare-fun b!1564048 () Bool)

(declare-fun e!1004447 () Bool)

(declare-fun tp!460619 () Bool)

(assert (=> b!1564048 (= e!1004447 (and tp_is_empty!7123 tp!460619))))

(assert (=> b!1563999 (= tp!460613 e!1004447)))

(assert (= (and b!1563999 (is-Cons!16974 (t!141623 l!3627))) b!1564048))

(push 1)

(assert (not b!1564022))

(assert (not b!1564042))

(assert (not b!1564039))

(assert tp_is_empty!7123)

(assert (not b!1564043))

(assert (not b!1564017))

(assert (not d!463266))

(assert (not d!463260))

(assert (not b!1564040))

(assert (not b!1564023))

(assert (not b!1564048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

