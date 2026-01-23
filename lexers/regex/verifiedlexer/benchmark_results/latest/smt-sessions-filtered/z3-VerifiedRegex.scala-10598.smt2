; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544752 () Bool)

(assert start!544752)

(declare-fun b!5146130 () Bool)

(declare-fun e!3208799 () Bool)

(declare-datatypes ((C!29240 0))(
  ( (C!29241 (val!24272 Int)) )
))
(declare-datatypes ((Regex!14487 0))(
  ( (ElementMatch!14487 (c!886056 C!29240)) (Concat!23332 (regOne!29486 Regex!14487) (regTwo!29486 Regex!14487)) (EmptyExpr!14487) (Star!14487 (reg!14816 Regex!14487)) (EmptyLang!14487) (Union!14487 (regOne!29487 Regex!14487) (regTwo!29487 Regex!14487)) )
))
(declare-datatypes ((List!59891 0))(
  ( (Nil!59767) (Cons!59767 (h!66215 Regex!14487) (t!372928 List!59891)) )
))
(declare-datatypes ((Context!7742 0))(
  ( (Context!7743 (exprs!4371 List!59891)) )
))
(declare-fun ctx!100 () Context!7742)

(declare-fun expr!117 () Regex!14487)

(declare-fun inv!79398 (Context!7742) Bool)

(declare-fun $colon$colon!1211 (List!59891 Regex!14487) List!59891)

(assert (=> b!5146130 (= e!3208799 (inv!79398 (Context!7743 ($colon$colon!1211 (exprs!4371 ctx!100) (regTwo!29486 expr!117)))))))

(declare-fun b!5146131 () Bool)

(declare-fun e!3208801 () Bool)

(declare-fun tp!1437440 () Bool)

(declare-fun tp!1437443 () Bool)

(assert (=> b!5146131 (= e!3208801 (and tp!1437440 tp!1437443))))

(declare-fun b!5146132 () Bool)

(declare-fun e!3208797 () Bool)

(declare-fun tp!1437442 () Bool)

(assert (=> b!5146132 (= e!3208797 tp!1437442)))

(declare-fun b!5146133 () Bool)

(declare-fun e!3208800 () Bool)

(declare-fun lostCause!1526 (Context!7742) Bool)

(assert (=> b!5146133 (= e!3208800 (lostCause!1526 ctx!100))))

(declare-fun b!5146134 () Bool)

(declare-fun e!3208798 () Bool)

(assert (=> b!5146134 (= e!3208798 (not e!3208799))))

(declare-fun res!2190604 () Bool)

(assert (=> b!5146134 (=> res!2190604 e!3208799)))

(declare-fun validRegex!6342 (Regex!14487) Bool)

(assert (=> b!5146134 (= res!2190604 (not (validRegex!6342 (regTwo!29486 expr!117))))))

(declare-fun lostCause!1527 (Regex!14487) Bool)

(assert (=> b!5146134 (not (lostCause!1527 (regOne!29486 expr!117)))))

(declare-datatypes ((Unit!151177 0))(
  ( (Unit!151178) )
))
(declare-fun lt!2121084 () Unit!151177)

(declare-fun lemmaNullableThenNotLostCause!76 (Regex!14487) Unit!151177)

(assert (=> b!5146134 (= lt!2121084 (lemmaNullableThenNotLostCause!76 (regOne!29486 expr!117)))))

(declare-fun b!5146135 () Bool)

(declare-fun tp_is_empty!38123 () Bool)

(assert (=> b!5146135 (= e!3208801 tp_is_empty!38123)))

(declare-fun b!5146136 () Bool)

(declare-fun res!2190606 () Bool)

(assert (=> b!5146136 (=> (not res!2190606) (not e!3208798))))

(declare-fun a!1296 () C!29240)

(get-info :version)

(assert (=> b!5146136 (= res!2190606 (and (or (not ((_ is ElementMatch!14487) expr!117)) (not (= (c!886056 expr!117) a!1296))) (not ((_ is Union!14487) expr!117)) ((_ is Concat!23332) expr!117)))))

(declare-fun b!5146137 () Bool)

(declare-fun tp!1437445 () Bool)

(assert (=> b!5146137 (= e!3208801 tp!1437445)))

(declare-fun b!5146138 () Bool)

(declare-fun res!2190609 () Bool)

(assert (=> b!5146138 (=> (not res!2190609) (not e!3208798))))

(declare-fun nullable!4843 (Regex!14487) Bool)

(assert (=> b!5146138 (= res!2190609 (nullable!4843 (regOne!29486 expr!117)))))

(declare-fun b!5146139 () Bool)

(declare-fun tp!1437441 () Bool)

(declare-fun tp!1437444 () Bool)

(assert (=> b!5146139 (= e!3208801 (and tp!1437441 tp!1437444))))

(declare-fun b!5146140 () Bool)

(declare-fun res!2190605 () Bool)

(assert (=> b!5146140 (=> (not res!2190605) (not e!3208798))))

(assert (=> b!5146140 (= res!2190605 e!3208800)))

(declare-fun res!2190608 () Bool)

(assert (=> b!5146140 (=> res!2190608 e!3208800)))

(assert (=> b!5146140 (= res!2190608 (lostCause!1527 expr!117))))

(declare-fun res!2190607 () Bool)

(assert (=> start!544752 (=> (not res!2190607) (not e!3208798))))

(assert (=> start!544752 (= res!2190607 (validRegex!6342 expr!117))))

(assert (=> start!544752 e!3208798))

(assert (=> start!544752 e!3208801))

(assert (=> start!544752 (and (inv!79398 ctx!100) e!3208797)))

(assert (=> start!544752 tp_is_empty!38123))

(assert (= (and start!544752 res!2190607) b!5146140))

(assert (= (and b!5146140 (not res!2190608)) b!5146133))

(assert (= (and b!5146140 res!2190605) b!5146136))

(assert (= (and b!5146136 res!2190606) b!5146138))

(assert (= (and b!5146138 res!2190609) b!5146134))

(assert (= (and b!5146134 (not res!2190604)) b!5146130))

(assert (= (and start!544752 ((_ is ElementMatch!14487) expr!117)) b!5146135))

(assert (= (and start!544752 ((_ is Concat!23332) expr!117)) b!5146139))

(assert (= (and start!544752 ((_ is Star!14487) expr!117)) b!5146137))

(assert (= (and start!544752 ((_ is Union!14487) expr!117)) b!5146131))

(assert (= start!544752 b!5146132))

(declare-fun m!6206702 () Bool)

(assert (=> b!5146133 m!6206702))

(declare-fun m!6206704 () Bool)

(assert (=> b!5146138 m!6206704))

(declare-fun m!6206706 () Bool)

(assert (=> start!544752 m!6206706))

(declare-fun m!6206708 () Bool)

(assert (=> start!544752 m!6206708))

(declare-fun m!6206710 () Bool)

(assert (=> b!5146130 m!6206710))

(declare-fun m!6206712 () Bool)

(assert (=> b!5146130 m!6206712))

(declare-fun m!6206714 () Bool)

(assert (=> b!5146140 m!6206714))

(declare-fun m!6206716 () Bool)

(assert (=> b!5146134 m!6206716))

(declare-fun m!6206718 () Bool)

(assert (=> b!5146134 m!6206718))

(declare-fun m!6206720 () Bool)

(assert (=> b!5146134 m!6206720))

(check-sat (not b!5146131) (not b!5146139) (not b!5146138) (not b!5146130) (not b!5146133) tp_is_empty!38123 (not b!5146132) (not b!5146140) (not start!544752) (not b!5146137) (not b!5146134))
(check-sat)
(get-model)

(declare-fun d!1663451 () Bool)

(declare-fun lambda!256884 () Int)

(declare-fun forall!13961 (List!59891 Int) Bool)

(assert (=> d!1663451 (= (inv!79398 (Context!7743 ($colon$colon!1211 (exprs!4371 ctx!100) (regTwo!29486 expr!117)))) (forall!13961 (exprs!4371 (Context!7743 ($colon$colon!1211 (exprs!4371 ctx!100) (regTwo!29486 expr!117)))) lambda!256884))))

(declare-fun bs!1201265 () Bool)

(assert (= bs!1201265 d!1663451))

(declare-fun m!6206724 () Bool)

(assert (=> bs!1201265 m!6206724))

(assert (=> b!5146130 d!1663451))

(declare-fun d!1663459 () Bool)

(assert (=> d!1663459 (= ($colon$colon!1211 (exprs!4371 ctx!100) (regTwo!29486 expr!117)) (Cons!59767 (regTwo!29486 expr!117) (exprs!4371 ctx!100)))))

(assert (=> b!5146130 d!1663459))

(declare-fun b!5146186 () Bool)

(declare-fun res!2190635 () Bool)

(declare-fun e!3208843 () Bool)

(assert (=> b!5146186 (=> (not res!2190635) (not e!3208843))))

(declare-fun call!359760 () Bool)

(assert (=> b!5146186 (= res!2190635 call!359760)))

(declare-fun e!3208841 () Bool)

(assert (=> b!5146186 (= e!3208841 e!3208843)))

(declare-fun b!5146187 () Bool)

(declare-fun e!3208839 () Bool)

(declare-fun e!3208837 () Bool)

(assert (=> b!5146187 (= e!3208839 e!3208837)))

(declare-fun res!2190639 () Bool)

(assert (=> b!5146187 (=> (not res!2190639) (not e!3208837))))

(assert (=> b!5146187 (= res!2190639 call!359760)))

(declare-fun bm!359753 () Bool)

(declare-fun c!886067 () Bool)

(assert (=> bm!359753 (= call!359760 (validRegex!6342 (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117))))))

(declare-fun bm!359754 () Bool)

(declare-fun call!359758 () Bool)

(declare-fun call!359759 () Bool)

(assert (=> bm!359754 (= call!359758 call!359759)))

(declare-fun d!1663461 () Bool)

(declare-fun res!2190638 () Bool)

(declare-fun e!3208842 () Bool)

(assert (=> d!1663461 (=> res!2190638 e!3208842)))

(assert (=> d!1663461 (= res!2190638 ((_ is ElementMatch!14487) expr!117))))

(assert (=> d!1663461 (= (validRegex!6342 expr!117) e!3208842)))

(declare-fun b!5146188 () Bool)

(declare-fun e!3208840 () Bool)

(assert (=> b!5146188 (= e!3208840 e!3208841)))

(assert (=> b!5146188 (= c!886067 ((_ is Union!14487) expr!117))))

(declare-fun c!886068 () Bool)

(declare-fun bm!359755 () Bool)

(assert (=> bm!359755 (= call!359759 (validRegex!6342 (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117)))))))

(declare-fun b!5146189 () Bool)

(assert (=> b!5146189 (= e!3208843 call!359758)))

(declare-fun b!5146190 () Bool)

(declare-fun e!3208838 () Bool)

(assert (=> b!5146190 (= e!3208838 call!359759)))

(declare-fun b!5146191 () Bool)

(assert (=> b!5146191 (= e!3208837 call!359758)))

(declare-fun b!5146192 () Bool)

(assert (=> b!5146192 (= e!3208842 e!3208840)))

(assert (=> b!5146192 (= c!886068 ((_ is Star!14487) expr!117))))

(declare-fun b!5146193 () Bool)

(assert (=> b!5146193 (= e!3208840 e!3208838)))

(declare-fun res!2190636 () Bool)

(assert (=> b!5146193 (= res!2190636 (not (nullable!4843 (reg!14816 expr!117))))))

(assert (=> b!5146193 (=> (not res!2190636) (not e!3208838))))

(declare-fun b!5146194 () Bool)

(declare-fun res!2190637 () Bool)

(assert (=> b!5146194 (=> res!2190637 e!3208839)))

(assert (=> b!5146194 (= res!2190637 (not ((_ is Concat!23332) expr!117)))))

(assert (=> b!5146194 (= e!3208841 e!3208839)))

(assert (= (and d!1663461 (not res!2190638)) b!5146192))

(assert (= (and b!5146192 c!886068) b!5146193))

(assert (= (and b!5146192 (not c!886068)) b!5146188))

(assert (= (and b!5146193 res!2190636) b!5146190))

(assert (= (and b!5146188 c!886067) b!5146186))

(assert (= (and b!5146188 (not c!886067)) b!5146194))

(assert (= (and b!5146186 res!2190635) b!5146189))

(assert (= (and b!5146194 (not res!2190637)) b!5146187))

(assert (= (and b!5146187 res!2190639) b!5146191))

(assert (= (or b!5146189 b!5146191) bm!359754))

(assert (= (or b!5146186 b!5146187) bm!359753))

(assert (= (or b!5146190 bm!359754) bm!359755))

(declare-fun m!6206734 () Bool)

(assert (=> bm!359753 m!6206734))

(declare-fun m!6206736 () Bool)

(assert (=> bm!359755 m!6206736))

(declare-fun m!6206738 () Bool)

(assert (=> b!5146193 m!6206738))

(assert (=> start!544752 d!1663461))

(declare-fun bs!1201269 () Bool)

(declare-fun d!1663467 () Bool)

(assert (= bs!1201269 (and d!1663467 d!1663451)))

(declare-fun lambda!256886 () Int)

(assert (=> bs!1201269 (= lambda!256886 lambda!256884)))

(assert (=> d!1663467 (= (inv!79398 ctx!100) (forall!13961 (exprs!4371 ctx!100) lambda!256886))))

(declare-fun bs!1201270 () Bool)

(assert (= bs!1201270 d!1663467))

(declare-fun m!6206742 () Bool)

(assert (=> bs!1201270 m!6206742))

(assert (=> start!544752 d!1663467))

(declare-fun bs!1201273 () Bool)

(declare-fun d!1663471 () Bool)

(assert (= bs!1201273 (and d!1663471 d!1663451)))

(declare-fun lambda!256892 () Int)

(assert (=> bs!1201273 (not (= lambda!256892 lambda!256884))))

(declare-fun bs!1201275 () Bool)

(assert (= bs!1201275 (and d!1663471 d!1663467)))

(assert (=> bs!1201275 (not (= lambda!256892 lambda!256886))))

(declare-fun exists!1817 (List!59891 Int) Bool)

(assert (=> d!1663471 (= (lostCause!1526 ctx!100) (exists!1817 (exprs!4371 ctx!100) lambda!256892))))

(declare-fun bs!1201277 () Bool)

(assert (= bs!1201277 d!1663471))

(declare-fun m!6206748 () Bool)

(assert (=> bs!1201277 m!6206748))

(assert (=> b!5146133 d!1663471))

(declare-fun d!1663477 () Bool)

(declare-fun nullableFct!1325 (Regex!14487) Bool)

(assert (=> d!1663477 (= (nullable!4843 (regOne!29486 expr!117)) (nullableFct!1325 (regOne!29486 expr!117)))))

(declare-fun bs!1201278 () Bool)

(assert (= bs!1201278 d!1663477))

(declare-fun m!6206750 () Bool)

(assert (=> bs!1201278 m!6206750))

(assert (=> b!5146138 d!1663477))

(declare-fun b!5146204 () Bool)

(declare-fun res!2190645 () Bool)

(declare-fun e!3208857 () Bool)

(assert (=> b!5146204 (=> (not res!2190645) (not e!3208857))))

(declare-fun call!359766 () Bool)

(assert (=> b!5146204 (= res!2190645 call!359766)))

(declare-fun e!3208855 () Bool)

(assert (=> b!5146204 (= e!3208855 e!3208857)))

(declare-fun b!5146205 () Bool)

(declare-fun e!3208853 () Bool)

(declare-fun e!3208851 () Bool)

(assert (=> b!5146205 (= e!3208853 e!3208851)))

(declare-fun res!2190649 () Bool)

(assert (=> b!5146205 (=> (not res!2190649) (not e!3208851))))

(assert (=> b!5146205 (= res!2190649 call!359766)))

(declare-fun bm!359759 () Bool)

(declare-fun c!886071 () Bool)

(assert (=> bm!359759 (= call!359766 (validRegex!6342 (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117)))))))

(declare-fun bm!359760 () Bool)

(declare-fun call!359764 () Bool)

(declare-fun call!359765 () Bool)

(assert (=> bm!359760 (= call!359764 call!359765)))

(declare-fun d!1663479 () Bool)

(declare-fun res!2190648 () Bool)

(declare-fun e!3208856 () Bool)

(assert (=> d!1663479 (=> res!2190648 e!3208856)))

(assert (=> d!1663479 (= res!2190648 ((_ is ElementMatch!14487) (regTwo!29486 expr!117)))))

(assert (=> d!1663479 (= (validRegex!6342 (regTwo!29486 expr!117)) e!3208856)))

(declare-fun b!5146206 () Bool)

(declare-fun e!3208854 () Bool)

(assert (=> b!5146206 (= e!3208854 e!3208855)))

(assert (=> b!5146206 (= c!886071 ((_ is Union!14487) (regTwo!29486 expr!117)))))

(declare-fun c!886072 () Bool)

(declare-fun bm!359761 () Bool)

(assert (=> bm!359761 (= call!359765 (validRegex!6342 (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117))))))))

(declare-fun b!5146207 () Bool)

(assert (=> b!5146207 (= e!3208857 call!359764)))

(declare-fun b!5146208 () Bool)

(declare-fun e!3208852 () Bool)

(assert (=> b!5146208 (= e!3208852 call!359765)))

(declare-fun b!5146209 () Bool)

(assert (=> b!5146209 (= e!3208851 call!359764)))

(declare-fun b!5146210 () Bool)

(assert (=> b!5146210 (= e!3208856 e!3208854)))

(assert (=> b!5146210 (= c!886072 ((_ is Star!14487) (regTwo!29486 expr!117)))))

(declare-fun b!5146211 () Bool)

(assert (=> b!5146211 (= e!3208854 e!3208852)))

(declare-fun res!2190646 () Bool)

(assert (=> b!5146211 (= res!2190646 (not (nullable!4843 (reg!14816 (regTwo!29486 expr!117)))))))

(assert (=> b!5146211 (=> (not res!2190646) (not e!3208852))))

(declare-fun b!5146212 () Bool)

(declare-fun res!2190647 () Bool)

(assert (=> b!5146212 (=> res!2190647 e!3208853)))

(assert (=> b!5146212 (= res!2190647 (not ((_ is Concat!23332) (regTwo!29486 expr!117))))))

(assert (=> b!5146212 (= e!3208855 e!3208853)))

(assert (= (and d!1663479 (not res!2190648)) b!5146210))

(assert (= (and b!5146210 c!886072) b!5146211))

(assert (= (and b!5146210 (not c!886072)) b!5146206))

(assert (= (and b!5146211 res!2190646) b!5146208))

(assert (= (and b!5146206 c!886071) b!5146204))

(assert (= (and b!5146206 (not c!886071)) b!5146212))

(assert (= (and b!5146204 res!2190645) b!5146207))

(assert (= (and b!5146212 (not res!2190647)) b!5146205))

(assert (= (and b!5146205 res!2190649) b!5146209))

(assert (= (or b!5146207 b!5146209) bm!359760))

(assert (= (or b!5146204 b!5146205) bm!359759))

(assert (= (or b!5146208 bm!359760) bm!359761))

(declare-fun m!6206760 () Bool)

(assert (=> bm!359759 m!6206760))

(declare-fun m!6206762 () Bool)

(assert (=> bm!359761 m!6206762))

(declare-fun m!6206764 () Bool)

(assert (=> b!5146211 m!6206764))

(assert (=> b!5146134 d!1663479))

(declare-fun d!1663485 () Bool)

(declare-fun lostCauseFct!366 (Regex!14487) Bool)

(assert (=> d!1663485 (= (lostCause!1527 (regOne!29486 expr!117)) (lostCauseFct!366 (regOne!29486 expr!117)))))

(declare-fun bs!1201280 () Bool)

(assert (= bs!1201280 d!1663485))

(declare-fun m!6206766 () Bool)

(assert (=> bs!1201280 m!6206766))

(assert (=> b!5146134 d!1663485))

(declare-fun d!1663487 () Bool)

(assert (=> d!1663487 (not (lostCause!1527 (regOne!29486 expr!117)))))

(declare-fun lt!2121090 () Unit!151177)

(declare-fun choose!38078 (Regex!14487) Unit!151177)

(assert (=> d!1663487 (= lt!2121090 (choose!38078 (regOne!29486 expr!117)))))

(assert (=> d!1663487 (validRegex!6342 (regOne!29486 expr!117))))

(assert (=> d!1663487 (= (lemmaNullableThenNotLostCause!76 (regOne!29486 expr!117)) lt!2121090)))

(declare-fun bs!1201282 () Bool)

(assert (= bs!1201282 d!1663487))

(assert (=> bs!1201282 m!6206718))

(declare-fun m!6206772 () Bool)

(assert (=> bs!1201282 m!6206772))

(declare-fun m!6206774 () Bool)

(assert (=> bs!1201282 m!6206774))

(assert (=> b!5146134 d!1663487))

(declare-fun d!1663489 () Bool)

(assert (=> d!1663489 (= (lostCause!1527 expr!117) (lostCauseFct!366 expr!117))))

(declare-fun bs!1201283 () Bool)

(assert (= bs!1201283 d!1663489))

(declare-fun m!6206776 () Bool)

(assert (=> bs!1201283 m!6206776))

(assert (=> b!5146140 d!1663489))

(declare-fun b!5146258 () Bool)

(declare-fun e!3208870 () Bool)

(assert (=> b!5146258 (= e!3208870 tp_is_empty!38123)))

(declare-fun b!5146259 () Bool)

(declare-fun tp!1437499 () Bool)

(declare-fun tp!1437501 () Bool)

(assert (=> b!5146259 (= e!3208870 (and tp!1437499 tp!1437501))))

(declare-fun b!5146261 () Bool)

(declare-fun tp!1437497 () Bool)

(declare-fun tp!1437498 () Bool)

(assert (=> b!5146261 (= e!3208870 (and tp!1437497 tp!1437498))))

(assert (=> b!5146131 (= tp!1437440 e!3208870)))

(declare-fun b!5146260 () Bool)

(declare-fun tp!1437500 () Bool)

(assert (=> b!5146260 (= e!3208870 tp!1437500)))

(assert (= (and b!5146131 ((_ is ElementMatch!14487) (regOne!29487 expr!117))) b!5146258))

(assert (= (and b!5146131 ((_ is Concat!23332) (regOne!29487 expr!117))) b!5146259))

(assert (= (and b!5146131 ((_ is Star!14487) (regOne!29487 expr!117))) b!5146260))

(assert (= (and b!5146131 ((_ is Union!14487) (regOne!29487 expr!117))) b!5146261))

(declare-fun b!5146262 () Bool)

(declare-fun e!3208871 () Bool)

(assert (=> b!5146262 (= e!3208871 tp_is_empty!38123)))

(declare-fun b!5146263 () Bool)

(declare-fun tp!1437504 () Bool)

(declare-fun tp!1437506 () Bool)

(assert (=> b!5146263 (= e!3208871 (and tp!1437504 tp!1437506))))

(declare-fun b!5146265 () Bool)

(declare-fun tp!1437502 () Bool)

(declare-fun tp!1437503 () Bool)

(assert (=> b!5146265 (= e!3208871 (and tp!1437502 tp!1437503))))

(assert (=> b!5146131 (= tp!1437443 e!3208871)))

(declare-fun b!5146264 () Bool)

(declare-fun tp!1437505 () Bool)

(assert (=> b!5146264 (= e!3208871 tp!1437505)))

(assert (= (and b!5146131 ((_ is ElementMatch!14487) (regTwo!29487 expr!117))) b!5146262))

(assert (= (and b!5146131 ((_ is Concat!23332) (regTwo!29487 expr!117))) b!5146263))

(assert (= (and b!5146131 ((_ is Star!14487) (regTwo!29487 expr!117))) b!5146264))

(assert (= (and b!5146131 ((_ is Union!14487) (regTwo!29487 expr!117))) b!5146265))

(declare-fun b!5146266 () Bool)

(declare-fun e!3208872 () Bool)

(assert (=> b!5146266 (= e!3208872 tp_is_empty!38123)))

(declare-fun b!5146267 () Bool)

(declare-fun tp!1437509 () Bool)

(declare-fun tp!1437511 () Bool)

(assert (=> b!5146267 (= e!3208872 (and tp!1437509 tp!1437511))))

(declare-fun b!5146269 () Bool)

(declare-fun tp!1437507 () Bool)

(declare-fun tp!1437508 () Bool)

(assert (=> b!5146269 (= e!3208872 (and tp!1437507 tp!1437508))))

(assert (=> b!5146137 (= tp!1437445 e!3208872)))

(declare-fun b!5146268 () Bool)

(declare-fun tp!1437510 () Bool)

(assert (=> b!5146268 (= e!3208872 tp!1437510)))

(assert (= (and b!5146137 ((_ is ElementMatch!14487) (reg!14816 expr!117))) b!5146266))

(assert (= (and b!5146137 ((_ is Concat!23332) (reg!14816 expr!117))) b!5146267))

(assert (= (and b!5146137 ((_ is Star!14487) (reg!14816 expr!117))) b!5146268))

(assert (= (and b!5146137 ((_ is Union!14487) (reg!14816 expr!117))) b!5146269))

(declare-fun b!5146274 () Bool)

(declare-fun e!3208875 () Bool)

(declare-fun tp!1437516 () Bool)

(declare-fun tp!1437517 () Bool)

(assert (=> b!5146274 (= e!3208875 (and tp!1437516 tp!1437517))))

(assert (=> b!5146132 (= tp!1437442 e!3208875)))

(assert (= (and b!5146132 ((_ is Cons!59767) (exprs!4371 ctx!100))) b!5146274))

(declare-fun b!5146275 () Bool)

(declare-fun e!3208876 () Bool)

(assert (=> b!5146275 (= e!3208876 tp_is_empty!38123)))

(declare-fun b!5146276 () Bool)

(declare-fun tp!1437520 () Bool)

(declare-fun tp!1437522 () Bool)

(assert (=> b!5146276 (= e!3208876 (and tp!1437520 tp!1437522))))

(declare-fun b!5146278 () Bool)

(declare-fun tp!1437518 () Bool)

(declare-fun tp!1437519 () Bool)

(assert (=> b!5146278 (= e!3208876 (and tp!1437518 tp!1437519))))

(assert (=> b!5146139 (= tp!1437441 e!3208876)))

(declare-fun b!5146277 () Bool)

(declare-fun tp!1437521 () Bool)

(assert (=> b!5146277 (= e!3208876 tp!1437521)))

(assert (= (and b!5146139 ((_ is ElementMatch!14487) (regOne!29486 expr!117))) b!5146275))

(assert (= (and b!5146139 ((_ is Concat!23332) (regOne!29486 expr!117))) b!5146276))

(assert (= (and b!5146139 ((_ is Star!14487) (regOne!29486 expr!117))) b!5146277))

(assert (= (and b!5146139 ((_ is Union!14487) (regOne!29486 expr!117))) b!5146278))

(declare-fun b!5146279 () Bool)

(declare-fun e!3208877 () Bool)

(assert (=> b!5146279 (= e!3208877 tp_is_empty!38123)))

(declare-fun b!5146280 () Bool)

(declare-fun tp!1437525 () Bool)

(declare-fun tp!1437527 () Bool)

(assert (=> b!5146280 (= e!3208877 (and tp!1437525 tp!1437527))))

(declare-fun b!5146282 () Bool)

(declare-fun tp!1437523 () Bool)

(declare-fun tp!1437524 () Bool)

(assert (=> b!5146282 (= e!3208877 (and tp!1437523 tp!1437524))))

(assert (=> b!5146139 (= tp!1437444 e!3208877)))

(declare-fun b!5146281 () Bool)

(declare-fun tp!1437526 () Bool)

(assert (=> b!5146281 (= e!3208877 tp!1437526)))

(assert (= (and b!5146139 ((_ is ElementMatch!14487) (regTwo!29486 expr!117))) b!5146279))

(assert (= (and b!5146139 ((_ is Concat!23332) (regTwo!29486 expr!117))) b!5146280))

(assert (= (and b!5146139 ((_ is Star!14487) (regTwo!29486 expr!117))) b!5146281))

(assert (= (and b!5146139 ((_ is Union!14487) (regTwo!29486 expr!117))) b!5146282))

(check-sat (not b!5146265) (not b!5146211) (not b!5146269) (not d!1663471) (not b!5146276) (not b!5146267) (not b!5146263) (not b!5146278) (not b!5146259) (not bm!359761) (not b!5146193) (not d!1663485) (not d!1663477) (not b!5146280) (not bm!359759) (not d!1663467) (not b!5146282) (not bm!359753) (not b!5146261) (not d!1663451) tp_is_empty!38123 (not bm!359755) (not b!5146264) (not d!1663487) (not d!1663489) (not b!5146277) (not b!5146274) (not b!5146268) (not b!5146281) (not b!5146260))
(check-sat)
(get-model)

(assert (=> d!1663487 d!1663485))

(declare-fun d!1663491 () Bool)

(assert (=> d!1663491 (not (lostCause!1527 (regOne!29486 expr!117)))))

(assert (=> d!1663491 true))

(declare-fun _$98!264 () Unit!151177)

(assert (=> d!1663491 (= (choose!38078 (regOne!29486 expr!117)) _$98!264)))

(declare-fun bs!1201284 () Bool)

(assert (= bs!1201284 d!1663491))

(assert (=> bs!1201284 m!6206718))

(assert (=> d!1663487 d!1663491))

(declare-fun b!5146283 () Bool)

(declare-fun res!2190650 () Bool)

(declare-fun e!3208884 () Bool)

(assert (=> b!5146283 (=> (not res!2190650) (not e!3208884))))

(declare-fun call!359769 () Bool)

(assert (=> b!5146283 (= res!2190650 call!359769)))

(declare-fun e!3208882 () Bool)

(assert (=> b!5146283 (= e!3208882 e!3208884)))

(declare-fun b!5146284 () Bool)

(declare-fun e!3208880 () Bool)

(declare-fun e!3208878 () Bool)

(assert (=> b!5146284 (= e!3208880 e!3208878)))

(declare-fun res!2190654 () Bool)

(assert (=> b!5146284 (=> (not res!2190654) (not e!3208878))))

(assert (=> b!5146284 (= res!2190654 call!359769)))

(declare-fun bm!359762 () Bool)

(declare-fun c!886073 () Bool)

(assert (=> bm!359762 (= call!359769 (validRegex!6342 (ite c!886073 (regOne!29487 (regOne!29486 expr!117)) (regOne!29486 (regOne!29486 expr!117)))))))

(declare-fun bm!359763 () Bool)

(declare-fun call!359767 () Bool)

(declare-fun call!359768 () Bool)

(assert (=> bm!359763 (= call!359767 call!359768)))

(declare-fun d!1663493 () Bool)

(declare-fun res!2190653 () Bool)

(declare-fun e!3208883 () Bool)

(assert (=> d!1663493 (=> res!2190653 e!3208883)))

(assert (=> d!1663493 (= res!2190653 ((_ is ElementMatch!14487) (regOne!29486 expr!117)))))

(assert (=> d!1663493 (= (validRegex!6342 (regOne!29486 expr!117)) e!3208883)))

(declare-fun b!5146285 () Bool)

(declare-fun e!3208881 () Bool)

(assert (=> b!5146285 (= e!3208881 e!3208882)))

(assert (=> b!5146285 (= c!886073 ((_ is Union!14487) (regOne!29486 expr!117)))))

(declare-fun c!886074 () Bool)

(declare-fun bm!359764 () Bool)

(assert (=> bm!359764 (= call!359768 (validRegex!6342 (ite c!886074 (reg!14816 (regOne!29486 expr!117)) (ite c!886073 (regTwo!29487 (regOne!29486 expr!117)) (regTwo!29486 (regOne!29486 expr!117))))))))

(declare-fun b!5146286 () Bool)

(assert (=> b!5146286 (= e!3208884 call!359767)))

(declare-fun b!5146287 () Bool)

(declare-fun e!3208879 () Bool)

(assert (=> b!5146287 (= e!3208879 call!359768)))

(declare-fun b!5146288 () Bool)

(assert (=> b!5146288 (= e!3208878 call!359767)))

(declare-fun b!5146289 () Bool)

(assert (=> b!5146289 (= e!3208883 e!3208881)))

(assert (=> b!5146289 (= c!886074 ((_ is Star!14487) (regOne!29486 expr!117)))))

(declare-fun b!5146290 () Bool)

(assert (=> b!5146290 (= e!3208881 e!3208879)))

(declare-fun res!2190651 () Bool)

(assert (=> b!5146290 (= res!2190651 (not (nullable!4843 (reg!14816 (regOne!29486 expr!117)))))))

(assert (=> b!5146290 (=> (not res!2190651) (not e!3208879))))

(declare-fun b!5146291 () Bool)

(declare-fun res!2190652 () Bool)

(assert (=> b!5146291 (=> res!2190652 e!3208880)))

(assert (=> b!5146291 (= res!2190652 (not ((_ is Concat!23332) (regOne!29486 expr!117))))))

(assert (=> b!5146291 (= e!3208882 e!3208880)))

(assert (= (and d!1663493 (not res!2190653)) b!5146289))

(assert (= (and b!5146289 c!886074) b!5146290))

(assert (= (and b!5146289 (not c!886074)) b!5146285))

(assert (= (and b!5146290 res!2190651) b!5146287))

(assert (= (and b!5146285 c!886073) b!5146283))

(assert (= (and b!5146285 (not c!886073)) b!5146291))

(assert (= (and b!5146283 res!2190650) b!5146286))

(assert (= (and b!5146291 (not res!2190652)) b!5146284))

(assert (= (and b!5146284 res!2190654) b!5146288))

(assert (= (or b!5146286 b!5146288) bm!359763))

(assert (= (or b!5146283 b!5146284) bm!359762))

(assert (= (or b!5146287 bm!359763) bm!359764))

(declare-fun m!6206778 () Bool)

(assert (=> bm!359762 m!6206778))

(declare-fun m!6206780 () Bool)

(assert (=> bm!359764 m!6206780))

(declare-fun m!6206782 () Bool)

(assert (=> b!5146290 m!6206782))

(assert (=> d!1663487 d!1663493))

(declare-fun b!5146306 () Bool)

(declare-fun e!3208902 () Bool)

(declare-fun call!359775 () Bool)

(assert (=> b!5146306 (= e!3208902 call!359775)))

(declare-fun b!5146307 () Bool)

(declare-fun e!3208900 () Bool)

(declare-fun e!3208899 () Bool)

(assert (=> b!5146307 (= e!3208900 e!3208899)))

(declare-fun res!2190668 () Bool)

(assert (=> b!5146307 (= res!2190668 call!359775)))

(assert (=> b!5146307 (=> res!2190668 e!3208899)))

(declare-fun d!1663495 () Bool)

(declare-fun res!2190665 () Bool)

(declare-fun e!3208901 () Bool)

(assert (=> d!1663495 (=> res!2190665 e!3208901)))

(assert (=> d!1663495 (= res!2190665 ((_ is EmptyExpr!14487) (regOne!29486 expr!117)))))

(assert (=> d!1663495 (= (nullableFct!1325 (regOne!29486 expr!117)) e!3208901)))

(declare-fun b!5146308 () Bool)

(declare-fun e!3208898 () Bool)

(assert (=> b!5146308 (= e!3208901 e!3208898)))

(declare-fun res!2190667 () Bool)

(assert (=> b!5146308 (=> (not res!2190667) (not e!3208898))))

(assert (=> b!5146308 (= res!2190667 (and (not ((_ is EmptyLang!14487) (regOne!29486 expr!117))) (not ((_ is ElementMatch!14487) (regOne!29486 expr!117)))))))

(declare-fun b!5146309 () Bool)

(declare-fun e!3208897 () Bool)

(assert (=> b!5146309 (= e!3208897 e!3208900)))

(declare-fun c!886077 () Bool)

(assert (=> b!5146309 (= c!886077 ((_ is Union!14487) (regOne!29486 expr!117)))))

(declare-fun b!5146310 () Bool)

(declare-fun call!359774 () Bool)

(assert (=> b!5146310 (= e!3208899 call!359774)))

(declare-fun bm!359769 () Bool)

(assert (=> bm!359769 (= call!359775 (nullable!4843 (ite c!886077 (regOne!29487 (regOne!29486 expr!117)) (regTwo!29486 (regOne!29486 expr!117)))))))

(declare-fun bm!359770 () Bool)

(assert (=> bm!359770 (= call!359774 (nullable!4843 (ite c!886077 (regTwo!29487 (regOne!29486 expr!117)) (regOne!29486 (regOne!29486 expr!117)))))))

(declare-fun b!5146311 () Bool)

(assert (=> b!5146311 (= e!3208900 e!3208902)))

(declare-fun res!2190669 () Bool)

(assert (=> b!5146311 (= res!2190669 call!359774)))

(assert (=> b!5146311 (=> (not res!2190669) (not e!3208902))))

(declare-fun b!5146312 () Bool)

(assert (=> b!5146312 (= e!3208898 e!3208897)))

(declare-fun res!2190666 () Bool)

(assert (=> b!5146312 (=> res!2190666 e!3208897)))

(assert (=> b!5146312 (= res!2190666 ((_ is Star!14487) (regOne!29486 expr!117)))))

(assert (= (and d!1663495 (not res!2190665)) b!5146308))

(assert (= (and b!5146308 res!2190667) b!5146312))

(assert (= (and b!5146312 (not res!2190666)) b!5146309))

(assert (= (and b!5146309 c!886077) b!5146307))

(assert (= (and b!5146309 (not c!886077)) b!5146311))

(assert (= (and b!5146307 (not res!2190668)) b!5146310))

(assert (= (and b!5146311 res!2190669) b!5146306))

(assert (= (or b!5146310 b!5146311) bm!359770))

(assert (= (or b!5146307 b!5146306) bm!359769))

(declare-fun m!6206784 () Bool)

(assert (=> bm!359769 m!6206784))

(declare-fun m!6206786 () Bool)

(assert (=> bm!359770 m!6206786))

(assert (=> d!1663477 d!1663495))

(declare-fun b!5146313 () Bool)

(declare-fun res!2190670 () Bool)

(declare-fun e!3208909 () Bool)

(assert (=> b!5146313 (=> (not res!2190670) (not e!3208909))))

(declare-fun call!359778 () Bool)

(assert (=> b!5146313 (= res!2190670 call!359778)))

(declare-fun e!3208907 () Bool)

(assert (=> b!5146313 (= e!3208907 e!3208909)))

(declare-fun b!5146314 () Bool)

(declare-fun e!3208905 () Bool)

(declare-fun e!3208903 () Bool)

(assert (=> b!5146314 (= e!3208905 e!3208903)))

(declare-fun res!2190674 () Bool)

(assert (=> b!5146314 (=> (not res!2190674) (not e!3208903))))

(assert (=> b!5146314 (= res!2190674 call!359778)))

(declare-fun c!886078 () Bool)

(declare-fun bm!359771 () Bool)

(assert (=> bm!359771 (= call!359778 (validRegex!6342 (ite c!886078 (regOne!29487 (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117)))) (regOne!29486 (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117)))))))))

(declare-fun bm!359772 () Bool)

(declare-fun call!359776 () Bool)

(declare-fun call!359777 () Bool)

(assert (=> bm!359772 (= call!359776 call!359777)))

(declare-fun d!1663497 () Bool)

(declare-fun res!2190673 () Bool)

(declare-fun e!3208908 () Bool)

(assert (=> d!1663497 (=> res!2190673 e!3208908)))

(assert (=> d!1663497 (= res!2190673 ((_ is ElementMatch!14487) (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117)))))))

(assert (=> d!1663497 (= (validRegex!6342 (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117)))) e!3208908)))

(declare-fun b!5146315 () Bool)

(declare-fun e!3208906 () Bool)

(assert (=> b!5146315 (= e!3208906 e!3208907)))

(assert (=> b!5146315 (= c!886078 ((_ is Union!14487) (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117)))))))

(declare-fun c!886079 () Bool)

(declare-fun bm!359773 () Bool)

(assert (=> bm!359773 (= call!359777 (validRegex!6342 (ite c!886079 (reg!14816 (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117)))) (ite c!886078 (regTwo!29487 (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117)))) (regTwo!29486 (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117))))))))))

(declare-fun b!5146316 () Bool)

(assert (=> b!5146316 (= e!3208909 call!359776)))

(declare-fun b!5146317 () Bool)

(declare-fun e!3208904 () Bool)

(assert (=> b!5146317 (= e!3208904 call!359777)))

(declare-fun b!5146318 () Bool)

(assert (=> b!5146318 (= e!3208903 call!359776)))

(declare-fun b!5146319 () Bool)

(assert (=> b!5146319 (= e!3208908 e!3208906)))

(assert (=> b!5146319 (= c!886079 ((_ is Star!14487) (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117)))))))

(declare-fun b!5146320 () Bool)

(assert (=> b!5146320 (= e!3208906 e!3208904)))

(declare-fun res!2190671 () Bool)

(assert (=> b!5146320 (= res!2190671 (not (nullable!4843 (reg!14816 (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117)))))))))

(assert (=> b!5146320 (=> (not res!2190671) (not e!3208904))))

(declare-fun b!5146321 () Bool)

(declare-fun res!2190672 () Bool)

(assert (=> b!5146321 (=> res!2190672 e!3208905)))

(assert (=> b!5146321 (= res!2190672 (not ((_ is Concat!23332) (ite c!886068 (reg!14816 expr!117) (ite c!886067 (regTwo!29487 expr!117) (regTwo!29486 expr!117))))))))

(assert (=> b!5146321 (= e!3208907 e!3208905)))

(assert (= (and d!1663497 (not res!2190673)) b!5146319))

(assert (= (and b!5146319 c!886079) b!5146320))

(assert (= (and b!5146319 (not c!886079)) b!5146315))

(assert (= (and b!5146320 res!2190671) b!5146317))

(assert (= (and b!5146315 c!886078) b!5146313))

(assert (= (and b!5146315 (not c!886078)) b!5146321))

(assert (= (and b!5146313 res!2190670) b!5146316))

(assert (= (and b!5146321 (not res!2190672)) b!5146314))

(assert (= (and b!5146314 res!2190674) b!5146318))

(assert (= (or b!5146316 b!5146318) bm!359772))

(assert (= (or b!5146313 b!5146314) bm!359771))

(assert (= (or b!5146317 bm!359772) bm!359773))

(declare-fun m!6206788 () Bool)

(assert (=> bm!359771 m!6206788))

(declare-fun m!6206790 () Bool)

(assert (=> bm!359773 m!6206790))

(declare-fun m!6206792 () Bool)

(assert (=> b!5146320 m!6206792))

(assert (=> bm!359755 d!1663497))

(declare-fun b!5146322 () Bool)

(declare-fun res!2190675 () Bool)

(declare-fun e!3208916 () Bool)

(assert (=> b!5146322 (=> (not res!2190675) (not e!3208916))))

(declare-fun call!359781 () Bool)

(assert (=> b!5146322 (= res!2190675 call!359781)))

(declare-fun e!3208914 () Bool)

(assert (=> b!5146322 (= e!3208914 e!3208916)))

(declare-fun b!5146323 () Bool)

(declare-fun e!3208912 () Bool)

(declare-fun e!3208910 () Bool)

(assert (=> b!5146323 (= e!3208912 e!3208910)))

(declare-fun res!2190679 () Bool)

(assert (=> b!5146323 (=> (not res!2190679) (not e!3208910))))

(assert (=> b!5146323 (= res!2190679 call!359781)))

(declare-fun c!886080 () Bool)

(declare-fun bm!359774 () Bool)

(assert (=> bm!359774 (= call!359781 (validRegex!6342 (ite c!886080 (regOne!29487 (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117))))) (regOne!29486 (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117))))))))))

(declare-fun bm!359775 () Bool)

(declare-fun call!359779 () Bool)

(declare-fun call!359780 () Bool)

(assert (=> bm!359775 (= call!359779 call!359780)))

(declare-fun d!1663499 () Bool)

(declare-fun res!2190678 () Bool)

(declare-fun e!3208915 () Bool)

(assert (=> d!1663499 (=> res!2190678 e!3208915)))

(assert (=> d!1663499 (= res!2190678 ((_ is ElementMatch!14487) (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117))))))))

(assert (=> d!1663499 (= (validRegex!6342 (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117))))) e!3208915)))

(declare-fun b!5146324 () Bool)

(declare-fun e!3208913 () Bool)

(assert (=> b!5146324 (= e!3208913 e!3208914)))

(assert (=> b!5146324 (= c!886080 ((_ is Union!14487) (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117))))))))

(declare-fun c!886081 () Bool)

(declare-fun bm!359776 () Bool)

(assert (=> bm!359776 (= call!359780 (validRegex!6342 (ite c!886081 (reg!14816 (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117))))) (ite c!886080 (regTwo!29487 (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117))))) (regTwo!29486 (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117)))))))))))

(declare-fun b!5146325 () Bool)

(assert (=> b!5146325 (= e!3208916 call!359779)))

(declare-fun b!5146326 () Bool)

(declare-fun e!3208911 () Bool)

(assert (=> b!5146326 (= e!3208911 call!359780)))

(declare-fun b!5146327 () Bool)

(assert (=> b!5146327 (= e!3208910 call!359779)))

(declare-fun b!5146328 () Bool)

(assert (=> b!5146328 (= e!3208915 e!3208913)))

(assert (=> b!5146328 (= c!886081 ((_ is Star!14487) (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117))))))))

(declare-fun b!5146329 () Bool)

(assert (=> b!5146329 (= e!3208913 e!3208911)))

(declare-fun res!2190676 () Bool)

(assert (=> b!5146329 (= res!2190676 (not (nullable!4843 (reg!14816 (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117))))))))))

(assert (=> b!5146329 (=> (not res!2190676) (not e!3208911))))

(declare-fun b!5146330 () Bool)

(declare-fun res!2190677 () Bool)

(assert (=> b!5146330 (=> res!2190677 e!3208912)))

(assert (=> b!5146330 (= res!2190677 (not ((_ is Concat!23332) (ite c!886072 (reg!14816 (regTwo!29486 expr!117)) (ite c!886071 (regTwo!29487 (regTwo!29486 expr!117)) (regTwo!29486 (regTwo!29486 expr!117)))))))))

(assert (=> b!5146330 (= e!3208914 e!3208912)))

(assert (= (and d!1663499 (not res!2190678)) b!5146328))

(assert (= (and b!5146328 c!886081) b!5146329))

(assert (= (and b!5146328 (not c!886081)) b!5146324))

(assert (= (and b!5146329 res!2190676) b!5146326))

(assert (= (and b!5146324 c!886080) b!5146322))

(assert (= (and b!5146324 (not c!886080)) b!5146330))

(assert (= (and b!5146322 res!2190675) b!5146325))

(assert (= (and b!5146330 (not res!2190677)) b!5146323))

(assert (= (and b!5146323 res!2190679) b!5146327))

(assert (= (or b!5146325 b!5146327) bm!359775))

(assert (= (or b!5146322 b!5146323) bm!359774))

(assert (= (or b!5146326 bm!359775) bm!359776))

(declare-fun m!6206794 () Bool)

(assert (=> bm!359774 m!6206794))

(declare-fun m!6206796 () Bool)

(assert (=> bm!359776 m!6206796))

(declare-fun m!6206798 () Bool)

(assert (=> b!5146329 m!6206798))

(assert (=> bm!359761 d!1663499))

(declare-fun d!1663501 () Bool)

(declare-fun lt!2121093 () Bool)

(declare-datatypes ((List!59893 0))(
  ( (Nil!59769) (Cons!59769 (h!66217 C!29240) (t!372932 List!59893)) )
))
(declare-datatypes ((Option!14797 0))(
  ( (None!14796) (Some!14796 (v!50825 List!59893)) )
))
(declare-fun isEmpty!32058 (Option!14797) Bool)

(declare-fun getLanguageWitness!954 (Regex!14487) Option!14797)

(assert (=> d!1663501 (= lt!2121093 (isEmpty!32058 (getLanguageWitness!954 expr!117)))))

(declare-fun e!3208939 () Bool)

(assert (=> d!1663501 (= lt!2121093 e!3208939)))

(declare-fun res!2190699 () Bool)

(assert (=> d!1663501 (=> (not res!2190699) (not e!3208939))))

(assert (=> d!1663501 (= res!2190699 (not ((_ is EmptyExpr!14487) expr!117)))))

(assert (=> d!1663501 (= (lostCauseFct!366 expr!117) lt!2121093)))

(declare-fun bm!359781 () Bool)

(declare-fun call!359786 () Bool)

(declare-fun c!886084 () Bool)

(assert (=> bm!359781 (= call!359786 (lostCause!1527 (ite c!886084 (regTwo!29487 expr!117) (regTwo!29486 expr!117))))))

(declare-fun b!5146351 () Bool)

(declare-fun e!3208935 () Bool)

(assert (=> b!5146351 (= e!3208935 call!359786)))

(declare-fun b!5146352 () Bool)

(declare-fun e!3208938 () Bool)

(assert (=> b!5146352 (= e!3208938 call!359786)))

(declare-fun bm!359782 () Bool)

(declare-fun call!359787 () Bool)

(assert (=> bm!359782 (= call!359787 (lostCause!1527 (ite c!886084 (regOne!29487 expr!117) (regOne!29486 expr!117))))))

(declare-fun b!5146353 () Bool)

(declare-fun e!3208940 () Bool)

(declare-fun e!3208936 () Bool)

(assert (=> b!5146353 (= e!3208940 e!3208936)))

(declare-fun res!2190697 () Bool)

(assert (=> b!5146353 (=> (not res!2190697) (not e!3208936))))

(assert (=> b!5146353 (= res!2190697 (and (not ((_ is ElementMatch!14487) expr!117)) (not ((_ is Star!14487) expr!117))))))

(declare-fun b!5146354 () Bool)

(declare-fun e!3208937 () Bool)

(assert (=> b!5146354 (= e!3208937 e!3208935)))

(declare-fun res!2190700 () Bool)

(assert (=> b!5146354 (= res!2190700 call!359787)))

(assert (=> b!5146354 (=> (not res!2190700) (not e!3208935))))

(declare-fun b!5146355 () Bool)

(assert (=> b!5146355 (= e!3208936 e!3208937)))

(assert (=> b!5146355 (= c!886084 ((_ is Union!14487) expr!117))))

(declare-fun b!5146356 () Bool)

(assert (=> b!5146356 (= e!3208937 e!3208938)))

(declare-fun res!2190698 () Bool)

(assert (=> b!5146356 (= res!2190698 call!359787)))

(assert (=> b!5146356 (=> res!2190698 e!3208938)))

(declare-fun b!5146357 () Bool)

(assert (=> b!5146357 (= e!3208939 e!3208940)))

(declare-fun res!2190696 () Bool)

(assert (=> b!5146357 (=> res!2190696 e!3208940)))

(assert (=> b!5146357 (= res!2190696 ((_ is EmptyLang!14487) expr!117))))

(assert (= (and d!1663501 res!2190699) b!5146357))

(assert (= (and b!5146357 (not res!2190696)) b!5146353))

(assert (= (and b!5146353 res!2190697) b!5146355))

(assert (= (and b!5146355 c!886084) b!5146354))

(assert (= (and b!5146355 (not c!886084)) b!5146356))

(assert (= (and b!5146354 res!2190700) b!5146351))

(assert (= (and b!5146356 (not res!2190698)) b!5146352))

(assert (= (or b!5146354 b!5146356) bm!359782))

(assert (= (or b!5146351 b!5146352) bm!359781))

(declare-fun m!6206804 () Bool)

(assert (=> d!1663501 m!6206804))

(assert (=> d!1663501 m!6206804))

(declare-fun m!6206806 () Bool)

(assert (=> d!1663501 m!6206806))

(declare-fun m!6206808 () Bool)

(assert (=> bm!359781 m!6206808))

(declare-fun m!6206810 () Bool)

(assert (=> bm!359782 m!6206810))

(assert (=> d!1663489 d!1663501))

(declare-fun b!5146358 () Bool)

(declare-fun res!2190701 () Bool)

(declare-fun e!3208947 () Bool)

(assert (=> b!5146358 (=> (not res!2190701) (not e!3208947))))

(declare-fun call!359790 () Bool)

(assert (=> b!5146358 (= res!2190701 call!359790)))

(declare-fun e!3208945 () Bool)

(assert (=> b!5146358 (= e!3208945 e!3208947)))

(declare-fun b!5146359 () Bool)

(declare-fun e!3208943 () Bool)

(declare-fun e!3208941 () Bool)

(assert (=> b!5146359 (= e!3208943 e!3208941)))

(declare-fun res!2190705 () Bool)

(assert (=> b!5146359 (=> (not res!2190705) (not e!3208941))))

(assert (=> b!5146359 (= res!2190705 call!359790)))

(declare-fun c!886085 () Bool)

(declare-fun bm!359783 () Bool)

(assert (=> bm!359783 (= call!359790 (validRegex!6342 (ite c!886085 (regOne!29487 (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117))) (regOne!29486 (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117))))))))

(declare-fun bm!359784 () Bool)

(declare-fun call!359788 () Bool)

(declare-fun call!359789 () Bool)

(assert (=> bm!359784 (= call!359788 call!359789)))

(declare-fun d!1663507 () Bool)

(declare-fun res!2190704 () Bool)

(declare-fun e!3208946 () Bool)

(assert (=> d!1663507 (=> res!2190704 e!3208946)))

(assert (=> d!1663507 (= res!2190704 ((_ is ElementMatch!14487) (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117))))))

(assert (=> d!1663507 (= (validRegex!6342 (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117))) e!3208946)))

(declare-fun b!5146360 () Bool)

(declare-fun e!3208944 () Bool)

(assert (=> b!5146360 (= e!3208944 e!3208945)))

(assert (=> b!5146360 (= c!886085 ((_ is Union!14487) (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117))))))

(declare-fun bm!359785 () Bool)

(declare-fun c!886086 () Bool)

(assert (=> bm!359785 (= call!359789 (validRegex!6342 (ite c!886086 (reg!14816 (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117))) (ite c!886085 (regTwo!29487 (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117))) (regTwo!29486 (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117)))))))))

(declare-fun b!5146361 () Bool)

(assert (=> b!5146361 (= e!3208947 call!359788)))

(declare-fun b!5146362 () Bool)

(declare-fun e!3208942 () Bool)

(assert (=> b!5146362 (= e!3208942 call!359789)))

(declare-fun b!5146363 () Bool)

(assert (=> b!5146363 (= e!3208941 call!359788)))

(declare-fun b!5146364 () Bool)

(assert (=> b!5146364 (= e!3208946 e!3208944)))

(assert (=> b!5146364 (= c!886086 ((_ is Star!14487) (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117))))))

(declare-fun b!5146365 () Bool)

(assert (=> b!5146365 (= e!3208944 e!3208942)))

(declare-fun res!2190702 () Bool)

(assert (=> b!5146365 (= res!2190702 (not (nullable!4843 (reg!14816 (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117))))))))

(assert (=> b!5146365 (=> (not res!2190702) (not e!3208942))))

(declare-fun b!5146366 () Bool)

(declare-fun res!2190703 () Bool)

(assert (=> b!5146366 (=> res!2190703 e!3208943)))

(assert (=> b!5146366 (= res!2190703 (not ((_ is Concat!23332) (ite c!886067 (regOne!29487 expr!117) (regOne!29486 expr!117)))))))

(assert (=> b!5146366 (= e!3208945 e!3208943)))

(assert (= (and d!1663507 (not res!2190704)) b!5146364))

(assert (= (and b!5146364 c!886086) b!5146365))

(assert (= (and b!5146364 (not c!886086)) b!5146360))

(assert (= (and b!5146365 res!2190702) b!5146362))

(assert (= (and b!5146360 c!886085) b!5146358))

(assert (= (and b!5146360 (not c!886085)) b!5146366))

(assert (= (and b!5146358 res!2190701) b!5146361))

(assert (= (and b!5146366 (not res!2190703)) b!5146359))

(assert (= (and b!5146359 res!2190705) b!5146363))

(assert (= (or b!5146361 b!5146363) bm!359784))

(assert (= (or b!5146358 b!5146359) bm!359783))

(assert (= (or b!5146362 bm!359784) bm!359785))

(declare-fun m!6206812 () Bool)

(assert (=> bm!359783 m!6206812))

(declare-fun m!6206814 () Bool)

(assert (=> bm!359785 m!6206814))

(declare-fun m!6206816 () Bool)

(assert (=> b!5146365 m!6206816))

(assert (=> bm!359753 d!1663507))

(declare-fun bs!1201285 () Bool)

(declare-fun d!1663509 () Bool)

(assert (= bs!1201285 (and d!1663509 d!1663451)))

(declare-fun lambda!256895 () Int)

(assert (=> bs!1201285 (not (= lambda!256895 lambda!256884))))

(declare-fun bs!1201286 () Bool)

(assert (= bs!1201286 (and d!1663509 d!1663467)))

(assert (=> bs!1201286 (not (= lambda!256895 lambda!256886))))

(declare-fun bs!1201287 () Bool)

(assert (= bs!1201287 (and d!1663509 d!1663471)))

(assert (=> bs!1201287 (not (= lambda!256895 lambda!256892))))

(assert (=> d!1663509 true))

(declare-fun order!26967 () Int)

(declare-fun dynLambda!23782 (Int Int) Int)

(assert (=> d!1663509 (< (dynLambda!23782 order!26967 lambda!256892) (dynLambda!23782 order!26967 lambda!256895))))

(assert (=> d!1663509 (= (exists!1817 (exprs!4371 ctx!100) lambda!256892) (not (forall!13961 (exprs!4371 ctx!100) lambda!256895)))))

(declare-fun bs!1201288 () Bool)

(assert (= bs!1201288 d!1663509))

(declare-fun m!6206818 () Bool)

(assert (=> bs!1201288 m!6206818))

(assert (=> d!1663471 d!1663509))

(declare-fun d!1663511 () Bool)

(declare-fun res!2190725 () Bool)

(declare-fun e!3208970 () Bool)

(assert (=> d!1663511 (=> res!2190725 e!3208970)))

(assert (=> d!1663511 (= res!2190725 ((_ is Nil!59767) (exprs!4371 (Context!7743 ($colon$colon!1211 (exprs!4371 ctx!100) (regTwo!29486 expr!117))))))))

(assert (=> d!1663511 (= (forall!13961 (exprs!4371 (Context!7743 ($colon$colon!1211 (exprs!4371 ctx!100) (regTwo!29486 expr!117)))) lambda!256884) e!3208970)))

(declare-fun b!5146394 () Bool)

(declare-fun e!3208971 () Bool)

(assert (=> b!5146394 (= e!3208970 e!3208971)))

(declare-fun res!2190726 () Bool)

(assert (=> b!5146394 (=> (not res!2190726) (not e!3208971))))

(declare-fun dynLambda!23783 (Int Regex!14487) Bool)

(assert (=> b!5146394 (= res!2190726 (dynLambda!23783 lambda!256884 (h!66215 (exprs!4371 (Context!7743 ($colon$colon!1211 (exprs!4371 ctx!100) (regTwo!29486 expr!117)))))))))

(declare-fun b!5146395 () Bool)

(assert (=> b!5146395 (= e!3208971 (forall!13961 (t!372928 (exprs!4371 (Context!7743 ($colon$colon!1211 (exprs!4371 ctx!100) (regTwo!29486 expr!117))))) lambda!256884))))

(assert (= (and d!1663511 (not res!2190725)) b!5146394))

(assert (= (and b!5146394 res!2190726) b!5146395))

(declare-fun b_lambda!200319 () Bool)

(assert (=> (not b_lambda!200319) (not b!5146394)))

(declare-fun m!6206820 () Bool)

(assert (=> b!5146394 m!6206820))

(declare-fun m!6206824 () Bool)

(assert (=> b!5146395 m!6206824))

(assert (=> d!1663451 d!1663511))

(declare-fun b!5146396 () Bool)

(declare-fun res!2190727 () Bool)

(declare-fun e!3208978 () Bool)

(assert (=> b!5146396 (=> (not res!2190727) (not e!3208978))))

(declare-fun call!359799 () Bool)

(assert (=> b!5146396 (= res!2190727 call!359799)))

(declare-fun e!3208976 () Bool)

(assert (=> b!5146396 (= e!3208976 e!3208978)))

(declare-fun b!5146397 () Bool)

(declare-fun e!3208974 () Bool)

(declare-fun e!3208972 () Bool)

(assert (=> b!5146397 (= e!3208974 e!3208972)))

(declare-fun res!2190731 () Bool)

(assert (=> b!5146397 (=> (not res!2190731) (not e!3208972))))

(assert (=> b!5146397 (= res!2190731 call!359799)))

(declare-fun c!886090 () Bool)

(declare-fun bm!359792 () Bool)

(assert (=> bm!359792 (= call!359799 (validRegex!6342 (ite c!886090 (regOne!29487 (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117)))) (regOne!29486 (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117)))))))))

(declare-fun bm!359793 () Bool)

(declare-fun call!359797 () Bool)

(declare-fun call!359798 () Bool)

(assert (=> bm!359793 (= call!359797 call!359798)))

(declare-fun d!1663513 () Bool)

(declare-fun res!2190730 () Bool)

(declare-fun e!3208977 () Bool)

(assert (=> d!1663513 (=> res!2190730 e!3208977)))

(assert (=> d!1663513 (= res!2190730 ((_ is ElementMatch!14487) (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117)))))))

(assert (=> d!1663513 (= (validRegex!6342 (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117)))) e!3208977)))

(declare-fun b!5146398 () Bool)

(declare-fun e!3208975 () Bool)

(assert (=> b!5146398 (= e!3208975 e!3208976)))

(assert (=> b!5146398 (= c!886090 ((_ is Union!14487) (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117)))))))

(declare-fun bm!359794 () Bool)

(declare-fun c!886091 () Bool)

(assert (=> bm!359794 (= call!359798 (validRegex!6342 (ite c!886091 (reg!14816 (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117)))) (ite c!886090 (regTwo!29487 (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117)))) (regTwo!29486 (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117))))))))))

(declare-fun b!5146399 () Bool)

(assert (=> b!5146399 (= e!3208978 call!359797)))

(declare-fun b!5146400 () Bool)

(declare-fun e!3208973 () Bool)

(assert (=> b!5146400 (= e!3208973 call!359798)))

(declare-fun b!5146401 () Bool)

(assert (=> b!5146401 (= e!3208972 call!359797)))

(declare-fun b!5146402 () Bool)

(assert (=> b!5146402 (= e!3208977 e!3208975)))

(assert (=> b!5146402 (= c!886091 ((_ is Star!14487) (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117)))))))

(declare-fun b!5146403 () Bool)

(assert (=> b!5146403 (= e!3208975 e!3208973)))

(declare-fun res!2190728 () Bool)

(assert (=> b!5146403 (= res!2190728 (not (nullable!4843 (reg!14816 (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117)))))))))

(assert (=> b!5146403 (=> (not res!2190728) (not e!3208973))))

(declare-fun b!5146404 () Bool)

(declare-fun res!2190729 () Bool)

(assert (=> b!5146404 (=> res!2190729 e!3208974)))

(assert (=> b!5146404 (= res!2190729 (not ((_ is Concat!23332) (ite c!886071 (regOne!29487 (regTwo!29486 expr!117)) (regOne!29486 (regTwo!29486 expr!117))))))))

(assert (=> b!5146404 (= e!3208976 e!3208974)))

(assert (= (and d!1663513 (not res!2190730)) b!5146402))

(assert (= (and b!5146402 c!886091) b!5146403))

(assert (= (and b!5146402 (not c!886091)) b!5146398))

(assert (= (and b!5146403 res!2190728) b!5146400))

(assert (= (and b!5146398 c!886090) b!5146396))

(assert (= (and b!5146398 (not c!886090)) b!5146404))

(assert (= (and b!5146396 res!2190727) b!5146399))

(assert (= (and b!5146404 (not res!2190729)) b!5146397))

(assert (= (and b!5146397 res!2190731) b!5146401))

(assert (= (or b!5146399 b!5146401) bm!359793))

(assert (= (or b!5146396 b!5146397) bm!359792))

(assert (= (or b!5146400 bm!359793) bm!359794))

(declare-fun m!6206832 () Bool)

(assert (=> bm!359792 m!6206832))

(declare-fun m!6206834 () Bool)

(assert (=> bm!359794 m!6206834))

(declare-fun m!6206836 () Bool)

(assert (=> b!5146403 m!6206836))

(assert (=> bm!359759 d!1663513))

(declare-fun d!1663517 () Bool)

(declare-fun lt!2121097 () Bool)

(assert (=> d!1663517 (= lt!2121097 (isEmpty!32058 (getLanguageWitness!954 (regOne!29486 expr!117))))))

(declare-fun e!3208990 () Bool)

(assert (=> d!1663517 (= lt!2121097 e!3208990)))

(declare-fun res!2190740 () Bool)

(assert (=> d!1663517 (=> (not res!2190740) (not e!3208990))))

(assert (=> d!1663517 (= res!2190740 (not ((_ is EmptyExpr!14487) (regOne!29486 expr!117))))))

(assert (=> d!1663517 (= (lostCauseFct!366 (regOne!29486 expr!117)) lt!2121097)))

(declare-fun bm!359798 () Bool)

(declare-fun call!359803 () Bool)

(declare-fun c!886094 () Bool)

(assert (=> bm!359798 (= call!359803 (lostCause!1527 (ite c!886094 (regTwo!29487 (regOne!29486 expr!117)) (regTwo!29486 (regOne!29486 expr!117)))))))

(declare-fun b!5146414 () Bool)

(declare-fun e!3208986 () Bool)

(assert (=> b!5146414 (= e!3208986 call!359803)))

(declare-fun b!5146415 () Bool)

(declare-fun e!3208989 () Bool)

(assert (=> b!5146415 (= e!3208989 call!359803)))

(declare-fun bm!359799 () Bool)

(declare-fun call!359804 () Bool)

(assert (=> bm!359799 (= call!359804 (lostCause!1527 (ite c!886094 (regOne!29487 (regOne!29486 expr!117)) (regOne!29486 (regOne!29486 expr!117)))))))

(declare-fun b!5146416 () Bool)

(declare-fun e!3208991 () Bool)

(declare-fun e!3208987 () Bool)

(assert (=> b!5146416 (= e!3208991 e!3208987)))

(declare-fun res!2190738 () Bool)

(assert (=> b!5146416 (=> (not res!2190738) (not e!3208987))))

(assert (=> b!5146416 (= res!2190738 (and (not ((_ is ElementMatch!14487) (regOne!29486 expr!117))) (not ((_ is Star!14487) (regOne!29486 expr!117)))))))

(declare-fun b!5146417 () Bool)

(declare-fun e!3208988 () Bool)

(assert (=> b!5146417 (= e!3208988 e!3208986)))

(declare-fun res!2190741 () Bool)

(assert (=> b!5146417 (= res!2190741 call!359804)))

(assert (=> b!5146417 (=> (not res!2190741) (not e!3208986))))

(declare-fun b!5146418 () Bool)

(assert (=> b!5146418 (= e!3208987 e!3208988)))

(assert (=> b!5146418 (= c!886094 ((_ is Union!14487) (regOne!29486 expr!117)))))

(declare-fun b!5146419 () Bool)

(assert (=> b!5146419 (= e!3208988 e!3208989)))

(declare-fun res!2190739 () Bool)

(assert (=> b!5146419 (= res!2190739 call!359804)))

(assert (=> b!5146419 (=> res!2190739 e!3208989)))

(declare-fun b!5146420 () Bool)

(assert (=> b!5146420 (= e!3208990 e!3208991)))

(declare-fun res!2190737 () Bool)

(assert (=> b!5146420 (=> res!2190737 e!3208991)))

(assert (=> b!5146420 (= res!2190737 ((_ is EmptyLang!14487) (regOne!29486 expr!117)))))

(assert (= (and d!1663517 res!2190740) b!5146420))

(assert (= (and b!5146420 (not res!2190737)) b!5146416))

(assert (= (and b!5146416 res!2190738) b!5146418))

(assert (= (and b!5146418 c!886094) b!5146417))

(assert (= (and b!5146418 (not c!886094)) b!5146419))

(assert (= (and b!5146417 res!2190741) b!5146414))

(assert (= (and b!5146419 (not res!2190739)) b!5146415))

(assert (= (or b!5146417 b!5146419) bm!359799))

(assert (= (or b!5146414 b!5146415) bm!359798))

(declare-fun m!6206846 () Bool)

(assert (=> d!1663517 m!6206846))

(assert (=> d!1663517 m!6206846))

(declare-fun m!6206848 () Bool)

(assert (=> d!1663517 m!6206848))

(declare-fun m!6206850 () Bool)

(assert (=> bm!359798 m!6206850))

(declare-fun m!6206852 () Bool)

(assert (=> bm!359799 m!6206852))

(assert (=> d!1663485 d!1663517))

(declare-fun d!1663523 () Bool)

(assert (=> d!1663523 (= (nullable!4843 (reg!14816 expr!117)) (nullableFct!1325 (reg!14816 expr!117)))))

(declare-fun bs!1201290 () Bool)

(assert (= bs!1201290 d!1663523))

(declare-fun m!6206854 () Bool)

(assert (=> bs!1201290 m!6206854))

(assert (=> b!5146193 d!1663523))

(declare-fun d!1663525 () Bool)

(assert (=> d!1663525 (= (nullable!4843 (reg!14816 (regTwo!29486 expr!117))) (nullableFct!1325 (reg!14816 (regTwo!29486 expr!117))))))

(declare-fun bs!1201291 () Bool)

(assert (= bs!1201291 d!1663525))

(declare-fun m!6206856 () Bool)

(assert (=> bs!1201291 m!6206856))

(assert (=> b!5146211 d!1663525))

(declare-fun d!1663527 () Bool)

(declare-fun res!2190747 () Bool)

(declare-fun e!3208999 () Bool)

(assert (=> d!1663527 (=> res!2190747 e!3208999)))

(assert (=> d!1663527 (= res!2190747 ((_ is Nil!59767) (exprs!4371 ctx!100)))))

(assert (=> d!1663527 (= (forall!13961 (exprs!4371 ctx!100) lambda!256886) e!3208999)))

(declare-fun b!5146430 () Bool)

(declare-fun e!3209000 () Bool)

(assert (=> b!5146430 (= e!3208999 e!3209000)))

(declare-fun res!2190748 () Bool)

(assert (=> b!5146430 (=> (not res!2190748) (not e!3209000))))

(assert (=> b!5146430 (= res!2190748 (dynLambda!23783 lambda!256886 (h!66215 (exprs!4371 ctx!100))))))

(declare-fun b!5146431 () Bool)

(assert (=> b!5146431 (= e!3209000 (forall!13961 (t!372928 (exprs!4371 ctx!100)) lambda!256886))))

(assert (= (and d!1663527 (not res!2190747)) b!5146430))

(assert (= (and b!5146430 res!2190748) b!5146431))

(declare-fun b_lambda!200321 () Bool)

(assert (=> (not b_lambda!200321) (not b!5146430)))

(declare-fun m!6206864 () Bool)

(assert (=> b!5146430 m!6206864))

(declare-fun m!6206866 () Bool)

(assert (=> b!5146431 m!6206866))

(assert (=> d!1663467 d!1663527))

(declare-fun b!5146432 () Bool)

(declare-fun e!3209001 () Bool)

(assert (=> b!5146432 (= e!3209001 tp_is_empty!38123)))

(declare-fun b!5146433 () Bool)

(declare-fun tp!1437530 () Bool)

(declare-fun tp!1437532 () Bool)

(assert (=> b!5146433 (= e!3209001 (and tp!1437530 tp!1437532))))

(declare-fun b!5146435 () Bool)

(declare-fun tp!1437528 () Bool)

(declare-fun tp!1437529 () Bool)

(assert (=> b!5146435 (= e!3209001 (and tp!1437528 tp!1437529))))

(assert (=> b!5146280 (= tp!1437525 e!3209001)))

(declare-fun b!5146434 () Bool)

(declare-fun tp!1437531 () Bool)

(assert (=> b!5146434 (= e!3209001 tp!1437531)))

(assert (= (and b!5146280 ((_ is ElementMatch!14487) (regOne!29486 (regTwo!29486 expr!117)))) b!5146432))

(assert (= (and b!5146280 ((_ is Concat!23332) (regOne!29486 (regTwo!29486 expr!117)))) b!5146433))

(assert (= (and b!5146280 ((_ is Star!14487) (regOne!29486 (regTwo!29486 expr!117)))) b!5146434))

(assert (= (and b!5146280 ((_ is Union!14487) (regOne!29486 (regTwo!29486 expr!117)))) b!5146435))

(declare-fun b!5146436 () Bool)

(declare-fun e!3209002 () Bool)

(assert (=> b!5146436 (= e!3209002 tp_is_empty!38123)))

(declare-fun b!5146437 () Bool)

(declare-fun tp!1437535 () Bool)

(declare-fun tp!1437537 () Bool)

(assert (=> b!5146437 (= e!3209002 (and tp!1437535 tp!1437537))))

(declare-fun b!5146439 () Bool)

(declare-fun tp!1437533 () Bool)

(declare-fun tp!1437534 () Bool)

(assert (=> b!5146439 (= e!3209002 (and tp!1437533 tp!1437534))))

(assert (=> b!5146280 (= tp!1437527 e!3209002)))

(declare-fun b!5146438 () Bool)

(declare-fun tp!1437536 () Bool)

(assert (=> b!5146438 (= e!3209002 tp!1437536)))

(assert (= (and b!5146280 ((_ is ElementMatch!14487) (regTwo!29486 (regTwo!29486 expr!117)))) b!5146436))

(assert (= (and b!5146280 ((_ is Concat!23332) (regTwo!29486 (regTwo!29486 expr!117)))) b!5146437))

(assert (= (and b!5146280 ((_ is Star!14487) (regTwo!29486 (regTwo!29486 expr!117)))) b!5146438))

(assert (= (and b!5146280 ((_ is Union!14487) (regTwo!29486 (regTwo!29486 expr!117)))) b!5146439))

(declare-fun b!5146440 () Bool)

(declare-fun e!3209003 () Bool)

(assert (=> b!5146440 (= e!3209003 tp_is_empty!38123)))

(declare-fun b!5146441 () Bool)

(declare-fun tp!1437540 () Bool)

(declare-fun tp!1437542 () Bool)

(assert (=> b!5146441 (= e!3209003 (and tp!1437540 tp!1437542))))

(declare-fun b!5146443 () Bool)

(declare-fun tp!1437538 () Bool)

(declare-fun tp!1437539 () Bool)

(assert (=> b!5146443 (= e!3209003 (and tp!1437538 tp!1437539))))

(assert (=> b!5146276 (= tp!1437520 e!3209003)))

(declare-fun b!5146442 () Bool)

(declare-fun tp!1437541 () Bool)

(assert (=> b!5146442 (= e!3209003 tp!1437541)))

(assert (= (and b!5146276 ((_ is ElementMatch!14487) (regOne!29486 (regOne!29486 expr!117)))) b!5146440))

(assert (= (and b!5146276 ((_ is Concat!23332) (regOne!29486 (regOne!29486 expr!117)))) b!5146441))

(assert (= (and b!5146276 ((_ is Star!14487) (regOne!29486 (regOne!29486 expr!117)))) b!5146442))

(assert (= (and b!5146276 ((_ is Union!14487) (regOne!29486 (regOne!29486 expr!117)))) b!5146443))

(declare-fun b!5146444 () Bool)

(declare-fun e!3209004 () Bool)

(assert (=> b!5146444 (= e!3209004 tp_is_empty!38123)))

(declare-fun b!5146445 () Bool)

(declare-fun tp!1437545 () Bool)

(declare-fun tp!1437547 () Bool)

(assert (=> b!5146445 (= e!3209004 (and tp!1437545 tp!1437547))))

(declare-fun b!5146447 () Bool)

(declare-fun tp!1437543 () Bool)

(declare-fun tp!1437544 () Bool)

(assert (=> b!5146447 (= e!3209004 (and tp!1437543 tp!1437544))))

(assert (=> b!5146276 (= tp!1437522 e!3209004)))

(declare-fun b!5146446 () Bool)

(declare-fun tp!1437546 () Bool)

(assert (=> b!5146446 (= e!3209004 tp!1437546)))

(assert (= (and b!5146276 ((_ is ElementMatch!14487) (regTwo!29486 (regOne!29486 expr!117)))) b!5146444))

(assert (= (and b!5146276 ((_ is Concat!23332) (regTwo!29486 (regOne!29486 expr!117)))) b!5146445))

(assert (= (and b!5146276 ((_ is Star!14487) (regTwo!29486 (regOne!29486 expr!117)))) b!5146446))

(assert (= (and b!5146276 ((_ is Union!14487) (regTwo!29486 (regOne!29486 expr!117)))) b!5146447))

(declare-fun b!5146448 () Bool)

(declare-fun e!3209005 () Bool)

(assert (=> b!5146448 (= e!3209005 tp_is_empty!38123)))

(declare-fun b!5146449 () Bool)

(declare-fun tp!1437550 () Bool)

(declare-fun tp!1437552 () Bool)

(assert (=> b!5146449 (= e!3209005 (and tp!1437550 tp!1437552))))

(declare-fun b!5146451 () Bool)

(declare-fun tp!1437548 () Bool)

(declare-fun tp!1437549 () Bool)

(assert (=> b!5146451 (= e!3209005 (and tp!1437548 tp!1437549))))

(assert (=> b!5146281 (= tp!1437526 e!3209005)))

(declare-fun b!5146450 () Bool)

(declare-fun tp!1437551 () Bool)

(assert (=> b!5146450 (= e!3209005 tp!1437551)))

(assert (= (and b!5146281 ((_ is ElementMatch!14487) (reg!14816 (regTwo!29486 expr!117)))) b!5146448))

(assert (= (and b!5146281 ((_ is Concat!23332) (reg!14816 (regTwo!29486 expr!117)))) b!5146449))

(assert (= (and b!5146281 ((_ is Star!14487) (reg!14816 (regTwo!29486 expr!117)))) b!5146450))

(assert (= (and b!5146281 ((_ is Union!14487) (reg!14816 (regTwo!29486 expr!117)))) b!5146451))

(declare-fun b!5146452 () Bool)

(declare-fun e!3209006 () Bool)

(assert (=> b!5146452 (= e!3209006 tp_is_empty!38123)))

(declare-fun b!5146453 () Bool)

(declare-fun tp!1437555 () Bool)

(declare-fun tp!1437557 () Bool)

(assert (=> b!5146453 (= e!3209006 (and tp!1437555 tp!1437557))))

(declare-fun b!5146455 () Bool)

(declare-fun tp!1437553 () Bool)

(declare-fun tp!1437554 () Bool)

(assert (=> b!5146455 (= e!3209006 (and tp!1437553 tp!1437554))))

(assert (=> b!5146277 (= tp!1437521 e!3209006)))

(declare-fun b!5146454 () Bool)

(declare-fun tp!1437556 () Bool)

(assert (=> b!5146454 (= e!3209006 tp!1437556)))

(assert (= (and b!5146277 ((_ is ElementMatch!14487) (reg!14816 (regOne!29486 expr!117)))) b!5146452))

(assert (= (and b!5146277 ((_ is Concat!23332) (reg!14816 (regOne!29486 expr!117)))) b!5146453))

(assert (= (and b!5146277 ((_ is Star!14487) (reg!14816 (regOne!29486 expr!117)))) b!5146454))

(assert (= (and b!5146277 ((_ is Union!14487) (reg!14816 (regOne!29486 expr!117)))) b!5146455))

(declare-fun b!5146456 () Bool)

(declare-fun e!3209007 () Bool)

(assert (=> b!5146456 (= e!3209007 tp_is_empty!38123)))

(declare-fun b!5146457 () Bool)

(declare-fun tp!1437560 () Bool)

(declare-fun tp!1437562 () Bool)

(assert (=> b!5146457 (= e!3209007 (and tp!1437560 tp!1437562))))

(declare-fun b!5146459 () Bool)

(declare-fun tp!1437558 () Bool)

(declare-fun tp!1437559 () Bool)

(assert (=> b!5146459 (= e!3209007 (and tp!1437558 tp!1437559))))

(assert (=> b!5146268 (= tp!1437510 e!3209007)))

(declare-fun b!5146458 () Bool)

(declare-fun tp!1437561 () Bool)

(assert (=> b!5146458 (= e!3209007 tp!1437561)))

(assert (= (and b!5146268 ((_ is ElementMatch!14487) (reg!14816 (reg!14816 expr!117)))) b!5146456))

(assert (= (and b!5146268 ((_ is Concat!23332) (reg!14816 (reg!14816 expr!117)))) b!5146457))

(assert (= (and b!5146268 ((_ is Star!14487) (reg!14816 (reg!14816 expr!117)))) b!5146458))

(assert (= (and b!5146268 ((_ is Union!14487) (reg!14816 (reg!14816 expr!117)))) b!5146459))

(declare-fun b!5146462 () Bool)

(declare-fun e!3209010 () Bool)

(assert (=> b!5146462 (= e!3209010 tp_is_empty!38123)))

(declare-fun b!5146463 () Bool)

(declare-fun tp!1437565 () Bool)

(declare-fun tp!1437567 () Bool)

(assert (=> b!5146463 (= e!3209010 (and tp!1437565 tp!1437567))))

(declare-fun b!5146465 () Bool)

(declare-fun tp!1437563 () Bool)

(declare-fun tp!1437564 () Bool)

(assert (=> b!5146465 (= e!3209010 (and tp!1437563 tp!1437564))))

(assert (=> b!5146259 (= tp!1437499 e!3209010)))

(declare-fun b!5146464 () Bool)

(declare-fun tp!1437566 () Bool)

(assert (=> b!5146464 (= e!3209010 tp!1437566)))

(assert (= (and b!5146259 ((_ is ElementMatch!14487) (regOne!29486 (regOne!29487 expr!117)))) b!5146462))

(assert (= (and b!5146259 ((_ is Concat!23332) (regOne!29486 (regOne!29487 expr!117)))) b!5146463))

(assert (= (and b!5146259 ((_ is Star!14487) (regOne!29486 (regOne!29487 expr!117)))) b!5146464))

(assert (= (and b!5146259 ((_ is Union!14487) (regOne!29486 (regOne!29487 expr!117)))) b!5146465))

(declare-fun b!5146474 () Bool)

(declare-fun e!3209015 () Bool)

(assert (=> b!5146474 (= e!3209015 tp_is_empty!38123)))

(declare-fun b!5146475 () Bool)

(declare-fun tp!1437570 () Bool)

(declare-fun tp!1437572 () Bool)

(assert (=> b!5146475 (= e!3209015 (and tp!1437570 tp!1437572))))

(declare-fun b!5146477 () Bool)

(declare-fun tp!1437568 () Bool)

(declare-fun tp!1437569 () Bool)

(assert (=> b!5146477 (= e!3209015 (and tp!1437568 tp!1437569))))

(assert (=> b!5146259 (= tp!1437501 e!3209015)))

(declare-fun b!5146476 () Bool)

(declare-fun tp!1437571 () Bool)

(assert (=> b!5146476 (= e!3209015 tp!1437571)))

(assert (= (and b!5146259 ((_ is ElementMatch!14487) (regTwo!29486 (regOne!29487 expr!117)))) b!5146474))

(assert (= (and b!5146259 ((_ is Concat!23332) (regTwo!29486 (regOne!29487 expr!117)))) b!5146475))

(assert (= (and b!5146259 ((_ is Star!14487) (regTwo!29486 (regOne!29487 expr!117)))) b!5146476))

(assert (= (and b!5146259 ((_ is Union!14487) (regTwo!29486 (regOne!29487 expr!117)))) b!5146477))

(declare-fun b!5146482 () Bool)

(declare-fun e!3209022 () Bool)

(assert (=> b!5146482 (= e!3209022 tp_is_empty!38123)))

(declare-fun b!5146483 () Bool)

(declare-fun tp!1437575 () Bool)

(declare-fun tp!1437577 () Bool)

(assert (=> b!5146483 (= e!3209022 (and tp!1437575 tp!1437577))))

(declare-fun b!5146485 () Bool)

(declare-fun tp!1437573 () Bool)

(declare-fun tp!1437574 () Bool)

(assert (=> b!5146485 (= e!3209022 (and tp!1437573 tp!1437574))))

(assert (=> b!5146264 (= tp!1437505 e!3209022)))

(declare-fun b!5146484 () Bool)

(declare-fun tp!1437576 () Bool)

(assert (=> b!5146484 (= e!3209022 tp!1437576)))

(assert (= (and b!5146264 ((_ is ElementMatch!14487) (reg!14816 (regTwo!29487 expr!117)))) b!5146482))

(assert (= (and b!5146264 ((_ is Concat!23332) (reg!14816 (regTwo!29487 expr!117)))) b!5146483))

(assert (= (and b!5146264 ((_ is Star!14487) (reg!14816 (regTwo!29487 expr!117)))) b!5146484))

(assert (= (and b!5146264 ((_ is Union!14487) (reg!14816 (regTwo!29487 expr!117)))) b!5146485))

(declare-fun b!5146486 () Bool)

(declare-fun e!3209023 () Bool)

(assert (=> b!5146486 (= e!3209023 tp_is_empty!38123)))

(declare-fun b!5146487 () Bool)

(declare-fun tp!1437580 () Bool)

(declare-fun tp!1437582 () Bool)

(assert (=> b!5146487 (= e!3209023 (and tp!1437580 tp!1437582))))

(declare-fun b!5146489 () Bool)

(declare-fun tp!1437578 () Bool)

(declare-fun tp!1437579 () Bool)

(assert (=> b!5146489 (= e!3209023 (and tp!1437578 tp!1437579))))

(assert (=> b!5146269 (= tp!1437507 e!3209023)))

(declare-fun b!5146488 () Bool)

(declare-fun tp!1437581 () Bool)

(assert (=> b!5146488 (= e!3209023 tp!1437581)))

(assert (= (and b!5146269 ((_ is ElementMatch!14487) (regOne!29487 (reg!14816 expr!117)))) b!5146486))

(assert (= (and b!5146269 ((_ is Concat!23332) (regOne!29487 (reg!14816 expr!117)))) b!5146487))

(assert (= (and b!5146269 ((_ is Star!14487) (regOne!29487 (reg!14816 expr!117)))) b!5146488))

(assert (= (and b!5146269 ((_ is Union!14487) (regOne!29487 (reg!14816 expr!117)))) b!5146489))

(declare-fun b!5146490 () Bool)

(declare-fun e!3209024 () Bool)

(assert (=> b!5146490 (= e!3209024 tp_is_empty!38123)))

(declare-fun b!5146491 () Bool)

(declare-fun tp!1437585 () Bool)

(declare-fun tp!1437587 () Bool)

(assert (=> b!5146491 (= e!3209024 (and tp!1437585 tp!1437587))))

(declare-fun b!5146493 () Bool)

(declare-fun tp!1437583 () Bool)

(declare-fun tp!1437584 () Bool)

(assert (=> b!5146493 (= e!3209024 (and tp!1437583 tp!1437584))))

(assert (=> b!5146269 (= tp!1437508 e!3209024)))

(declare-fun b!5146492 () Bool)

(declare-fun tp!1437586 () Bool)

(assert (=> b!5146492 (= e!3209024 tp!1437586)))

(assert (= (and b!5146269 ((_ is ElementMatch!14487) (regTwo!29487 (reg!14816 expr!117)))) b!5146490))

(assert (= (and b!5146269 ((_ is Concat!23332) (regTwo!29487 (reg!14816 expr!117)))) b!5146491))

(assert (= (and b!5146269 ((_ is Star!14487) (regTwo!29487 (reg!14816 expr!117)))) b!5146492))

(assert (= (and b!5146269 ((_ is Union!14487) (regTwo!29487 (reg!14816 expr!117)))) b!5146493))

(declare-fun b!5146494 () Bool)

(declare-fun e!3209025 () Bool)

(assert (=> b!5146494 (= e!3209025 tp_is_empty!38123)))

(declare-fun b!5146495 () Bool)

(declare-fun tp!1437590 () Bool)

(declare-fun tp!1437592 () Bool)

(assert (=> b!5146495 (= e!3209025 (and tp!1437590 tp!1437592))))

(declare-fun b!5146497 () Bool)

(declare-fun tp!1437588 () Bool)

(declare-fun tp!1437589 () Bool)

(assert (=> b!5146497 (= e!3209025 (and tp!1437588 tp!1437589))))

(assert (=> b!5146260 (= tp!1437500 e!3209025)))

(declare-fun b!5146496 () Bool)

(declare-fun tp!1437591 () Bool)

(assert (=> b!5146496 (= e!3209025 tp!1437591)))

(assert (= (and b!5146260 ((_ is ElementMatch!14487) (reg!14816 (regOne!29487 expr!117)))) b!5146494))

(assert (= (and b!5146260 ((_ is Concat!23332) (reg!14816 (regOne!29487 expr!117)))) b!5146495))

(assert (= (and b!5146260 ((_ is Star!14487) (reg!14816 (regOne!29487 expr!117)))) b!5146496))

(assert (= (and b!5146260 ((_ is Union!14487) (reg!14816 (regOne!29487 expr!117)))) b!5146497))

(declare-fun b!5146498 () Bool)

(declare-fun e!3209026 () Bool)

(assert (=> b!5146498 (= e!3209026 tp_is_empty!38123)))

(declare-fun b!5146499 () Bool)

(declare-fun tp!1437595 () Bool)

(declare-fun tp!1437597 () Bool)

(assert (=> b!5146499 (= e!3209026 (and tp!1437595 tp!1437597))))

(declare-fun b!5146501 () Bool)

(declare-fun tp!1437593 () Bool)

(declare-fun tp!1437594 () Bool)

(assert (=> b!5146501 (= e!3209026 (and tp!1437593 tp!1437594))))

(assert (=> b!5146265 (= tp!1437502 e!3209026)))

(declare-fun b!5146500 () Bool)

(declare-fun tp!1437596 () Bool)

(assert (=> b!5146500 (= e!3209026 tp!1437596)))

(assert (= (and b!5146265 ((_ is ElementMatch!14487) (regOne!29487 (regTwo!29487 expr!117)))) b!5146498))

(assert (= (and b!5146265 ((_ is Concat!23332) (regOne!29487 (regTwo!29487 expr!117)))) b!5146499))

(assert (= (and b!5146265 ((_ is Star!14487) (regOne!29487 (regTwo!29487 expr!117)))) b!5146500))

(assert (= (and b!5146265 ((_ is Union!14487) (regOne!29487 (regTwo!29487 expr!117)))) b!5146501))

(declare-fun b!5146502 () Bool)

(declare-fun e!3209027 () Bool)

(assert (=> b!5146502 (= e!3209027 tp_is_empty!38123)))

(declare-fun b!5146503 () Bool)

(declare-fun tp!1437600 () Bool)

(declare-fun tp!1437602 () Bool)

(assert (=> b!5146503 (= e!3209027 (and tp!1437600 tp!1437602))))

(declare-fun b!5146505 () Bool)

(declare-fun tp!1437598 () Bool)

(declare-fun tp!1437599 () Bool)

(assert (=> b!5146505 (= e!3209027 (and tp!1437598 tp!1437599))))

(assert (=> b!5146265 (= tp!1437503 e!3209027)))

(declare-fun b!5146504 () Bool)

(declare-fun tp!1437601 () Bool)

(assert (=> b!5146504 (= e!3209027 tp!1437601)))

(assert (= (and b!5146265 ((_ is ElementMatch!14487) (regTwo!29487 (regTwo!29487 expr!117)))) b!5146502))

(assert (= (and b!5146265 ((_ is Concat!23332) (regTwo!29487 (regTwo!29487 expr!117)))) b!5146503))

(assert (= (and b!5146265 ((_ is Star!14487) (regTwo!29487 (regTwo!29487 expr!117)))) b!5146504))

(assert (= (and b!5146265 ((_ is Union!14487) (regTwo!29487 (regTwo!29487 expr!117)))) b!5146505))

(declare-fun b!5146506 () Bool)

(declare-fun e!3209028 () Bool)

(assert (=> b!5146506 (= e!3209028 tp_is_empty!38123)))

(declare-fun b!5146507 () Bool)

(declare-fun tp!1437605 () Bool)

(declare-fun tp!1437607 () Bool)

(assert (=> b!5146507 (= e!3209028 (and tp!1437605 tp!1437607))))

(declare-fun b!5146509 () Bool)

(declare-fun tp!1437603 () Bool)

(declare-fun tp!1437604 () Bool)

(assert (=> b!5146509 (= e!3209028 (and tp!1437603 tp!1437604))))

(assert (=> b!5146261 (= tp!1437497 e!3209028)))

(declare-fun b!5146508 () Bool)

(declare-fun tp!1437606 () Bool)

(assert (=> b!5146508 (= e!3209028 tp!1437606)))

(assert (= (and b!5146261 ((_ is ElementMatch!14487) (regOne!29487 (regOne!29487 expr!117)))) b!5146506))

(assert (= (and b!5146261 ((_ is Concat!23332) (regOne!29487 (regOne!29487 expr!117)))) b!5146507))

(assert (= (and b!5146261 ((_ is Star!14487) (regOne!29487 (regOne!29487 expr!117)))) b!5146508))

(assert (= (and b!5146261 ((_ is Union!14487) (regOne!29487 (regOne!29487 expr!117)))) b!5146509))

(declare-fun b!5146510 () Bool)

(declare-fun e!3209029 () Bool)

(assert (=> b!5146510 (= e!3209029 tp_is_empty!38123)))

(declare-fun b!5146511 () Bool)

(declare-fun tp!1437610 () Bool)

(declare-fun tp!1437612 () Bool)

(assert (=> b!5146511 (= e!3209029 (and tp!1437610 tp!1437612))))

(declare-fun b!5146513 () Bool)

(declare-fun tp!1437608 () Bool)

(declare-fun tp!1437609 () Bool)

(assert (=> b!5146513 (= e!3209029 (and tp!1437608 tp!1437609))))

(assert (=> b!5146261 (= tp!1437498 e!3209029)))

(declare-fun b!5146512 () Bool)

(declare-fun tp!1437611 () Bool)

(assert (=> b!5146512 (= e!3209029 tp!1437611)))

(assert (= (and b!5146261 ((_ is ElementMatch!14487) (regTwo!29487 (regOne!29487 expr!117)))) b!5146510))

(assert (= (and b!5146261 ((_ is Concat!23332) (regTwo!29487 (regOne!29487 expr!117)))) b!5146511))

(assert (= (and b!5146261 ((_ is Star!14487) (regTwo!29487 (regOne!29487 expr!117)))) b!5146512))

(assert (= (and b!5146261 ((_ is Union!14487) (regTwo!29487 (regOne!29487 expr!117)))) b!5146513))

(declare-fun b!5146514 () Bool)

(declare-fun e!3209030 () Bool)

(assert (=> b!5146514 (= e!3209030 tp_is_empty!38123)))

(declare-fun b!5146515 () Bool)

(declare-fun tp!1437615 () Bool)

(declare-fun tp!1437617 () Bool)

(assert (=> b!5146515 (= e!3209030 (and tp!1437615 tp!1437617))))

(declare-fun b!5146517 () Bool)

(declare-fun tp!1437613 () Bool)

(declare-fun tp!1437614 () Bool)

(assert (=> b!5146517 (= e!3209030 (and tp!1437613 tp!1437614))))

(assert (=> b!5146282 (= tp!1437523 e!3209030)))

(declare-fun b!5146516 () Bool)

(declare-fun tp!1437616 () Bool)

(assert (=> b!5146516 (= e!3209030 tp!1437616)))

(assert (= (and b!5146282 ((_ is ElementMatch!14487) (regOne!29487 (regTwo!29486 expr!117)))) b!5146514))

(assert (= (and b!5146282 ((_ is Concat!23332) (regOne!29487 (regTwo!29486 expr!117)))) b!5146515))

(assert (= (and b!5146282 ((_ is Star!14487) (regOne!29487 (regTwo!29486 expr!117)))) b!5146516))

(assert (= (and b!5146282 ((_ is Union!14487) (regOne!29487 (regTwo!29486 expr!117)))) b!5146517))

(declare-fun b!5146518 () Bool)

(declare-fun e!3209031 () Bool)

(assert (=> b!5146518 (= e!3209031 tp_is_empty!38123)))

(declare-fun b!5146519 () Bool)

(declare-fun tp!1437620 () Bool)

(declare-fun tp!1437622 () Bool)

(assert (=> b!5146519 (= e!3209031 (and tp!1437620 tp!1437622))))

(declare-fun b!5146521 () Bool)

(declare-fun tp!1437618 () Bool)

(declare-fun tp!1437619 () Bool)

(assert (=> b!5146521 (= e!3209031 (and tp!1437618 tp!1437619))))

(assert (=> b!5146282 (= tp!1437524 e!3209031)))

(declare-fun b!5146520 () Bool)

(declare-fun tp!1437621 () Bool)

(assert (=> b!5146520 (= e!3209031 tp!1437621)))

(assert (= (and b!5146282 ((_ is ElementMatch!14487) (regTwo!29487 (regTwo!29486 expr!117)))) b!5146518))

(assert (= (and b!5146282 ((_ is Concat!23332) (regTwo!29487 (regTwo!29486 expr!117)))) b!5146519))

(assert (= (and b!5146282 ((_ is Star!14487) (regTwo!29487 (regTwo!29486 expr!117)))) b!5146520))

(assert (= (and b!5146282 ((_ is Union!14487) (regTwo!29487 (regTwo!29486 expr!117)))) b!5146521))

(declare-fun b!5146522 () Bool)

(declare-fun e!3209032 () Bool)

(assert (=> b!5146522 (= e!3209032 tp_is_empty!38123)))

(declare-fun b!5146523 () Bool)

(declare-fun tp!1437625 () Bool)

(declare-fun tp!1437627 () Bool)

(assert (=> b!5146523 (= e!3209032 (and tp!1437625 tp!1437627))))

(declare-fun b!5146525 () Bool)

(declare-fun tp!1437623 () Bool)

(declare-fun tp!1437624 () Bool)

(assert (=> b!5146525 (= e!3209032 (and tp!1437623 tp!1437624))))

(assert (=> b!5146278 (= tp!1437518 e!3209032)))

(declare-fun b!5146524 () Bool)

(declare-fun tp!1437626 () Bool)

(assert (=> b!5146524 (= e!3209032 tp!1437626)))

(assert (= (and b!5146278 ((_ is ElementMatch!14487) (regOne!29487 (regOne!29486 expr!117)))) b!5146522))

(assert (= (and b!5146278 ((_ is Concat!23332) (regOne!29487 (regOne!29486 expr!117)))) b!5146523))

(assert (= (and b!5146278 ((_ is Star!14487) (regOne!29487 (regOne!29486 expr!117)))) b!5146524))

(assert (= (and b!5146278 ((_ is Union!14487) (regOne!29487 (regOne!29486 expr!117)))) b!5146525))

(declare-fun b!5146526 () Bool)

(declare-fun e!3209033 () Bool)

(assert (=> b!5146526 (= e!3209033 tp_is_empty!38123)))

(declare-fun b!5146527 () Bool)

(declare-fun tp!1437630 () Bool)

(declare-fun tp!1437632 () Bool)

(assert (=> b!5146527 (= e!3209033 (and tp!1437630 tp!1437632))))

(declare-fun b!5146529 () Bool)

(declare-fun tp!1437628 () Bool)

(declare-fun tp!1437629 () Bool)

(assert (=> b!5146529 (= e!3209033 (and tp!1437628 tp!1437629))))

(assert (=> b!5146278 (= tp!1437519 e!3209033)))

(declare-fun b!5146528 () Bool)

(declare-fun tp!1437631 () Bool)

(assert (=> b!5146528 (= e!3209033 tp!1437631)))

(assert (= (and b!5146278 ((_ is ElementMatch!14487) (regTwo!29487 (regOne!29486 expr!117)))) b!5146526))

(assert (= (and b!5146278 ((_ is Concat!23332) (regTwo!29487 (regOne!29486 expr!117)))) b!5146527))

(assert (= (and b!5146278 ((_ is Star!14487) (regTwo!29487 (regOne!29486 expr!117)))) b!5146528))

(assert (= (and b!5146278 ((_ is Union!14487) (regTwo!29487 (regOne!29486 expr!117)))) b!5146529))

(declare-fun b!5146530 () Bool)

(declare-fun e!3209034 () Bool)

(assert (=> b!5146530 (= e!3209034 tp_is_empty!38123)))

(declare-fun b!5146531 () Bool)

(declare-fun tp!1437635 () Bool)

(declare-fun tp!1437637 () Bool)

(assert (=> b!5146531 (= e!3209034 (and tp!1437635 tp!1437637))))

(declare-fun b!5146533 () Bool)

(declare-fun tp!1437633 () Bool)

(declare-fun tp!1437634 () Bool)

(assert (=> b!5146533 (= e!3209034 (and tp!1437633 tp!1437634))))

(assert (=> b!5146274 (= tp!1437516 e!3209034)))

(declare-fun b!5146532 () Bool)

(declare-fun tp!1437636 () Bool)

(assert (=> b!5146532 (= e!3209034 tp!1437636)))

(assert (= (and b!5146274 ((_ is ElementMatch!14487) (h!66215 (exprs!4371 ctx!100)))) b!5146530))

(assert (= (and b!5146274 ((_ is Concat!23332) (h!66215 (exprs!4371 ctx!100)))) b!5146531))

(assert (= (and b!5146274 ((_ is Star!14487) (h!66215 (exprs!4371 ctx!100)))) b!5146532))

(assert (= (and b!5146274 ((_ is Union!14487) (h!66215 (exprs!4371 ctx!100)))) b!5146533))

(declare-fun b!5146534 () Bool)

(declare-fun e!3209035 () Bool)

(declare-fun tp!1437638 () Bool)

(declare-fun tp!1437639 () Bool)

(assert (=> b!5146534 (= e!3209035 (and tp!1437638 tp!1437639))))

(assert (=> b!5146274 (= tp!1437517 e!3209035)))

(assert (= (and b!5146274 ((_ is Cons!59767) (t!372928 (exprs!4371 ctx!100)))) b!5146534))

(declare-fun b!5146535 () Bool)

(declare-fun e!3209036 () Bool)

(assert (=> b!5146535 (= e!3209036 tp_is_empty!38123)))

(declare-fun b!5146536 () Bool)

(declare-fun tp!1437642 () Bool)

(declare-fun tp!1437644 () Bool)

(assert (=> b!5146536 (= e!3209036 (and tp!1437642 tp!1437644))))

(declare-fun b!5146538 () Bool)

(declare-fun tp!1437640 () Bool)

(declare-fun tp!1437641 () Bool)

(assert (=> b!5146538 (= e!3209036 (and tp!1437640 tp!1437641))))

(assert (=> b!5146267 (= tp!1437509 e!3209036)))

(declare-fun b!5146537 () Bool)

(declare-fun tp!1437643 () Bool)

(assert (=> b!5146537 (= e!3209036 tp!1437643)))

(assert (= (and b!5146267 ((_ is ElementMatch!14487) (regOne!29486 (reg!14816 expr!117)))) b!5146535))

(assert (= (and b!5146267 ((_ is Concat!23332) (regOne!29486 (reg!14816 expr!117)))) b!5146536))

(assert (= (and b!5146267 ((_ is Star!14487) (regOne!29486 (reg!14816 expr!117)))) b!5146537))

(assert (= (and b!5146267 ((_ is Union!14487) (regOne!29486 (reg!14816 expr!117)))) b!5146538))

(declare-fun b!5146546 () Bool)

(declare-fun e!3209043 () Bool)

(assert (=> b!5146546 (= e!3209043 tp_is_empty!38123)))

(declare-fun b!5146547 () Bool)

(declare-fun tp!1437647 () Bool)

(declare-fun tp!1437649 () Bool)

(assert (=> b!5146547 (= e!3209043 (and tp!1437647 tp!1437649))))

(declare-fun b!5146549 () Bool)

(declare-fun tp!1437645 () Bool)

(declare-fun tp!1437646 () Bool)

(assert (=> b!5146549 (= e!3209043 (and tp!1437645 tp!1437646))))

(assert (=> b!5146267 (= tp!1437511 e!3209043)))

(declare-fun b!5146548 () Bool)

(declare-fun tp!1437648 () Bool)

(assert (=> b!5146548 (= e!3209043 tp!1437648)))

(assert (= (and b!5146267 ((_ is ElementMatch!14487) (regTwo!29486 (reg!14816 expr!117)))) b!5146546))

(assert (= (and b!5146267 ((_ is Concat!23332) (regTwo!29486 (reg!14816 expr!117)))) b!5146547))

(assert (= (and b!5146267 ((_ is Star!14487) (regTwo!29486 (reg!14816 expr!117)))) b!5146548))

(assert (= (and b!5146267 ((_ is Union!14487) (regTwo!29486 (reg!14816 expr!117)))) b!5146549))

(declare-fun b!5146550 () Bool)

(declare-fun e!3209044 () Bool)

(assert (=> b!5146550 (= e!3209044 tp_is_empty!38123)))

(declare-fun b!5146551 () Bool)

(declare-fun tp!1437652 () Bool)

(declare-fun tp!1437654 () Bool)

(assert (=> b!5146551 (= e!3209044 (and tp!1437652 tp!1437654))))

(declare-fun b!5146553 () Bool)

(declare-fun tp!1437650 () Bool)

(declare-fun tp!1437651 () Bool)

(assert (=> b!5146553 (= e!3209044 (and tp!1437650 tp!1437651))))

(assert (=> b!5146263 (= tp!1437504 e!3209044)))

(declare-fun b!5146552 () Bool)

(declare-fun tp!1437653 () Bool)

(assert (=> b!5146552 (= e!3209044 tp!1437653)))

(assert (= (and b!5146263 ((_ is ElementMatch!14487) (regOne!29486 (regTwo!29487 expr!117)))) b!5146550))

(assert (= (and b!5146263 ((_ is Concat!23332) (regOne!29486 (regTwo!29487 expr!117)))) b!5146551))

(assert (= (and b!5146263 ((_ is Star!14487) (regOne!29486 (regTwo!29487 expr!117)))) b!5146552))

(assert (= (and b!5146263 ((_ is Union!14487) (regOne!29486 (regTwo!29487 expr!117)))) b!5146553))

(declare-fun b!5146554 () Bool)

(declare-fun e!3209045 () Bool)

(assert (=> b!5146554 (= e!3209045 tp_is_empty!38123)))

(declare-fun b!5146555 () Bool)

(declare-fun tp!1437657 () Bool)

(declare-fun tp!1437659 () Bool)

(assert (=> b!5146555 (= e!3209045 (and tp!1437657 tp!1437659))))

(declare-fun b!5146557 () Bool)

(declare-fun tp!1437655 () Bool)

(declare-fun tp!1437656 () Bool)

(assert (=> b!5146557 (= e!3209045 (and tp!1437655 tp!1437656))))

(assert (=> b!5146263 (= tp!1437506 e!3209045)))

(declare-fun b!5146556 () Bool)

(declare-fun tp!1437658 () Bool)

(assert (=> b!5146556 (= e!3209045 tp!1437658)))

(assert (= (and b!5146263 ((_ is ElementMatch!14487) (regTwo!29486 (regTwo!29487 expr!117)))) b!5146554))

(assert (= (and b!5146263 ((_ is Concat!23332) (regTwo!29486 (regTwo!29487 expr!117)))) b!5146555))

(assert (= (and b!5146263 ((_ is Star!14487) (regTwo!29486 (regTwo!29487 expr!117)))) b!5146556))

(assert (= (and b!5146263 ((_ is Union!14487) (regTwo!29486 (regTwo!29487 expr!117)))) b!5146557))

(declare-fun b_lambda!200323 () Bool)

(assert (= b_lambda!200321 (or d!1663467 b_lambda!200323)))

(declare-fun bs!1201292 () Bool)

(declare-fun d!1663533 () Bool)

(assert (= bs!1201292 (and d!1663533 d!1663467)))

(assert (=> bs!1201292 (= (dynLambda!23783 lambda!256886 (h!66215 (exprs!4371 ctx!100))) (validRegex!6342 (h!66215 (exprs!4371 ctx!100))))))

(declare-fun m!6206872 () Bool)

(assert (=> bs!1201292 m!6206872))

(assert (=> b!5146430 d!1663533))

(declare-fun b_lambda!200325 () Bool)

(assert (= b_lambda!200319 (or d!1663451 b_lambda!200325)))

(declare-fun bs!1201293 () Bool)

(declare-fun d!1663535 () Bool)

(assert (= bs!1201293 (and d!1663535 d!1663451)))

(assert (=> bs!1201293 (= (dynLambda!23783 lambda!256884 (h!66215 (exprs!4371 (Context!7743 ($colon$colon!1211 (exprs!4371 ctx!100) (regTwo!29486 expr!117)))))) (validRegex!6342 (h!66215 (exprs!4371 (Context!7743 ($colon$colon!1211 (exprs!4371 ctx!100) (regTwo!29486 expr!117)))))))))

(declare-fun m!6206874 () Bool)

(assert (=> bs!1201293 m!6206874))

(assert (=> b!5146394 d!1663535))

(check-sat (not b!5146538) (not b!5146553) (not b!5146497) (not b!5146496) (not bs!1201293) (not bm!359769) (not b!5146501) (not bm!359799) (not bm!359783) (not b!5146441) (not bm!359785) (not b!5146446) (not b!5146475) (not b!5146491) (not b!5146511) (not d!1663501) (not b!5146439) (not bm!359774) (not b!5146459) (not b!5146449) (not b!5146434) (not b!5146517) (not b!5146438) (not b!5146547) (not b!5146515) (not b_lambda!200323) (not b!5146395) (not b!5146483) (not b!5146433) (not b!5146488) (not b!5146534) (not b!5146520) (not b!5146507) (not d!1663523) (not bm!359762) (not b!5146484) (not b!5146403) (not b!5146435) (not b!5146463) (not b!5146528) (not b!5146365) (not b!5146556) (not b!5146451) (not bm!359794) (not b!5146551) (not b!5146508) (not b!5146485) (not b!5146552) (not b!5146523) (not b!5146431) (not b!5146443) (not d!1663517) (not b!5146536) (not b!5146437) (not b!5146492) (not b_lambda!200325) (not bm!359798) (not b!5146521) (not b!5146455) (not bm!359792) (not b!5146457) (not b!5146512) (not b!5146549) (not b!5146505) (not b!5146487) (not b!5146489) (not b!5146476) (not b!5146500) (not b!5146527) (not bm!359782) (not b!5146524) (not b!5146529) (not b!5146503) tp_is_empty!38123 (not b!5146516) (not bm!359776) (not d!1663491) (not b!5146442) (not b!5146525) (not b!5146320) (not bs!1201292) (not b!5146450) (not b!5146329) (not b!5146537) (not b!5146465) (not b!5146458) (not b!5146477) (not b!5146519) (not b!5146513) (not b!5146453) (not b!5146464) (not b!5146504) (not bm!359771) (not b!5146495) (not b!5146533) (not bm!359770) (not b!5146557) (not b!5146532) (not b!5146447) (not bm!359764) (not d!1663525) (not b!5146290) (not b!5146531) (not b!5146454) (not b!5146499) (not b!5146445) (not bm!359781) (not d!1663509) (not b!5146493) (not bm!359773) (not b!5146555) (not b!5146509) (not b!5146548))
(check-sat)
