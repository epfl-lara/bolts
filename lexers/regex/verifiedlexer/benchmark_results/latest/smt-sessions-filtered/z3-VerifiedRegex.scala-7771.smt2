; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408586 () Bool)

(assert start!408586)

(declare-fun b_free!126697 () Bool)

(declare-fun b_next!127401 () Bool)

(assert (=> start!408586 (= b_free!126697 (not b_next!127401))))

(declare-fun tp!1307288 () Bool)

(declare-fun b_and!337887 () Bool)

(assert (=> start!408586 (= tp!1307288 b_and!337887)))

(declare-fun res!1752435 () Bool)

(declare-fun e!2647711 () Bool)

(assert (=> start!408586 (=> (not res!1752435) (not e!2647711))))

(declare-datatypes ((B!2833 0))(
  ( (B!2834 (val!15245 Int)) )
))
(declare-datatypes ((List!47374 0))(
  ( (Nil!47250) (Cons!47250 (h!52670 B!2833) (t!353429 List!47374)) )
))
(declare-fun l1!1491 () List!47374)

(get-info :version)

(assert (=> start!408586 (= res!1752435 (not ((_ is Cons!47250) l1!1491)))))

(assert (=> start!408586 e!2647711))

(declare-fun e!2647712 () Bool)

(assert (=> start!408586 e!2647712))

(declare-fun e!2647710 () Bool)

(assert (=> start!408586 e!2647710))

(assert (=> start!408586 tp!1307288))

(declare-fun p!2107 () Int)

(declare-fun l2!1460 () List!47374)

(declare-fun b!4264180 () Bool)

(declare-datatypes ((A!463 0))(
  ( (A!464 (val!15246 Int)) )
))
(declare-datatypes ((List!47375 0))(
  ( (Nil!47251) (Cons!47251 (h!52671 A!463) (t!353430 List!47375)) )
))
(declare-fun map!9683 (List!47374 Int) List!47375)

(declare-fun ++!12043 (List!47374 List!47374) List!47374)

(declare-fun ++!12044 (List!47375 List!47375) List!47375)

(assert (=> b!4264180 (= e!2647711 (not (= (map!9683 (++!12043 l1!1491 l2!1460) p!2107) (++!12044 (map!9683 l1!1491 p!2107) (map!9683 l2!1460 p!2107)))))))

(declare-fun b!4264181 () Bool)

(declare-fun tp_is_empty!22897 () Bool)

(declare-fun tp!1307289 () Bool)

(assert (=> b!4264181 (= e!2647712 (and tp_is_empty!22897 tp!1307289))))

(declare-fun b!4264182 () Bool)

(declare-fun tp!1307290 () Bool)

(assert (=> b!4264182 (= e!2647710 (and tp_is_empty!22897 tp!1307290))))

(assert (= (and start!408586 res!1752435) b!4264180))

(assert (= (and start!408586 ((_ is Cons!47250) l1!1491)) b!4264181))

(assert (= (and start!408586 ((_ is Cons!47250) l2!1460)) b!4264182))

(declare-fun m!4854541 () Bool)

(assert (=> b!4264180 m!4854541))

(declare-fun m!4854543 () Bool)

(assert (=> b!4264180 m!4854543))

(declare-fun m!4854545 () Bool)

(assert (=> b!4264180 m!4854545))

(assert (=> b!4264180 m!4854545))

(declare-fun m!4854547 () Bool)

(assert (=> b!4264180 m!4854547))

(declare-fun m!4854549 () Bool)

(assert (=> b!4264180 m!4854549))

(assert (=> b!4264180 m!4854541))

(assert (=> b!4264180 m!4854547))

(check-sat b_and!337887 tp_is_empty!22897 (not b!4264181) (not b!4264180) (not b_next!127401) (not b!4264182))
(check-sat b_and!337887 (not b_next!127401))
(get-model)

(declare-fun b!4264203 () Bool)

(declare-fun e!2647724 () List!47374)

(assert (=> b!4264203 (= e!2647724 l2!1460)))

(declare-fun e!2647723 () Bool)

(declare-fun lt!1511354 () List!47374)

(declare-fun b!4264206 () Bool)

(assert (=> b!4264206 (= e!2647723 (or (not (= l2!1460 Nil!47250)) (= lt!1511354 l1!1491)))))

(declare-fun d!1256390 () Bool)

(assert (=> d!1256390 e!2647723))

(declare-fun res!1752447 () Bool)

(assert (=> d!1256390 (=> (not res!1752447) (not e!2647723))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7454 (List!47374) (InoxSet B!2833))

(assert (=> d!1256390 (= res!1752447 (= (content!7454 lt!1511354) ((_ map or) (content!7454 l1!1491) (content!7454 l2!1460))))))

(assert (=> d!1256390 (= lt!1511354 e!2647724)))

(declare-fun c!724663 () Bool)

(assert (=> d!1256390 (= c!724663 ((_ is Nil!47250) l1!1491))))

(assert (=> d!1256390 (= (++!12043 l1!1491 l2!1460) lt!1511354)))

(declare-fun b!4264205 () Bool)

(declare-fun res!1752446 () Bool)

(assert (=> b!4264205 (=> (not res!1752446) (not e!2647723))))

(declare-fun size!34616 (List!47374) Int)

(assert (=> b!4264205 (= res!1752446 (= (size!34616 lt!1511354) (+ (size!34616 l1!1491) (size!34616 l2!1460))))))

(declare-fun b!4264204 () Bool)

(assert (=> b!4264204 (= e!2647724 (Cons!47250 (h!52670 l1!1491) (++!12043 (t!353429 l1!1491) l2!1460)))))

(assert (= (and d!1256390 c!724663) b!4264203))

(assert (= (and d!1256390 (not c!724663)) b!4264204))

(assert (= (and d!1256390 res!1752447) b!4264205))

(assert (= (and b!4264205 res!1752446) b!4264206))

(declare-fun m!4854565 () Bool)

(assert (=> d!1256390 m!4854565))

(declare-fun m!4854567 () Bool)

(assert (=> d!1256390 m!4854567))

(declare-fun m!4854569 () Bool)

(assert (=> d!1256390 m!4854569))

(declare-fun m!4854571 () Bool)

(assert (=> b!4264205 m!4854571))

(declare-fun m!4854573 () Bool)

(assert (=> b!4264205 m!4854573))

(declare-fun m!4854575 () Bool)

(assert (=> b!4264205 m!4854575))

(declare-fun m!4854577 () Bool)

(assert (=> b!4264204 m!4854577))

(assert (=> b!4264180 d!1256390))

(declare-fun d!1256394 () Bool)

(declare-fun e!2647738 () Bool)

(assert (=> d!1256394 e!2647738))

(declare-fun res!1752458 () Bool)

(assert (=> d!1256394 (=> (not res!1752458) (not e!2647738))))

(declare-fun lt!1511362 () List!47375)

(declare-fun content!7456 (List!47375) (InoxSet A!463))

(assert (=> d!1256394 (= res!1752458 (= (content!7456 lt!1511362) ((_ map or) (content!7456 (map!9683 l1!1491 p!2107)) (content!7456 (map!9683 l2!1460 p!2107)))))))

(declare-fun e!2647737 () List!47375)

(assert (=> d!1256394 (= lt!1511362 e!2647737)))

(declare-fun c!724671 () Bool)

(assert (=> d!1256394 (= c!724671 ((_ is Nil!47251) (map!9683 l1!1491 p!2107)))))

(assert (=> d!1256394 (= (++!12044 (map!9683 l1!1491 p!2107) (map!9683 l2!1460 p!2107)) lt!1511362)))

(declare-fun b!4264231 () Bool)

(assert (=> b!4264231 (= e!2647737 (map!9683 l2!1460 p!2107))))

(declare-fun b!4264232 () Bool)

(assert (=> b!4264232 (= e!2647737 (Cons!47251 (h!52671 (map!9683 l1!1491 p!2107)) (++!12044 (t!353430 (map!9683 l1!1491 p!2107)) (map!9683 l2!1460 p!2107))))))

(declare-fun b!4264234 () Bool)

(assert (=> b!4264234 (= e!2647738 (or (not (= (map!9683 l2!1460 p!2107) Nil!47251)) (= lt!1511362 (map!9683 l1!1491 p!2107))))))

(declare-fun b!4264233 () Bool)

(declare-fun res!1752459 () Bool)

(assert (=> b!4264233 (=> (not res!1752459) (not e!2647738))))

(declare-fun size!34618 (List!47375) Int)

(assert (=> b!4264233 (= res!1752459 (= (size!34618 lt!1511362) (+ (size!34618 (map!9683 l1!1491 p!2107)) (size!34618 (map!9683 l2!1460 p!2107)))))))

(assert (= (and d!1256394 c!724671) b!4264231))

(assert (= (and d!1256394 (not c!724671)) b!4264232))

(assert (= (and d!1256394 res!1752458) b!4264233))

(assert (= (and b!4264233 res!1752459) b!4264234))

(declare-fun m!4854593 () Bool)

(assert (=> d!1256394 m!4854593))

(assert (=> d!1256394 m!4854545))

(declare-fun m!4854595 () Bool)

(assert (=> d!1256394 m!4854595))

(assert (=> d!1256394 m!4854547))

(declare-fun m!4854597 () Bool)

(assert (=> d!1256394 m!4854597))

(assert (=> b!4264232 m!4854547))

(declare-fun m!4854599 () Bool)

(assert (=> b!4264232 m!4854599))

(declare-fun m!4854601 () Bool)

(assert (=> b!4264233 m!4854601))

(assert (=> b!4264233 m!4854545))

(declare-fun m!4854603 () Bool)

(assert (=> b!4264233 m!4854603))

(assert (=> b!4264233 m!4854547))

(declare-fun m!4854605 () Bool)

(assert (=> b!4264233 m!4854605))

(assert (=> b!4264180 d!1256394))

(declare-fun d!1256398 () Bool)

(declare-fun lt!1511368 () List!47375)

(assert (=> d!1256398 (= (size!34618 lt!1511368) (size!34616 (++!12043 l1!1491 l2!1460)))))

(declare-fun e!2647746 () List!47375)

(assert (=> d!1256398 (= lt!1511368 e!2647746)))

(declare-fun c!724677 () Bool)

(assert (=> d!1256398 (= c!724677 ((_ is Nil!47250) (++!12043 l1!1491 l2!1460)))))

(assert (=> d!1256398 (= (map!9683 (++!12043 l1!1491 l2!1460) p!2107) lt!1511368)))

(declare-fun b!4264251 () Bool)

(assert (=> b!4264251 (= e!2647746 Nil!47251)))

(declare-fun b!4264252 () Bool)

(declare-fun $colon$colon!637 (List!47375 A!463) List!47375)

(declare-fun dynLambda!20225 (Int B!2833) A!463)

(assert (=> b!4264252 (= e!2647746 ($colon$colon!637 (map!9683 (t!353429 (++!12043 l1!1491 l2!1460)) p!2107) (dynLambda!20225 p!2107 (h!52670 (++!12043 l1!1491 l2!1460)))))))

(assert (= (and d!1256398 c!724677) b!4264251))

(assert (= (and d!1256398 (not c!724677)) b!4264252))

(declare-fun b_lambda!126079 () Bool)

(assert (=> (not b_lambda!126079) (not b!4264252)))

(declare-fun t!353438 () Bool)

(declare-fun tb!257077 () Bool)

(assert (=> (and start!408586 (= p!2107 p!2107) t!353438) tb!257077))

(declare-fun result!313666 () Bool)

(declare-fun tp_is_empty!22901 () Bool)

(assert (=> tb!257077 (= result!313666 tp_is_empty!22901)))

(assert (=> b!4264252 t!353438))

(declare-fun b_and!337895 () Bool)

(assert (= b_and!337887 (and (=> t!353438 result!313666) b_and!337895)))

(declare-fun m!4854633 () Bool)

(assert (=> d!1256398 m!4854633))

(assert (=> d!1256398 m!4854541))

(declare-fun m!4854635 () Bool)

(assert (=> d!1256398 m!4854635))

(declare-fun m!4854637 () Bool)

(assert (=> b!4264252 m!4854637))

(declare-fun m!4854639 () Bool)

(assert (=> b!4264252 m!4854639))

(assert (=> b!4264252 m!4854637))

(assert (=> b!4264252 m!4854639))

(declare-fun m!4854641 () Bool)

(assert (=> b!4264252 m!4854641))

(assert (=> b!4264180 d!1256398))

(declare-fun d!1256404 () Bool)

(declare-fun lt!1511369 () List!47375)

(assert (=> d!1256404 (= (size!34618 lt!1511369) (size!34616 l2!1460))))

(declare-fun e!2647749 () List!47375)

(assert (=> d!1256404 (= lt!1511369 e!2647749)))

(declare-fun c!724678 () Bool)

(assert (=> d!1256404 (= c!724678 ((_ is Nil!47250) l2!1460))))

(assert (=> d!1256404 (= (map!9683 l2!1460 p!2107) lt!1511369)))

(declare-fun b!4264257 () Bool)

(assert (=> b!4264257 (= e!2647749 Nil!47251)))

(declare-fun b!4264258 () Bool)

(assert (=> b!4264258 (= e!2647749 ($colon$colon!637 (map!9683 (t!353429 l2!1460) p!2107) (dynLambda!20225 p!2107 (h!52670 l2!1460))))))

(assert (= (and d!1256404 c!724678) b!4264257))

(assert (= (and d!1256404 (not c!724678)) b!4264258))

(declare-fun b_lambda!126081 () Bool)

(assert (=> (not b_lambda!126081) (not b!4264258)))

(declare-fun t!353440 () Bool)

(declare-fun tb!257079 () Bool)

(assert (=> (and start!408586 (= p!2107 p!2107) t!353440) tb!257079))

(declare-fun result!313670 () Bool)

(assert (=> tb!257079 (= result!313670 tp_is_empty!22901)))

(assert (=> b!4264258 t!353440))

(declare-fun b_and!337897 () Bool)

(assert (= b_and!337895 (and (=> t!353440 result!313670) b_and!337897)))

(declare-fun m!4854643 () Bool)

(assert (=> d!1256404 m!4854643))

(assert (=> d!1256404 m!4854575))

(declare-fun m!4854645 () Bool)

(assert (=> b!4264258 m!4854645))

(declare-fun m!4854647 () Bool)

(assert (=> b!4264258 m!4854647))

(assert (=> b!4264258 m!4854645))

(assert (=> b!4264258 m!4854647))

(declare-fun m!4854649 () Bool)

(assert (=> b!4264258 m!4854649))

(assert (=> b!4264180 d!1256404))

(declare-fun d!1256406 () Bool)

(declare-fun lt!1511370 () List!47375)

(assert (=> d!1256406 (= (size!34618 lt!1511370) (size!34616 l1!1491))))

(declare-fun e!2647750 () List!47375)

(assert (=> d!1256406 (= lt!1511370 e!2647750)))

(declare-fun c!724679 () Bool)

(assert (=> d!1256406 (= c!724679 ((_ is Nil!47250) l1!1491))))

(assert (=> d!1256406 (= (map!9683 l1!1491 p!2107) lt!1511370)))

(declare-fun b!4264259 () Bool)

(assert (=> b!4264259 (= e!2647750 Nil!47251)))

(declare-fun b!4264260 () Bool)

(assert (=> b!4264260 (= e!2647750 ($colon$colon!637 (map!9683 (t!353429 l1!1491) p!2107) (dynLambda!20225 p!2107 (h!52670 l1!1491))))))

(assert (= (and d!1256406 c!724679) b!4264259))

(assert (= (and d!1256406 (not c!724679)) b!4264260))

(declare-fun b_lambda!126083 () Bool)

(assert (=> (not b_lambda!126083) (not b!4264260)))

(declare-fun t!353442 () Bool)

(declare-fun tb!257081 () Bool)

(assert (=> (and start!408586 (= p!2107 p!2107) t!353442) tb!257081))

(declare-fun result!313672 () Bool)

(assert (=> tb!257081 (= result!313672 tp_is_empty!22901)))

(assert (=> b!4264260 t!353442))

(declare-fun b_and!337899 () Bool)

(assert (= b_and!337897 (and (=> t!353442 result!313672) b_and!337899)))

(declare-fun m!4854651 () Bool)

(assert (=> d!1256406 m!4854651))

(assert (=> d!1256406 m!4854573))

(declare-fun m!4854653 () Bool)

(assert (=> b!4264260 m!4854653))

(declare-fun m!4854655 () Bool)

(assert (=> b!4264260 m!4854655))

(assert (=> b!4264260 m!4854653))

(assert (=> b!4264260 m!4854655))

(declare-fun m!4854657 () Bool)

(assert (=> b!4264260 m!4854657))

(assert (=> b!4264180 d!1256406))

(declare-fun b!4264265 () Bool)

(declare-fun e!2647753 () Bool)

(declare-fun tp!1307297 () Bool)

(assert (=> b!4264265 (= e!2647753 (and tp_is_empty!22897 tp!1307297))))

(assert (=> b!4264182 (= tp!1307290 e!2647753)))

(assert (= (and b!4264182 ((_ is Cons!47250) (t!353429 l2!1460))) b!4264265))

(declare-fun b!4264266 () Bool)

(declare-fun e!2647754 () Bool)

(declare-fun tp!1307298 () Bool)

(assert (=> b!4264266 (= e!2647754 (and tp_is_empty!22897 tp!1307298))))

(assert (=> b!4264181 (= tp!1307289 e!2647754)))

(assert (= (and b!4264181 ((_ is Cons!47250) (t!353429 l1!1491))) b!4264266))

(declare-fun b_lambda!126085 () Bool)

(assert (= b_lambda!126079 (or (and start!408586 b_free!126697) b_lambda!126085)))

(declare-fun b_lambda!126087 () Bool)

(assert (= b_lambda!126083 (or (and start!408586 b_free!126697) b_lambda!126087)))

(declare-fun b_lambda!126089 () Bool)

(assert (= b_lambda!126081 (or (and start!408586 b_free!126697) b_lambda!126089)))

(check-sat (not b!4264205) (not d!1256390) (not d!1256394) (not b_next!127401) (not d!1256404) (not b!4264232) (not d!1256406) (not d!1256398) (not b!4264233) (not b!4264252) (not b_lambda!126087) tp_is_empty!22901 (not b!4264266) (not b!4264204) (not b_lambda!126085) tp_is_empty!22897 b_and!337899 (not b_lambda!126089) (not b!4264260) (not b!4264265) (not b!4264258))
(check-sat b_and!337899 (not b_next!127401))
