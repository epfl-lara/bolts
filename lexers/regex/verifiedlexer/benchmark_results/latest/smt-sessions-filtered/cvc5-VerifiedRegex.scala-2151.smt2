; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107510 () Bool)

(assert start!107510)

(declare-fun b!1207459 () Bool)

(declare-fun e!774511 () Bool)

(declare-fun lt!412675 () Int)

(declare-datatypes ((T!22326 0))(
  ( (T!22327 (val!3965 Int)) )
))
(declare-datatypes ((List!12144 0))(
  ( (Nil!12120) (Cons!12120 (h!17521 T!22326) (t!112560 List!12144)) )
))
(declare-fun l!2744 () List!12144)

(declare-fun ListPrimitiveSize!87 (List!12144) Int)

(assert (=> b!1207459 (= e!774511 (>= lt!412675 (ListPrimitiveSize!87 l!2744)))))

(declare-fun lt!412671 () Int)

(declare-fun r!2028 () List!12144)

(assert (=> b!1207459 (= lt!412671 (ListPrimitiveSize!87 r!2028))))

(declare-fun lt!412672 () List!12144)

(assert (=> b!1207459 (= lt!412675 (ListPrimitiveSize!87 lt!412672))))

(declare-fun res!543230 () Bool)

(declare-fun e!774509 () Bool)

(assert (=> start!107510 (=> (not res!543230) (not e!774509))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107510 (= res!543230 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107510 e!774509))

(assert (=> start!107510 true))

(declare-fun e!774513 () Bool)

(assert (=> start!107510 e!774513))

(declare-fun e!774510 () Bool)

(assert (=> start!107510 e!774510))

(declare-fun b!1207460 () Bool)

(declare-fun tp_is_empty!6133 () Bool)

(declare-fun tp!342094 () Bool)

(assert (=> b!1207460 (= e!774510 (and tp_is_empty!6133 tp!342094))))

(declare-fun b!1207461 () Bool)

(declare-fun res!543233 () Bool)

(assert (=> b!1207461 (=> (not res!543233) (not e!774511))))

(assert (=> b!1207461 (= res!543233 (and (not (= from!613 0)) (<= 0 (- from!613 1)) (<= (- from!613 1) (- until!61 1))))))

(declare-fun b!1207462 () Bool)

(declare-fun res!543229 () Bool)

(assert (=> b!1207462 (=> (not res!543229) (not e!774511))))

(declare-fun lt!412674 () Int)

(declare-fun size!9660 (List!12144) Int)

(assert (=> b!1207462 (= res!543229 (<= (- until!61 1) (+ (size!9660 lt!412672) lt!412674)))))

(declare-fun b!1207463 () Bool)

(declare-fun e!774512 () Bool)

(assert (=> b!1207463 (= e!774512 e!774511)))

(declare-fun res!543231 () Bool)

(assert (=> b!1207463 (=> (not res!543231) (not e!774511))))

(declare-fun tail!1741 (List!12144) List!12144)

(declare-fun ++!3142 (List!12144 List!12144) List!12144)

(assert (=> b!1207463 (= res!543231 (= (tail!1741 (++!3142 l!2744 r!2028)) (++!3142 lt!412672 r!2028)))))

(assert (=> b!1207463 (= lt!412672 (tail!1741 l!2744))))

(declare-fun b!1207464 () Bool)

(declare-fun tp!342095 () Bool)

(assert (=> b!1207464 (= e!774513 (and tp_is_empty!6133 tp!342095))))

(declare-fun b!1207465 () Bool)

(assert (=> b!1207465 (= e!774509 e!774512)))

(declare-fun res!543232 () Bool)

(assert (=> b!1207465 (=> (not res!543232) (not e!774512))))

(declare-fun lt!412673 () Int)

(assert (=> b!1207465 (= res!543232 (and (<= until!61 (+ lt!412673 lt!412674)) (not (= l!2744 Nil!12120)) (not (= r!2028 Nil!12120)) (not (= until!61 0))))))

(assert (=> b!1207465 (= lt!412674 (size!9660 r!2028))))

(assert (=> b!1207465 (= lt!412673 (size!9660 l!2744))))

(assert (= (and start!107510 res!543230) b!1207465))

(assert (= (and b!1207465 res!543232) b!1207463))

(assert (= (and b!1207463 res!543231) b!1207461))

(assert (= (and b!1207461 res!543233) b!1207462))

(assert (= (and b!1207462 res!543229) b!1207459))

(assert (= (and start!107510 (is-Cons!12120 l!2744)) b!1207464))

(assert (= (and start!107510 (is-Cons!12120 r!2028)) b!1207460))

(declare-fun m!1382805 () Bool)

(assert (=> b!1207459 m!1382805))

(declare-fun m!1382807 () Bool)

(assert (=> b!1207459 m!1382807))

(declare-fun m!1382809 () Bool)

(assert (=> b!1207459 m!1382809))

(declare-fun m!1382811 () Bool)

(assert (=> b!1207462 m!1382811))

(declare-fun m!1382813 () Bool)

(assert (=> b!1207463 m!1382813))

(assert (=> b!1207463 m!1382813))

(declare-fun m!1382815 () Bool)

(assert (=> b!1207463 m!1382815))

(declare-fun m!1382817 () Bool)

(assert (=> b!1207463 m!1382817))

(declare-fun m!1382819 () Bool)

(assert (=> b!1207463 m!1382819))

(declare-fun m!1382821 () Bool)

(assert (=> b!1207465 m!1382821))

(declare-fun m!1382823 () Bool)

(assert (=> b!1207465 m!1382823))

(push 1)

(assert (not b!1207459))

(assert tp_is_empty!6133)

(assert (not b!1207460))

(assert (not b!1207463))

(assert (not b!1207464))

(assert (not b!1207465))

(assert (not b!1207462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!345328 () Bool)

(assert (=> d!345328 (= (tail!1741 (++!3142 l!2744 r!2028)) (t!112560 (++!3142 l!2744 r!2028)))))

(assert (=> b!1207463 d!345328))

(declare-fun b!1207507 () Bool)

(declare-fun res!543253 () Bool)

(declare-fun e!774538 () Bool)

(assert (=> b!1207507 (=> (not res!543253) (not e!774538))))

(declare-fun lt!412698 () List!12144)

(assert (=> b!1207507 (= res!543253 (= (size!9660 lt!412698) (+ (size!9660 l!2744) (size!9660 r!2028))))))

(declare-fun b!1207505 () Bool)

(declare-fun e!774539 () List!12144)

(assert (=> b!1207505 (= e!774539 r!2028)))

(declare-fun b!1207506 () Bool)

(assert (=> b!1207506 (= e!774539 (Cons!12120 (h!17521 l!2744) (++!3142 (t!112560 l!2744) r!2028)))))

(declare-fun d!345330 () Bool)

(assert (=> d!345330 e!774538))

(declare-fun res!543254 () Bool)

(assert (=> d!345330 (=> (not res!543254) (not e!774538))))

(declare-fun content!1719 (List!12144) (Set T!22326))

(assert (=> d!345330 (= res!543254 (= (content!1719 lt!412698) (set.union (content!1719 l!2744) (content!1719 r!2028))))))

(assert (=> d!345330 (= lt!412698 e!774539)))

(declare-fun c!202050 () Bool)

(assert (=> d!345330 (= c!202050 (is-Nil!12120 l!2744))))

(assert (=> d!345330 (= (++!3142 l!2744 r!2028) lt!412698)))

(declare-fun b!1207508 () Bool)

(assert (=> b!1207508 (= e!774538 (or (not (= r!2028 Nil!12120)) (= lt!412698 l!2744)))))

(assert (= (and d!345330 c!202050) b!1207505))

(assert (= (and d!345330 (not c!202050)) b!1207506))

(assert (= (and d!345330 res!543254) b!1207507))

(assert (= (and b!1207507 res!543253) b!1207508))

(declare-fun m!1382851 () Bool)

(assert (=> b!1207507 m!1382851))

(assert (=> b!1207507 m!1382823))

(assert (=> b!1207507 m!1382821))

(declare-fun m!1382853 () Bool)

(assert (=> b!1207506 m!1382853))

(declare-fun m!1382855 () Bool)

(assert (=> d!345330 m!1382855))

(declare-fun m!1382857 () Bool)

(assert (=> d!345330 m!1382857))

(declare-fun m!1382859 () Bool)

(assert (=> d!345330 m!1382859))

(assert (=> b!1207463 d!345330))

(declare-fun b!1207511 () Bool)

(declare-fun res!543255 () Bool)

(declare-fun e!774540 () Bool)

(assert (=> b!1207511 (=> (not res!543255) (not e!774540))))

(declare-fun lt!412699 () List!12144)

(assert (=> b!1207511 (= res!543255 (= (size!9660 lt!412699) (+ (size!9660 lt!412672) (size!9660 r!2028))))))

(declare-fun b!1207509 () Bool)

(declare-fun e!774541 () List!12144)

(assert (=> b!1207509 (= e!774541 r!2028)))

(declare-fun b!1207510 () Bool)

(assert (=> b!1207510 (= e!774541 (Cons!12120 (h!17521 lt!412672) (++!3142 (t!112560 lt!412672) r!2028)))))

(declare-fun d!345338 () Bool)

(assert (=> d!345338 e!774540))

(declare-fun res!543256 () Bool)

(assert (=> d!345338 (=> (not res!543256) (not e!774540))))

(assert (=> d!345338 (= res!543256 (= (content!1719 lt!412699) (set.union (content!1719 lt!412672) (content!1719 r!2028))))))

(assert (=> d!345338 (= lt!412699 e!774541)))

(declare-fun c!202051 () Bool)

(assert (=> d!345338 (= c!202051 (is-Nil!12120 lt!412672))))

(assert (=> d!345338 (= (++!3142 lt!412672 r!2028) lt!412699)))

(declare-fun b!1207512 () Bool)

(assert (=> b!1207512 (= e!774540 (or (not (= r!2028 Nil!12120)) (= lt!412699 lt!412672)))))

(assert (= (and d!345338 c!202051) b!1207509))

(assert (= (and d!345338 (not c!202051)) b!1207510))

(assert (= (and d!345338 res!543256) b!1207511))

(assert (= (and b!1207511 res!543255) b!1207512))

(declare-fun m!1382861 () Bool)

(assert (=> b!1207511 m!1382861))

(assert (=> b!1207511 m!1382811))

(assert (=> b!1207511 m!1382821))

(declare-fun m!1382863 () Bool)

(assert (=> b!1207510 m!1382863))

(declare-fun m!1382865 () Bool)

(assert (=> d!345338 m!1382865))

(declare-fun m!1382867 () Bool)

(assert (=> d!345338 m!1382867))

(assert (=> d!345338 m!1382859))

(assert (=> b!1207463 d!345338))

(declare-fun d!345340 () Bool)

(assert (=> d!345340 (= (tail!1741 l!2744) (t!112560 l!2744))))

(assert (=> b!1207463 d!345340))

(declare-fun d!345342 () Bool)

(declare-fun lt!412704 () Int)

(assert (=> d!345342 (>= lt!412704 0)))

(declare-fun e!774546 () Int)

(assert (=> d!345342 (= lt!412704 e!774546)))

(declare-fun c!202056 () Bool)

(assert (=> d!345342 (= c!202056 (is-Nil!12120 l!2744))))

(assert (=> d!345342 (= (ListPrimitiveSize!87 l!2744) lt!412704)))

(declare-fun b!1207521 () Bool)

(assert (=> b!1207521 (= e!774546 0)))

(declare-fun b!1207522 () Bool)

(assert (=> b!1207522 (= e!774546 (+ 1 (ListPrimitiveSize!87 (t!112560 l!2744))))))

(assert (= (and d!345342 c!202056) b!1207521))

(assert (= (and d!345342 (not c!202056)) b!1207522))

(declare-fun m!1382869 () Bool)

(assert (=> b!1207522 m!1382869))

(assert (=> b!1207459 d!345342))

(declare-fun d!345344 () Bool)

(declare-fun lt!412705 () Int)

(assert (=> d!345344 (>= lt!412705 0)))

(declare-fun e!774547 () Int)

(assert (=> d!345344 (= lt!412705 e!774547)))

(declare-fun c!202057 () Bool)

(assert (=> d!345344 (= c!202057 (is-Nil!12120 r!2028))))

(assert (=> d!345344 (= (ListPrimitiveSize!87 r!2028) lt!412705)))

(declare-fun b!1207523 () Bool)

(assert (=> b!1207523 (= e!774547 0)))

(declare-fun b!1207524 () Bool)

(assert (=> b!1207524 (= e!774547 (+ 1 (ListPrimitiveSize!87 (t!112560 r!2028))))))

(assert (= (and d!345344 c!202057) b!1207523))

(assert (= (and d!345344 (not c!202057)) b!1207524))

(declare-fun m!1382871 () Bool)

(assert (=> b!1207524 m!1382871))

(assert (=> b!1207459 d!345344))

(declare-fun d!345346 () Bool)

(declare-fun lt!412706 () Int)

(assert (=> d!345346 (>= lt!412706 0)))

(declare-fun e!774548 () Int)

(assert (=> d!345346 (= lt!412706 e!774548)))

(declare-fun c!202058 () Bool)

(assert (=> d!345346 (= c!202058 (is-Nil!12120 lt!412672))))

(assert (=> d!345346 (= (ListPrimitiveSize!87 lt!412672) lt!412706)))

(declare-fun b!1207525 () Bool)

(assert (=> b!1207525 (= e!774548 0)))

(declare-fun b!1207526 () Bool)

(assert (=> b!1207526 (= e!774548 (+ 1 (ListPrimitiveSize!87 (t!112560 lt!412672))))))

(assert (= (and d!345346 c!202058) b!1207525))

(assert (= (and d!345346 (not c!202058)) b!1207526))

(declare-fun m!1382873 () Bool)

(assert (=> b!1207526 m!1382873))

(assert (=> b!1207459 d!345346))

(declare-fun d!345348 () Bool)

(declare-fun lt!412711 () Int)

(assert (=> d!345348 (>= lt!412711 0)))

(declare-fun e!774553 () Int)

(assert (=> d!345348 (= lt!412711 e!774553)))

(declare-fun c!202063 () Bool)

(assert (=> d!345348 (= c!202063 (is-Nil!12120 r!2028))))

(assert (=> d!345348 (= (size!9660 r!2028) lt!412711)))

(declare-fun b!1207535 () Bool)

(assert (=> b!1207535 (= e!774553 0)))

(declare-fun b!1207536 () Bool)

(assert (=> b!1207536 (= e!774553 (+ 1 (size!9660 (t!112560 r!2028))))))

(assert (= (and d!345348 c!202063) b!1207535))

(assert (= (and d!345348 (not c!202063)) b!1207536))

(declare-fun m!1382879 () Bool)

(assert (=> b!1207536 m!1382879))

(assert (=> b!1207465 d!345348))

(declare-fun d!345356 () Bool)

(declare-fun lt!412712 () Int)

(assert (=> d!345356 (>= lt!412712 0)))

(declare-fun e!774554 () Int)

(assert (=> d!345356 (= lt!412712 e!774554)))

(declare-fun c!202064 () Bool)

(assert (=> d!345356 (= c!202064 (is-Nil!12120 l!2744))))

(assert (=> d!345356 (= (size!9660 l!2744) lt!412712)))

(declare-fun b!1207537 () Bool)

(assert (=> b!1207537 (= e!774554 0)))

(declare-fun b!1207538 () Bool)

(assert (=> b!1207538 (= e!774554 (+ 1 (size!9660 (t!112560 l!2744))))))

(assert (= (and d!345356 c!202064) b!1207537))

(assert (= (and d!345356 (not c!202064)) b!1207538))

(declare-fun m!1382881 () Bool)

(assert (=> b!1207538 m!1382881))

(assert (=> b!1207465 d!345356))

(declare-fun d!345358 () Bool)

(declare-fun lt!412713 () Int)

(assert (=> d!345358 (>= lt!412713 0)))

(declare-fun e!774555 () Int)

(assert (=> d!345358 (= lt!412713 e!774555)))

(declare-fun c!202065 () Bool)

(assert (=> d!345358 (= c!202065 (is-Nil!12120 lt!412672))))

(assert (=> d!345358 (= (size!9660 lt!412672) lt!412713)))

(declare-fun b!1207539 () Bool)

(assert (=> b!1207539 (= e!774555 0)))

(declare-fun b!1207540 () Bool)

(assert (=> b!1207540 (= e!774555 (+ 1 (size!9660 (t!112560 lt!412672))))))

(assert (= (and d!345358 c!202065) b!1207539))

(assert (= (and d!345358 (not c!202065)) b!1207540))

(declare-fun m!1382883 () Bool)

(assert (=> b!1207540 m!1382883))

(assert (=> b!1207462 d!345358))

(declare-fun b!1207545 () Bool)

(declare-fun e!774558 () Bool)

(declare-fun tp!342104 () Bool)

(assert (=> b!1207545 (= e!774558 (and tp_is_empty!6133 tp!342104))))

(assert (=> b!1207464 (= tp!342095 e!774558)))

(assert (= (and b!1207464 (is-Cons!12120 (t!112560 l!2744))) b!1207545))

(declare-fun b!1207546 () Bool)

(declare-fun e!774559 () Bool)

(declare-fun tp!342105 () Bool)

(assert (=> b!1207546 (= e!774559 (and tp_is_empty!6133 tp!342105))))

(assert (=> b!1207460 (= tp!342094 e!774559)))

(assert (= (and b!1207460 (is-Cons!12120 (t!112560 r!2028))) b!1207546))

(push 1)

(assert (not b!1207536))

(assert (not b!1207511))

(assert tp_is_empty!6133)

(assert (not b!1207540))

(assert (not b!1207506))

(assert (not b!1207524))

(assert (not b!1207522))

(assert (not b!1207538))

(assert (not b!1207545))

(assert (not b!1207510))

(assert (not d!345338))

(assert (not d!345330))

(assert (not b!1207526))

(assert (not b!1207507))

(assert (not b!1207546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

