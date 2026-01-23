; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!87100 () Bool)

(assert start!87100)

(declare-fun b!982329 () Bool)

(assert (=> b!982329 true))

(assert (=> b!982329 true))

(declare-fun b!982326 () Bool)

(declare-fun e!631860 () Bool)

(declare-datatypes ((C!6050 0))(
  ( (C!6051 (val!3273 Int)) )
))
(declare-datatypes ((Regex!2740 0))(
  ( (ElementMatch!2740 (c!160647 C!6050)) (Concat!4573 (regOne!5992 Regex!2740) (regTwo!5992 Regex!2740)) (EmptyExpr!2740) (Star!2740 (reg!3069 Regex!2740)) (EmptyLang!2740) (Union!2740 (regOne!5993 Regex!2740) (regTwo!5993 Regex!2740)) )
))
(declare-fun r!15766 () Regex!2740)

(declare-fun validRegex!1209 (Regex!2740) Bool)

(assert (=> b!982326 (= e!631860 (validRegex!1209 (regTwo!5992 r!15766)))))

(declare-fun b!982327 () Bool)

(declare-fun e!631858 () Bool)

(declare-fun tp!300107 () Bool)

(declare-fun tp!300108 () Bool)

(assert (=> b!982327 (= e!631858 (and tp!300107 tp!300108))))

(declare-fun b!982328 () Bool)

(declare-fun tp!300109 () Bool)

(declare-fun tp!300105 () Bool)

(assert (=> b!982328 (= e!631858 (and tp!300109 tp!300105))))

(declare-fun e!631856 () Bool)

(assert (=> b!982329 (= e!631856 e!631860)))

(declare-fun res!445747 () Bool)

(assert (=> b!982329 (=> res!445747 e!631860)))

(assert (=> b!982329 (= res!445747 (not (validRegex!1209 (regOne!5992 r!15766))))))

(declare-datatypes ((List!9970 0))(
  ( (Nil!9954) (Cons!9954 (h!15355 C!6050) (t!101016 List!9970)) )
))
(declare-fun s!10566 () List!9970)

(declare-fun lambda!35003 () Int)

(declare-datatypes ((tuple2!11326 0))(
  ( (tuple2!11327 (_1!6489 List!9970) (_2!6489 List!9970)) )
))
(declare-datatypes ((Option!2305 0))(
  ( (None!2304) (Some!2304 (v!19721 tuple2!11326)) )
))
(declare-fun isDefined!1947 (Option!2305) Bool)

(declare-fun findConcatSeparation!411 (Regex!2740 Regex!2740 List!9970 List!9970 List!9970) Option!2305)

(declare-fun Exists!477 (Int) Bool)

(assert (=> b!982329 (= (isDefined!1947 (findConcatSeparation!411 (regOne!5992 r!15766) (regTwo!5992 r!15766) Nil!9954 s!10566 s!10566)) (Exists!477 lambda!35003))))

(declare-datatypes ((Unit!15139 0))(
  ( (Unit!15140) )
))
(declare-fun lt!350159 () Unit!15139)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!411 (Regex!2740 Regex!2740 List!9970) Unit!15139)

(assert (=> b!982329 (= lt!350159 (lemmaFindConcatSeparationEquivalentToExists!411 (regOne!5992 r!15766) (regTwo!5992 r!15766) s!10566))))

(declare-fun b!982330 () Bool)

(declare-fun tp_is_empty!5123 () Bool)

(assert (=> b!982330 (= e!631858 tp_is_empty!5123)))

(declare-fun b!982331 () Bool)

(declare-fun e!631859 () Bool)

(assert (=> b!982331 (= e!631859 (not e!631856))))

(declare-fun res!445746 () Bool)

(assert (=> b!982331 (=> res!445746 e!631856)))

(declare-fun lt!350158 () Bool)

(assert (=> b!982331 (= res!445746 (or (not lt!350158) (and (is-Concat!4573 r!15766) (is-EmptyExpr!2740 (regOne!5992 r!15766))) (and (is-Concat!4573 r!15766) (is-EmptyExpr!2740 (regTwo!5992 r!15766))) (not (is-Concat!4573 r!15766))))))

(declare-fun matchRSpec!539 (Regex!2740 List!9970) Bool)

(assert (=> b!982331 (= lt!350158 (matchRSpec!539 r!15766 s!10566))))

(declare-fun matchR!1276 (Regex!2740 List!9970) Bool)

(assert (=> b!982331 (= lt!350158 (matchR!1276 r!15766 s!10566))))

(declare-fun lt!350160 () Unit!15139)

(declare-fun mainMatchTheorem!539 (Regex!2740 List!9970) Unit!15139)

(assert (=> b!982331 (= lt!350160 (mainMatchTheorem!539 r!15766 s!10566))))

(declare-fun b!982332 () Bool)

(declare-fun e!631857 () Bool)

(declare-fun tp!300106 () Bool)

(assert (=> b!982332 (= e!631857 (and tp_is_empty!5123 tp!300106))))

(declare-fun res!445745 () Bool)

(assert (=> start!87100 (=> (not res!445745) (not e!631859))))

(assert (=> start!87100 (= res!445745 (validRegex!1209 r!15766))))

(assert (=> start!87100 e!631859))

(assert (=> start!87100 e!631858))

(assert (=> start!87100 e!631857))

(declare-fun b!982333 () Bool)

(declare-fun tp!300110 () Bool)

(assert (=> b!982333 (= e!631858 tp!300110)))

(assert (= (and start!87100 res!445745) b!982331))

(assert (= (and b!982331 (not res!445746)) b!982329))

(assert (= (and b!982329 (not res!445747)) b!982326))

(assert (= (and start!87100 (is-ElementMatch!2740 r!15766)) b!982330))

(assert (= (and start!87100 (is-Concat!4573 r!15766)) b!982328))

(assert (= (and start!87100 (is-Star!2740 r!15766)) b!982333))

(assert (= (and start!87100 (is-Union!2740 r!15766)) b!982327))

(assert (= (and start!87100 (is-Cons!9954 s!10566)) b!982332))

(declare-fun m!1180705 () Bool)

(assert (=> b!982326 m!1180705))

(declare-fun m!1180707 () Bool)

(assert (=> b!982329 m!1180707))

(declare-fun m!1180709 () Bool)

(assert (=> b!982329 m!1180709))

(declare-fun m!1180711 () Bool)

(assert (=> b!982329 m!1180711))

(declare-fun m!1180713 () Bool)

(assert (=> b!982329 m!1180713))

(declare-fun m!1180715 () Bool)

(assert (=> b!982329 m!1180715))

(assert (=> b!982329 m!1180707))

(declare-fun m!1180717 () Bool)

(assert (=> b!982331 m!1180717))

(declare-fun m!1180719 () Bool)

(assert (=> b!982331 m!1180719))

(declare-fun m!1180721 () Bool)

(assert (=> b!982331 m!1180721))

(declare-fun m!1180723 () Bool)

(assert (=> start!87100 m!1180723))

(push 1)

(assert (not b!982332))

(assert (not b!982328))

(assert (not b!982327))

(assert (not b!982329))

(assert (not b!982333))

(assert (not start!87100))

(assert tp_is_empty!5123)

(assert (not b!982331))

(assert (not b!982326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!982388 () Bool)

(declare-fun res!445772 () Bool)

(declare-fun e!631895 () Bool)

(assert (=> b!982388 (=> (not res!445772) (not e!631895))))

(declare-fun call!63224 () Bool)

(assert (=> b!982388 (= res!445772 call!63224)))

(declare-fun e!631898 () Bool)

(assert (=> b!982388 (= e!631898 e!631895)))

(declare-fun d!288390 () Bool)

(declare-fun res!445773 () Bool)

(declare-fun e!631894 () Bool)

(assert (=> d!288390 (=> res!445773 e!631894)))

(assert (=> d!288390 (= res!445773 (is-ElementMatch!2740 (regTwo!5992 r!15766)))))

(assert (=> d!288390 (= (validRegex!1209 (regTwo!5992 r!15766)) e!631894)))

(declare-fun b!982389 () Bool)

(declare-fun e!631897 () Bool)

(assert (=> b!982389 (= e!631894 e!631897)))

(declare-fun c!160654 () Bool)

(assert (=> b!982389 (= c!160654 (is-Star!2740 (regTwo!5992 r!15766)))))

(declare-fun bm!63217 () Bool)

(declare-fun call!63223 () Bool)

(declare-fun c!160653 () Bool)

(assert (=> bm!63217 (= call!63223 (validRegex!1209 (ite c!160653 (regTwo!5993 (regTwo!5992 r!15766)) (regTwo!5992 (regTwo!5992 r!15766)))))))

(declare-fun bm!63218 () Bool)

(declare-fun call!63222 () Bool)

(assert (=> bm!63218 (= call!63224 call!63222)))

(declare-fun bm!63219 () Bool)

(assert (=> bm!63219 (= call!63222 (validRegex!1209 (ite c!160654 (reg!3069 (regTwo!5992 r!15766)) (ite c!160653 (regOne!5993 (regTwo!5992 r!15766)) (regOne!5992 (regTwo!5992 r!15766))))))))

(declare-fun b!982390 () Bool)

(declare-fun e!631893 () Bool)

(declare-fun e!631896 () Bool)

(assert (=> b!982390 (= e!631893 e!631896)))

(declare-fun res!445774 () Bool)

(assert (=> b!982390 (=> (not res!445774) (not e!631896))))

(assert (=> b!982390 (= res!445774 call!63224)))

(declare-fun b!982391 () Bool)

(assert (=> b!982391 (= e!631897 e!631898)))

(assert (=> b!982391 (= c!160653 (is-Union!2740 (regTwo!5992 r!15766)))))

(declare-fun b!982392 () Bool)

(declare-fun e!631892 () Bool)

(assert (=> b!982392 (= e!631892 call!63222)))

(declare-fun b!982393 () Bool)

(declare-fun res!445771 () Bool)

(assert (=> b!982393 (=> res!445771 e!631893)))

(assert (=> b!982393 (= res!445771 (not (is-Concat!4573 (regTwo!5992 r!15766))))))

(assert (=> b!982393 (= e!631898 e!631893)))

(declare-fun b!982394 () Bool)

(assert (=> b!982394 (= e!631895 call!63223)))

(declare-fun b!982395 () Bool)

(assert (=> b!982395 (= e!631896 call!63223)))

(declare-fun b!982396 () Bool)

(assert (=> b!982396 (= e!631897 e!631892)))

(declare-fun res!445775 () Bool)

(declare-fun nullable!856 (Regex!2740) Bool)

(assert (=> b!982396 (= res!445775 (not (nullable!856 (reg!3069 (regTwo!5992 r!15766)))))))

(assert (=> b!982396 (=> (not res!445775) (not e!631892))))

(assert (= (and d!288390 (not res!445773)) b!982389))

(assert (= (and b!982389 c!160654) b!982396))

(assert (= (and b!982389 (not c!160654)) b!982391))

(assert (= (and b!982396 res!445775) b!982392))

(assert (= (and b!982391 c!160653) b!982388))

(assert (= (and b!982391 (not c!160653)) b!982393))

(assert (= (and b!982388 res!445772) b!982394))

(assert (= (and b!982393 (not res!445771)) b!982390))

(assert (= (and b!982390 res!445774) b!982395))

(assert (= (or b!982394 b!982395) bm!63217))

(assert (= (or b!982388 b!982390) bm!63218))

(assert (= (or b!982392 bm!63218) bm!63219))

(declare-fun m!1180745 () Bool)

(assert (=> bm!63217 m!1180745))

(declare-fun m!1180747 () Bool)

(assert (=> bm!63219 m!1180747))

(declare-fun m!1180749 () Bool)

(assert (=> b!982396 m!1180749))

(assert (=> b!982326 d!288390))

(declare-fun b!982397 () Bool)

(declare-fun res!445777 () Bool)

(declare-fun e!631902 () Bool)

(assert (=> b!982397 (=> (not res!445777) (not e!631902))))

(declare-fun call!63227 () Bool)

(assert (=> b!982397 (= res!445777 call!63227)))

(declare-fun e!631905 () Bool)

(assert (=> b!982397 (= e!631905 e!631902)))

(declare-fun d!288392 () Bool)

(declare-fun res!445778 () Bool)

(declare-fun e!631901 () Bool)

(assert (=> d!288392 (=> res!445778 e!631901)))

(assert (=> d!288392 (= res!445778 (is-ElementMatch!2740 r!15766))))

(assert (=> d!288392 (= (validRegex!1209 r!15766) e!631901)))

(declare-fun b!982398 () Bool)

(declare-fun e!631904 () Bool)

(assert (=> b!982398 (= e!631901 e!631904)))

(declare-fun c!160656 () Bool)

(assert (=> b!982398 (= c!160656 (is-Star!2740 r!15766))))

(declare-fun bm!63220 () Bool)

(declare-fun call!63226 () Bool)

(declare-fun c!160655 () Bool)

(assert (=> bm!63220 (= call!63226 (validRegex!1209 (ite c!160655 (regTwo!5993 r!15766) (regTwo!5992 r!15766))))))

(declare-fun bm!63221 () Bool)

(declare-fun call!63225 () Bool)

(assert (=> bm!63221 (= call!63227 call!63225)))

(declare-fun bm!63222 () Bool)

(assert (=> bm!63222 (= call!63225 (validRegex!1209 (ite c!160656 (reg!3069 r!15766) (ite c!160655 (regOne!5993 r!15766) (regOne!5992 r!15766)))))))

(declare-fun b!982399 () Bool)

(declare-fun e!631900 () Bool)

(declare-fun e!631903 () Bool)

(assert (=> b!982399 (= e!631900 e!631903)))

(declare-fun res!445779 () Bool)

(assert (=> b!982399 (=> (not res!445779) (not e!631903))))

(assert (=> b!982399 (= res!445779 call!63227)))

(declare-fun b!982400 () Bool)

(assert (=> b!982400 (= e!631904 e!631905)))

(assert (=> b!982400 (= c!160655 (is-Union!2740 r!15766))))

(declare-fun b!982401 () Bool)

(declare-fun e!631899 () Bool)

(assert (=> b!982401 (= e!631899 call!63225)))

(declare-fun b!982402 () Bool)

(declare-fun res!445776 () Bool)

(assert (=> b!982402 (=> res!445776 e!631900)))

(assert (=> b!982402 (= res!445776 (not (is-Concat!4573 r!15766)))))

(assert (=> b!982402 (= e!631905 e!631900)))

(declare-fun b!982403 () Bool)

(assert (=> b!982403 (= e!631902 call!63226)))

(declare-fun b!982404 () Bool)

(assert (=> b!982404 (= e!631903 call!63226)))

(declare-fun b!982405 () Bool)

(assert (=> b!982405 (= e!631904 e!631899)))

(declare-fun res!445780 () Bool)

(assert (=> b!982405 (= res!445780 (not (nullable!856 (reg!3069 r!15766))))))

(assert (=> b!982405 (=> (not res!445780) (not e!631899))))

(assert (= (and d!288392 (not res!445778)) b!982398))

(assert (= (and b!982398 c!160656) b!982405))

(assert (= (and b!982398 (not c!160656)) b!982400))

(assert (= (and b!982405 res!445780) b!982401))

(assert (= (and b!982400 c!160655) b!982397))

(assert (= (and b!982400 (not c!160655)) b!982402))

(assert (= (and b!982397 res!445777) b!982403))

(assert (= (and b!982402 (not res!445776)) b!982399))

(assert (= (and b!982399 res!445779) b!982404))

(assert (= (or b!982403 b!982404) bm!63220))

(assert (= (or b!982397 b!982399) bm!63221))

(assert (= (or b!982401 bm!63221) bm!63222))

(declare-fun m!1180751 () Bool)

(assert (=> bm!63220 m!1180751))

(declare-fun m!1180753 () Bool)

(assert (=> bm!63222 m!1180753))

(declare-fun m!1180755 () Bool)

(assert (=> b!982405 m!1180755))

(assert (=> start!87100 d!288392))

(declare-fun bs!243972 () Bool)

(declare-fun b!982463 () Bool)

(assert (= bs!243972 (and b!982463 b!982329)))

(declare-fun lambda!35011 () Int)

(assert (=> bs!243972 (not (= lambda!35011 lambda!35003))))

(assert (=> b!982463 true))

(assert (=> b!982463 true))

(declare-fun bs!243973 () Bool)

(declare-fun b!982459 () Bool)

(assert (= bs!243973 (and b!982459 b!982329)))

(declare-fun lambda!35012 () Int)

(assert (=> bs!243973 (not (= lambda!35012 lambda!35003))))

(declare-fun bs!243974 () Bool)

(assert (= bs!243974 (and b!982459 b!982463)))

(assert (=> bs!243974 (not (= lambda!35012 lambda!35011))))

(assert (=> b!982459 true))

(assert (=> b!982459 true))

(declare-fun b!982456 () Bool)

(declare-fun e!631943 () Bool)

(declare-fun e!631942 () Bool)

(assert (=> b!982456 (= e!631943 e!631942)))

(declare-fun res!445809 () Bool)

(assert (=> b!982456 (= res!445809 (matchRSpec!539 (regOne!5993 r!15766) s!10566))))

(assert (=> b!982456 (=> res!445809 e!631942)))

(declare-fun b!982457 () Bool)

(declare-fun e!631939 () Bool)

(assert (=> b!982457 (= e!631943 e!631939)))

(declare-fun c!160669 () Bool)

(assert (=> b!982457 (= c!160669 (is-Star!2740 r!15766))))

(declare-fun b!982458 () Bool)

(declare-fun res!445808 () Bool)

(declare-fun e!631944 () Bool)

(assert (=> b!982458 (=> res!445808 e!631944)))

(declare-fun call!63239 () Bool)

(assert (=> b!982458 (= res!445808 call!63239)))

(assert (=> b!982458 (= e!631939 e!631944)))

(declare-fun call!63238 () Bool)

(assert (=> b!982459 (= e!631939 call!63238)))

(declare-fun b!982460 () Bool)

(declare-fun e!631940 () Bool)

(assert (=> b!982460 (= e!631940 (= s!10566 (Cons!9954 (c!160647 r!15766) Nil!9954)))))

(declare-fun d!288394 () Bool)

(declare-fun c!160672 () Bool)

(assert (=> d!288394 (= c!160672 (is-EmptyExpr!2740 r!15766))))

(declare-fun e!631938 () Bool)

(assert (=> d!288394 (= (matchRSpec!539 r!15766 s!10566) e!631938)))

(declare-fun b!982461 () Bool)

(assert (=> b!982461 (= e!631942 (matchRSpec!539 (regTwo!5993 r!15766) s!10566))))

(declare-fun b!982462 () Bool)

(declare-fun e!631941 () Bool)

(assert (=> b!982462 (= e!631938 e!631941)))

(declare-fun res!445807 () Bool)

(assert (=> b!982462 (= res!445807 (not (is-EmptyLang!2740 r!15766)))))

(assert (=> b!982462 (=> (not res!445807) (not e!631941))))

(declare-fun bm!63233 () Bool)

(declare-fun isEmpty!6280 (List!9970) Bool)

(assert (=> bm!63233 (= call!63239 (isEmpty!6280 s!10566))))

(assert (=> b!982463 (= e!631944 call!63238)))

(declare-fun b!982464 () Bool)

(assert (=> b!982464 (= e!631938 call!63239)))

(declare-fun b!982465 () Bool)

(declare-fun c!160671 () Bool)

(assert (=> b!982465 (= c!160671 (is-ElementMatch!2740 r!15766))))

(assert (=> b!982465 (= e!631941 e!631940)))

(declare-fun bm!63234 () Bool)

(assert (=> bm!63234 (= call!63238 (Exists!477 (ite c!160669 lambda!35011 lambda!35012)))))

(declare-fun b!982466 () Bool)

(declare-fun c!160670 () Bool)

(assert (=> b!982466 (= c!160670 (is-Union!2740 r!15766))))

(assert (=> b!982466 (= e!631940 e!631943)))

(assert (= (and d!288394 c!160672) b!982464))

(assert (= (and d!288394 (not c!160672)) b!982462))

(assert (= (and b!982462 res!445807) b!982465))

(assert (= (and b!982465 c!160671) b!982460))

(assert (= (and b!982465 (not c!160671)) b!982466))

(assert (= (and b!982466 c!160670) b!982456))

(assert (= (and b!982466 (not c!160670)) b!982457))

(assert (= (and b!982456 (not res!445809)) b!982461))

(assert (= (and b!982457 c!160669) b!982458))

(assert (= (and b!982457 (not c!160669)) b!982459))

(assert (= (and b!982458 (not res!445808)) b!982463))

(assert (= (or b!982463 b!982459) bm!63234))

(assert (= (or b!982464 b!982458) bm!63233))

(declare-fun m!1180757 () Bool)

(assert (=> b!982456 m!1180757))

(declare-fun m!1180759 () Bool)

(assert (=> b!982461 m!1180759))

(declare-fun m!1180761 () Bool)

(assert (=> bm!63233 m!1180761))

(declare-fun m!1180763 () Bool)

(assert (=> bm!63234 m!1180763))

(assert (=> b!982331 d!288394))

(declare-fun b!982513 () Bool)

(declare-fun e!631979 () Bool)

(declare-fun e!631977 () Bool)

(assert (=> b!982513 (= e!631979 e!631977)))

(declare-fun res!445840 () Bool)

(assert (=> b!982513 (=> res!445840 e!631977)))

(declare-fun call!63248 () Bool)

(assert (=> b!982513 (= res!445840 call!63248)))

(declare-fun b!982514 () Bool)

(declare-fun e!631973 () Bool)

(declare-fun lt!350172 () Bool)

(assert (=> b!982514 (= e!631973 (not lt!350172))))

(declare-fun d!288398 () Bool)

(declare-fun e!631976 () Bool)

(assert (=> d!288398 e!631976))

(declare-fun c!160683 () Bool)

(assert (=> d!288398 (= c!160683 (is-EmptyExpr!2740 r!15766))))

(declare-fun e!631978 () Bool)

(assert (=> d!288398 (= lt!350172 e!631978)))

(declare-fun c!160685 () Bool)

(assert (=> d!288398 (= c!160685 (isEmpty!6280 s!10566))))

(assert (=> d!288398 (validRegex!1209 r!15766)))

(assert (=> d!288398 (= (matchR!1276 r!15766 s!10566) lt!350172)))

(declare-fun b!982515 () Bool)

(declare-fun res!445841 () Bool)

(declare-fun e!631975 () Bool)

(assert (=> b!982515 (=> (not res!445841) (not e!631975))))

(declare-fun tail!1377 (List!9970) List!9970)

(assert (=> b!982515 (= res!445841 (isEmpty!6280 (tail!1377 s!10566)))))

(declare-fun b!982516 () Bool)

(declare-fun head!1815 (List!9970) C!6050)

(assert (=> b!982516 (= e!631977 (not (= (head!1815 s!10566) (c!160647 r!15766))))))

(declare-fun b!982517 () Bool)

(declare-fun res!445842 () Bool)

(declare-fun e!631974 () Bool)

(assert (=> b!982517 (=> res!445842 e!631974)))

(assert (=> b!982517 (= res!445842 e!631975)))

(declare-fun res!445837 () Bool)

(assert (=> b!982517 (=> (not res!445837) (not e!631975))))

(assert (=> b!982517 (= res!445837 lt!350172)))

(declare-fun b!982518 () Bool)

(declare-fun res!445836 () Bool)

(assert (=> b!982518 (=> (not res!445836) (not e!631975))))

(assert (=> b!982518 (= res!445836 (not call!63248))))

(declare-fun b!982519 () Bool)

(assert (=> b!982519 (= e!631976 e!631973)))

(declare-fun c!160684 () Bool)

(assert (=> b!982519 (= c!160684 (is-EmptyLang!2740 r!15766))))

(declare-fun bm!63243 () Bool)

(assert (=> bm!63243 (= call!63248 (isEmpty!6280 s!10566))))

(declare-fun b!982520 () Bool)

(declare-fun res!445838 () Bool)

(assert (=> b!982520 (=> res!445838 e!631977)))

(assert (=> b!982520 (= res!445838 (not (isEmpty!6280 (tail!1377 s!10566))))))

(declare-fun b!982521 () Bool)

(declare-fun derivativeStep!662 (Regex!2740 C!6050) Regex!2740)

(assert (=> b!982521 (= e!631978 (matchR!1276 (derivativeStep!662 r!15766 (head!1815 s!10566)) (tail!1377 s!10566)))))

(declare-fun b!982522 () Bool)

(assert (=> b!982522 (= e!631978 (nullable!856 r!15766))))

(declare-fun b!982523 () Bool)

(assert (=> b!982523 (= e!631975 (= (head!1815 s!10566) (c!160647 r!15766)))))

(declare-fun b!982524 () Bool)

(declare-fun res!445843 () Bool)

(assert (=> b!982524 (=> res!445843 e!631974)))

(assert (=> b!982524 (= res!445843 (not (is-ElementMatch!2740 r!15766)))))

(assert (=> b!982524 (= e!631973 e!631974)))

(declare-fun b!982525 () Bool)

(assert (=> b!982525 (= e!631976 (= lt!350172 call!63248))))

(declare-fun b!982526 () Bool)

(assert (=> b!982526 (= e!631974 e!631979)))

(declare-fun res!445839 () Bool)

(assert (=> b!982526 (=> (not res!445839) (not e!631979))))

(assert (=> b!982526 (= res!445839 (not lt!350172))))

(assert (= (and d!288398 c!160685) b!982522))

(assert (= (and d!288398 (not c!160685)) b!982521))

(assert (= (and d!288398 c!160683) b!982525))

(assert (= (and d!288398 (not c!160683)) b!982519))

(assert (= (and b!982519 c!160684) b!982514))

(assert (= (and b!982519 (not c!160684)) b!982524))

(assert (= (and b!982524 (not res!445843)) b!982517))

(assert (= (and b!982517 res!445837) b!982518))

(assert (= (and b!982518 res!445836) b!982515))

(assert (= (and b!982515 res!445841) b!982523))

(assert (= (and b!982517 (not res!445842)) b!982526))

(assert (= (and b!982526 res!445839) b!982513))

(assert (= (and b!982513 (not res!445840)) b!982520))

(assert (= (and b!982520 (not res!445838)) b!982516))

(assert (= (or b!982525 b!982513 b!982518) bm!63243))

(declare-fun m!1180777 () Bool)

(assert (=> b!982522 m!1180777))

(declare-fun m!1180779 () Bool)

(assert (=> b!982520 m!1180779))

(assert (=> b!982520 m!1180779))

(declare-fun m!1180781 () Bool)

(assert (=> b!982520 m!1180781))

(declare-fun m!1180783 () Bool)

(assert (=> b!982516 m!1180783))

(assert (=> d!288398 m!1180761))

(assert (=> d!288398 m!1180723))

(assert (=> b!982523 m!1180783))

(assert (=> bm!63243 m!1180761))

(assert (=> b!982521 m!1180783))

(assert (=> b!982521 m!1180783))

(declare-fun m!1180785 () Bool)

(assert (=> b!982521 m!1180785))

(assert (=> b!982521 m!1180779))

(assert (=> b!982521 m!1180785))

(assert (=> b!982521 m!1180779))

(declare-fun m!1180787 () Bool)

(assert (=> b!982521 m!1180787))

(assert (=> b!982515 m!1180779))

(assert (=> b!982515 m!1180779))

(assert (=> b!982515 m!1180781))

(assert (=> b!982331 d!288398))

(declare-fun d!288404 () Bool)

(assert (=> d!288404 (= (matchR!1276 r!15766 s!10566) (matchRSpec!539 r!15766 s!10566))))

(declare-fun lt!350175 () Unit!15139)

(declare-fun choose!6230 (Regex!2740 List!9970) Unit!15139)

(assert (=> d!288404 (= lt!350175 (choose!6230 r!15766 s!10566))))

(assert (=> d!288404 (validRegex!1209 r!15766)))

(assert (=> d!288404 (= (mainMatchTheorem!539 r!15766 s!10566) lt!350175)))

(declare-fun bs!243975 () Bool)

(assert (= bs!243975 d!288404))

(assert (=> bs!243975 m!1180719))

(assert (=> bs!243975 m!1180717))

(declare-fun m!1180789 () Bool)

(assert (=> bs!243975 m!1180789))

(assert (=> bs!243975 m!1180723))

(assert (=> b!982331 d!288404))

(declare-fun b!982549 () Bool)

(declare-fun res!445851 () Bool)

(declare-fun e!631997 () Bool)

(assert (=> b!982549 (=> (not res!445851) (not e!631997))))

(declare-fun call!63251 () Bool)

(assert (=> b!982549 (= res!445851 call!63251)))

(declare-fun e!632000 () Bool)

(assert (=> b!982549 (= e!632000 e!631997)))

(declare-fun d!288406 () Bool)

(declare-fun res!445852 () Bool)

(declare-fun e!631996 () Bool)

(assert (=> d!288406 (=> res!445852 e!631996)))

(assert (=> d!288406 (= res!445852 (is-ElementMatch!2740 (regOne!5992 r!15766)))))

(assert (=> d!288406 (= (validRegex!1209 (regOne!5992 r!15766)) e!631996)))

(declare-fun b!982550 () Bool)

(declare-fun e!631999 () Bool)

(assert (=> b!982550 (= e!631996 e!631999)))

(declare-fun c!160695 () Bool)

(assert (=> b!982550 (= c!160695 (is-Star!2740 (regOne!5992 r!15766)))))

(declare-fun bm!63244 () Bool)

(declare-fun call!63250 () Bool)

(declare-fun c!160694 () Bool)

(assert (=> bm!63244 (= call!63250 (validRegex!1209 (ite c!160694 (regTwo!5993 (regOne!5992 r!15766)) (regTwo!5992 (regOne!5992 r!15766)))))))

(declare-fun bm!63245 () Bool)

(declare-fun call!63249 () Bool)

(assert (=> bm!63245 (= call!63251 call!63249)))

(declare-fun bm!63246 () Bool)

(assert (=> bm!63246 (= call!63249 (validRegex!1209 (ite c!160695 (reg!3069 (regOne!5992 r!15766)) (ite c!160694 (regOne!5993 (regOne!5992 r!15766)) (regOne!5992 (regOne!5992 r!15766))))))))

(declare-fun b!982551 () Bool)

(declare-fun e!631995 () Bool)

(declare-fun e!631998 () Bool)

(assert (=> b!982551 (= e!631995 e!631998)))

(declare-fun res!445853 () Bool)

(assert (=> b!982551 (=> (not res!445853) (not e!631998))))

(assert (=> b!982551 (= res!445853 call!63251)))

(declare-fun b!982552 () Bool)

(assert (=> b!982552 (= e!631999 e!632000)))

(assert (=> b!982552 (= c!160694 (is-Union!2740 (regOne!5992 r!15766)))))

(declare-fun b!982553 () Bool)

(declare-fun e!631994 () Bool)

(assert (=> b!982553 (= e!631994 call!63249)))

(declare-fun b!982554 () Bool)

(declare-fun res!445850 () Bool)

(assert (=> b!982554 (=> res!445850 e!631995)))

(assert (=> b!982554 (= res!445850 (not (is-Concat!4573 (regOne!5992 r!15766))))))

(assert (=> b!982554 (= e!632000 e!631995)))

(declare-fun b!982555 () Bool)

(assert (=> b!982555 (= e!631997 call!63250)))

(declare-fun b!982556 () Bool)

(assert (=> b!982556 (= e!631998 call!63250)))

(declare-fun b!982557 () Bool)

(assert (=> b!982557 (= e!631999 e!631994)))

(declare-fun res!445854 () Bool)

(assert (=> b!982557 (= res!445854 (not (nullable!856 (reg!3069 (regOne!5992 r!15766)))))))

(assert (=> b!982557 (=> (not res!445854) (not e!631994))))

(assert (= (and d!288406 (not res!445852)) b!982550))

(assert (= (and b!982550 c!160695) b!982557))

(assert (= (and b!982550 (not c!160695)) b!982552))

(assert (= (and b!982557 res!445854) b!982553))

(assert (= (and b!982552 c!160694) b!982549))

(assert (= (and b!982552 (not c!160694)) b!982554))

(assert (= (and b!982549 res!445851) b!982555))

(assert (= (and b!982554 (not res!445850)) b!982551))

(assert (= (and b!982551 res!445853) b!982556))

(assert (= (or b!982555 b!982556) bm!63244))

(assert (= (or b!982549 b!982551) bm!63245))

(assert (= (or b!982553 bm!63245) bm!63246))

(declare-fun m!1180791 () Bool)

(assert (=> bm!63244 m!1180791))

(declare-fun m!1180793 () Bool)

(assert (=> bm!63246 m!1180793))

(declare-fun m!1180795 () Bool)

(assert (=> b!982557 m!1180795))

(assert (=> b!982329 d!288406))

(declare-fun d!288408 () Bool)

(declare-fun isEmpty!6281 (Option!2305) Bool)

(assert (=> d!288408 (= (isDefined!1947 (findConcatSeparation!411 (regOne!5992 r!15766) (regTwo!5992 r!15766) Nil!9954 s!10566 s!10566)) (not (isEmpty!6281 (findConcatSeparation!411 (regOne!5992 r!15766) (regTwo!5992 r!15766) Nil!9954 s!10566 s!10566))))))

(declare-fun bs!243976 () Bool)

(assert (= bs!243976 d!288408))

(assert (=> bs!243976 m!1180707))

(declare-fun m!1180797 () Bool)

(assert (=> bs!243976 m!1180797))

(assert (=> b!982329 d!288408))

(declare-fun bs!243977 () Bool)

(declare-fun d!288410 () Bool)

(assert (= bs!243977 (and d!288410 b!982329)))

(declare-fun lambda!35019 () Int)

(assert (=> bs!243977 (= lambda!35019 lambda!35003)))

(declare-fun bs!243978 () Bool)

(assert (= bs!243978 (and d!288410 b!982463)))

(assert (=> bs!243978 (not (= lambda!35019 lambda!35011))))

(declare-fun bs!243979 () Bool)

(assert (= bs!243979 (and d!288410 b!982459)))

(assert (=> bs!243979 (not (= lambda!35019 lambda!35012))))

(assert (=> d!288410 true))

(assert (=> d!288410 true))

(assert (=> d!288410 true))

(assert (=> d!288410 (= (isDefined!1947 (findConcatSeparation!411 (regOne!5992 r!15766) (regTwo!5992 r!15766) Nil!9954 s!10566 s!10566)) (Exists!477 lambda!35019))))

(declare-fun lt!350178 () Unit!15139)

(declare-fun choose!6231 (Regex!2740 Regex!2740 List!9970) Unit!15139)

(assert (=> d!288410 (= lt!350178 (choose!6231 (regOne!5992 r!15766) (regTwo!5992 r!15766) s!10566))))

(assert (=> d!288410 (validRegex!1209 (regOne!5992 r!15766))))

(assert (=> d!288410 (= (lemmaFindConcatSeparationEquivalentToExists!411 (regOne!5992 r!15766) (regTwo!5992 r!15766) s!10566) lt!350178)))

(declare-fun bs!243980 () Bool)

(assert (= bs!243980 d!288410))

(assert (=> bs!243980 m!1180707))

(assert (=> bs!243980 m!1180709))

(assert (=> bs!243980 m!1180711))

(declare-fun m!1180799 () Bool)

(assert (=> bs!243980 m!1180799))

(assert (=> bs!243980 m!1180707))

(declare-fun m!1180801 () Bool)

(assert (=> bs!243980 m!1180801))

(assert (=> b!982329 d!288410))

(declare-fun b!982601 () Bool)

(declare-fun e!632026 () Bool)

(declare-fun lt!350187 () Option!2305)

(assert (=> b!982601 (= e!632026 (not (isDefined!1947 lt!350187)))))

(declare-fun b!982602 () Bool)

(declare-fun e!632028 () Bool)

(declare-fun ++!2703 (List!9970 List!9970) List!9970)

(declare-fun get!3454 (Option!2305) tuple2!11326)

(assert (=> b!982602 (= e!632028 (= (++!2703 (_1!6489 (get!3454 lt!350187)) (_2!6489 (get!3454 lt!350187))) s!10566))))

(declare-fun b!982603 () Bool)

(declare-fun e!632027 () Option!2305)

(assert (=> b!982603 (= e!632027 None!2304)))

(declare-fun b!982604 () Bool)

(declare-fun res!445883 () Bool)

(assert (=> b!982604 (=> (not res!445883) (not e!632028))))

(assert (=> b!982604 (= res!445883 (matchR!1276 (regOne!5992 r!15766) (_1!6489 (get!3454 lt!350187))))))

(declare-fun b!982605 () Bool)

(declare-fun e!632024 () Option!2305)

(assert (=> b!982605 (= e!632024 e!632027)))

(declare-fun c!160704 () Bool)

(assert (=> b!982605 (= c!160704 (is-Nil!9954 s!10566))))

(declare-fun b!982606 () Bool)

(declare-fun e!632025 () Bool)

(assert (=> b!982606 (= e!632025 (matchR!1276 (regTwo!5992 r!15766) s!10566))))

(declare-fun d!288412 () Bool)

(assert (=> d!288412 e!632026))

(declare-fun res!445886 () Bool)

(assert (=> d!288412 (=> res!445886 e!632026)))

(assert (=> d!288412 (= res!445886 e!632028)))

(declare-fun res!445882 () Bool)

(assert (=> d!288412 (=> (not res!445882) (not e!632028))))

(assert (=> d!288412 (= res!445882 (isDefined!1947 lt!350187))))

(assert (=> d!288412 (= lt!350187 e!632024)))

(declare-fun c!160705 () Bool)

(assert (=> d!288412 (= c!160705 e!632025)))

(declare-fun res!445884 () Bool)

(assert (=> d!288412 (=> (not res!445884) (not e!632025))))

(assert (=> d!288412 (= res!445884 (matchR!1276 (regOne!5992 r!15766) Nil!9954))))

(assert (=> d!288412 (validRegex!1209 (regOne!5992 r!15766))))

(assert (=> d!288412 (= (findConcatSeparation!411 (regOne!5992 r!15766) (regTwo!5992 r!15766) Nil!9954 s!10566 s!10566) lt!350187)))

(declare-fun b!982607 () Bool)

(declare-fun res!445885 () Bool)

(assert (=> b!982607 (=> (not res!445885) (not e!632028))))

(assert (=> b!982607 (= res!445885 (matchR!1276 (regTwo!5992 r!15766) (_2!6489 (get!3454 lt!350187))))))

(declare-fun b!982608 () Bool)

(assert (=> b!982608 (= e!632024 (Some!2304 (tuple2!11327 Nil!9954 s!10566)))))

(declare-fun b!982609 () Bool)

(declare-fun lt!350186 () Unit!15139)

(declare-fun lt!350185 () Unit!15139)

(assert (=> b!982609 (= lt!350186 lt!350185)))

(assert (=> b!982609 (= (++!2703 (++!2703 Nil!9954 (Cons!9954 (h!15355 s!10566) Nil!9954)) (t!101016 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!304 (List!9970 C!6050 List!9970 List!9970) Unit!15139)

(assert (=> b!982609 (= lt!350185 (lemmaMoveElementToOtherListKeepsConcatEq!304 Nil!9954 (h!15355 s!10566) (t!101016 s!10566) s!10566))))

(assert (=> b!982609 (= e!632027 (findConcatSeparation!411 (regOne!5992 r!15766) (regTwo!5992 r!15766) (++!2703 Nil!9954 (Cons!9954 (h!15355 s!10566) Nil!9954)) (t!101016 s!10566) s!10566))))

(assert (= (and d!288412 res!445884) b!982606))

(assert (= (and d!288412 c!160705) b!982608))

(assert (= (and d!288412 (not c!160705)) b!982605))

(assert (= (and b!982605 c!160704) b!982603))

(assert (= (and b!982605 (not c!160704)) b!982609))

(assert (= (and d!288412 res!445882) b!982604))

(assert (= (and b!982604 res!445883) b!982607))

(assert (= (and b!982607 res!445885) b!982602))

(assert (= (and d!288412 (not res!445886)) b!982601))

(declare-fun m!1180803 () Bool)

(assert (=> b!982604 m!1180803))

(declare-fun m!1180805 () Bool)

(assert (=> b!982604 m!1180805))

(assert (=> b!982607 m!1180803))

(declare-fun m!1180807 () Bool)

(assert (=> b!982607 m!1180807))

(declare-fun m!1180809 () Bool)

(assert (=> b!982609 m!1180809))

(assert (=> b!982609 m!1180809))

(declare-fun m!1180811 () Bool)

(assert (=> b!982609 m!1180811))

(declare-fun m!1180813 () Bool)

(assert (=> b!982609 m!1180813))

(assert (=> b!982609 m!1180809))

(declare-fun m!1180815 () Bool)

(assert (=> b!982609 m!1180815))

(declare-fun m!1180817 () Bool)

(assert (=> b!982601 m!1180817))

(declare-fun m!1180819 () Bool)

(assert (=> b!982606 m!1180819))

(assert (=> b!982602 m!1180803))

(declare-fun m!1180821 () Bool)

(assert (=> b!982602 m!1180821))

(assert (=> d!288412 m!1180817))

(declare-fun m!1180823 () Bool)

(assert (=> d!288412 m!1180823))

(assert (=> d!288412 m!1180711))

(assert (=> b!982329 d!288412))

(declare-fun d!288414 () Bool)

(declare-fun choose!6232 (Int) Bool)

(assert (=> d!288414 (= (Exists!477 lambda!35003) (choose!6232 lambda!35003))))

(declare-fun bs!243984 () Bool)

(assert (= bs!243984 d!288414))

(declare-fun m!1180833 () Bool)

(assert (=> bs!243984 m!1180833))

(assert (=> b!982329 d!288414))

(declare-fun b!982623 () Bool)

(declare-fun e!632031 () Bool)

(declare-fun tp!300140 () Bool)

(declare-fun tp!300141 () Bool)

(assert (=> b!982623 (= e!632031 (and tp!300140 tp!300141))))

(declare-fun b!982621 () Bool)

(declare-fun tp!300142 () Bool)

(declare-fun tp!300143 () Bool)

(assert (=> b!982621 (= e!632031 (and tp!300142 tp!300143))))

(assert (=> b!982333 (= tp!300110 e!632031)))

(declare-fun b!982622 () Bool)

(declare-fun tp!300139 () Bool)

(assert (=> b!982622 (= e!632031 tp!300139)))

(declare-fun b!982620 () Bool)

(assert (=> b!982620 (= e!632031 tp_is_empty!5123)))

(assert (= (and b!982333 (is-ElementMatch!2740 (reg!3069 r!15766))) b!982620))

(assert (= (and b!982333 (is-Concat!4573 (reg!3069 r!15766))) b!982621))

(assert (= (and b!982333 (is-Star!2740 (reg!3069 r!15766))) b!982622))

(assert (= (and b!982333 (is-Union!2740 (reg!3069 r!15766))) b!982623))

(declare-fun b!982627 () Bool)

(declare-fun e!632032 () Bool)

(declare-fun tp!300145 () Bool)

(declare-fun tp!300146 () Bool)

(assert (=> b!982627 (= e!632032 (and tp!300145 tp!300146))))

(declare-fun b!982625 () Bool)

(declare-fun tp!300147 () Bool)

(declare-fun tp!300148 () Bool)

(assert (=> b!982625 (= e!632032 (and tp!300147 tp!300148))))

(assert (=> b!982327 (= tp!300107 e!632032)))

(declare-fun b!982626 () Bool)

(declare-fun tp!300144 () Bool)

(assert (=> b!982626 (= e!632032 tp!300144)))

(declare-fun b!982624 () Bool)

(assert (=> b!982624 (= e!632032 tp_is_empty!5123)))

(assert (= (and b!982327 (is-ElementMatch!2740 (regOne!5993 r!15766))) b!982624))

(assert (= (and b!982327 (is-Concat!4573 (regOne!5993 r!15766))) b!982625))

(assert (= (and b!982327 (is-Star!2740 (regOne!5993 r!15766))) b!982626))

(assert (= (and b!982327 (is-Union!2740 (regOne!5993 r!15766))) b!982627))

(declare-fun b!982631 () Bool)

(declare-fun e!632033 () Bool)

(declare-fun tp!300150 () Bool)

(declare-fun tp!300151 () Bool)

(assert (=> b!982631 (= e!632033 (and tp!300150 tp!300151))))

(declare-fun b!982629 () Bool)

(declare-fun tp!300152 () Bool)

(declare-fun tp!300153 () Bool)

(assert (=> b!982629 (= e!632033 (and tp!300152 tp!300153))))

(assert (=> b!982327 (= tp!300108 e!632033)))

(declare-fun b!982630 () Bool)

(declare-fun tp!300149 () Bool)

(assert (=> b!982630 (= e!632033 tp!300149)))

(declare-fun b!982628 () Bool)

(assert (=> b!982628 (= e!632033 tp_is_empty!5123)))

(assert (= (and b!982327 (is-ElementMatch!2740 (regTwo!5993 r!15766))) b!982628))

(assert (= (and b!982327 (is-Concat!4573 (regTwo!5993 r!15766))) b!982629))

(assert (= (and b!982327 (is-Star!2740 (regTwo!5993 r!15766))) b!982630))

(assert (= (and b!982327 (is-Union!2740 (regTwo!5993 r!15766))) b!982631))

(declare-fun b!982636 () Bool)

(declare-fun e!632036 () Bool)

(declare-fun tp!300156 () Bool)

(assert (=> b!982636 (= e!632036 (and tp_is_empty!5123 tp!300156))))

(assert (=> b!982332 (= tp!300106 e!632036)))

(assert (= (and b!982332 (is-Cons!9954 (t!101016 s!10566))) b!982636))

(declare-fun b!982640 () Bool)

(declare-fun e!632037 () Bool)

(declare-fun tp!300158 () Bool)

(declare-fun tp!300159 () Bool)

(assert (=> b!982640 (= e!632037 (and tp!300158 tp!300159))))

(declare-fun b!982638 () Bool)

(declare-fun tp!300160 () Bool)

(declare-fun tp!300161 () Bool)

(assert (=> b!982638 (= e!632037 (and tp!300160 tp!300161))))

(assert (=> b!982328 (= tp!300109 e!632037)))

(declare-fun b!982639 () Bool)

(declare-fun tp!300157 () Bool)

(assert (=> b!982639 (= e!632037 tp!300157)))

(declare-fun b!982637 () Bool)

(assert (=> b!982637 (= e!632037 tp_is_empty!5123)))

(assert (= (and b!982328 (is-ElementMatch!2740 (regOne!5992 r!15766))) b!982637))

(assert (= (and b!982328 (is-Concat!4573 (regOne!5992 r!15766))) b!982638))

(assert (= (and b!982328 (is-Star!2740 (regOne!5992 r!15766))) b!982639))

(assert (= (and b!982328 (is-Union!2740 (regOne!5992 r!15766))) b!982640))

(declare-fun b!982644 () Bool)

(declare-fun e!632038 () Bool)

(declare-fun tp!300163 () Bool)

(declare-fun tp!300164 () Bool)

(assert (=> b!982644 (= e!632038 (and tp!300163 tp!300164))))

(declare-fun b!982642 () Bool)

(declare-fun tp!300165 () Bool)

(declare-fun tp!300166 () Bool)

(assert (=> b!982642 (= e!632038 (and tp!300165 tp!300166))))

(assert (=> b!982328 (= tp!300105 e!632038)))

(declare-fun b!982643 () Bool)

(declare-fun tp!300162 () Bool)

(assert (=> b!982643 (= e!632038 tp!300162)))

(declare-fun b!982641 () Bool)

(assert (=> b!982641 (= e!632038 tp_is_empty!5123)))

(assert (= (and b!982328 (is-ElementMatch!2740 (regTwo!5992 r!15766))) b!982641))

(assert (= (and b!982328 (is-Concat!4573 (regTwo!5992 r!15766))) b!982642))

(assert (= (and b!982328 (is-Star!2740 (regTwo!5992 r!15766))) b!982643))

(assert (= (and b!982328 (is-Union!2740 (regTwo!5992 r!15766))) b!982644))

(push 1)

(assert (not b!982622))

(assert (not bm!63243))

(assert (not b!982396))

(assert (not b!982631))

(assert (not b!982642))

(assert (not b!982639))

(assert (not b!982557))

(assert (not b!982640))

(assert (not b!982638))

(assert (not b!982405))

(assert (not b!982636))

(assert (not d!288398))

(assert (not b!982643))

(assert (not b!982627))

(assert (not b!982623))

(assert (not b!982522))

(assert (not b!982520))

(assert (not b!982644))

(assert (not b!982629))

(assert (not b!982456))

(assert (not b!982601))

(assert (not d!288414))

(assert (not b!982516))

(assert (not b!982515))

(assert (not b!982461))

(assert (not bm!63246))

(assert (not bm!63244))

(assert (not bm!63219))

(assert (not b!982602))

(assert (not b!982606))

(assert (not b!982626))

(assert (not b!982630))

(assert (not b!982609))

(assert (not b!982625))

(assert (not bm!63222))

(assert (not bm!63233))

(assert (not b!982604))

(assert (not b!982521))

(assert (not d!288408))

(assert tp_is_empty!5123)

(assert (not d!288410))

(assert (not b!982607))

(assert (not bm!63217))

(assert (not d!288404))

(assert (not b!982621))

(assert (not b!982523))

(assert (not bm!63220))

(assert (not bm!63234))

(assert (not d!288412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

