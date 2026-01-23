; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86414 () Bool)

(assert start!86414)

(declare-fun b!972207 () Bool)

(assert (=> b!972207 true))

(assert (=> b!972207 true))

(declare-fun lambda!34482 () Int)

(declare-fun lambda!34481 () Int)

(assert (=> b!972207 (not (= lambda!34482 lambda!34481))))

(assert (=> b!972207 true))

(assert (=> b!972207 true))

(declare-fun res!441943 () Bool)

(declare-fun e!626575 () Bool)

(assert (=> start!86414 (=> (not res!441943) (not e!626575))))

(declare-datatypes ((C!5996 0))(
  ( (C!5997 (val!3246 Int)) )
))
(declare-datatypes ((Regex!2713 0))(
  ( (ElementMatch!2713 (c!158524 C!5996)) (Concat!4546 (regOne!5938 Regex!2713) (regTwo!5938 Regex!2713)) (EmptyExpr!2713) (Star!2713 (reg!3042 Regex!2713)) (EmptyLang!2713) (Union!2713 (regOne!5939 Regex!2713) (regTwo!5939 Regex!2713)) )
))
(declare-fun r!15766 () Regex!2713)

(declare-fun validRegex!1182 (Regex!2713) Bool)

(assert (=> start!86414 (= res!441943 (validRegex!1182 r!15766))))

(assert (=> start!86414 e!626575))

(declare-fun e!626577 () Bool)

(assert (=> start!86414 e!626577))

(declare-fun e!626579 () Bool)

(assert (=> start!86414 e!626579))

(declare-fun b!972205 () Bool)

(declare-fun tp_is_empty!5069 () Bool)

(declare-fun tp!297701 () Bool)

(assert (=> b!972205 (= e!626579 (and tp_is_empty!5069 tp!297701))))

(declare-fun b!972206 () Bool)

(declare-fun tp!297703 () Bool)

(assert (=> b!972206 (= e!626577 tp!297703)))

(declare-fun e!626573 () Bool)

(declare-fun e!626576 () Bool)

(assert (=> b!972207 (= e!626573 e!626576)))

(declare-fun res!441941 () Bool)

(assert (=> b!972207 (=> res!441941 e!626576)))

(declare-datatypes ((List!9943 0))(
  ( (Nil!9927) (Cons!9927 (h!15328 C!5996) (t!100989 List!9943)) )
))
(declare-fun s!10566 () List!9943)

(declare-fun isEmpty!6238 (List!9943) Bool)

(assert (=> b!972207 (= res!441941 (isEmpty!6238 s!10566))))

(declare-fun Exists!452 (Int) Bool)

(assert (=> b!972207 (= (Exists!452 lambda!34481) (Exists!452 lambda!34482))))

(declare-datatypes ((Unit!15085 0))(
  ( (Unit!15086) )
))
(declare-fun lt!349110 () Unit!15085)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!218 (Regex!2713 Regex!2713 List!9943) Unit!15085)

(assert (=> b!972207 (= lt!349110 (lemmaExistCutMatchRandMatchRSpecEquivalent!218 EmptyExpr!2713 (regTwo!5938 r!15766) s!10566))))

(declare-datatypes ((tuple2!11292 0))(
  ( (tuple2!11293 (_1!6472 List!9943) (_2!6472 List!9943)) )
))
(declare-datatypes ((Option!2288 0))(
  ( (None!2287) (Some!2287 (v!19704 tuple2!11292)) )
))
(declare-fun lt!349108 () Option!2288)

(declare-fun isDefined!1930 (Option!2288) Bool)

(assert (=> b!972207 (= (isDefined!1930 lt!349108) (Exists!452 lambda!34481))))

(declare-fun findConcatSeparation!394 (Regex!2713 Regex!2713 List!9943 List!9943 List!9943) Option!2288)

(assert (=> b!972207 (= lt!349108 (findConcatSeparation!394 EmptyExpr!2713 (regTwo!5938 r!15766) Nil!9927 s!10566 s!10566))))

(declare-fun lt!349105 () Unit!15085)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!394 (Regex!2713 Regex!2713 List!9943) Unit!15085)

(assert (=> b!972207 (= lt!349105 (lemmaFindConcatSeparationEquivalentToExists!394 EmptyExpr!2713 (regTwo!5938 r!15766) s!10566))))

(declare-fun b!972208 () Bool)

(declare-fun res!441946 () Bool)

(declare-fun e!626574 () Bool)

(assert (=> b!972208 (=> res!441946 e!626574)))

(declare-fun lt!349111 () tuple2!11292)

(declare-fun matchR!1249 (Regex!2713 List!9943) Bool)

(assert (=> b!972208 (= res!441946 (not (matchR!1249 (regTwo!5938 r!15766) (_2!6472 lt!349111))))))

(declare-fun b!972209 () Bool)

(assert (=> b!972209 (= e!626576 e!626574)))

(declare-fun res!441944 () Bool)

(assert (=> b!972209 (=> res!441944 e!626574)))

(assert (=> b!972209 (= res!441944 (not (isEmpty!6238 (_1!6472 lt!349111))))))

(declare-fun get!3425 (Option!2288) tuple2!11292)

(assert (=> b!972209 (= lt!349111 (get!3425 lt!349108))))

(declare-fun b!972210 () Bool)

(declare-fun tp!297700 () Bool)

(declare-fun tp!297704 () Bool)

(assert (=> b!972210 (= e!626577 (and tp!297700 tp!297704))))

(declare-fun b!972211 () Bool)

(declare-fun e!626578 () Bool)

(declare-fun regexDepth!16 (Regex!2713) Int)

(declare-fun size!7949 (List!9943) Int)

(assert (=> b!972211 (= e!626578 (< (+ (regexDepth!16 (regTwo!5938 r!15766)) (size!7949 (_2!6472 lt!349111))) (+ (regexDepth!16 r!15766) (size!7949 s!10566))))))

(declare-fun b!972212 () Bool)

(assert (=> b!972212 (= e!626574 e!626578)))

(declare-fun res!441945 () Bool)

(assert (=> b!972212 (=> res!441945 e!626578)))

(assert (=> b!972212 (= res!441945 (not (validRegex!1182 (regTwo!5938 r!15766))))))

(declare-fun matchRSpec!512 (Regex!2713 List!9943) Bool)

(assert (=> b!972212 (matchRSpec!512 (regTwo!5938 r!15766) (_2!6472 lt!349111))))

(declare-fun lt!349106 () Unit!15085)

(declare-fun mainMatchTheorem!512 (Regex!2713 List!9943) Unit!15085)

(assert (=> b!972212 (= lt!349106 (mainMatchTheorem!512 (regTwo!5938 r!15766) (_2!6472 lt!349111)))))

(declare-fun b!972213 () Bool)

(assert (=> b!972213 (= e!626575 (not e!626573))))

(declare-fun res!441942 () Bool)

(assert (=> b!972213 (=> res!441942 e!626573)))

(declare-fun lt!349109 () Bool)

(get-info :version)

(assert (=> b!972213 (= res!441942 (or (not lt!349109) (not ((_ is Concat!4546) r!15766)) (not ((_ is EmptyExpr!2713) (regOne!5938 r!15766)))))))

(assert (=> b!972213 (= lt!349109 (matchRSpec!512 r!15766 s!10566))))

(assert (=> b!972213 (= lt!349109 (matchR!1249 r!15766 s!10566))))

(declare-fun lt!349107 () Unit!15085)

(assert (=> b!972213 (= lt!349107 (mainMatchTheorem!512 r!15766 s!10566))))

(declare-fun b!972214 () Bool)

(declare-fun tp!297699 () Bool)

(declare-fun tp!297702 () Bool)

(assert (=> b!972214 (= e!626577 (and tp!297699 tp!297702))))

(declare-fun b!972215 () Bool)

(assert (=> b!972215 (= e!626577 tp_is_empty!5069)))

(assert (= (and start!86414 res!441943) b!972213))

(assert (= (and b!972213 (not res!441942)) b!972207))

(assert (= (and b!972207 (not res!441941)) b!972209))

(assert (= (and b!972209 (not res!441944)) b!972208))

(assert (= (and b!972208 (not res!441946)) b!972212))

(assert (= (and b!972212 (not res!441945)) b!972211))

(assert (= (and start!86414 ((_ is ElementMatch!2713) r!15766)) b!972215))

(assert (= (and start!86414 ((_ is Concat!4546) r!15766)) b!972210))

(assert (= (and start!86414 ((_ is Star!2713) r!15766)) b!972206))

(assert (= (and start!86414 ((_ is Union!2713) r!15766)) b!972214))

(assert (= (and start!86414 ((_ is Cons!9927) s!10566)) b!972205))

(declare-fun m!1175523 () Bool)

(assert (=> start!86414 m!1175523))

(declare-fun m!1175525 () Bool)

(assert (=> b!972209 m!1175525))

(declare-fun m!1175527 () Bool)

(assert (=> b!972209 m!1175527))

(declare-fun m!1175529 () Bool)

(assert (=> b!972213 m!1175529))

(declare-fun m!1175531 () Bool)

(assert (=> b!972213 m!1175531))

(declare-fun m!1175533 () Bool)

(assert (=> b!972213 m!1175533))

(declare-fun m!1175535 () Bool)

(assert (=> b!972207 m!1175535))

(declare-fun m!1175537 () Bool)

(assert (=> b!972207 m!1175537))

(declare-fun m!1175539 () Bool)

(assert (=> b!972207 m!1175539))

(declare-fun m!1175541 () Bool)

(assert (=> b!972207 m!1175541))

(declare-fun m!1175543 () Bool)

(assert (=> b!972207 m!1175543))

(declare-fun m!1175545 () Bool)

(assert (=> b!972207 m!1175545))

(declare-fun m!1175547 () Bool)

(assert (=> b!972207 m!1175547))

(assert (=> b!972207 m!1175535))

(declare-fun m!1175549 () Bool)

(assert (=> b!972211 m!1175549))

(declare-fun m!1175551 () Bool)

(assert (=> b!972211 m!1175551))

(declare-fun m!1175553 () Bool)

(assert (=> b!972211 m!1175553))

(declare-fun m!1175555 () Bool)

(assert (=> b!972211 m!1175555))

(declare-fun m!1175557 () Bool)

(assert (=> b!972212 m!1175557))

(declare-fun m!1175559 () Bool)

(assert (=> b!972212 m!1175559))

(declare-fun m!1175561 () Bool)

(assert (=> b!972212 m!1175561))

(declare-fun m!1175563 () Bool)

(assert (=> b!972208 m!1175563))

(check-sat (not b!972206) (not b!972214) (not b!972205) (not b!972212) (not b!972207) (not b!972210) (not start!86414) (not b!972209) (not b!972211) (not b!972208) (not b!972213) tp_is_empty!5069)
(check-sat)
(get-model)

(declare-fun bs!242508 () Bool)

(declare-fun b!972355 () Bool)

(assert (= bs!242508 (and b!972355 b!972207)))

(declare-fun lambda!34493 () Int)

(assert (=> bs!242508 (not (= lambda!34493 lambda!34481))))

(assert (=> bs!242508 (not (= lambda!34493 lambda!34482))))

(assert (=> b!972355 true))

(assert (=> b!972355 true))

(declare-fun bs!242511 () Bool)

(declare-fun b!972359 () Bool)

(assert (= bs!242511 (and b!972359 b!972207)))

(declare-fun lambda!34494 () Int)

(assert (=> bs!242511 (not (= lambda!34494 lambda!34481))))

(assert (=> bs!242511 (= (= (regOne!5938 r!15766) EmptyExpr!2713) (= lambda!34494 lambda!34482))))

(declare-fun bs!242512 () Bool)

(assert (= bs!242512 (and b!972359 b!972355)))

(assert (=> bs!242512 (not (= lambda!34494 lambda!34493))))

(assert (=> b!972359 true))

(assert (=> b!972359 true))

(declare-fun b!972350 () Bool)

(declare-fun c!158559 () Bool)

(assert (=> b!972350 (= c!158559 ((_ is ElementMatch!2713) r!15766))))

(declare-fun e!626662 () Bool)

(declare-fun e!626660 () Bool)

(assert (=> b!972350 (= e!626662 e!626660)))

(declare-fun b!972351 () Bool)

(declare-fun e!626659 () Bool)

(declare-fun e!626663 () Bool)

(assert (=> b!972351 (= e!626659 e!626663)))

(declare-fun c!158558 () Bool)

(assert (=> b!972351 (= c!158558 ((_ is Star!2713) r!15766))))

(declare-fun b!972352 () Bool)

(declare-fun res!442013 () Bool)

(declare-fun e!626661 () Bool)

(assert (=> b!972352 (=> res!442013 e!626661)))

(declare-fun call!61742 () Bool)

(assert (=> b!972352 (= res!442013 call!61742)))

(assert (=> b!972352 (= e!626663 e!626661)))

(declare-fun bm!61736 () Bool)

(assert (=> bm!61736 (= call!61742 (isEmpty!6238 s!10566))))

(declare-fun d!286742 () Bool)

(declare-fun c!158557 () Bool)

(assert (=> d!286742 (= c!158557 ((_ is EmptyExpr!2713) r!15766))))

(declare-fun e!626664 () Bool)

(assert (=> d!286742 (= (matchRSpec!512 r!15766 s!10566) e!626664)))

(declare-fun b!972353 () Bool)

(assert (=> b!972353 (= e!626660 (= s!10566 (Cons!9927 (c!158524 r!15766) Nil!9927)))))

(declare-fun call!61741 () Bool)

(declare-fun bm!61737 () Bool)

(assert (=> bm!61737 (= call!61741 (Exists!452 (ite c!158558 lambda!34493 lambda!34494)))))

(declare-fun b!972354 () Bool)

(assert (=> b!972354 (= e!626664 e!626662)))

(declare-fun res!442014 () Bool)

(assert (=> b!972354 (= res!442014 (not ((_ is EmptyLang!2713) r!15766)))))

(assert (=> b!972354 (=> (not res!442014) (not e!626662))))

(assert (=> b!972355 (= e!626661 call!61741)))

(declare-fun b!972356 () Bool)

(declare-fun e!626658 () Bool)

(assert (=> b!972356 (= e!626658 (matchRSpec!512 (regTwo!5939 r!15766) s!10566))))

(declare-fun b!972357 () Bool)

(declare-fun c!158560 () Bool)

(assert (=> b!972357 (= c!158560 ((_ is Union!2713) r!15766))))

(assert (=> b!972357 (= e!626660 e!626659)))

(declare-fun b!972358 () Bool)

(assert (=> b!972358 (= e!626659 e!626658)))

(declare-fun res!442015 () Bool)

(assert (=> b!972358 (= res!442015 (matchRSpec!512 (regOne!5939 r!15766) s!10566))))

(assert (=> b!972358 (=> res!442015 e!626658)))

(assert (=> b!972359 (= e!626663 call!61741)))

(declare-fun b!972360 () Bool)

(assert (=> b!972360 (= e!626664 call!61742)))

(assert (= (and d!286742 c!158557) b!972360))

(assert (= (and d!286742 (not c!158557)) b!972354))

(assert (= (and b!972354 res!442014) b!972350))

(assert (= (and b!972350 c!158559) b!972353))

(assert (= (and b!972350 (not c!158559)) b!972357))

(assert (= (and b!972357 c!158560) b!972358))

(assert (= (and b!972357 (not c!158560)) b!972351))

(assert (= (and b!972358 (not res!442015)) b!972356))

(assert (= (and b!972351 c!158558) b!972352))

(assert (= (and b!972351 (not c!158558)) b!972359))

(assert (= (and b!972352 (not res!442013)) b!972355))

(assert (= (or b!972355 b!972359) bm!61737))

(assert (= (or b!972360 b!972352) bm!61736))

(assert (=> bm!61736 m!1175541))

(declare-fun m!1175597 () Bool)

(assert (=> bm!61737 m!1175597))

(declare-fun m!1175599 () Bool)

(assert (=> b!972356 m!1175599))

(declare-fun m!1175601 () Bool)

(assert (=> b!972358 m!1175601))

(assert (=> b!972213 d!286742))

(declare-fun bm!61741 () Bool)

(declare-fun call!61746 () Bool)

(assert (=> bm!61741 (= call!61746 (isEmpty!6238 s!10566))))

(declare-fun b!972434 () Bool)

(declare-fun res!442066 () Bool)

(declare-fun e!626704 () Bool)

(assert (=> b!972434 (=> res!442066 e!626704)))

(assert (=> b!972434 (= res!442066 (not ((_ is ElementMatch!2713) r!15766)))))

(declare-fun e!626705 () Bool)

(assert (=> b!972434 (= e!626705 e!626704)))

(declare-fun b!972435 () Bool)

(declare-fun e!626709 () Bool)

(declare-fun head!1792 (List!9943) C!5996)

(assert (=> b!972435 (= e!626709 (not (= (head!1792 s!10566) (c!158524 r!15766))))))

(declare-fun b!972436 () Bool)

(declare-fun res!442060 () Bool)

(declare-fun e!626706 () Bool)

(assert (=> b!972436 (=> (not res!442060) (not e!626706))))

(declare-fun tail!1354 (List!9943) List!9943)

(assert (=> b!972436 (= res!442060 (isEmpty!6238 (tail!1354 s!10566)))))

(declare-fun b!972438 () Bool)

(declare-fun res!442063 () Bool)

(assert (=> b!972438 (=> (not res!442063) (not e!626706))))

(assert (=> b!972438 (= res!442063 (not call!61746))))

(declare-fun b!972439 () Bool)

(declare-fun e!626708 () Bool)

(assert (=> b!972439 (= e!626708 e!626705)))

(declare-fun c!158577 () Bool)

(assert (=> b!972439 (= c!158577 ((_ is EmptyLang!2713) r!15766))))

(declare-fun b!972440 () Bool)

(declare-fun lt!349132 () Bool)

(assert (=> b!972440 (= e!626705 (not lt!349132))))

(declare-fun b!972437 () Bool)

(assert (=> b!972437 (= e!626708 (= lt!349132 call!61746))))

(declare-fun d!286758 () Bool)

(assert (=> d!286758 e!626708))

(declare-fun c!158576 () Bool)

(assert (=> d!286758 (= c!158576 ((_ is EmptyExpr!2713) r!15766))))

(declare-fun e!626703 () Bool)

(assert (=> d!286758 (= lt!349132 e!626703)))

(declare-fun c!158578 () Bool)

(assert (=> d!286758 (= c!158578 (isEmpty!6238 s!10566))))

(assert (=> d!286758 (validRegex!1182 r!15766)))

(assert (=> d!286758 (= (matchR!1249 r!15766 s!10566) lt!349132)))

(declare-fun b!972441 () Bool)

(declare-fun e!626707 () Bool)

(assert (=> b!972441 (= e!626707 e!626709)))

(declare-fun res!442061 () Bool)

(assert (=> b!972441 (=> res!442061 e!626709)))

(assert (=> b!972441 (= res!442061 call!61746)))

(declare-fun b!972442 () Bool)

(declare-fun nullable!833 (Regex!2713) Bool)

(assert (=> b!972442 (= e!626703 (nullable!833 r!15766))))

(declare-fun b!972443 () Bool)

(declare-fun res!442059 () Bool)

(assert (=> b!972443 (=> res!442059 e!626709)))

(assert (=> b!972443 (= res!442059 (not (isEmpty!6238 (tail!1354 s!10566))))))

(declare-fun b!972444 () Bool)

(assert (=> b!972444 (= e!626706 (= (head!1792 s!10566) (c!158524 r!15766)))))

(declare-fun b!972445 () Bool)

(declare-fun derivativeStep!639 (Regex!2713 C!5996) Regex!2713)

(assert (=> b!972445 (= e!626703 (matchR!1249 (derivativeStep!639 r!15766 (head!1792 s!10566)) (tail!1354 s!10566)))))

(declare-fun b!972446 () Bool)

(assert (=> b!972446 (= e!626704 e!626707)))

(declare-fun res!442065 () Bool)

(assert (=> b!972446 (=> (not res!442065) (not e!626707))))

(assert (=> b!972446 (= res!442065 (not lt!349132))))

(declare-fun b!972447 () Bool)

(declare-fun res!442062 () Bool)

(assert (=> b!972447 (=> res!442062 e!626704)))

(assert (=> b!972447 (= res!442062 e!626706)))

(declare-fun res!442064 () Bool)

(assert (=> b!972447 (=> (not res!442064) (not e!626706))))

(assert (=> b!972447 (= res!442064 lt!349132)))

(assert (= (and d!286758 c!158578) b!972442))

(assert (= (and d!286758 (not c!158578)) b!972445))

(assert (= (and d!286758 c!158576) b!972437))

(assert (= (and d!286758 (not c!158576)) b!972439))

(assert (= (and b!972439 c!158577) b!972440))

(assert (= (and b!972439 (not c!158577)) b!972434))

(assert (= (and b!972434 (not res!442066)) b!972447))

(assert (= (and b!972447 res!442064) b!972438))

(assert (= (and b!972438 res!442063) b!972436))

(assert (= (and b!972436 res!442060) b!972444))

(assert (= (and b!972447 (not res!442062)) b!972446))

(assert (= (and b!972446 res!442065) b!972441))

(assert (= (and b!972441 (not res!442061)) b!972443))

(assert (= (and b!972443 (not res!442059)) b!972435))

(assert (= (or b!972437 b!972441 b!972438) bm!61741))

(declare-fun m!1175633 () Bool)

(assert (=> b!972443 m!1175633))

(assert (=> b!972443 m!1175633))

(declare-fun m!1175635 () Bool)

(assert (=> b!972443 m!1175635))

(declare-fun m!1175637 () Bool)

(assert (=> b!972435 m!1175637))

(assert (=> b!972436 m!1175633))

(assert (=> b!972436 m!1175633))

(assert (=> b!972436 m!1175635))

(assert (=> b!972444 m!1175637))

(assert (=> d!286758 m!1175541))

(assert (=> d!286758 m!1175523))

(declare-fun m!1175639 () Bool)

(assert (=> b!972442 m!1175639))

(assert (=> b!972445 m!1175637))

(assert (=> b!972445 m!1175637))

(declare-fun m!1175641 () Bool)

(assert (=> b!972445 m!1175641))

(assert (=> b!972445 m!1175633))

(assert (=> b!972445 m!1175641))

(assert (=> b!972445 m!1175633))

(declare-fun m!1175643 () Bool)

(assert (=> b!972445 m!1175643))

(assert (=> bm!61741 m!1175541))

(assert (=> b!972213 d!286758))

(declare-fun d!286764 () Bool)

(assert (=> d!286764 (= (matchR!1249 r!15766 s!10566) (matchRSpec!512 r!15766 s!10566))))

(declare-fun lt!349138 () Unit!15085)

(declare-fun choose!6160 (Regex!2713 List!9943) Unit!15085)

(assert (=> d!286764 (= lt!349138 (choose!6160 r!15766 s!10566))))

(assert (=> d!286764 (validRegex!1182 r!15766)))

(assert (=> d!286764 (= (mainMatchTheorem!512 r!15766 s!10566) lt!349138)))

(declare-fun bs!242523 () Bool)

(assert (= bs!242523 d!286764))

(assert (=> bs!242523 m!1175531))

(assert (=> bs!242523 m!1175529))

(declare-fun m!1175653 () Bool)

(assert (=> bs!242523 m!1175653))

(assert (=> bs!242523 m!1175523))

(assert (=> b!972213 d!286764))

(declare-fun bm!61742 () Bool)

(declare-fun call!61747 () Bool)

(assert (=> bm!61742 (= call!61747 (isEmpty!6238 (_2!6472 lt!349111)))))

(declare-fun b!972456 () Bool)

(declare-fun res!442082 () Bool)

(declare-fun e!626715 () Bool)

(assert (=> b!972456 (=> res!442082 e!626715)))

(assert (=> b!972456 (= res!442082 (not ((_ is ElementMatch!2713) (regTwo!5938 r!15766))))))

(declare-fun e!626716 () Bool)

(assert (=> b!972456 (= e!626716 e!626715)))

(declare-fun b!972457 () Bool)

(declare-fun e!626720 () Bool)

(assert (=> b!972457 (= e!626720 (not (= (head!1792 (_2!6472 lt!349111)) (c!158524 (regTwo!5938 r!15766)))))))

(declare-fun b!972458 () Bool)

(declare-fun res!442076 () Bool)

(declare-fun e!626717 () Bool)

(assert (=> b!972458 (=> (not res!442076) (not e!626717))))

(assert (=> b!972458 (= res!442076 (isEmpty!6238 (tail!1354 (_2!6472 lt!349111))))))

(declare-fun b!972460 () Bool)

(declare-fun res!442079 () Bool)

(assert (=> b!972460 (=> (not res!442079) (not e!626717))))

(assert (=> b!972460 (= res!442079 (not call!61747))))

(declare-fun b!972461 () Bool)

(declare-fun e!626719 () Bool)

(assert (=> b!972461 (= e!626719 e!626716)))

(declare-fun c!158580 () Bool)

(assert (=> b!972461 (= c!158580 ((_ is EmptyLang!2713) (regTwo!5938 r!15766)))))

(declare-fun b!972462 () Bool)

(declare-fun lt!349139 () Bool)

(assert (=> b!972462 (= e!626716 (not lt!349139))))

(declare-fun b!972459 () Bool)

(assert (=> b!972459 (= e!626719 (= lt!349139 call!61747))))

(declare-fun d!286770 () Bool)

(assert (=> d!286770 e!626719))

(declare-fun c!158579 () Bool)

(assert (=> d!286770 (= c!158579 ((_ is EmptyExpr!2713) (regTwo!5938 r!15766)))))

(declare-fun e!626714 () Bool)

(assert (=> d!286770 (= lt!349139 e!626714)))

(declare-fun c!158581 () Bool)

(assert (=> d!286770 (= c!158581 (isEmpty!6238 (_2!6472 lt!349111)))))

(assert (=> d!286770 (validRegex!1182 (regTwo!5938 r!15766))))

(assert (=> d!286770 (= (matchR!1249 (regTwo!5938 r!15766) (_2!6472 lt!349111)) lt!349139)))

(declare-fun b!972463 () Bool)

(declare-fun e!626718 () Bool)

(assert (=> b!972463 (= e!626718 e!626720)))

(declare-fun res!442077 () Bool)

(assert (=> b!972463 (=> res!442077 e!626720)))

(assert (=> b!972463 (= res!442077 call!61747)))

(declare-fun b!972464 () Bool)

(assert (=> b!972464 (= e!626714 (nullable!833 (regTwo!5938 r!15766)))))

(declare-fun b!972465 () Bool)

(declare-fun res!442075 () Bool)

(assert (=> b!972465 (=> res!442075 e!626720)))

(assert (=> b!972465 (= res!442075 (not (isEmpty!6238 (tail!1354 (_2!6472 lt!349111)))))))

(declare-fun b!972466 () Bool)

(assert (=> b!972466 (= e!626717 (= (head!1792 (_2!6472 lt!349111)) (c!158524 (regTwo!5938 r!15766))))))

(declare-fun b!972467 () Bool)

(assert (=> b!972467 (= e!626714 (matchR!1249 (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111))) (tail!1354 (_2!6472 lt!349111))))))

(declare-fun b!972468 () Bool)

(assert (=> b!972468 (= e!626715 e!626718)))

(declare-fun res!442081 () Bool)

(assert (=> b!972468 (=> (not res!442081) (not e!626718))))

(assert (=> b!972468 (= res!442081 (not lt!349139))))

(declare-fun b!972469 () Bool)

(declare-fun res!442078 () Bool)

(assert (=> b!972469 (=> res!442078 e!626715)))

(assert (=> b!972469 (= res!442078 e!626717)))

(declare-fun res!442080 () Bool)

(assert (=> b!972469 (=> (not res!442080) (not e!626717))))

(assert (=> b!972469 (= res!442080 lt!349139)))

(assert (= (and d!286770 c!158581) b!972464))

(assert (= (and d!286770 (not c!158581)) b!972467))

(assert (= (and d!286770 c!158579) b!972459))

(assert (= (and d!286770 (not c!158579)) b!972461))

(assert (= (and b!972461 c!158580) b!972462))

(assert (= (and b!972461 (not c!158580)) b!972456))

(assert (= (and b!972456 (not res!442082)) b!972469))

(assert (= (and b!972469 res!442080) b!972460))

(assert (= (and b!972460 res!442079) b!972458))

(assert (= (and b!972458 res!442076) b!972466))

(assert (= (and b!972469 (not res!442078)) b!972468))

(assert (= (and b!972468 res!442081) b!972463))

(assert (= (and b!972463 (not res!442077)) b!972465))

(assert (= (and b!972465 (not res!442075)) b!972457))

(assert (= (or b!972459 b!972463 b!972460) bm!61742))

(declare-fun m!1175655 () Bool)

(assert (=> b!972465 m!1175655))

(assert (=> b!972465 m!1175655))

(declare-fun m!1175657 () Bool)

(assert (=> b!972465 m!1175657))

(declare-fun m!1175659 () Bool)

(assert (=> b!972457 m!1175659))

(assert (=> b!972458 m!1175655))

(assert (=> b!972458 m!1175655))

(assert (=> b!972458 m!1175657))

(assert (=> b!972466 m!1175659))

(declare-fun m!1175661 () Bool)

(assert (=> d!286770 m!1175661))

(assert (=> d!286770 m!1175557))

(declare-fun m!1175663 () Bool)

(assert (=> b!972464 m!1175663))

(assert (=> b!972467 m!1175659))

(assert (=> b!972467 m!1175659))

(declare-fun m!1175665 () Bool)

(assert (=> b!972467 m!1175665))

(assert (=> b!972467 m!1175655))

(assert (=> b!972467 m!1175665))

(assert (=> b!972467 m!1175655))

(declare-fun m!1175667 () Bool)

(assert (=> b!972467 m!1175667))

(assert (=> bm!61742 m!1175661))

(assert (=> b!972208 d!286770))

(declare-fun d!286772 () Bool)

(assert (=> d!286772 (= (isEmpty!6238 (_1!6472 lt!349111)) ((_ is Nil!9927) (_1!6472 lt!349111)))))

(assert (=> b!972209 d!286772))

(declare-fun d!286774 () Bool)

(assert (=> d!286774 (= (get!3425 lt!349108) (v!19704 lt!349108))))

(assert (=> b!972209 d!286774))

(declare-fun b!972649 () Bool)

(declare-fun e!626825 () Int)

(assert (=> b!972649 (= e!626825 1)))

(declare-fun bm!61791 () Bool)

(declare-fun call!61802 () Int)

(declare-fun call!61800 () Int)

(assert (=> bm!61791 (= call!61802 call!61800)))

(declare-fun b!972650 () Bool)

(declare-fun e!626822 () Bool)

(declare-fun lt!349152 () Int)

(assert (=> b!972650 (= e!626822 (= lt!349152 1))))

(declare-fun b!972651 () Bool)

(declare-fun e!626820 () Bool)

(declare-fun e!626823 () Bool)

(assert (=> b!972651 (= e!626820 e!626823)))

(declare-fun res!442119 () Bool)

(declare-fun call!61797 () Int)

(assert (=> b!972651 (= res!442119 (> lt!349152 call!61797))))

(assert (=> b!972651 (=> (not res!442119) (not e!626823))))

(declare-fun bm!61792 () Bool)

(declare-fun call!61798 () Int)

(declare-fun call!61801 () Int)

(assert (=> bm!61792 (= call!61798 call!61801)))

(declare-fun b!972652 () Bool)

(declare-fun e!626821 () Bool)

(assert (=> b!972652 (= e!626821 e!626820)))

(declare-fun c!158640 () Bool)

(assert (=> b!972652 (= c!158640 ((_ is Union!2713) (regTwo!5938 r!15766)))))

(declare-fun b!972653 () Bool)

(assert (=> b!972653 (= e!626823 (> lt!349152 call!61801))))

(declare-fun b!972654 () Bool)

(declare-fun e!626819 () Int)

(assert (=> b!972654 (= e!626819 e!626825)))

(declare-fun c!158642 () Bool)

(assert (=> b!972654 (= c!158642 ((_ is Concat!4546) (regTwo!5938 r!15766)))))

(declare-fun b!972655 () Bool)

(declare-fun e!626816 () Int)

(declare-fun e!626824 () Int)

(assert (=> b!972655 (= e!626816 e!626824)))

(declare-fun c!158643 () Bool)

(assert (=> b!972655 (= c!158643 ((_ is Star!2713) (regTwo!5938 r!15766)))))

(declare-fun b!972656 () Bool)

(declare-fun e!626817 () Bool)

(assert (=> b!972656 (= e!626817 (> lt!349152 call!61798))))

(declare-fun b!972657 () Bool)

(declare-fun c!158637 () Bool)

(assert (=> b!972657 (= c!158637 ((_ is Star!2713) (regTwo!5938 r!15766)))))

(declare-fun e!626818 () Bool)

(assert (=> b!972657 (= e!626818 e!626822)))

(declare-fun b!972658 () Bool)

(assert (=> b!972658 (= e!626816 1)))

(declare-fun c!158638 () Bool)

(declare-fun bm!61794 () Bool)

(assert (=> bm!61794 (= call!61800 (regexDepth!16 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))

(declare-fun b!972659 () Bool)

(assert (=> b!972659 (= c!158638 ((_ is Union!2713) (regTwo!5938 r!15766)))))

(assert (=> b!972659 (= e!626824 e!626819)))

(declare-fun b!972660 () Bool)

(assert (=> b!972660 (= e!626820 e!626818)))

(declare-fun c!158641 () Bool)

(assert (=> b!972660 (= c!158641 ((_ is Concat!4546) (regTwo!5938 r!15766)))))

(declare-fun bm!61795 () Bool)

(assert (=> bm!61795 (= call!61801 (regexDepth!16 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))))))

(declare-fun bm!61796 () Bool)

(assert (=> bm!61796 (= call!61797 (regexDepth!16 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!972661 () Bool)

(declare-fun call!61796 () Int)

(assert (=> b!972661 (= e!626825 (+ 1 call!61796))))

(declare-fun b!972662 () Bool)

(declare-fun res!442118 () Bool)

(assert (=> b!972662 (=> (not res!442118) (not e!626817))))

(assert (=> b!972662 (= res!442118 (> lt!349152 call!61797))))

(assert (=> b!972662 (= e!626818 e!626817)))

(declare-fun b!972663 () Bool)

(assert (=> b!972663 (= e!626822 (> lt!349152 call!61798))))

(declare-fun b!972664 () Bool)

(assert (=> b!972664 (= e!626819 (+ 1 call!61796))))

(declare-fun bm!61793 () Bool)

(declare-fun call!61799 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!61793 (= call!61796 (maxBigInt!0 call!61802 call!61799))))

(declare-fun d!286776 () Bool)

(assert (=> d!286776 e!626821))

(declare-fun res!442117 () Bool)

(assert (=> d!286776 (=> (not res!442117) (not e!626821))))

(assert (=> d!286776 (= res!442117 (> lt!349152 0))))

(assert (=> d!286776 (= lt!349152 e!626816)))

(declare-fun c!158639 () Bool)

(assert (=> d!286776 (= c!158639 ((_ is ElementMatch!2713) (regTwo!5938 r!15766)))))

(assert (=> d!286776 (= (regexDepth!16 (regTwo!5938 r!15766)) lt!349152)))

(declare-fun bm!61797 () Bool)

(assert (=> bm!61797 (= call!61799 (regexDepth!16 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!972665 () Bool)

(assert (=> b!972665 (= e!626824 (+ 1 call!61800))))

(assert (= (and d!286776 c!158639) b!972658))

(assert (= (and d!286776 (not c!158639)) b!972655))

(assert (= (and b!972655 c!158643) b!972665))

(assert (= (and b!972655 (not c!158643)) b!972659))

(assert (= (and b!972659 c!158638) b!972664))

(assert (= (and b!972659 (not c!158638)) b!972654))

(assert (= (and b!972654 c!158642) b!972661))

(assert (= (and b!972654 (not c!158642)) b!972649))

(assert (= (or b!972664 b!972661) bm!61797))

(assert (= (or b!972664 b!972661) bm!61791))

(assert (= (or b!972664 b!972661) bm!61793))

(assert (= (or b!972665 bm!61791) bm!61794))

(assert (= (and d!286776 res!442117) b!972652))

(assert (= (and b!972652 c!158640) b!972651))

(assert (= (and b!972652 (not c!158640)) b!972660))

(assert (= (and b!972651 res!442119) b!972653))

(assert (= (and b!972660 c!158641) b!972662))

(assert (= (and b!972660 (not c!158641)) b!972657))

(assert (= (and b!972662 res!442118) b!972656))

(assert (= (and b!972657 c!158637) b!972663))

(assert (= (and b!972657 (not c!158637)) b!972650))

(assert (= (or b!972656 b!972663) bm!61792))

(assert (= (or b!972653 bm!61792) bm!61795))

(assert (= (or b!972651 b!972662) bm!61796))

(declare-fun m!1175719 () Bool)

(assert (=> bm!61795 m!1175719))

(declare-fun m!1175721 () Bool)

(assert (=> bm!61794 m!1175721))

(declare-fun m!1175723 () Bool)

(assert (=> bm!61793 m!1175723))

(declare-fun m!1175725 () Bool)

(assert (=> bm!61797 m!1175725))

(declare-fun m!1175727 () Bool)

(assert (=> bm!61796 m!1175727))

(assert (=> b!972211 d!286776))

(declare-fun d!286796 () Bool)

(declare-fun lt!349155 () Int)

(assert (=> d!286796 (>= lt!349155 0)))

(declare-fun e!626828 () Int)

(assert (=> d!286796 (= lt!349155 e!626828)))

(declare-fun c!158646 () Bool)

(assert (=> d!286796 (= c!158646 ((_ is Nil!9927) (_2!6472 lt!349111)))))

(assert (=> d!286796 (= (size!7949 (_2!6472 lt!349111)) lt!349155)))

(declare-fun b!972670 () Bool)

(assert (=> b!972670 (= e!626828 0)))

(declare-fun b!972671 () Bool)

(assert (=> b!972671 (= e!626828 (+ 1 (size!7949 (t!100989 (_2!6472 lt!349111)))))))

(assert (= (and d!286796 c!158646) b!972670))

(assert (= (and d!286796 (not c!158646)) b!972671))

(declare-fun m!1175729 () Bool)

(assert (=> b!972671 m!1175729))

(assert (=> b!972211 d!286796))

(declare-fun b!972672 () Bool)

(declare-fun e!626838 () Int)

(assert (=> b!972672 (= e!626838 1)))

(declare-fun bm!61798 () Bool)

(declare-fun call!61809 () Int)

(declare-fun call!61807 () Int)

(assert (=> bm!61798 (= call!61809 call!61807)))

(declare-fun b!972673 () Bool)

(declare-fun e!626835 () Bool)

(declare-fun lt!349156 () Int)

(assert (=> b!972673 (= e!626835 (= lt!349156 1))))

(declare-fun b!972674 () Bool)

(declare-fun e!626833 () Bool)

(declare-fun e!626836 () Bool)

(assert (=> b!972674 (= e!626833 e!626836)))

(declare-fun res!442122 () Bool)

(declare-fun call!61804 () Int)

(assert (=> b!972674 (= res!442122 (> lt!349156 call!61804))))

(assert (=> b!972674 (=> (not res!442122) (not e!626836))))

(declare-fun bm!61799 () Bool)

(declare-fun call!61805 () Int)

(declare-fun call!61808 () Int)

(assert (=> bm!61799 (= call!61805 call!61808)))

(declare-fun b!972675 () Bool)

(declare-fun e!626834 () Bool)

(assert (=> b!972675 (= e!626834 e!626833)))

(declare-fun c!158650 () Bool)

(assert (=> b!972675 (= c!158650 ((_ is Union!2713) r!15766))))

(declare-fun b!972676 () Bool)

(assert (=> b!972676 (= e!626836 (> lt!349156 call!61808))))

(declare-fun b!972677 () Bool)

(declare-fun e!626832 () Int)

(assert (=> b!972677 (= e!626832 e!626838)))

(declare-fun c!158652 () Bool)

(assert (=> b!972677 (= c!158652 ((_ is Concat!4546) r!15766))))

(declare-fun b!972678 () Bool)

(declare-fun e!626829 () Int)

(declare-fun e!626837 () Int)

(assert (=> b!972678 (= e!626829 e!626837)))

(declare-fun c!158653 () Bool)

(assert (=> b!972678 (= c!158653 ((_ is Star!2713) r!15766))))

(declare-fun b!972679 () Bool)

(declare-fun e!626830 () Bool)

(assert (=> b!972679 (= e!626830 (> lt!349156 call!61805))))

(declare-fun b!972680 () Bool)

(declare-fun c!158647 () Bool)

(assert (=> b!972680 (= c!158647 ((_ is Star!2713) r!15766))))

(declare-fun e!626831 () Bool)

(assert (=> b!972680 (= e!626831 e!626835)))

(declare-fun b!972681 () Bool)

(assert (=> b!972681 (= e!626829 1)))

(declare-fun bm!61801 () Bool)

(declare-fun c!158648 () Bool)

(assert (=> bm!61801 (= call!61807 (regexDepth!16 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))

(declare-fun b!972682 () Bool)

(assert (=> b!972682 (= c!158648 ((_ is Union!2713) r!15766))))

(assert (=> b!972682 (= e!626837 e!626832)))

(declare-fun b!972683 () Bool)

(assert (=> b!972683 (= e!626833 e!626831)))

(declare-fun c!158651 () Bool)

(assert (=> b!972683 (= c!158651 ((_ is Concat!4546) r!15766))))

(declare-fun bm!61802 () Bool)

(assert (=> bm!61802 (= call!61808 (regexDepth!16 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))))))

(declare-fun bm!61803 () Bool)

(assert (=> bm!61803 (= call!61804 (regexDepth!16 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(declare-fun b!972684 () Bool)

(declare-fun call!61803 () Int)

(assert (=> b!972684 (= e!626838 (+ 1 call!61803))))

(declare-fun b!972685 () Bool)

(declare-fun res!442121 () Bool)

(assert (=> b!972685 (=> (not res!442121) (not e!626830))))

(assert (=> b!972685 (= res!442121 (> lt!349156 call!61804))))

(assert (=> b!972685 (= e!626831 e!626830)))

(declare-fun b!972686 () Bool)

(assert (=> b!972686 (= e!626835 (> lt!349156 call!61805))))

(declare-fun b!972687 () Bool)

(assert (=> b!972687 (= e!626832 (+ 1 call!61803))))

(declare-fun bm!61800 () Bool)

(declare-fun call!61806 () Int)

(assert (=> bm!61800 (= call!61803 (maxBigInt!0 call!61809 call!61806))))

(declare-fun d!286798 () Bool)

(assert (=> d!286798 e!626834))

(declare-fun res!442120 () Bool)

(assert (=> d!286798 (=> (not res!442120) (not e!626834))))

(assert (=> d!286798 (= res!442120 (> lt!349156 0))))

(assert (=> d!286798 (= lt!349156 e!626829)))

(declare-fun c!158649 () Bool)

(assert (=> d!286798 (= c!158649 ((_ is ElementMatch!2713) r!15766))))

(assert (=> d!286798 (= (regexDepth!16 r!15766) lt!349156)))

(declare-fun bm!61804 () Bool)

(assert (=> bm!61804 (= call!61806 (regexDepth!16 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))

(declare-fun b!972688 () Bool)

(assert (=> b!972688 (= e!626837 (+ 1 call!61807))))

(assert (= (and d!286798 c!158649) b!972681))

(assert (= (and d!286798 (not c!158649)) b!972678))

(assert (= (and b!972678 c!158653) b!972688))

(assert (= (and b!972678 (not c!158653)) b!972682))

(assert (= (and b!972682 c!158648) b!972687))

(assert (= (and b!972682 (not c!158648)) b!972677))

(assert (= (and b!972677 c!158652) b!972684))

(assert (= (and b!972677 (not c!158652)) b!972672))

(assert (= (or b!972687 b!972684) bm!61804))

(assert (= (or b!972687 b!972684) bm!61798))

(assert (= (or b!972687 b!972684) bm!61800))

(assert (= (or b!972688 bm!61798) bm!61801))

(assert (= (and d!286798 res!442120) b!972675))

(assert (= (and b!972675 c!158650) b!972674))

(assert (= (and b!972675 (not c!158650)) b!972683))

(assert (= (and b!972674 res!442122) b!972676))

(assert (= (and b!972683 c!158651) b!972685))

(assert (= (and b!972683 (not c!158651)) b!972680))

(assert (= (and b!972685 res!442121) b!972679))

(assert (= (and b!972680 c!158647) b!972686))

(assert (= (and b!972680 (not c!158647)) b!972673))

(assert (= (or b!972679 b!972686) bm!61799))

(assert (= (or b!972676 bm!61799) bm!61802))

(assert (= (or b!972674 b!972685) bm!61803))

(declare-fun m!1175731 () Bool)

(assert (=> bm!61802 m!1175731))

(declare-fun m!1175733 () Bool)

(assert (=> bm!61801 m!1175733))

(declare-fun m!1175735 () Bool)

(assert (=> bm!61800 m!1175735))

(declare-fun m!1175737 () Bool)

(assert (=> bm!61804 m!1175737))

(declare-fun m!1175739 () Bool)

(assert (=> bm!61803 m!1175739))

(assert (=> b!972211 d!286798))

(declare-fun d!286800 () Bool)

(declare-fun lt!349157 () Int)

(assert (=> d!286800 (>= lt!349157 0)))

(declare-fun e!626839 () Int)

(assert (=> d!286800 (= lt!349157 e!626839)))

(declare-fun c!158654 () Bool)

(assert (=> d!286800 (= c!158654 ((_ is Nil!9927) s!10566))))

(assert (=> d!286800 (= (size!7949 s!10566) lt!349157)))

(declare-fun b!972689 () Bool)

(assert (=> b!972689 (= e!626839 0)))

(declare-fun b!972690 () Bool)

(assert (=> b!972690 (= e!626839 (+ 1 (size!7949 (t!100989 s!10566))))))

(assert (= (and d!286800 c!158654) b!972689))

(assert (= (and d!286800 (not c!158654)) b!972690))

(declare-fun m!1175741 () Bool)

(assert (=> b!972690 m!1175741))

(assert (=> b!972211 d!286800))

(declare-fun b!972709 () Bool)

(declare-fun res!442134 () Bool)

(declare-fun e!626855 () Bool)

(assert (=> b!972709 (=> res!442134 e!626855)))

(assert (=> b!972709 (= res!442134 (not ((_ is Concat!4546) r!15766)))))

(declare-fun e!626858 () Bool)

(assert (=> b!972709 (= e!626858 e!626855)))

(declare-fun bm!61811 () Bool)

(declare-fun call!61817 () Bool)

(declare-fun c!158659 () Bool)

(assert (=> bm!61811 (= call!61817 (validRegex!1182 (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(declare-fun b!972710 () Bool)

(declare-fun res!442133 () Bool)

(declare-fun e!626859 () Bool)

(assert (=> b!972710 (=> (not res!442133) (not e!626859))))

(assert (=> b!972710 (= res!442133 call!61817)))

(assert (=> b!972710 (= e!626858 e!626859)))

(declare-fun bm!61812 () Bool)

(declare-fun call!61818 () Bool)

(declare-fun c!158660 () Bool)

(assert (=> bm!61812 (= call!61818 (validRegex!1182 (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))))))

(declare-fun b!972711 () Bool)

(declare-fun e!626860 () Bool)

(declare-fun e!626854 () Bool)

(assert (=> b!972711 (= e!626860 e!626854)))

(assert (=> b!972711 (= c!158660 ((_ is Star!2713) r!15766))))

(declare-fun b!972712 () Bool)

(declare-fun e!626857 () Bool)

(assert (=> b!972712 (= e!626857 call!61818)))

(declare-fun bm!61813 () Bool)

(declare-fun call!61816 () Bool)

(assert (=> bm!61813 (= call!61816 call!61818)))

(declare-fun b!972713 () Bool)

(assert (=> b!972713 (= e!626854 e!626858)))

(assert (=> b!972713 (= c!158659 ((_ is Union!2713) r!15766))))

(declare-fun b!972714 () Bool)

(assert (=> b!972714 (= e!626859 call!61816)))

(declare-fun d!286802 () Bool)

(declare-fun res!442136 () Bool)

(assert (=> d!286802 (=> res!442136 e!626860)))

(assert (=> d!286802 (= res!442136 ((_ is ElementMatch!2713) r!15766))))

(assert (=> d!286802 (= (validRegex!1182 r!15766) e!626860)))

(declare-fun b!972715 () Bool)

(declare-fun e!626856 () Bool)

(assert (=> b!972715 (= e!626856 call!61816)))

(declare-fun b!972716 () Bool)

(assert (=> b!972716 (= e!626854 e!626857)))

(declare-fun res!442135 () Bool)

(assert (=> b!972716 (= res!442135 (not (nullable!833 (reg!3042 r!15766))))))

(assert (=> b!972716 (=> (not res!442135) (not e!626857))))

(declare-fun b!972717 () Bool)

(assert (=> b!972717 (= e!626855 e!626856)))

(declare-fun res!442137 () Bool)

(assert (=> b!972717 (=> (not res!442137) (not e!626856))))

(assert (=> b!972717 (= res!442137 call!61817)))

(assert (= (and d!286802 (not res!442136)) b!972711))

(assert (= (and b!972711 c!158660) b!972716))

(assert (= (and b!972711 (not c!158660)) b!972713))

(assert (= (and b!972716 res!442135) b!972712))

(assert (= (and b!972713 c!158659) b!972710))

(assert (= (and b!972713 (not c!158659)) b!972709))

(assert (= (and b!972710 res!442133) b!972714))

(assert (= (and b!972709 (not res!442134)) b!972717))

(assert (= (and b!972717 res!442137) b!972715))

(assert (= (or b!972714 b!972715) bm!61813))

(assert (= (or b!972710 b!972717) bm!61811))

(assert (= (or b!972712 bm!61813) bm!61812))

(declare-fun m!1175743 () Bool)

(assert (=> bm!61811 m!1175743))

(declare-fun m!1175745 () Bool)

(assert (=> bm!61812 m!1175745))

(declare-fun m!1175747 () Bool)

(assert (=> b!972716 m!1175747))

(assert (=> start!86414 d!286802))

(declare-fun d!286804 () Bool)

(assert (=> d!286804 (= (isEmpty!6238 s!10566) ((_ is Nil!9927) s!10566))))

(assert (=> b!972207 d!286804))

(declare-fun b!972736 () Bool)

(declare-fun e!626871 () Option!2288)

(declare-fun e!626873 () Option!2288)

(assert (=> b!972736 (= e!626871 e!626873)))

(declare-fun c!158666 () Bool)

(assert (=> b!972736 (= c!158666 ((_ is Nil!9927) s!10566))))

(declare-fun b!972737 () Bool)

(declare-fun res!442149 () Bool)

(declare-fun e!626875 () Bool)

(assert (=> b!972737 (=> (not res!442149) (not e!626875))))

(declare-fun lt!349165 () Option!2288)

(assert (=> b!972737 (= res!442149 (matchR!1249 (regTwo!5938 r!15766) (_2!6472 (get!3425 lt!349165))))))

(declare-fun b!972738 () Bool)

(declare-fun e!626874 () Bool)

(assert (=> b!972738 (= e!626874 (not (isDefined!1930 lt!349165)))))

(declare-fun b!972739 () Bool)

(declare-fun e!626872 () Bool)

(assert (=> b!972739 (= e!626872 (matchR!1249 (regTwo!5938 r!15766) s!10566))))

(declare-fun b!972740 () Bool)

(declare-fun lt!349166 () Unit!15085)

(declare-fun lt!349164 () Unit!15085)

(assert (=> b!972740 (= lt!349166 lt!349164)))

(declare-fun ++!2689 (List!9943 List!9943) List!9943)

(assert (=> b!972740 (= (++!2689 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)) (t!100989 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!290 (List!9943 C!5996 List!9943 List!9943) Unit!15085)

(assert (=> b!972740 (= lt!349164 (lemmaMoveElementToOtherListKeepsConcatEq!290 Nil!9927 (h!15328 s!10566) (t!100989 s!10566) s!10566))))

(assert (=> b!972740 (= e!626873 (findConcatSeparation!394 EmptyExpr!2713 (regTwo!5938 r!15766) (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)) (t!100989 s!10566) s!10566))))

(declare-fun b!972741 () Bool)

(declare-fun res!442148 () Bool)

(assert (=> b!972741 (=> (not res!442148) (not e!626875))))

(assert (=> b!972741 (= res!442148 (matchR!1249 EmptyExpr!2713 (_1!6472 (get!3425 lt!349165))))))

(declare-fun d!286806 () Bool)

(assert (=> d!286806 e!626874))

(declare-fun res!442151 () Bool)

(assert (=> d!286806 (=> res!442151 e!626874)))

(assert (=> d!286806 (= res!442151 e!626875)))

(declare-fun res!442150 () Bool)

(assert (=> d!286806 (=> (not res!442150) (not e!626875))))

(assert (=> d!286806 (= res!442150 (isDefined!1930 lt!349165))))

(assert (=> d!286806 (= lt!349165 e!626871)))

(declare-fun c!158665 () Bool)

(assert (=> d!286806 (= c!158665 e!626872)))

(declare-fun res!442152 () Bool)

(assert (=> d!286806 (=> (not res!442152) (not e!626872))))

(assert (=> d!286806 (= res!442152 (matchR!1249 EmptyExpr!2713 Nil!9927))))

(assert (=> d!286806 (validRegex!1182 EmptyExpr!2713)))

(assert (=> d!286806 (= (findConcatSeparation!394 EmptyExpr!2713 (regTwo!5938 r!15766) Nil!9927 s!10566 s!10566) lt!349165)))

(declare-fun b!972742 () Bool)

(assert (=> b!972742 (= e!626873 None!2287)))

(declare-fun b!972743 () Bool)

(assert (=> b!972743 (= e!626871 (Some!2287 (tuple2!11293 Nil!9927 s!10566)))))

(declare-fun b!972744 () Bool)

(assert (=> b!972744 (= e!626875 (= (++!2689 (_1!6472 (get!3425 lt!349165)) (_2!6472 (get!3425 lt!349165))) s!10566))))

(assert (= (and d!286806 res!442152) b!972739))

(assert (= (and d!286806 c!158665) b!972743))

(assert (= (and d!286806 (not c!158665)) b!972736))

(assert (= (and b!972736 c!158666) b!972742))

(assert (= (and b!972736 (not c!158666)) b!972740))

(assert (= (and d!286806 res!442150) b!972741))

(assert (= (and b!972741 res!442148) b!972737))

(assert (= (and b!972737 res!442149) b!972744))

(assert (= (and d!286806 (not res!442151)) b!972738))

(declare-fun m!1175749 () Bool)

(assert (=> b!972739 m!1175749))

(declare-fun m!1175751 () Bool)

(assert (=> b!972738 m!1175751))

(declare-fun m!1175753 () Bool)

(assert (=> b!972740 m!1175753))

(assert (=> b!972740 m!1175753))

(declare-fun m!1175755 () Bool)

(assert (=> b!972740 m!1175755))

(declare-fun m!1175757 () Bool)

(assert (=> b!972740 m!1175757))

(assert (=> b!972740 m!1175753))

(declare-fun m!1175759 () Bool)

(assert (=> b!972740 m!1175759))

(declare-fun m!1175761 () Bool)

(assert (=> b!972744 m!1175761))

(declare-fun m!1175763 () Bool)

(assert (=> b!972744 m!1175763))

(assert (=> b!972737 m!1175761))

(declare-fun m!1175765 () Bool)

(assert (=> b!972737 m!1175765))

(assert (=> b!972741 m!1175761))

(declare-fun m!1175767 () Bool)

(assert (=> b!972741 m!1175767))

(assert (=> d!286806 m!1175751))

(declare-fun m!1175769 () Bool)

(assert (=> d!286806 m!1175769))

(declare-fun m!1175771 () Bool)

(assert (=> d!286806 m!1175771))

(assert (=> b!972207 d!286806))

(declare-fun bs!242536 () Bool)

(declare-fun d!286808 () Bool)

(assert (= bs!242536 (and d!286808 b!972207)))

(declare-fun lambda!34508 () Int)

(assert (=> bs!242536 (= lambda!34508 lambda!34481)))

(assert (=> bs!242536 (not (= lambda!34508 lambda!34482))))

(declare-fun bs!242537 () Bool)

(assert (= bs!242537 (and d!286808 b!972355)))

(assert (=> bs!242537 (not (= lambda!34508 lambda!34493))))

(declare-fun bs!242538 () Bool)

(assert (= bs!242538 (and d!286808 b!972359)))

(assert (=> bs!242538 (not (= lambda!34508 lambda!34494))))

(assert (=> d!286808 true))

(assert (=> d!286808 true))

(assert (=> d!286808 true))

(assert (=> d!286808 (= (isDefined!1930 (findConcatSeparation!394 EmptyExpr!2713 (regTwo!5938 r!15766) Nil!9927 s!10566 s!10566)) (Exists!452 lambda!34508))))

(declare-fun lt!349169 () Unit!15085)

(declare-fun choose!6161 (Regex!2713 Regex!2713 List!9943) Unit!15085)

(assert (=> d!286808 (= lt!349169 (choose!6161 EmptyExpr!2713 (regTwo!5938 r!15766) s!10566))))

(assert (=> d!286808 (validRegex!1182 EmptyExpr!2713)))

(assert (=> d!286808 (= (lemmaFindConcatSeparationEquivalentToExists!394 EmptyExpr!2713 (regTwo!5938 r!15766) s!10566) lt!349169)))

(declare-fun bs!242539 () Bool)

(assert (= bs!242539 d!286808))

(declare-fun m!1175773 () Bool)

(assert (=> bs!242539 m!1175773))

(assert (=> bs!242539 m!1175771))

(assert (=> bs!242539 m!1175547))

(declare-fun m!1175775 () Bool)

(assert (=> bs!242539 m!1175775))

(assert (=> bs!242539 m!1175547))

(declare-fun m!1175777 () Bool)

(assert (=> bs!242539 m!1175777))

(assert (=> b!972207 d!286808))

(declare-fun bs!242540 () Bool)

(declare-fun d!286810 () Bool)

(assert (= bs!242540 (and d!286810 d!286808)))

(declare-fun lambda!34513 () Int)

(assert (=> bs!242540 (= lambda!34513 lambda!34508)))

(declare-fun bs!242541 () Bool)

(assert (= bs!242541 (and d!286810 b!972207)))

(assert (=> bs!242541 (= lambda!34513 lambda!34481)))

(assert (=> bs!242541 (not (= lambda!34513 lambda!34482))))

(declare-fun bs!242542 () Bool)

(assert (= bs!242542 (and d!286810 b!972355)))

(assert (=> bs!242542 (not (= lambda!34513 lambda!34493))))

(declare-fun bs!242543 () Bool)

(assert (= bs!242543 (and d!286810 b!972359)))

(assert (=> bs!242543 (not (= lambda!34513 lambda!34494))))

(assert (=> d!286810 true))

(assert (=> d!286810 true))

(assert (=> d!286810 true))

(declare-fun lambda!34514 () Int)

(assert (=> bs!242540 (not (= lambda!34514 lambda!34508))))

(assert (=> bs!242541 (= lambda!34514 lambda!34482)))

(assert (=> bs!242542 (not (= lambda!34514 lambda!34493))))

(assert (=> bs!242543 (= (= EmptyExpr!2713 (regOne!5938 r!15766)) (= lambda!34514 lambda!34494))))

(assert (=> bs!242541 (not (= lambda!34514 lambda!34481))))

(declare-fun bs!242544 () Bool)

(assert (= bs!242544 d!286810))

(assert (=> bs!242544 (not (= lambda!34514 lambda!34513))))

(assert (=> d!286810 true))

(assert (=> d!286810 true))

(assert (=> d!286810 true))

(assert (=> d!286810 (= (Exists!452 lambda!34513) (Exists!452 lambda!34514))))

(declare-fun lt!349172 () Unit!15085)

(declare-fun choose!6162 (Regex!2713 Regex!2713 List!9943) Unit!15085)

(assert (=> d!286810 (= lt!349172 (choose!6162 EmptyExpr!2713 (regTwo!5938 r!15766) s!10566))))

(assert (=> d!286810 (validRegex!1182 EmptyExpr!2713)))

(assert (=> d!286810 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!218 EmptyExpr!2713 (regTwo!5938 r!15766) s!10566) lt!349172)))

(declare-fun m!1175779 () Bool)

(assert (=> bs!242544 m!1175779))

(declare-fun m!1175781 () Bool)

(assert (=> bs!242544 m!1175781))

(declare-fun m!1175783 () Bool)

(assert (=> bs!242544 m!1175783))

(assert (=> bs!242544 m!1175771))

(assert (=> b!972207 d!286810))

(declare-fun d!286812 () Bool)

(declare-fun isEmpty!6240 (Option!2288) Bool)

(assert (=> d!286812 (= (isDefined!1930 lt!349108) (not (isEmpty!6240 lt!349108)))))

(declare-fun bs!242545 () Bool)

(assert (= bs!242545 d!286812))

(declare-fun m!1175785 () Bool)

(assert (=> bs!242545 m!1175785))

(assert (=> b!972207 d!286812))

(declare-fun d!286814 () Bool)

(declare-fun choose!6163 (Int) Bool)

(assert (=> d!286814 (= (Exists!452 lambda!34481) (choose!6163 lambda!34481))))

(declare-fun bs!242546 () Bool)

(assert (= bs!242546 d!286814))

(declare-fun m!1175787 () Bool)

(assert (=> bs!242546 m!1175787))

(assert (=> b!972207 d!286814))

(declare-fun d!286816 () Bool)

(assert (=> d!286816 (= (Exists!452 lambda!34482) (choose!6163 lambda!34482))))

(declare-fun bs!242547 () Bool)

(assert (= bs!242547 d!286816))

(declare-fun m!1175789 () Bool)

(assert (=> bs!242547 m!1175789))

(assert (=> b!972207 d!286816))

(declare-fun b!972757 () Bool)

(declare-fun res!442166 () Bool)

(declare-fun e!626883 () Bool)

(assert (=> b!972757 (=> res!442166 e!626883)))

(assert (=> b!972757 (= res!442166 (not ((_ is Concat!4546) (regTwo!5938 r!15766))))))

(declare-fun e!626886 () Bool)

(assert (=> b!972757 (= e!626886 e!626883)))

(declare-fun bm!61814 () Bool)

(declare-fun call!61820 () Bool)

(declare-fun c!158667 () Bool)

(assert (=> bm!61814 (= call!61820 (validRegex!1182 (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!972758 () Bool)

(declare-fun res!442165 () Bool)

(declare-fun e!626887 () Bool)

(assert (=> b!972758 (=> (not res!442165) (not e!626887))))

(assert (=> b!972758 (= res!442165 call!61820)))

(assert (=> b!972758 (= e!626886 e!626887)))

(declare-fun bm!61815 () Bool)

(declare-fun c!158668 () Bool)

(declare-fun call!61821 () Bool)

(assert (=> bm!61815 (= call!61821 (validRegex!1182 (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))))))

(declare-fun b!972759 () Bool)

(declare-fun e!626888 () Bool)

(declare-fun e!626882 () Bool)

(assert (=> b!972759 (= e!626888 e!626882)))

(assert (=> b!972759 (= c!158668 ((_ is Star!2713) (regTwo!5938 r!15766)))))

(declare-fun b!972760 () Bool)

(declare-fun e!626885 () Bool)

(assert (=> b!972760 (= e!626885 call!61821)))

(declare-fun bm!61816 () Bool)

(declare-fun call!61819 () Bool)

(assert (=> bm!61816 (= call!61819 call!61821)))

(declare-fun b!972761 () Bool)

(assert (=> b!972761 (= e!626882 e!626886)))

(assert (=> b!972761 (= c!158667 ((_ is Union!2713) (regTwo!5938 r!15766)))))

(declare-fun b!972762 () Bool)

(assert (=> b!972762 (= e!626887 call!61819)))

(declare-fun d!286818 () Bool)

(declare-fun res!442168 () Bool)

(assert (=> d!286818 (=> res!442168 e!626888)))

(assert (=> d!286818 (= res!442168 ((_ is ElementMatch!2713) (regTwo!5938 r!15766)))))

(assert (=> d!286818 (= (validRegex!1182 (regTwo!5938 r!15766)) e!626888)))

(declare-fun b!972763 () Bool)

(declare-fun e!626884 () Bool)

(assert (=> b!972763 (= e!626884 call!61819)))

(declare-fun b!972764 () Bool)

(assert (=> b!972764 (= e!626882 e!626885)))

(declare-fun res!442167 () Bool)

(assert (=> b!972764 (= res!442167 (not (nullable!833 (reg!3042 (regTwo!5938 r!15766)))))))

(assert (=> b!972764 (=> (not res!442167) (not e!626885))))

(declare-fun b!972765 () Bool)

(assert (=> b!972765 (= e!626883 e!626884)))

(declare-fun res!442169 () Bool)

(assert (=> b!972765 (=> (not res!442169) (not e!626884))))

(assert (=> b!972765 (= res!442169 call!61820)))

(assert (= (and d!286818 (not res!442168)) b!972759))

(assert (= (and b!972759 c!158668) b!972764))

(assert (= (and b!972759 (not c!158668)) b!972761))

(assert (= (and b!972764 res!442167) b!972760))

(assert (= (and b!972761 c!158667) b!972758))

(assert (= (and b!972761 (not c!158667)) b!972757))

(assert (= (and b!972758 res!442165) b!972762))

(assert (= (and b!972757 (not res!442166)) b!972765))

(assert (= (and b!972765 res!442169) b!972763))

(assert (= (or b!972762 b!972763) bm!61816))

(assert (= (or b!972758 b!972765) bm!61814))

(assert (= (or b!972760 bm!61816) bm!61815))

(declare-fun m!1175791 () Bool)

(assert (=> bm!61814 m!1175791))

(declare-fun m!1175793 () Bool)

(assert (=> bm!61815 m!1175793))

(declare-fun m!1175795 () Bool)

(assert (=> b!972764 m!1175795))

(assert (=> b!972212 d!286818))

(declare-fun bs!242548 () Bool)

(declare-fun b!972771 () Bool)

(assert (= bs!242548 (and b!972771 d!286808)))

(declare-fun lambda!34515 () Int)

(assert (=> bs!242548 (not (= lambda!34515 lambda!34508))))

(declare-fun bs!242549 () Bool)

(assert (= bs!242549 (and b!972771 d!286810)))

(assert (=> bs!242549 (not (= lambda!34515 lambda!34514))))

(declare-fun bs!242550 () Bool)

(assert (= bs!242550 (and b!972771 b!972207)))

(assert (=> bs!242550 (not (= lambda!34515 lambda!34482))))

(declare-fun bs!242551 () Bool)

(assert (= bs!242551 (and b!972771 b!972355)))

(assert (=> bs!242551 (= (and (= (_2!6472 lt!349111) s!10566) (= (reg!3042 (regTwo!5938 r!15766)) (reg!3042 r!15766)) (= (regTwo!5938 r!15766) r!15766)) (= lambda!34515 lambda!34493))))

(declare-fun bs!242552 () Bool)

(assert (= bs!242552 (and b!972771 b!972359)))

(assert (=> bs!242552 (not (= lambda!34515 lambda!34494))))

(assert (=> bs!242550 (not (= lambda!34515 lambda!34481))))

(assert (=> bs!242549 (not (= lambda!34515 lambda!34513))))

(assert (=> b!972771 true))

(assert (=> b!972771 true))

(declare-fun bs!242553 () Bool)

(declare-fun b!972775 () Bool)

(assert (= bs!242553 (and b!972775 d!286808)))

(declare-fun lambda!34516 () Int)

(assert (=> bs!242553 (not (= lambda!34516 lambda!34508))))

(declare-fun bs!242554 () Bool)

(assert (= bs!242554 (and b!972775 d!286810)))

(assert (=> bs!242554 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regTwo!5938 r!15766)) EmptyExpr!2713) (= (regTwo!5938 (regTwo!5938 r!15766)) (regTwo!5938 r!15766))) (= lambda!34516 lambda!34514))))

(declare-fun bs!242555 () Bool)

(assert (= bs!242555 (and b!972775 b!972207)))

(assert (=> bs!242555 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regTwo!5938 r!15766)) EmptyExpr!2713) (= (regTwo!5938 (regTwo!5938 r!15766)) (regTwo!5938 r!15766))) (= lambda!34516 lambda!34482))))

(declare-fun bs!242556 () Bool)

(assert (= bs!242556 (and b!972775 b!972355)))

(assert (=> bs!242556 (not (= lambda!34516 lambda!34493))))

(declare-fun bs!242557 () Bool)

(assert (= bs!242557 (and b!972775 b!972359)))

(assert (=> bs!242557 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regTwo!5938 r!15766)) (regOne!5938 r!15766)) (= (regTwo!5938 (regTwo!5938 r!15766)) (regTwo!5938 r!15766))) (= lambda!34516 lambda!34494))))

(declare-fun bs!242558 () Bool)

(assert (= bs!242558 (and b!972775 b!972771)))

(assert (=> bs!242558 (not (= lambda!34516 lambda!34515))))

(assert (=> bs!242555 (not (= lambda!34516 lambda!34481))))

(assert (=> bs!242554 (not (= lambda!34516 lambda!34513))))

(assert (=> b!972775 true))

(assert (=> b!972775 true))

(declare-fun b!972766 () Bool)

(declare-fun c!158671 () Bool)

(assert (=> b!972766 (= c!158671 ((_ is ElementMatch!2713) (regTwo!5938 r!15766)))))

(declare-fun e!626893 () Bool)

(declare-fun e!626891 () Bool)

(assert (=> b!972766 (= e!626893 e!626891)))

(declare-fun b!972767 () Bool)

(declare-fun e!626890 () Bool)

(declare-fun e!626894 () Bool)

(assert (=> b!972767 (= e!626890 e!626894)))

(declare-fun c!158670 () Bool)

(assert (=> b!972767 (= c!158670 ((_ is Star!2713) (regTwo!5938 r!15766)))))

(declare-fun b!972768 () Bool)

(declare-fun res!442170 () Bool)

(declare-fun e!626892 () Bool)

(assert (=> b!972768 (=> res!442170 e!626892)))

(declare-fun call!61823 () Bool)

(assert (=> b!972768 (= res!442170 call!61823)))

(assert (=> b!972768 (= e!626894 e!626892)))

(declare-fun bm!61817 () Bool)

(assert (=> bm!61817 (= call!61823 (isEmpty!6238 (_2!6472 lt!349111)))))

(declare-fun d!286820 () Bool)

(declare-fun c!158669 () Bool)

(assert (=> d!286820 (= c!158669 ((_ is EmptyExpr!2713) (regTwo!5938 r!15766)))))

(declare-fun e!626895 () Bool)

(assert (=> d!286820 (= (matchRSpec!512 (regTwo!5938 r!15766) (_2!6472 lt!349111)) e!626895)))

(declare-fun b!972769 () Bool)

(assert (=> b!972769 (= e!626891 (= (_2!6472 lt!349111) (Cons!9927 (c!158524 (regTwo!5938 r!15766)) Nil!9927)))))

(declare-fun call!61822 () Bool)

(declare-fun bm!61818 () Bool)

(assert (=> bm!61818 (= call!61822 (Exists!452 (ite c!158670 lambda!34515 lambda!34516)))))

(declare-fun b!972770 () Bool)

(assert (=> b!972770 (= e!626895 e!626893)))

(declare-fun res!442171 () Bool)

(assert (=> b!972770 (= res!442171 (not ((_ is EmptyLang!2713) (regTwo!5938 r!15766))))))

(assert (=> b!972770 (=> (not res!442171) (not e!626893))))

(assert (=> b!972771 (= e!626892 call!61822)))

(declare-fun b!972772 () Bool)

(declare-fun e!626889 () Bool)

(assert (=> b!972772 (= e!626889 (matchRSpec!512 (regTwo!5939 (regTwo!5938 r!15766)) (_2!6472 lt!349111)))))

(declare-fun b!972773 () Bool)

(declare-fun c!158672 () Bool)

(assert (=> b!972773 (= c!158672 ((_ is Union!2713) (regTwo!5938 r!15766)))))

(assert (=> b!972773 (= e!626891 e!626890)))

(declare-fun b!972774 () Bool)

(assert (=> b!972774 (= e!626890 e!626889)))

(declare-fun res!442172 () Bool)

(assert (=> b!972774 (= res!442172 (matchRSpec!512 (regOne!5939 (regTwo!5938 r!15766)) (_2!6472 lt!349111)))))

(assert (=> b!972774 (=> res!442172 e!626889)))

(assert (=> b!972775 (= e!626894 call!61822)))

(declare-fun b!972776 () Bool)

(assert (=> b!972776 (= e!626895 call!61823)))

(assert (= (and d!286820 c!158669) b!972776))

(assert (= (and d!286820 (not c!158669)) b!972770))

(assert (= (and b!972770 res!442171) b!972766))

(assert (= (and b!972766 c!158671) b!972769))

(assert (= (and b!972766 (not c!158671)) b!972773))

(assert (= (and b!972773 c!158672) b!972774))

(assert (= (and b!972773 (not c!158672)) b!972767))

(assert (= (and b!972774 (not res!442172)) b!972772))

(assert (= (and b!972767 c!158670) b!972768))

(assert (= (and b!972767 (not c!158670)) b!972775))

(assert (= (and b!972768 (not res!442170)) b!972771))

(assert (= (or b!972771 b!972775) bm!61818))

(assert (= (or b!972776 b!972768) bm!61817))

(assert (=> bm!61817 m!1175661))

(declare-fun m!1175797 () Bool)

(assert (=> bm!61818 m!1175797))

(declare-fun m!1175799 () Bool)

(assert (=> b!972772 m!1175799))

(declare-fun m!1175801 () Bool)

(assert (=> b!972774 m!1175801))

(assert (=> b!972212 d!286820))

(declare-fun d!286822 () Bool)

(assert (=> d!286822 (= (matchR!1249 (regTwo!5938 r!15766) (_2!6472 lt!349111)) (matchRSpec!512 (regTwo!5938 r!15766) (_2!6472 lt!349111)))))

(declare-fun lt!349173 () Unit!15085)

(assert (=> d!286822 (= lt!349173 (choose!6160 (regTwo!5938 r!15766) (_2!6472 lt!349111)))))

(assert (=> d!286822 (validRegex!1182 (regTwo!5938 r!15766))))

(assert (=> d!286822 (= (mainMatchTheorem!512 (regTwo!5938 r!15766) (_2!6472 lt!349111)) lt!349173)))

(declare-fun bs!242559 () Bool)

(assert (= bs!242559 d!286822))

(assert (=> bs!242559 m!1175563))

(assert (=> bs!242559 m!1175559))

(declare-fun m!1175803 () Bool)

(assert (=> bs!242559 m!1175803))

(assert (=> bs!242559 m!1175557))

(assert (=> b!972212 d!286822))

(declare-fun b!972790 () Bool)

(declare-fun e!626898 () Bool)

(declare-fun tp!297755 () Bool)

(declare-fun tp!297754 () Bool)

(assert (=> b!972790 (= e!626898 (and tp!297755 tp!297754))))

(declare-fun b!972787 () Bool)

(assert (=> b!972787 (= e!626898 tp_is_empty!5069)))

(declare-fun b!972788 () Bool)

(declare-fun tp!297753 () Bool)

(declare-fun tp!297756 () Bool)

(assert (=> b!972788 (= e!626898 (and tp!297753 tp!297756))))

(declare-fun b!972789 () Bool)

(declare-fun tp!297757 () Bool)

(assert (=> b!972789 (= e!626898 tp!297757)))

(assert (=> b!972214 (= tp!297699 e!626898)))

(assert (= (and b!972214 ((_ is ElementMatch!2713) (regOne!5939 r!15766))) b!972787))

(assert (= (and b!972214 ((_ is Concat!4546) (regOne!5939 r!15766))) b!972788))

(assert (= (and b!972214 ((_ is Star!2713) (regOne!5939 r!15766))) b!972789))

(assert (= (and b!972214 ((_ is Union!2713) (regOne!5939 r!15766))) b!972790))

(declare-fun b!972794 () Bool)

(declare-fun e!626899 () Bool)

(declare-fun tp!297760 () Bool)

(declare-fun tp!297759 () Bool)

(assert (=> b!972794 (= e!626899 (and tp!297760 tp!297759))))

(declare-fun b!972791 () Bool)

(assert (=> b!972791 (= e!626899 tp_is_empty!5069)))

(declare-fun b!972792 () Bool)

(declare-fun tp!297758 () Bool)

(declare-fun tp!297761 () Bool)

(assert (=> b!972792 (= e!626899 (and tp!297758 tp!297761))))

(declare-fun b!972793 () Bool)

(declare-fun tp!297762 () Bool)

(assert (=> b!972793 (= e!626899 tp!297762)))

(assert (=> b!972214 (= tp!297702 e!626899)))

(assert (= (and b!972214 ((_ is ElementMatch!2713) (regTwo!5939 r!15766))) b!972791))

(assert (= (and b!972214 ((_ is Concat!4546) (regTwo!5939 r!15766))) b!972792))

(assert (= (and b!972214 ((_ is Star!2713) (regTwo!5939 r!15766))) b!972793))

(assert (= (and b!972214 ((_ is Union!2713) (regTwo!5939 r!15766))) b!972794))

(declare-fun b!972798 () Bool)

(declare-fun e!626900 () Bool)

(declare-fun tp!297765 () Bool)

(declare-fun tp!297764 () Bool)

(assert (=> b!972798 (= e!626900 (and tp!297765 tp!297764))))

(declare-fun b!972795 () Bool)

(assert (=> b!972795 (= e!626900 tp_is_empty!5069)))

(declare-fun b!972796 () Bool)

(declare-fun tp!297763 () Bool)

(declare-fun tp!297766 () Bool)

(assert (=> b!972796 (= e!626900 (and tp!297763 tp!297766))))

(declare-fun b!972797 () Bool)

(declare-fun tp!297767 () Bool)

(assert (=> b!972797 (= e!626900 tp!297767)))

(assert (=> b!972210 (= tp!297700 e!626900)))

(assert (= (and b!972210 ((_ is ElementMatch!2713) (regOne!5938 r!15766))) b!972795))

(assert (= (and b!972210 ((_ is Concat!4546) (regOne!5938 r!15766))) b!972796))

(assert (= (and b!972210 ((_ is Star!2713) (regOne!5938 r!15766))) b!972797))

(assert (= (and b!972210 ((_ is Union!2713) (regOne!5938 r!15766))) b!972798))

(declare-fun b!972802 () Bool)

(declare-fun e!626901 () Bool)

(declare-fun tp!297770 () Bool)

(declare-fun tp!297769 () Bool)

(assert (=> b!972802 (= e!626901 (and tp!297770 tp!297769))))

(declare-fun b!972799 () Bool)

(assert (=> b!972799 (= e!626901 tp_is_empty!5069)))

(declare-fun b!972800 () Bool)

(declare-fun tp!297768 () Bool)

(declare-fun tp!297771 () Bool)

(assert (=> b!972800 (= e!626901 (and tp!297768 tp!297771))))

(declare-fun b!972801 () Bool)

(declare-fun tp!297772 () Bool)

(assert (=> b!972801 (= e!626901 tp!297772)))

(assert (=> b!972210 (= tp!297704 e!626901)))

(assert (= (and b!972210 ((_ is ElementMatch!2713) (regTwo!5938 r!15766))) b!972799))

(assert (= (and b!972210 ((_ is Concat!4546) (regTwo!5938 r!15766))) b!972800))

(assert (= (and b!972210 ((_ is Star!2713) (regTwo!5938 r!15766))) b!972801))

(assert (= (and b!972210 ((_ is Union!2713) (regTwo!5938 r!15766))) b!972802))

(declare-fun b!972806 () Bool)

(declare-fun e!626902 () Bool)

(declare-fun tp!297775 () Bool)

(declare-fun tp!297774 () Bool)

(assert (=> b!972806 (= e!626902 (and tp!297775 tp!297774))))

(declare-fun b!972803 () Bool)

(assert (=> b!972803 (= e!626902 tp_is_empty!5069)))

(declare-fun b!972804 () Bool)

(declare-fun tp!297773 () Bool)

(declare-fun tp!297776 () Bool)

(assert (=> b!972804 (= e!626902 (and tp!297773 tp!297776))))

(declare-fun b!972805 () Bool)

(declare-fun tp!297777 () Bool)

(assert (=> b!972805 (= e!626902 tp!297777)))

(assert (=> b!972206 (= tp!297703 e!626902)))

(assert (= (and b!972206 ((_ is ElementMatch!2713) (reg!3042 r!15766))) b!972803))

(assert (= (and b!972206 ((_ is Concat!4546) (reg!3042 r!15766))) b!972804))

(assert (= (and b!972206 ((_ is Star!2713) (reg!3042 r!15766))) b!972805))

(assert (= (and b!972206 ((_ is Union!2713) (reg!3042 r!15766))) b!972806))

(declare-fun b!972811 () Bool)

(declare-fun e!626905 () Bool)

(declare-fun tp!297780 () Bool)

(assert (=> b!972811 (= e!626905 (and tp_is_empty!5069 tp!297780))))

(assert (=> b!972205 (= tp!297701 e!626905)))

(assert (= (and b!972205 ((_ is Cons!9927) (t!100989 s!10566))) b!972811))

(check-sat (not bm!61818) (not b!972741) (not b!972790) (not bm!61797) (not b!972804) (not d!286816) (not b!972436) (not b!972445) (not bm!61812) (not b!972792) (not bm!61804) (not b!972805) (not b!972356) (not b!972798) (not b!972466) (not bm!61802) (not b!972789) (not b!972744) (not d!286806) (not d!286770) (not bm!61803) (not b!972801) (not b!972435) (not b!972800) (not bm!61815) (not b!972796) (not bm!61737) (not d!286814) (not b!972806) (not d!286810) (not b!972740) (not b!972457) (not b!972443) (not b!972739) (not bm!61800) (not b!972738) (not b!972793) (not bm!61811) (not bm!61795) (not b!972358) (not b!972794) (not b!972788) (not d!286808) (not bm!61794) (not b!972464) (not d!286764) (not b!972671) (not b!972764) (not b!972442) (not b!972467) (not d!286812) (not b!972811) (not b!972737) (not bm!61793) (not bm!61814) (not bm!61796) (not b!972444) (not b!972797) (not bm!61817) (not bm!61741) (not d!286758) (not b!972772) (not b!972802) (not b!972465) (not b!972774) (not bm!61801) (not b!972716) (not bm!61736) tp_is_empty!5069 (not b!972458) (not bm!61742) (not b!972690) (not d!286822))
(check-sat)
(get-model)

(declare-fun d!286824 () Bool)

(declare-fun e!626910 () Bool)

(assert (=> d!286824 e!626910))

(declare-fun res!442177 () Bool)

(assert (=> d!286824 (=> (not res!442177) (not e!626910))))

(declare-fun lt!349176 () List!9943)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1415 (List!9943) (InoxSet C!5996))

(assert (=> d!286824 (= res!442177 (= (content!1415 lt!349176) ((_ map or) (content!1415 (_1!6472 (get!3425 lt!349165))) (content!1415 (_2!6472 (get!3425 lt!349165))))))))

(declare-fun e!626911 () List!9943)

(assert (=> d!286824 (= lt!349176 e!626911)))

(declare-fun c!158675 () Bool)

(assert (=> d!286824 (= c!158675 ((_ is Nil!9927) (_1!6472 (get!3425 lt!349165))))))

(assert (=> d!286824 (= (++!2689 (_1!6472 (get!3425 lt!349165)) (_2!6472 (get!3425 lt!349165))) lt!349176)))

(declare-fun b!972821 () Bool)

(assert (=> b!972821 (= e!626911 (Cons!9927 (h!15328 (_1!6472 (get!3425 lt!349165))) (++!2689 (t!100989 (_1!6472 (get!3425 lt!349165))) (_2!6472 (get!3425 lt!349165)))))))

(declare-fun b!972823 () Bool)

(assert (=> b!972823 (= e!626910 (or (not (= (_2!6472 (get!3425 lt!349165)) Nil!9927)) (= lt!349176 (_1!6472 (get!3425 lt!349165)))))))

(declare-fun b!972822 () Bool)

(declare-fun res!442178 () Bool)

(assert (=> b!972822 (=> (not res!442178) (not e!626910))))

(assert (=> b!972822 (= res!442178 (= (size!7949 lt!349176) (+ (size!7949 (_1!6472 (get!3425 lt!349165))) (size!7949 (_2!6472 (get!3425 lt!349165))))))))

(declare-fun b!972820 () Bool)

(assert (=> b!972820 (= e!626911 (_2!6472 (get!3425 lt!349165)))))

(assert (= (and d!286824 c!158675) b!972820))

(assert (= (and d!286824 (not c!158675)) b!972821))

(assert (= (and d!286824 res!442177) b!972822))

(assert (= (and b!972822 res!442178) b!972823))

(declare-fun m!1175805 () Bool)

(assert (=> d!286824 m!1175805))

(declare-fun m!1175807 () Bool)

(assert (=> d!286824 m!1175807))

(declare-fun m!1175809 () Bool)

(assert (=> d!286824 m!1175809))

(declare-fun m!1175811 () Bool)

(assert (=> b!972821 m!1175811))

(declare-fun m!1175813 () Bool)

(assert (=> b!972822 m!1175813))

(declare-fun m!1175815 () Bool)

(assert (=> b!972822 m!1175815))

(declare-fun m!1175817 () Bool)

(assert (=> b!972822 m!1175817))

(assert (=> b!972744 d!286824))

(declare-fun d!286826 () Bool)

(assert (=> d!286826 (= (get!3425 lt!349165) (v!19704 lt!349165))))

(assert (=> b!972744 d!286826))

(assert (=> bm!61736 d!286804))

(declare-fun b!972824 () Bool)

(declare-fun res!442180 () Bool)

(declare-fun e!626913 () Bool)

(assert (=> b!972824 (=> res!442180 e!626913)))

(assert (=> b!972824 (= res!442180 (not ((_ is Concat!4546) (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))

(declare-fun e!626916 () Bool)

(assert (=> b!972824 (= e!626916 e!626913)))

(declare-fun c!158676 () Bool)

(declare-fun bm!61819 () Bool)

(declare-fun call!61825 () Bool)

(assert (=> bm!61819 (= call!61825 (validRegex!1182 (ite c!158676 (regOne!5939 (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766))) (regOne!5938 (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766))))))))

(declare-fun b!972825 () Bool)

(declare-fun res!442179 () Bool)

(declare-fun e!626917 () Bool)

(assert (=> b!972825 (=> (not res!442179) (not e!626917))))

(assert (=> b!972825 (= res!442179 call!61825)))

(assert (=> b!972825 (= e!626916 e!626917)))

(declare-fun bm!61820 () Bool)

(declare-fun call!61826 () Bool)

(declare-fun c!158677 () Bool)

(assert (=> bm!61820 (= call!61826 (validRegex!1182 (ite c!158677 (reg!3042 (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766))) (ite c!158676 (regTwo!5939 (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766))) (regTwo!5938 (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))))

(declare-fun b!972826 () Bool)

(declare-fun e!626918 () Bool)

(declare-fun e!626912 () Bool)

(assert (=> b!972826 (= e!626918 e!626912)))

(assert (=> b!972826 (= c!158677 ((_ is Star!2713) (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(declare-fun b!972827 () Bool)

(declare-fun e!626915 () Bool)

(assert (=> b!972827 (= e!626915 call!61826)))

(declare-fun bm!61821 () Bool)

(declare-fun call!61824 () Bool)

(assert (=> bm!61821 (= call!61824 call!61826)))

(declare-fun b!972828 () Bool)

(assert (=> b!972828 (= e!626912 e!626916)))

(assert (=> b!972828 (= c!158676 ((_ is Union!2713) (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(declare-fun b!972829 () Bool)

(assert (=> b!972829 (= e!626917 call!61824)))

(declare-fun d!286828 () Bool)

(declare-fun res!442182 () Bool)

(assert (=> d!286828 (=> res!442182 e!626918)))

(assert (=> d!286828 (= res!442182 ((_ is ElementMatch!2713) (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(assert (=> d!286828 (= (validRegex!1182 (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766))) e!626918)))

(declare-fun b!972830 () Bool)

(declare-fun e!626914 () Bool)

(assert (=> b!972830 (= e!626914 call!61824)))

(declare-fun b!972831 () Bool)

(assert (=> b!972831 (= e!626912 e!626915)))

(declare-fun res!442181 () Bool)

(assert (=> b!972831 (= res!442181 (not (nullable!833 (reg!3042 (ite c!158659 (regOne!5939 r!15766) (regOne!5938 r!15766))))))))

(assert (=> b!972831 (=> (not res!442181) (not e!626915))))

(declare-fun b!972832 () Bool)

(assert (=> b!972832 (= e!626913 e!626914)))

(declare-fun res!442183 () Bool)

(assert (=> b!972832 (=> (not res!442183) (not e!626914))))

(assert (=> b!972832 (= res!442183 call!61825)))

(assert (= (and d!286828 (not res!442182)) b!972826))

(assert (= (and b!972826 c!158677) b!972831))

(assert (= (and b!972826 (not c!158677)) b!972828))

(assert (= (and b!972831 res!442181) b!972827))

(assert (= (and b!972828 c!158676) b!972825))

(assert (= (and b!972828 (not c!158676)) b!972824))

(assert (= (and b!972825 res!442179) b!972829))

(assert (= (and b!972824 (not res!442180)) b!972832))

(assert (= (and b!972832 res!442183) b!972830))

(assert (= (or b!972829 b!972830) bm!61821))

(assert (= (or b!972825 b!972832) bm!61819))

(assert (= (or b!972827 bm!61821) bm!61820))

(declare-fun m!1175819 () Bool)

(assert (=> bm!61819 m!1175819))

(declare-fun m!1175821 () Bool)

(assert (=> bm!61820 m!1175821))

(declare-fun m!1175823 () Bool)

(assert (=> b!972831 m!1175823))

(assert (=> bm!61811 d!286828))

(declare-fun d!286830 () Bool)

(assert (=> d!286830 (= (Exists!452 (ite c!158558 lambda!34493 lambda!34494)) (choose!6163 (ite c!158558 lambda!34493 lambda!34494)))))

(declare-fun bs!242560 () Bool)

(assert (= bs!242560 d!286830))

(declare-fun m!1175825 () Bool)

(assert (=> bs!242560 m!1175825))

(assert (=> bm!61737 d!286830))

(declare-fun d!286832 () Bool)

(assert (=> d!286832 (= (Exists!452 lambda!34513) (choose!6163 lambda!34513))))

(declare-fun bs!242561 () Bool)

(assert (= bs!242561 d!286832))

(declare-fun m!1175827 () Bool)

(assert (=> bs!242561 m!1175827))

(assert (=> d!286810 d!286832))

(declare-fun d!286834 () Bool)

(assert (=> d!286834 (= (Exists!452 lambda!34514) (choose!6163 lambda!34514))))

(declare-fun bs!242562 () Bool)

(assert (= bs!242562 d!286834))

(declare-fun m!1175829 () Bool)

(assert (=> bs!242562 m!1175829))

(assert (=> d!286810 d!286834))

(declare-fun bs!242563 () Bool)

(declare-fun d!286836 () Bool)

(assert (= bs!242563 (and d!286836 d!286808)))

(declare-fun lambda!34521 () Int)

(assert (=> bs!242563 (= lambda!34521 lambda!34508)))

(declare-fun bs!242564 () Bool)

(assert (= bs!242564 (and d!286836 d!286810)))

(assert (=> bs!242564 (not (= lambda!34521 lambda!34514))))

(declare-fun bs!242565 () Bool)

(assert (= bs!242565 (and d!286836 b!972775)))

(assert (=> bs!242565 (not (= lambda!34521 lambda!34516))))

(declare-fun bs!242566 () Bool)

(assert (= bs!242566 (and d!286836 b!972207)))

(assert (=> bs!242566 (not (= lambda!34521 lambda!34482))))

(declare-fun bs!242567 () Bool)

(assert (= bs!242567 (and d!286836 b!972355)))

(assert (=> bs!242567 (not (= lambda!34521 lambda!34493))))

(declare-fun bs!242568 () Bool)

(assert (= bs!242568 (and d!286836 b!972359)))

(assert (=> bs!242568 (not (= lambda!34521 lambda!34494))))

(declare-fun bs!242569 () Bool)

(assert (= bs!242569 (and d!286836 b!972771)))

(assert (=> bs!242569 (not (= lambda!34521 lambda!34515))))

(assert (=> bs!242566 (= lambda!34521 lambda!34481)))

(assert (=> bs!242564 (= lambda!34521 lambda!34513)))

(assert (=> d!286836 true))

(assert (=> d!286836 true))

(assert (=> d!286836 true))

(declare-fun lambda!34523 () Int)

(assert (=> bs!242563 (not (= lambda!34523 lambda!34508))))

(assert (=> bs!242564 (= lambda!34523 lambda!34514)))

(assert (=> bs!242565 (= (and (= s!10566 (_2!6472 lt!349111)) (= EmptyExpr!2713 (regOne!5938 (regTwo!5938 r!15766))) (= (regTwo!5938 r!15766) (regTwo!5938 (regTwo!5938 r!15766)))) (= lambda!34523 lambda!34516))))

(assert (=> bs!242566 (= lambda!34523 lambda!34482)))

(assert (=> bs!242567 (not (= lambda!34523 lambda!34493))))

(declare-fun bs!242572 () Bool)

(assert (= bs!242572 d!286836))

(assert (=> bs!242572 (not (= lambda!34523 lambda!34521))))

(assert (=> bs!242568 (= (= EmptyExpr!2713 (regOne!5938 r!15766)) (= lambda!34523 lambda!34494))))

(assert (=> bs!242569 (not (= lambda!34523 lambda!34515))))

(assert (=> bs!242566 (not (= lambda!34523 lambda!34481))))

(assert (=> bs!242564 (not (= lambda!34523 lambda!34513))))

(assert (=> d!286836 true))

(assert (=> d!286836 true))

(assert (=> d!286836 true))

(assert (=> d!286836 (= (Exists!452 lambda!34521) (Exists!452 lambda!34523))))

(assert (=> d!286836 true))

(declare-fun _$90!813 () Unit!15085)

(assert (=> d!286836 (= (choose!6162 EmptyExpr!2713 (regTwo!5938 r!15766) s!10566) _$90!813)))

(declare-fun m!1175831 () Bool)

(assert (=> bs!242572 m!1175831))

(declare-fun m!1175833 () Bool)

(assert (=> bs!242572 m!1175833))

(assert (=> d!286810 d!286836))

(declare-fun d!286840 () Bool)

(assert (=> d!286840 (= (validRegex!1182 EmptyExpr!2713) true)))

(assert (=> d!286810 d!286840))

(declare-fun d!286842 () Bool)

(assert (=> d!286842 (= (isDefined!1930 lt!349165) (not (isEmpty!6240 lt!349165)))))

(declare-fun bs!242578 () Bool)

(assert (= bs!242578 d!286842))

(declare-fun m!1175835 () Bool)

(assert (=> bs!242578 m!1175835))

(assert (=> d!286806 d!286842))

(declare-fun bm!61824 () Bool)

(declare-fun call!61829 () Bool)

(assert (=> bm!61824 (= call!61829 (isEmpty!6238 Nil!9927))))

(declare-fun b!972852 () Bool)

(declare-fun res!442202 () Bool)

(declare-fun e!626931 () Bool)

(assert (=> b!972852 (=> res!442202 e!626931)))

(assert (=> b!972852 (= res!442202 (not ((_ is ElementMatch!2713) EmptyExpr!2713)))))

(declare-fun e!626932 () Bool)

(assert (=> b!972852 (= e!626932 e!626931)))

(declare-fun b!972853 () Bool)

(declare-fun e!626936 () Bool)

(assert (=> b!972853 (= e!626936 (not (= (head!1792 Nil!9927) (c!158524 EmptyExpr!2713))))))

(declare-fun b!972854 () Bool)

(declare-fun res!442196 () Bool)

(declare-fun e!626933 () Bool)

(assert (=> b!972854 (=> (not res!442196) (not e!626933))))

(assert (=> b!972854 (= res!442196 (isEmpty!6238 (tail!1354 Nil!9927)))))

(declare-fun b!972856 () Bool)

(declare-fun res!442199 () Bool)

(assert (=> b!972856 (=> (not res!442199) (not e!626933))))

(assert (=> b!972856 (= res!442199 (not call!61829))))

(declare-fun b!972857 () Bool)

(declare-fun e!626935 () Bool)

(assert (=> b!972857 (= e!626935 e!626932)))

(declare-fun c!158683 () Bool)

(assert (=> b!972857 (= c!158683 ((_ is EmptyLang!2713) EmptyExpr!2713))))

(declare-fun b!972858 () Bool)

(declare-fun lt!349177 () Bool)

(assert (=> b!972858 (= e!626932 (not lt!349177))))

(declare-fun b!972855 () Bool)

(assert (=> b!972855 (= e!626935 (= lt!349177 call!61829))))

(declare-fun d!286844 () Bool)

(assert (=> d!286844 e!626935))

(declare-fun c!158682 () Bool)

(assert (=> d!286844 (= c!158682 ((_ is EmptyExpr!2713) EmptyExpr!2713))))

(declare-fun e!626930 () Bool)

(assert (=> d!286844 (= lt!349177 e!626930)))

(declare-fun c!158684 () Bool)

(assert (=> d!286844 (= c!158684 (isEmpty!6238 Nil!9927))))

(assert (=> d!286844 (validRegex!1182 EmptyExpr!2713)))

(assert (=> d!286844 (= (matchR!1249 EmptyExpr!2713 Nil!9927) lt!349177)))

(declare-fun b!972859 () Bool)

(declare-fun e!626934 () Bool)

(assert (=> b!972859 (= e!626934 e!626936)))

(declare-fun res!442197 () Bool)

(assert (=> b!972859 (=> res!442197 e!626936)))

(assert (=> b!972859 (= res!442197 call!61829)))

(declare-fun b!972860 () Bool)

(assert (=> b!972860 (= e!626930 (nullable!833 EmptyExpr!2713))))

(declare-fun b!972861 () Bool)

(declare-fun res!442195 () Bool)

(assert (=> b!972861 (=> res!442195 e!626936)))

(assert (=> b!972861 (= res!442195 (not (isEmpty!6238 (tail!1354 Nil!9927))))))

(declare-fun b!972862 () Bool)

(assert (=> b!972862 (= e!626933 (= (head!1792 Nil!9927) (c!158524 EmptyExpr!2713)))))

(declare-fun b!972863 () Bool)

(assert (=> b!972863 (= e!626930 (matchR!1249 (derivativeStep!639 EmptyExpr!2713 (head!1792 Nil!9927)) (tail!1354 Nil!9927)))))

(declare-fun b!972864 () Bool)

(assert (=> b!972864 (= e!626931 e!626934)))

(declare-fun res!442201 () Bool)

(assert (=> b!972864 (=> (not res!442201) (not e!626934))))

(assert (=> b!972864 (= res!442201 (not lt!349177))))

(declare-fun b!972865 () Bool)

(declare-fun res!442198 () Bool)

(assert (=> b!972865 (=> res!442198 e!626931)))

(assert (=> b!972865 (= res!442198 e!626933)))

(declare-fun res!442200 () Bool)

(assert (=> b!972865 (=> (not res!442200) (not e!626933))))

(assert (=> b!972865 (= res!442200 lt!349177)))

(assert (= (and d!286844 c!158684) b!972860))

(assert (= (and d!286844 (not c!158684)) b!972863))

(assert (= (and d!286844 c!158682) b!972855))

(assert (= (and d!286844 (not c!158682)) b!972857))

(assert (= (and b!972857 c!158683) b!972858))

(assert (= (and b!972857 (not c!158683)) b!972852))

(assert (= (and b!972852 (not res!442202)) b!972865))

(assert (= (and b!972865 res!442200) b!972856))

(assert (= (and b!972856 res!442199) b!972854))

(assert (= (and b!972854 res!442196) b!972862))

(assert (= (and b!972865 (not res!442198)) b!972864))

(assert (= (and b!972864 res!442201) b!972859))

(assert (= (and b!972859 (not res!442197)) b!972861))

(assert (= (and b!972861 (not res!442195)) b!972853))

(assert (= (or b!972855 b!972859 b!972856) bm!61824))

(declare-fun m!1175837 () Bool)

(assert (=> b!972861 m!1175837))

(assert (=> b!972861 m!1175837))

(declare-fun m!1175839 () Bool)

(assert (=> b!972861 m!1175839))

(declare-fun m!1175841 () Bool)

(assert (=> b!972853 m!1175841))

(assert (=> b!972854 m!1175837))

(assert (=> b!972854 m!1175837))

(assert (=> b!972854 m!1175839))

(assert (=> b!972862 m!1175841))

(declare-fun m!1175843 () Bool)

(assert (=> d!286844 m!1175843))

(assert (=> d!286844 m!1175771))

(declare-fun m!1175845 () Bool)

(assert (=> b!972860 m!1175845))

(assert (=> b!972863 m!1175841))

(assert (=> b!972863 m!1175841))

(declare-fun m!1175847 () Bool)

(assert (=> b!972863 m!1175847))

(assert (=> b!972863 m!1175837))

(assert (=> b!972863 m!1175847))

(assert (=> b!972863 m!1175837))

(declare-fun m!1175849 () Bool)

(assert (=> b!972863 m!1175849))

(assert (=> bm!61824 m!1175843))

(assert (=> d!286806 d!286844))

(assert (=> d!286806 d!286840))

(declare-fun b!972866 () Bool)

(declare-fun res!442204 () Bool)

(declare-fun e!626938 () Bool)

(assert (=> b!972866 (=> res!442204 e!626938)))

(assert (=> b!972866 (= res!442204 (not ((_ is Concat!4546) (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))))

(declare-fun e!626941 () Bool)

(assert (=> b!972866 (= e!626941 e!626938)))

(declare-fun c!158685 () Bool)

(declare-fun call!61831 () Bool)

(declare-fun bm!61825 () Bool)

(assert (=> bm!61825 (= call!61831 (validRegex!1182 (ite c!158685 (regOne!5939 (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))) (regOne!5938 (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))))))))

(declare-fun b!972867 () Bool)

(declare-fun res!442203 () Bool)

(declare-fun e!626942 () Bool)

(assert (=> b!972867 (=> (not res!442203) (not e!626942))))

(assert (=> b!972867 (= res!442203 call!61831)))

(assert (=> b!972867 (= e!626941 e!626942)))

(declare-fun bm!61826 () Bool)

(declare-fun c!158686 () Bool)

(declare-fun call!61832 () Bool)

(assert (=> bm!61826 (= call!61832 (validRegex!1182 (ite c!158686 (reg!3042 (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))) (ite c!158685 (regTwo!5939 (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))) (regTwo!5938 (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))))))

(declare-fun b!972868 () Bool)

(declare-fun e!626943 () Bool)

(declare-fun e!626937 () Bool)

(assert (=> b!972868 (= e!626943 e!626937)))

(assert (=> b!972868 (= c!158686 ((_ is Star!2713) (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))))))

(declare-fun b!972869 () Bool)

(declare-fun e!626940 () Bool)

(assert (=> b!972869 (= e!626940 call!61832)))

(declare-fun bm!61827 () Bool)

(declare-fun call!61830 () Bool)

(assert (=> bm!61827 (= call!61830 call!61832)))

(declare-fun b!972870 () Bool)

(assert (=> b!972870 (= e!626937 e!626941)))

(assert (=> b!972870 (= c!158685 ((_ is Union!2713) (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))))))

(declare-fun b!972871 () Bool)

(assert (=> b!972871 (= e!626942 call!61830)))

(declare-fun d!286846 () Bool)

(declare-fun res!442206 () Bool)

(assert (=> d!286846 (=> res!442206 e!626943)))

(assert (=> d!286846 (= res!442206 ((_ is ElementMatch!2713) (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))))))

(assert (=> d!286846 (= (validRegex!1182 (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))) e!626943)))

(declare-fun b!972872 () Bool)

(declare-fun e!626939 () Bool)

(assert (=> b!972872 (= e!626939 call!61830)))

(declare-fun b!972873 () Bool)

(assert (=> b!972873 (= e!626937 e!626940)))

(declare-fun res!442205 () Bool)

(assert (=> b!972873 (= res!442205 (not (nullable!833 (reg!3042 (ite c!158660 (reg!3042 r!15766) (ite c!158659 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))))))))

(assert (=> b!972873 (=> (not res!442205) (not e!626940))))

(declare-fun b!972874 () Bool)

(assert (=> b!972874 (= e!626938 e!626939)))

(declare-fun res!442207 () Bool)

(assert (=> b!972874 (=> (not res!442207) (not e!626939))))

(assert (=> b!972874 (= res!442207 call!61831)))

(assert (= (and d!286846 (not res!442206)) b!972868))

(assert (= (and b!972868 c!158686) b!972873))

(assert (= (and b!972868 (not c!158686)) b!972870))

(assert (= (and b!972873 res!442205) b!972869))

(assert (= (and b!972870 c!158685) b!972867))

(assert (= (and b!972870 (not c!158685)) b!972866))

(assert (= (and b!972867 res!442203) b!972871))

(assert (= (and b!972866 (not res!442204)) b!972874))

(assert (= (and b!972874 res!442207) b!972872))

(assert (= (or b!972871 b!972872) bm!61827))

(assert (= (or b!972867 b!972874) bm!61825))

(assert (= (or b!972869 bm!61827) bm!61826))

(declare-fun m!1175851 () Bool)

(assert (=> bm!61825 m!1175851))

(declare-fun m!1175853 () Bool)

(assert (=> bm!61826 m!1175853))

(declare-fun m!1175855 () Bool)

(assert (=> b!972873 m!1175855))

(assert (=> bm!61812 d!286846))

(declare-fun d!286848 () Bool)

(assert (=> d!286848 true))

(assert (=> d!286848 true))

(declare-fun res!442210 () Bool)

(assert (=> d!286848 (= (choose!6163 lambda!34481) res!442210)))

(assert (=> d!286814 d!286848))

(declare-fun b!972875 () Bool)

(declare-fun e!626953 () Int)

(assert (=> b!972875 (= e!626953 1)))

(declare-fun bm!61828 () Bool)

(declare-fun call!61839 () Int)

(declare-fun call!61837 () Int)

(assert (=> bm!61828 (= call!61839 call!61837)))

(declare-fun b!972876 () Bool)

(declare-fun e!626950 () Bool)

(declare-fun lt!349178 () Int)

(assert (=> b!972876 (= e!626950 (= lt!349178 1))))

(declare-fun b!972877 () Bool)

(declare-fun e!626948 () Bool)

(declare-fun e!626951 () Bool)

(assert (=> b!972877 (= e!626948 e!626951)))

(declare-fun res!442213 () Bool)

(declare-fun call!61834 () Int)

(assert (=> b!972877 (= res!442213 (> lt!349178 call!61834))))

(assert (=> b!972877 (=> (not res!442213) (not e!626951))))

(declare-fun bm!61829 () Bool)

(declare-fun call!61835 () Int)

(declare-fun call!61838 () Int)

(assert (=> bm!61829 (= call!61835 call!61838)))

(declare-fun b!972878 () Bool)

(declare-fun e!626949 () Bool)

(assert (=> b!972878 (= e!626949 e!626948)))

(declare-fun c!158690 () Bool)

(assert (=> b!972878 (= c!158690 ((_ is Union!2713) (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!972879 () Bool)

(assert (=> b!972879 (= e!626951 (> lt!349178 call!61838))))

(declare-fun b!972880 () Bool)

(declare-fun e!626947 () Int)

(assert (=> b!972880 (= e!626947 e!626953)))

(declare-fun c!158692 () Bool)

(assert (=> b!972880 (= c!158692 ((_ is Concat!4546) (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!972881 () Bool)

(declare-fun e!626944 () Int)

(declare-fun e!626952 () Int)

(assert (=> b!972881 (= e!626944 e!626952)))

(declare-fun c!158693 () Bool)

(assert (=> b!972881 (= c!158693 ((_ is Star!2713) (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!972882 () Bool)

(declare-fun e!626945 () Bool)

(assert (=> b!972882 (= e!626945 (> lt!349178 call!61835))))

(declare-fun b!972883 () Bool)

(declare-fun c!158687 () Bool)

(assert (=> b!972883 (= c!158687 ((_ is Star!2713) (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))

(declare-fun e!626946 () Bool)

(assert (=> b!972883 (= e!626946 e!626950)))

(declare-fun b!972884 () Bool)

(assert (=> b!972884 (= e!626944 1)))

(declare-fun bm!61831 () Bool)

(declare-fun c!158688 () Bool)

(assert (=> bm!61831 (= call!61837 (regexDepth!16 (ite c!158693 (reg!3042 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))) (ite c!158688 (regOne!5939 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))) (regOne!5938 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))))))))

(declare-fun b!972885 () Bool)

(assert (=> b!972885 (= c!158688 ((_ is Union!2713) (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))

(assert (=> b!972885 (= e!626952 e!626947)))

(declare-fun b!972886 () Bool)

(assert (=> b!972886 (= e!626948 e!626946)))

(declare-fun c!158691 () Bool)

(assert (=> b!972886 (= c!158691 ((_ is Concat!4546) (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))

(declare-fun bm!61832 () Bool)

(assert (=> bm!61832 (= call!61838 (regexDepth!16 (ite c!158690 (regTwo!5939 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))) (ite c!158691 (regTwo!5938 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))) (reg!3042 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))))))))

(declare-fun bm!61833 () Bool)

(assert (=> bm!61833 (= call!61834 (regexDepth!16 (ite c!158690 (regOne!5939 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))) (regOne!5938 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))))

(declare-fun b!972887 () Bool)

(declare-fun call!61833 () Int)

(assert (=> b!972887 (= e!626953 (+ 1 call!61833))))

(declare-fun b!972888 () Bool)

(declare-fun res!442212 () Bool)

(assert (=> b!972888 (=> (not res!442212) (not e!626945))))

(assert (=> b!972888 (= res!442212 (> lt!349178 call!61834))))

(assert (=> b!972888 (= e!626946 e!626945)))

(declare-fun b!972889 () Bool)

(assert (=> b!972889 (= e!626950 (> lt!349178 call!61835))))

(declare-fun b!972890 () Bool)

(assert (=> b!972890 (= e!626947 (+ 1 call!61833))))

(declare-fun bm!61830 () Bool)

(declare-fun call!61836 () Int)

(assert (=> bm!61830 (= call!61833 (maxBigInt!0 call!61839 call!61836))))

(declare-fun d!286850 () Bool)

(assert (=> d!286850 e!626949))

(declare-fun res!442211 () Bool)

(assert (=> d!286850 (=> (not res!442211) (not e!626949))))

(assert (=> d!286850 (= res!442211 (> lt!349178 0))))

(assert (=> d!286850 (= lt!349178 e!626944)))

(declare-fun c!158689 () Bool)

(assert (=> d!286850 (= c!158689 ((_ is ElementMatch!2713) (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))

(assert (=> d!286850 (= (regexDepth!16 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))) lt!349178)))

(declare-fun bm!61834 () Bool)

(assert (=> bm!61834 (= call!61836 (regexDepth!16 (ite c!158688 (regTwo!5939 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))) (regTwo!5938 (ite c!158638 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))))

(declare-fun b!972891 () Bool)

(assert (=> b!972891 (= e!626952 (+ 1 call!61837))))

(assert (= (and d!286850 c!158689) b!972884))

(assert (= (and d!286850 (not c!158689)) b!972881))

(assert (= (and b!972881 c!158693) b!972891))

(assert (= (and b!972881 (not c!158693)) b!972885))

(assert (= (and b!972885 c!158688) b!972890))

(assert (= (and b!972885 (not c!158688)) b!972880))

(assert (= (and b!972880 c!158692) b!972887))

(assert (= (and b!972880 (not c!158692)) b!972875))

(assert (= (or b!972890 b!972887) bm!61834))

(assert (= (or b!972890 b!972887) bm!61828))

(assert (= (or b!972890 b!972887) bm!61830))

(assert (= (or b!972891 bm!61828) bm!61831))

(assert (= (and d!286850 res!442211) b!972878))

(assert (= (and b!972878 c!158690) b!972877))

(assert (= (and b!972878 (not c!158690)) b!972886))

(assert (= (and b!972877 res!442213) b!972879))

(assert (= (and b!972886 c!158691) b!972888))

(assert (= (and b!972886 (not c!158691)) b!972883))

(assert (= (and b!972888 res!442212) b!972882))

(assert (= (and b!972883 c!158687) b!972889))

(assert (= (and b!972883 (not c!158687)) b!972876))

(assert (= (or b!972882 b!972889) bm!61829))

(assert (= (or b!972879 bm!61829) bm!61832))

(assert (= (or b!972877 b!972888) bm!61833))

(declare-fun m!1175859 () Bool)

(assert (=> bm!61832 m!1175859))

(declare-fun m!1175863 () Bool)

(assert (=> bm!61831 m!1175863))

(declare-fun m!1175865 () Bool)

(assert (=> bm!61830 m!1175865))

(declare-fun m!1175869 () Bool)

(assert (=> bm!61834 m!1175869))

(declare-fun m!1175871 () Bool)

(assert (=> bm!61833 m!1175871))

(assert (=> bm!61797 d!286850))

(declare-fun d!286854 () Bool)

(assert (=> d!286854 (= (isEmpty!6238 (_2!6472 lt!349111)) ((_ is Nil!9927) (_2!6472 lt!349111)))))

(assert (=> bm!61742 d!286854))

(declare-fun b!972892 () Bool)

(declare-fun e!626963 () Int)

(assert (=> b!972892 (= e!626963 1)))

(declare-fun bm!61835 () Bool)

(declare-fun call!61846 () Int)

(declare-fun call!61844 () Int)

(assert (=> bm!61835 (= call!61846 call!61844)))

(declare-fun b!972893 () Bool)

(declare-fun e!626960 () Bool)

(declare-fun lt!349179 () Int)

(assert (=> b!972893 (= e!626960 (= lt!349179 1))))

(declare-fun b!972894 () Bool)

(declare-fun e!626958 () Bool)

(declare-fun e!626961 () Bool)

(assert (=> b!972894 (= e!626958 e!626961)))

(declare-fun res!442216 () Bool)

(declare-fun call!61841 () Int)

(assert (=> b!972894 (= res!442216 (> lt!349179 call!61841))))

(assert (=> b!972894 (=> (not res!442216) (not e!626961))))

(declare-fun bm!61836 () Bool)

(declare-fun call!61842 () Int)

(declare-fun call!61845 () Int)

(assert (=> bm!61836 (= call!61842 call!61845)))

(declare-fun b!972895 () Bool)

(declare-fun e!626959 () Bool)

(assert (=> b!972895 (= e!626959 e!626958)))

(declare-fun c!158697 () Bool)

(assert (=> b!972895 (= c!158697 ((_ is Union!2713) (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))

(declare-fun b!972896 () Bool)

(assert (=> b!972896 (= e!626961 (> lt!349179 call!61845))))

(declare-fun b!972897 () Bool)

(declare-fun e!626957 () Int)

(assert (=> b!972897 (= e!626957 e!626963)))

(declare-fun c!158699 () Bool)

(assert (=> b!972897 (= c!158699 ((_ is Concat!4546) (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))

(declare-fun b!972898 () Bool)

(declare-fun e!626954 () Int)

(declare-fun e!626962 () Int)

(assert (=> b!972898 (= e!626954 e!626962)))

(declare-fun c!158700 () Bool)

(assert (=> b!972898 (= c!158700 ((_ is Star!2713) (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))

(declare-fun b!972899 () Bool)

(declare-fun e!626955 () Bool)

(assert (=> b!972899 (= e!626955 (> lt!349179 call!61842))))

(declare-fun b!972900 () Bool)

(declare-fun c!158694 () Bool)

(assert (=> b!972900 (= c!158694 ((_ is Star!2713) (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))

(declare-fun e!626956 () Bool)

(assert (=> b!972900 (= e!626956 e!626960)))

(declare-fun b!972901 () Bool)

(assert (=> b!972901 (= e!626954 1)))

(declare-fun bm!61838 () Bool)

(declare-fun c!158695 () Bool)

(assert (=> bm!61838 (= call!61844 (regexDepth!16 (ite c!158700 (reg!3042 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))) (ite c!158695 (regOne!5939 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))) (regOne!5938 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))))))))

(declare-fun b!972902 () Bool)

(assert (=> b!972902 (= c!158695 ((_ is Union!2713) (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))

(assert (=> b!972902 (= e!626962 e!626957)))

(declare-fun b!972903 () Bool)

(assert (=> b!972903 (= e!626958 e!626956)))

(declare-fun c!158698 () Bool)

(assert (=> b!972903 (= c!158698 ((_ is Concat!4546) (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))

(declare-fun bm!61839 () Bool)

(assert (=> bm!61839 (= call!61845 (regexDepth!16 (ite c!158697 (regTwo!5939 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))) (ite c!158698 (regTwo!5938 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))) (reg!3042 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766)))))))))

(declare-fun bm!61840 () Bool)

(assert (=> bm!61840 (= call!61841 (regexDepth!16 (ite c!158697 (regOne!5939 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))) (regOne!5938 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))))

(declare-fun b!972904 () Bool)

(declare-fun call!61840 () Int)

(assert (=> b!972904 (= e!626963 (+ 1 call!61840))))

(declare-fun b!972905 () Bool)

(declare-fun res!442215 () Bool)

(assert (=> b!972905 (=> (not res!442215) (not e!626955))))

(assert (=> b!972905 (= res!442215 (> lt!349179 call!61841))))

(assert (=> b!972905 (= e!626956 e!626955)))

(declare-fun b!972906 () Bool)

(assert (=> b!972906 (= e!626960 (> lt!349179 call!61842))))

(declare-fun b!972907 () Bool)

(assert (=> b!972907 (= e!626957 (+ 1 call!61840))))

(declare-fun bm!61837 () Bool)

(declare-fun call!61843 () Int)

(assert (=> bm!61837 (= call!61840 (maxBigInt!0 call!61846 call!61843))))

(declare-fun d!286856 () Bool)

(assert (=> d!286856 e!626959))

(declare-fun res!442214 () Bool)

(assert (=> d!286856 (=> (not res!442214) (not e!626959))))

(assert (=> d!286856 (= res!442214 (> lt!349179 0))))

(assert (=> d!286856 (= lt!349179 e!626954)))

(declare-fun c!158696 () Bool)

(assert (=> d!286856 (= c!158696 ((_ is ElementMatch!2713) (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))

(assert (=> d!286856 (= (regexDepth!16 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))) lt!349179)))

(declare-fun bm!61841 () Bool)

(assert (=> bm!61841 (= call!61843 (regexDepth!16 (ite c!158695 (regTwo!5939 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))) (regTwo!5938 (ite c!158648 (regTwo!5939 r!15766) (regTwo!5938 r!15766))))))))

(declare-fun b!972908 () Bool)

(assert (=> b!972908 (= e!626962 (+ 1 call!61844))))

(assert (= (and d!286856 c!158696) b!972901))

(assert (= (and d!286856 (not c!158696)) b!972898))

(assert (= (and b!972898 c!158700) b!972908))

(assert (= (and b!972898 (not c!158700)) b!972902))

(assert (= (and b!972902 c!158695) b!972907))

(assert (= (and b!972902 (not c!158695)) b!972897))

(assert (= (and b!972897 c!158699) b!972904))

(assert (= (and b!972897 (not c!158699)) b!972892))

(assert (= (or b!972907 b!972904) bm!61841))

(assert (= (or b!972907 b!972904) bm!61835))

(assert (= (or b!972907 b!972904) bm!61837))

(assert (= (or b!972908 bm!61835) bm!61838))

(assert (= (and d!286856 res!442214) b!972895))

(assert (= (and b!972895 c!158697) b!972894))

(assert (= (and b!972895 (not c!158697)) b!972903))

(assert (= (and b!972894 res!442216) b!972896))

(assert (= (and b!972903 c!158698) b!972905))

(assert (= (and b!972903 (not c!158698)) b!972900))

(assert (= (and b!972905 res!442215) b!972899))

(assert (= (and b!972900 c!158694) b!972906))

(assert (= (and b!972900 (not c!158694)) b!972893))

(assert (= (or b!972899 b!972906) bm!61836))

(assert (= (or b!972896 bm!61836) bm!61839))

(assert (= (or b!972894 b!972905) bm!61840))

(declare-fun m!1175873 () Bool)

(assert (=> bm!61839 m!1175873))

(declare-fun m!1175875 () Bool)

(assert (=> bm!61838 m!1175875))

(declare-fun m!1175877 () Bool)

(assert (=> bm!61837 m!1175877))

(declare-fun m!1175879 () Bool)

(assert (=> bm!61841 m!1175879))

(declare-fun m!1175881 () Bool)

(assert (=> bm!61840 m!1175881))

(assert (=> bm!61804 d!286856))

(assert (=> d!286770 d!286854))

(assert (=> d!286770 d!286818))

(assert (=> bm!61741 d!286804))

(declare-fun d!286858 () Bool)

(assert (=> d!286858 (= (head!1792 (_2!6472 lt!349111)) (h!15328 (_2!6472 lt!349111)))))

(assert (=> b!972457 d!286858))

(declare-fun d!286860 () Bool)

(assert (=> d!286860 (= (head!1792 s!10566) (h!15328 s!10566))))

(assert (=> b!972435 d!286860))

(declare-fun d!286862 () Bool)

(assert (=> d!286862 true))

(assert (=> d!286862 true))

(declare-fun res!442220 () Bool)

(assert (=> d!286862 (= (choose!6163 lambda!34482) res!442220)))

(assert (=> d!286816 d!286862))

(declare-fun d!286864 () Bool)

(declare-fun lt!349181 () Int)

(assert (=> d!286864 (>= lt!349181 0)))

(declare-fun e!626974 () Int)

(assert (=> d!286864 (= lt!349181 e!626974)))

(declare-fun c!158708 () Bool)

(assert (=> d!286864 (= c!158708 ((_ is Nil!9927) (t!100989 (_2!6472 lt!349111))))))

(assert (=> d!286864 (= (size!7949 (t!100989 (_2!6472 lt!349111))) lt!349181)))

(declare-fun b!972926 () Bool)

(assert (=> b!972926 (= e!626974 0)))

(declare-fun b!972927 () Bool)

(assert (=> b!972927 (= e!626974 (+ 1 (size!7949 (t!100989 (t!100989 (_2!6472 lt!349111))))))))

(assert (= (and d!286864 c!158708) b!972926))

(assert (= (and d!286864 (not c!158708)) b!972927))

(declare-fun m!1175883 () Bool)

(assert (=> b!972927 m!1175883))

(assert (=> b!972671 d!286864))

(declare-fun bm!61849 () Bool)

(declare-fun call!61854 () Bool)

(assert (=> bm!61849 (= call!61854 (isEmpty!6238 (_2!6472 (get!3425 lt!349165))))))

(declare-fun b!972928 () Bool)

(declare-fun res!442228 () Bool)

(declare-fun e!626976 () Bool)

(assert (=> b!972928 (=> res!442228 e!626976)))

(assert (=> b!972928 (= res!442228 (not ((_ is ElementMatch!2713) (regTwo!5938 r!15766))))))

(declare-fun e!626977 () Bool)

(assert (=> b!972928 (= e!626977 e!626976)))

(declare-fun b!972929 () Bool)

(declare-fun e!626981 () Bool)

(assert (=> b!972929 (= e!626981 (not (= (head!1792 (_2!6472 (get!3425 lt!349165))) (c!158524 (regTwo!5938 r!15766)))))))

(declare-fun b!972930 () Bool)

(declare-fun res!442222 () Bool)

(declare-fun e!626978 () Bool)

(assert (=> b!972930 (=> (not res!442222) (not e!626978))))

(assert (=> b!972930 (= res!442222 (isEmpty!6238 (tail!1354 (_2!6472 (get!3425 lt!349165)))))))

(declare-fun b!972932 () Bool)

(declare-fun res!442225 () Bool)

(assert (=> b!972932 (=> (not res!442225) (not e!626978))))

(assert (=> b!972932 (= res!442225 (not call!61854))))

(declare-fun b!972933 () Bool)

(declare-fun e!626980 () Bool)

(assert (=> b!972933 (= e!626980 e!626977)))

(declare-fun c!158710 () Bool)

(assert (=> b!972933 (= c!158710 ((_ is EmptyLang!2713) (regTwo!5938 r!15766)))))

(declare-fun b!972934 () Bool)

(declare-fun lt!349182 () Bool)

(assert (=> b!972934 (= e!626977 (not lt!349182))))

(declare-fun b!972931 () Bool)

(assert (=> b!972931 (= e!626980 (= lt!349182 call!61854))))

(declare-fun d!286866 () Bool)

(assert (=> d!286866 e!626980))

(declare-fun c!158709 () Bool)

(assert (=> d!286866 (= c!158709 ((_ is EmptyExpr!2713) (regTwo!5938 r!15766)))))

(declare-fun e!626975 () Bool)

(assert (=> d!286866 (= lt!349182 e!626975)))

(declare-fun c!158711 () Bool)

(assert (=> d!286866 (= c!158711 (isEmpty!6238 (_2!6472 (get!3425 lt!349165))))))

(assert (=> d!286866 (validRegex!1182 (regTwo!5938 r!15766))))

(assert (=> d!286866 (= (matchR!1249 (regTwo!5938 r!15766) (_2!6472 (get!3425 lt!349165))) lt!349182)))

(declare-fun b!972935 () Bool)

(declare-fun e!626979 () Bool)

(assert (=> b!972935 (= e!626979 e!626981)))

(declare-fun res!442223 () Bool)

(assert (=> b!972935 (=> res!442223 e!626981)))

(assert (=> b!972935 (= res!442223 call!61854)))

(declare-fun b!972936 () Bool)

(assert (=> b!972936 (= e!626975 (nullable!833 (regTwo!5938 r!15766)))))

(declare-fun b!972937 () Bool)

(declare-fun res!442221 () Bool)

(assert (=> b!972937 (=> res!442221 e!626981)))

(assert (=> b!972937 (= res!442221 (not (isEmpty!6238 (tail!1354 (_2!6472 (get!3425 lt!349165))))))))

(declare-fun b!972938 () Bool)

(assert (=> b!972938 (= e!626978 (= (head!1792 (_2!6472 (get!3425 lt!349165))) (c!158524 (regTwo!5938 r!15766))))))

(declare-fun b!972939 () Bool)

(assert (=> b!972939 (= e!626975 (matchR!1249 (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 (get!3425 lt!349165)))) (tail!1354 (_2!6472 (get!3425 lt!349165)))))))

(declare-fun b!972940 () Bool)

(assert (=> b!972940 (= e!626976 e!626979)))

(declare-fun res!442227 () Bool)

(assert (=> b!972940 (=> (not res!442227) (not e!626979))))

(assert (=> b!972940 (= res!442227 (not lt!349182))))

(declare-fun b!972941 () Bool)

(declare-fun res!442224 () Bool)

(assert (=> b!972941 (=> res!442224 e!626976)))

(assert (=> b!972941 (= res!442224 e!626978)))

(declare-fun res!442226 () Bool)

(assert (=> b!972941 (=> (not res!442226) (not e!626978))))

(assert (=> b!972941 (= res!442226 lt!349182)))

(assert (= (and d!286866 c!158711) b!972936))

(assert (= (and d!286866 (not c!158711)) b!972939))

(assert (= (and d!286866 c!158709) b!972931))

(assert (= (and d!286866 (not c!158709)) b!972933))

(assert (= (and b!972933 c!158710) b!972934))

(assert (= (and b!972933 (not c!158710)) b!972928))

(assert (= (and b!972928 (not res!442228)) b!972941))

(assert (= (and b!972941 res!442226) b!972932))

(assert (= (and b!972932 res!442225) b!972930))

(assert (= (and b!972930 res!442222) b!972938))

(assert (= (and b!972941 (not res!442224)) b!972940))

(assert (= (and b!972940 res!442227) b!972935))

(assert (= (and b!972935 (not res!442223)) b!972937))

(assert (= (and b!972937 (not res!442221)) b!972929))

(assert (= (or b!972931 b!972935 b!972932) bm!61849))

(declare-fun m!1175895 () Bool)

(assert (=> b!972937 m!1175895))

(assert (=> b!972937 m!1175895))

(declare-fun m!1175897 () Bool)

(assert (=> b!972937 m!1175897))

(declare-fun m!1175899 () Bool)

(assert (=> b!972929 m!1175899))

(assert (=> b!972930 m!1175895))

(assert (=> b!972930 m!1175895))

(assert (=> b!972930 m!1175897))

(assert (=> b!972938 m!1175899))

(declare-fun m!1175901 () Bool)

(assert (=> d!286866 m!1175901))

(assert (=> d!286866 m!1175557))

(assert (=> b!972936 m!1175663))

(assert (=> b!972939 m!1175899))

(assert (=> b!972939 m!1175899))

(declare-fun m!1175903 () Bool)

(assert (=> b!972939 m!1175903))

(assert (=> b!972939 m!1175895))

(assert (=> b!972939 m!1175903))

(assert (=> b!972939 m!1175895))

(declare-fun m!1175905 () Bool)

(assert (=> b!972939 m!1175905))

(assert (=> bm!61849 m!1175901))

(assert (=> b!972737 d!286866))

(assert (=> b!972737 d!286826))

(declare-fun bs!242588 () Bool)

(declare-fun b!972947 () Bool)

(assert (= bs!242588 (and b!972947 d!286808)))

(declare-fun lambda!34525 () Int)

(assert (=> bs!242588 (not (= lambda!34525 lambda!34508))))

(declare-fun bs!242589 () Bool)

(assert (= bs!242589 (and b!972947 d!286836)))

(assert (=> bs!242589 (not (= lambda!34525 lambda!34523))))

(declare-fun bs!242590 () Bool)

(assert (= bs!242590 (and b!972947 d!286810)))

(assert (=> bs!242590 (not (= lambda!34525 lambda!34514))))

(declare-fun bs!242591 () Bool)

(assert (= bs!242591 (and b!972947 b!972775)))

(assert (=> bs!242591 (not (= lambda!34525 lambda!34516))))

(declare-fun bs!242592 () Bool)

(assert (= bs!242592 (and b!972947 b!972207)))

(assert (=> bs!242592 (not (= lambda!34525 lambda!34482))))

(declare-fun bs!242593 () Bool)

(assert (= bs!242593 (and b!972947 b!972355)))

(assert (=> bs!242593 (= (and (= (_2!6472 lt!349111) s!10566) (= (reg!3042 (regTwo!5939 (regTwo!5938 r!15766))) (reg!3042 r!15766)) (= (regTwo!5939 (regTwo!5938 r!15766)) r!15766)) (= lambda!34525 lambda!34493))))

(assert (=> bs!242589 (not (= lambda!34525 lambda!34521))))

(declare-fun bs!242594 () Bool)

(assert (= bs!242594 (and b!972947 b!972359)))

(assert (=> bs!242594 (not (= lambda!34525 lambda!34494))))

(declare-fun bs!242595 () Bool)

(assert (= bs!242595 (and b!972947 b!972771)))

(assert (=> bs!242595 (= (and (= (reg!3042 (regTwo!5939 (regTwo!5938 r!15766))) (reg!3042 (regTwo!5938 r!15766))) (= (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 r!15766))) (= lambda!34525 lambda!34515))))

(assert (=> bs!242592 (not (= lambda!34525 lambda!34481))))

(assert (=> bs!242590 (not (= lambda!34525 lambda!34513))))

(assert (=> b!972947 true))

(assert (=> b!972947 true))

(declare-fun bs!242596 () Bool)

(declare-fun b!972951 () Bool)

(assert (= bs!242596 (and b!972951 d!286808)))

(declare-fun lambda!34526 () Int)

(assert (=> bs!242596 (not (= lambda!34526 lambda!34508))))

(declare-fun bs!242597 () Bool)

(assert (= bs!242597 (and b!972951 d!286836)))

(assert (=> bs!242597 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regTwo!5939 (regTwo!5938 r!15766))) EmptyExpr!2713) (= (regTwo!5938 (regTwo!5939 (regTwo!5938 r!15766))) (regTwo!5938 r!15766))) (= lambda!34526 lambda!34523))))

(declare-fun bs!242598 () Bool)

(assert (= bs!242598 (and b!972951 d!286810)))

(assert (=> bs!242598 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regTwo!5939 (regTwo!5938 r!15766))) EmptyExpr!2713) (= (regTwo!5938 (regTwo!5939 (regTwo!5938 r!15766))) (regTwo!5938 r!15766))) (= lambda!34526 lambda!34514))))

(declare-fun bs!242599 () Bool)

(assert (= bs!242599 (and b!972951 b!972775)))

(assert (=> bs!242599 (= (and (= (regOne!5938 (regTwo!5939 (regTwo!5938 r!15766))) (regOne!5938 (regTwo!5938 r!15766))) (= (regTwo!5938 (regTwo!5939 (regTwo!5938 r!15766))) (regTwo!5938 (regTwo!5938 r!15766)))) (= lambda!34526 lambda!34516))))

(declare-fun bs!242600 () Bool)

(assert (= bs!242600 (and b!972951 b!972207)))

(assert (=> bs!242600 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regTwo!5939 (regTwo!5938 r!15766))) EmptyExpr!2713) (= (regTwo!5938 (regTwo!5939 (regTwo!5938 r!15766))) (regTwo!5938 r!15766))) (= lambda!34526 lambda!34482))))

(declare-fun bs!242601 () Bool)

(assert (= bs!242601 (and b!972951 b!972355)))

(assert (=> bs!242601 (not (= lambda!34526 lambda!34493))))

(assert (=> bs!242597 (not (= lambda!34526 lambda!34521))))

(declare-fun bs!242602 () Bool)

(assert (= bs!242602 (and b!972951 b!972359)))

(assert (=> bs!242602 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regTwo!5939 (regTwo!5938 r!15766))) (regOne!5938 r!15766)) (= (regTwo!5938 (regTwo!5939 (regTwo!5938 r!15766))) (regTwo!5938 r!15766))) (= lambda!34526 lambda!34494))))

(declare-fun bs!242603 () Bool)

(assert (= bs!242603 (and b!972951 b!972771)))

(assert (=> bs!242603 (not (= lambda!34526 lambda!34515))))

(declare-fun bs!242604 () Bool)

(assert (= bs!242604 (and b!972951 b!972947)))

(assert (=> bs!242604 (not (= lambda!34526 lambda!34525))))

(assert (=> bs!242600 (not (= lambda!34526 lambda!34481))))

(assert (=> bs!242598 (not (= lambda!34526 lambda!34513))))

(assert (=> b!972951 true))

(assert (=> b!972951 true))

(declare-fun b!972942 () Bool)

(declare-fun c!158714 () Bool)

(assert (=> b!972942 (= c!158714 ((_ is ElementMatch!2713) (regTwo!5939 (regTwo!5938 r!15766))))))

(declare-fun e!626986 () Bool)

(declare-fun e!626984 () Bool)

(assert (=> b!972942 (= e!626986 e!626984)))

(declare-fun b!972943 () Bool)

(declare-fun e!626983 () Bool)

(declare-fun e!626987 () Bool)

(assert (=> b!972943 (= e!626983 e!626987)))

(declare-fun c!158713 () Bool)

(assert (=> b!972943 (= c!158713 ((_ is Star!2713) (regTwo!5939 (regTwo!5938 r!15766))))))

(declare-fun b!972944 () Bool)

(declare-fun res!442229 () Bool)

(declare-fun e!626985 () Bool)

(assert (=> b!972944 (=> res!442229 e!626985)))

(declare-fun call!61856 () Bool)

(assert (=> b!972944 (= res!442229 call!61856)))

(assert (=> b!972944 (= e!626987 e!626985)))

(declare-fun bm!61850 () Bool)

(assert (=> bm!61850 (= call!61856 (isEmpty!6238 (_2!6472 lt!349111)))))

(declare-fun d!286870 () Bool)

(declare-fun c!158712 () Bool)

(assert (=> d!286870 (= c!158712 ((_ is EmptyExpr!2713) (regTwo!5939 (regTwo!5938 r!15766))))))

(declare-fun e!626988 () Bool)

(assert (=> d!286870 (= (matchRSpec!512 (regTwo!5939 (regTwo!5938 r!15766)) (_2!6472 lt!349111)) e!626988)))

(declare-fun b!972945 () Bool)

(assert (=> b!972945 (= e!626984 (= (_2!6472 lt!349111) (Cons!9927 (c!158524 (regTwo!5939 (regTwo!5938 r!15766))) Nil!9927)))))

(declare-fun bm!61851 () Bool)

(declare-fun call!61855 () Bool)

(assert (=> bm!61851 (= call!61855 (Exists!452 (ite c!158713 lambda!34525 lambda!34526)))))

(declare-fun b!972946 () Bool)

(assert (=> b!972946 (= e!626988 e!626986)))

(declare-fun res!442230 () Bool)

(assert (=> b!972946 (= res!442230 (not ((_ is EmptyLang!2713) (regTwo!5939 (regTwo!5938 r!15766)))))))

(assert (=> b!972946 (=> (not res!442230) (not e!626986))))

(assert (=> b!972947 (= e!626985 call!61855)))

(declare-fun b!972948 () Bool)

(declare-fun e!626982 () Bool)

(assert (=> b!972948 (= e!626982 (matchRSpec!512 (regTwo!5939 (regTwo!5939 (regTwo!5938 r!15766))) (_2!6472 lt!349111)))))

(declare-fun b!972949 () Bool)

(declare-fun c!158715 () Bool)

(assert (=> b!972949 (= c!158715 ((_ is Union!2713) (regTwo!5939 (regTwo!5938 r!15766))))))

(assert (=> b!972949 (= e!626984 e!626983)))

(declare-fun b!972950 () Bool)

(assert (=> b!972950 (= e!626983 e!626982)))

(declare-fun res!442231 () Bool)

(assert (=> b!972950 (= res!442231 (matchRSpec!512 (regOne!5939 (regTwo!5939 (regTwo!5938 r!15766))) (_2!6472 lt!349111)))))

(assert (=> b!972950 (=> res!442231 e!626982)))

(assert (=> b!972951 (= e!626987 call!61855)))

(declare-fun b!972952 () Bool)

(assert (=> b!972952 (= e!626988 call!61856)))

(assert (= (and d!286870 c!158712) b!972952))

(assert (= (and d!286870 (not c!158712)) b!972946))

(assert (= (and b!972946 res!442230) b!972942))

(assert (= (and b!972942 c!158714) b!972945))

(assert (= (and b!972942 (not c!158714)) b!972949))

(assert (= (and b!972949 c!158715) b!972950))

(assert (= (and b!972949 (not c!158715)) b!972943))

(assert (= (and b!972950 (not res!442231)) b!972948))

(assert (= (and b!972943 c!158713) b!972944))

(assert (= (and b!972943 (not c!158713)) b!972951))

(assert (= (and b!972944 (not res!442229)) b!972947))

(assert (= (or b!972947 b!972951) bm!61851))

(assert (= (or b!972952 b!972944) bm!61850))

(assert (=> bm!61850 m!1175661))

(declare-fun m!1175919 () Bool)

(assert (=> bm!61851 m!1175919))

(declare-fun m!1175921 () Bool)

(assert (=> b!972948 m!1175921))

(declare-fun m!1175923 () Bool)

(assert (=> b!972950 m!1175923))

(assert (=> b!972772 d!286870))

(declare-fun d!286880 () Bool)

(assert (=> d!286880 (= (isEmpty!6238 (tail!1354 (_2!6472 lt!349111))) ((_ is Nil!9927) (tail!1354 (_2!6472 lt!349111))))))

(assert (=> b!972465 d!286880))

(declare-fun d!286882 () Bool)

(assert (=> d!286882 (= (tail!1354 (_2!6472 lt!349111)) (t!100989 (_2!6472 lt!349111)))))

(assert (=> b!972465 d!286882))

(declare-fun bm!61861 () Bool)

(declare-fun call!61866 () Bool)

(assert (=> bm!61861 (= call!61866 (isEmpty!6238 s!10566))))

(declare-fun b!972981 () Bool)

(declare-fun res!442245 () Bool)

(declare-fun e!627007 () Bool)

(assert (=> b!972981 (=> res!442245 e!627007)))

(assert (=> b!972981 (= res!442245 (not ((_ is ElementMatch!2713) (regTwo!5938 r!15766))))))

(declare-fun e!627008 () Bool)

(assert (=> b!972981 (= e!627008 e!627007)))

(declare-fun b!972982 () Bool)

(declare-fun e!627012 () Bool)

(assert (=> b!972982 (= e!627012 (not (= (head!1792 s!10566) (c!158524 (regTwo!5938 r!15766)))))))

(declare-fun b!972983 () Bool)

(declare-fun res!442239 () Bool)

(declare-fun e!627009 () Bool)

(assert (=> b!972983 (=> (not res!442239) (not e!627009))))

(assert (=> b!972983 (= res!442239 (isEmpty!6238 (tail!1354 s!10566)))))

(declare-fun b!972985 () Bool)

(declare-fun res!442242 () Bool)

(assert (=> b!972985 (=> (not res!442242) (not e!627009))))

(assert (=> b!972985 (= res!442242 (not call!61866))))

(declare-fun b!972986 () Bool)

(declare-fun e!627011 () Bool)

(assert (=> b!972986 (= e!627011 e!627008)))

(declare-fun c!158728 () Bool)

(assert (=> b!972986 (= c!158728 ((_ is EmptyLang!2713) (regTwo!5938 r!15766)))))

(declare-fun b!972987 () Bool)

(declare-fun lt!349184 () Bool)

(assert (=> b!972987 (= e!627008 (not lt!349184))))

(declare-fun b!972984 () Bool)

(assert (=> b!972984 (= e!627011 (= lt!349184 call!61866))))

(declare-fun d!286884 () Bool)

(assert (=> d!286884 e!627011))

(declare-fun c!158727 () Bool)

(assert (=> d!286884 (= c!158727 ((_ is EmptyExpr!2713) (regTwo!5938 r!15766)))))

(declare-fun e!627006 () Bool)

(assert (=> d!286884 (= lt!349184 e!627006)))

(declare-fun c!158729 () Bool)

(assert (=> d!286884 (= c!158729 (isEmpty!6238 s!10566))))

(assert (=> d!286884 (validRegex!1182 (regTwo!5938 r!15766))))

(assert (=> d!286884 (= (matchR!1249 (regTwo!5938 r!15766) s!10566) lt!349184)))

(declare-fun b!972988 () Bool)

(declare-fun e!627010 () Bool)

(assert (=> b!972988 (= e!627010 e!627012)))

(declare-fun res!442240 () Bool)

(assert (=> b!972988 (=> res!442240 e!627012)))

(assert (=> b!972988 (= res!442240 call!61866)))

(declare-fun b!972989 () Bool)

(assert (=> b!972989 (= e!627006 (nullable!833 (regTwo!5938 r!15766)))))

(declare-fun b!972990 () Bool)

(declare-fun res!442238 () Bool)

(assert (=> b!972990 (=> res!442238 e!627012)))

(assert (=> b!972990 (= res!442238 (not (isEmpty!6238 (tail!1354 s!10566))))))

(declare-fun b!972991 () Bool)

(assert (=> b!972991 (= e!627009 (= (head!1792 s!10566) (c!158524 (regTwo!5938 r!15766))))))

(declare-fun b!972992 () Bool)

(assert (=> b!972992 (= e!627006 (matchR!1249 (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 s!10566)) (tail!1354 s!10566)))))

(declare-fun b!972993 () Bool)

(assert (=> b!972993 (= e!627007 e!627010)))

(declare-fun res!442244 () Bool)

(assert (=> b!972993 (=> (not res!442244) (not e!627010))))

(assert (=> b!972993 (= res!442244 (not lt!349184))))

(declare-fun b!972994 () Bool)

(declare-fun res!442241 () Bool)

(assert (=> b!972994 (=> res!442241 e!627007)))

(assert (=> b!972994 (= res!442241 e!627009)))

(declare-fun res!442243 () Bool)

(assert (=> b!972994 (=> (not res!442243) (not e!627009))))

(assert (=> b!972994 (= res!442243 lt!349184)))

(assert (= (and d!286884 c!158729) b!972989))

(assert (= (and d!286884 (not c!158729)) b!972992))

(assert (= (and d!286884 c!158727) b!972984))

(assert (= (and d!286884 (not c!158727)) b!972986))

(assert (= (and b!972986 c!158728) b!972987))

(assert (= (and b!972986 (not c!158728)) b!972981))

(assert (= (and b!972981 (not res!442245)) b!972994))

(assert (= (and b!972994 res!442243) b!972985))

(assert (= (and b!972985 res!442242) b!972983))

(assert (= (and b!972983 res!442239) b!972991))

(assert (= (and b!972994 (not res!442241)) b!972993))

(assert (= (and b!972993 res!442244) b!972988))

(assert (= (and b!972988 (not res!442240)) b!972990))

(assert (= (and b!972990 (not res!442238)) b!972982))

(assert (= (or b!972984 b!972988 b!972985) bm!61861))

(assert (=> b!972990 m!1175633))

(assert (=> b!972990 m!1175633))

(assert (=> b!972990 m!1175635))

(assert (=> b!972982 m!1175637))

(assert (=> b!972983 m!1175633))

(assert (=> b!972983 m!1175633))

(assert (=> b!972983 m!1175635))

(assert (=> b!972991 m!1175637))

(assert (=> d!286884 m!1175541))

(assert (=> d!286884 m!1175557))

(assert (=> b!972989 m!1175663))

(assert (=> b!972992 m!1175637))

(assert (=> b!972992 m!1175637))

(declare-fun m!1175925 () Bool)

(assert (=> b!972992 m!1175925))

(assert (=> b!972992 m!1175633))

(assert (=> b!972992 m!1175925))

(assert (=> b!972992 m!1175633))

(declare-fun m!1175927 () Bool)

(assert (=> b!972992 m!1175927))

(assert (=> bm!61861 m!1175541))

(assert (=> b!972739 d!286884))

(assert (=> d!286764 d!286758))

(assert (=> d!286764 d!286742))

(declare-fun d!286886 () Bool)

(assert (=> d!286886 (= (matchR!1249 r!15766 s!10566) (matchRSpec!512 r!15766 s!10566))))

(assert (=> d!286886 true))

(declare-fun _$88!3021 () Unit!15085)

(assert (=> d!286886 (= (choose!6160 r!15766 s!10566) _$88!3021)))

(declare-fun bs!242614 () Bool)

(assert (= bs!242614 d!286886))

(assert (=> bs!242614 m!1175531))

(assert (=> bs!242614 m!1175529))

(assert (=> d!286764 d!286886))

(assert (=> d!286764 d!286802))

(declare-fun b!972995 () Bool)

(declare-fun e!627022 () Int)

(assert (=> b!972995 (= e!627022 1)))

(declare-fun bm!61862 () Bool)

(declare-fun call!61873 () Int)

(declare-fun call!61871 () Int)

(assert (=> bm!61862 (= call!61873 call!61871)))

(declare-fun b!972996 () Bool)

(declare-fun e!627019 () Bool)

(declare-fun lt!349185 () Int)

(assert (=> b!972996 (= e!627019 (= lt!349185 1))))

(declare-fun b!972997 () Bool)

(declare-fun e!627017 () Bool)

(declare-fun e!627020 () Bool)

(assert (=> b!972997 (= e!627017 e!627020)))

(declare-fun res!442248 () Bool)

(declare-fun call!61868 () Int)

(assert (=> b!972997 (= res!442248 (> lt!349185 call!61868))))

(assert (=> b!972997 (=> (not res!442248) (not e!627020))))

(declare-fun bm!61863 () Bool)

(declare-fun call!61869 () Int)

(declare-fun call!61872 () Int)

(assert (=> bm!61863 (= call!61869 call!61872)))

(declare-fun b!972998 () Bool)

(declare-fun e!627018 () Bool)

(assert (=> b!972998 (= e!627018 e!627017)))

(declare-fun c!158733 () Bool)

(assert (=> b!972998 (= c!158733 ((_ is Union!2713) (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))

(declare-fun b!972999 () Bool)

(assert (=> b!972999 (= e!627020 (> lt!349185 call!61872))))

(declare-fun b!973000 () Bool)

(declare-fun e!627016 () Int)

(assert (=> b!973000 (= e!627016 e!627022)))

(declare-fun c!158735 () Bool)

(assert (=> b!973000 (= c!158735 ((_ is Concat!4546) (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))

(declare-fun b!973001 () Bool)

(declare-fun e!627013 () Int)

(declare-fun e!627021 () Int)

(assert (=> b!973001 (= e!627013 e!627021)))

(declare-fun c!158736 () Bool)

(assert (=> b!973001 (= c!158736 ((_ is Star!2713) (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))

(declare-fun b!973002 () Bool)

(declare-fun e!627014 () Bool)

(assert (=> b!973002 (= e!627014 (> lt!349185 call!61869))))

(declare-fun c!158730 () Bool)

(declare-fun b!973003 () Bool)

(assert (=> b!973003 (= c!158730 ((_ is Star!2713) (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))

(declare-fun e!627015 () Bool)

(assert (=> b!973003 (= e!627015 e!627019)))

(declare-fun b!973004 () Bool)

(assert (=> b!973004 (= e!627013 1)))

(declare-fun c!158731 () Bool)

(declare-fun bm!61865 () Bool)

(assert (=> bm!61865 (= call!61871 (regexDepth!16 (ite c!158736 (reg!3042 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))) (ite c!158731 (regOne!5939 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))) (regOne!5938 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))))))

(declare-fun b!973005 () Bool)

(assert (=> b!973005 (= c!158731 ((_ is Union!2713) (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))

(assert (=> b!973005 (= e!627021 e!627016)))

(declare-fun b!973006 () Bool)

(assert (=> b!973006 (= e!627017 e!627015)))

(declare-fun c!158734 () Bool)

(assert (=> b!973006 (= c!158734 ((_ is Concat!4546) (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))

(declare-fun bm!61866 () Bool)

(assert (=> bm!61866 (= call!61872 (regexDepth!16 (ite c!158733 (regTwo!5939 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))) (ite c!158734 (regTwo!5938 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))) (reg!3042 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))))))

(declare-fun bm!61867 () Bool)

(assert (=> bm!61867 (= call!61868 (regexDepth!16 (ite c!158733 (regOne!5939 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))) (regOne!5938 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))))

(declare-fun b!973007 () Bool)

(declare-fun call!61867 () Int)

(assert (=> b!973007 (= e!627022 (+ 1 call!61867))))

(declare-fun b!973008 () Bool)

(declare-fun res!442247 () Bool)

(assert (=> b!973008 (=> (not res!442247) (not e!627014))))

(assert (=> b!973008 (= res!442247 (> lt!349185 call!61868))))

(assert (=> b!973008 (= e!627015 e!627014)))

(declare-fun b!973009 () Bool)

(assert (=> b!973009 (= e!627019 (> lt!349185 call!61869))))

(declare-fun b!973010 () Bool)

(assert (=> b!973010 (= e!627016 (+ 1 call!61867))))

(declare-fun bm!61864 () Bool)

(declare-fun call!61870 () Int)

(assert (=> bm!61864 (= call!61867 (maxBigInt!0 call!61873 call!61870))))

(declare-fun d!286888 () Bool)

(assert (=> d!286888 e!627018))

(declare-fun res!442246 () Bool)

(assert (=> d!286888 (=> (not res!442246) (not e!627018))))

(assert (=> d!286888 (= res!442246 (> lt!349185 0))))

(assert (=> d!286888 (= lt!349185 e!627013)))

(declare-fun c!158732 () Bool)

(assert (=> d!286888 (= c!158732 ((_ is ElementMatch!2713) (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))

(assert (=> d!286888 (= (regexDepth!16 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))) lt!349185)))

(declare-fun bm!61868 () Bool)

(assert (=> bm!61868 (= call!61870 (regexDepth!16 (ite c!158731 (regTwo!5939 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))) (regTwo!5938 (ite c!158643 (reg!3042 (regTwo!5938 r!15766)) (ite c!158638 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))))

(declare-fun b!973011 () Bool)

(assert (=> b!973011 (= e!627021 (+ 1 call!61871))))

(assert (= (and d!286888 c!158732) b!973004))

(assert (= (and d!286888 (not c!158732)) b!973001))

(assert (= (and b!973001 c!158736) b!973011))

(assert (= (and b!973001 (not c!158736)) b!973005))

(assert (= (and b!973005 c!158731) b!973010))

(assert (= (and b!973005 (not c!158731)) b!973000))

(assert (= (and b!973000 c!158735) b!973007))

(assert (= (and b!973000 (not c!158735)) b!972995))

(assert (= (or b!973010 b!973007) bm!61868))

(assert (= (or b!973010 b!973007) bm!61862))

(assert (= (or b!973010 b!973007) bm!61864))

(assert (= (or b!973011 bm!61862) bm!61865))

(assert (= (and d!286888 res!442246) b!972998))

(assert (= (and b!972998 c!158733) b!972997))

(assert (= (and b!972998 (not c!158733)) b!973006))

(assert (= (and b!972997 res!442248) b!972999))

(assert (= (and b!973006 c!158734) b!973008))

(assert (= (and b!973006 (not c!158734)) b!973003))

(assert (= (and b!973008 res!442247) b!973002))

(assert (= (and b!973003 c!158730) b!973009))

(assert (= (and b!973003 (not c!158730)) b!972996))

(assert (= (or b!973002 b!973009) bm!61863))

(assert (= (or b!972999 bm!61863) bm!61866))

(assert (= (or b!972997 b!973008) bm!61867))

(declare-fun m!1175929 () Bool)

(assert (=> bm!61866 m!1175929))

(declare-fun m!1175931 () Bool)

(assert (=> bm!61865 m!1175931))

(declare-fun m!1175933 () Bool)

(assert (=> bm!61864 m!1175933))

(declare-fun m!1175935 () Bool)

(assert (=> bm!61868 m!1175935))

(declare-fun m!1175937 () Bool)

(assert (=> bm!61867 m!1175937))

(assert (=> bm!61794 d!286888))

(declare-fun bs!242621 () Bool)

(declare-fun b!973017 () Bool)

(assert (= bs!242621 (and b!973017 d!286808)))

(declare-fun lambda!34529 () Int)

(assert (=> bs!242621 (not (= lambda!34529 lambda!34508))))

(declare-fun bs!242623 () Bool)

(assert (= bs!242623 (and b!973017 d!286836)))

(assert (=> bs!242623 (not (= lambda!34529 lambda!34523))))

(declare-fun bs!242624 () Bool)

(assert (= bs!242624 (and b!973017 d!286810)))

(assert (=> bs!242624 (not (= lambda!34529 lambda!34514))))

(declare-fun bs!242625 () Bool)

(assert (= bs!242625 (and b!973017 b!972775)))

(assert (=> bs!242625 (not (= lambda!34529 lambda!34516))))

(declare-fun bs!242626 () Bool)

(assert (= bs!242626 (and b!973017 b!972951)))

(assert (=> bs!242626 (not (= lambda!34529 lambda!34526))))

(declare-fun bs!242628 () Bool)

(assert (= bs!242628 (and b!973017 b!972207)))

(assert (=> bs!242628 (not (= lambda!34529 lambda!34482))))

(declare-fun bs!242630 () Bool)

(assert (= bs!242630 (and b!973017 b!972355)))

(assert (=> bs!242630 (= (and (= (_2!6472 lt!349111) s!10566) (= (reg!3042 (regOne!5939 (regTwo!5938 r!15766))) (reg!3042 r!15766)) (= (regOne!5939 (regTwo!5938 r!15766)) r!15766)) (= lambda!34529 lambda!34493))))

(assert (=> bs!242623 (not (= lambda!34529 lambda!34521))))

(declare-fun bs!242632 () Bool)

(assert (= bs!242632 (and b!973017 b!972359)))

(assert (=> bs!242632 (not (= lambda!34529 lambda!34494))))

(declare-fun bs!242633 () Bool)

(assert (= bs!242633 (and b!973017 b!972771)))

(assert (=> bs!242633 (= (and (= (reg!3042 (regOne!5939 (regTwo!5938 r!15766))) (reg!3042 (regTwo!5938 r!15766))) (= (regOne!5939 (regTwo!5938 r!15766)) (regTwo!5938 r!15766))) (= lambda!34529 lambda!34515))))

(declare-fun bs!242634 () Bool)

(assert (= bs!242634 (and b!973017 b!972947)))

(assert (=> bs!242634 (= (and (= (reg!3042 (regOne!5939 (regTwo!5938 r!15766))) (reg!3042 (regTwo!5939 (regTwo!5938 r!15766)))) (= (regOne!5939 (regTwo!5938 r!15766)) (regTwo!5939 (regTwo!5938 r!15766)))) (= lambda!34529 lambda!34525))))

(assert (=> bs!242628 (not (= lambda!34529 lambda!34481))))

(assert (=> bs!242624 (not (= lambda!34529 lambda!34513))))

(assert (=> b!973017 true))

(assert (=> b!973017 true))

(declare-fun bs!242635 () Bool)

(declare-fun b!973021 () Bool)

(assert (= bs!242635 (and b!973021 d!286808)))

(declare-fun lambda!34530 () Int)

(assert (=> bs!242635 (not (= lambda!34530 lambda!34508))))

(declare-fun bs!242636 () Bool)

(assert (= bs!242636 (and b!973021 d!286836)))

(assert (=> bs!242636 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regOne!5939 (regTwo!5938 r!15766))) EmptyExpr!2713) (= (regTwo!5938 (regOne!5939 (regTwo!5938 r!15766))) (regTwo!5938 r!15766))) (= lambda!34530 lambda!34523))))

(declare-fun bs!242637 () Bool)

(assert (= bs!242637 (and b!973021 d!286810)))

(assert (=> bs!242637 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regOne!5939 (regTwo!5938 r!15766))) EmptyExpr!2713) (= (regTwo!5938 (regOne!5939 (regTwo!5938 r!15766))) (regTwo!5938 r!15766))) (= lambda!34530 lambda!34514))))

(declare-fun bs!242638 () Bool)

(assert (= bs!242638 (and b!973021 b!972775)))

(assert (=> bs!242638 (= (and (= (regOne!5938 (regOne!5939 (regTwo!5938 r!15766))) (regOne!5938 (regTwo!5938 r!15766))) (= (regTwo!5938 (regOne!5939 (regTwo!5938 r!15766))) (regTwo!5938 (regTwo!5938 r!15766)))) (= lambda!34530 lambda!34516))))

(declare-fun bs!242639 () Bool)

(assert (= bs!242639 (and b!973021 b!972207)))

(assert (=> bs!242639 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regOne!5939 (regTwo!5938 r!15766))) EmptyExpr!2713) (= (regTwo!5938 (regOne!5939 (regTwo!5938 r!15766))) (regTwo!5938 r!15766))) (= lambda!34530 lambda!34482))))

(declare-fun bs!242640 () Bool)

(assert (= bs!242640 (and b!973021 b!972355)))

(assert (=> bs!242640 (not (= lambda!34530 lambda!34493))))

(assert (=> bs!242636 (not (= lambda!34530 lambda!34521))))

(declare-fun bs!242642 () Bool)

(assert (= bs!242642 (and b!973021 b!972359)))

(assert (=> bs!242642 (= (and (= (_2!6472 lt!349111) s!10566) (= (regOne!5938 (regOne!5939 (regTwo!5938 r!15766))) (regOne!5938 r!15766)) (= (regTwo!5938 (regOne!5939 (regTwo!5938 r!15766))) (regTwo!5938 r!15766))) (= lambda!34530 lambda!34494))))

(declare-fun bs!242643 () Bool)

(assert (= bs!242643 (and b!973021 b!972771)))

(assert (=> bs!242643 (not (= lambda!34530 lambda!34515))))

(declare-fun bs!242644 () Bool)

(assert (= bs!242644 (and b!973021 b!972947)))

(assert (=> bs!242644 (not (= lambda!34530 lambda!34525))))

(assert (=> bs!242639 (not (= lambda!34530 lambda!34481))))

(assert (=> bs!242637 (not (= lambda!34530 lambda!34513))))

(declare-fun bs!242645 () Bool)

(assert (= bs!242645 (and b!973021 b!973017)))

(assert (=> bs!242645 (not (= lambda!34530 lambda!34529))))

(declare-fun bs!242646 () Bool)

(assert (= bs!242646 (and b!973021 b!972951)))

(assert (=> bs!242646 (= (and (= (regOne!5938 (regOne!5939 (regTwo!5938 r!15766))) (regOne!5938 (regTwo!5939 (regTwo!5938 r!15766)))) (= (regTwo!5938 (regOne!5939 (regTwo!5938 r!15766))) (regTwo!5938 (regTwo!5939 (regTwo!5938 r!15766))))) (= lambda!34530 lambda!34526))))

(assert (=> b!973021 true))

(assert (=> b!973021 true))

(declare-fun b!973012 () Bool)

(declare-fun c!158739 () Bool)

(assert (=> b!973012 (= c!158739 ((_ is ElementMatch!2713) (regOne!5939 (regTwo!5938 r!15766))))))

(declare-fun e!627027 () Bool)

(declare-fun e!627025 () Bool)

(assert (=> b!973012 (= e!627027 e!627025)))

(declare-fun b!973013 () Bool)

(declare-fun e!627024 () Bool)

(declare-fun e!627028 () Bool)

(assert (=> b!973013 (= e!627024 e!627028)))

(declare-fun c!158738 () Bool)

(assert (=> b!973013 (= c!158738 ((_ is Star!2713) (regOne!5939 (regTwo!5938 r!15766))))))

(declare-fun b!973014 () Bool)

(declare-fun res!442249 () Bool)

(declare-fun e!627026 () Bool)

(assert (=> b!973014 (=> res!442249 e!627026)))

(declare-fun call!61875 () Bool)

(assert (=> b!973014 (= res!442249 call!61875)))

(assert (=> b!973014 (= e!627028 e!627026)))

(declare-fun bm!61869 () Bool)

(assert (=> bm!61869 (= call!61875 (isEmpty!6238 (_2!6472 lt!349111)))))

(declare-fun d!286890 () Bool)

(declare-fun c!158737 () Bool)

(assert (=> d!286890 (= c!158737 ((_ is EmptyExpr!2713) (regOne!5939 (regTwo!5938 r!15766))))))

(declare-fun e!627029 () Bool)

(assert (=> d!286890 (= (matchRSpec!512 (regOne!5939 (regTwo!5938 r!15766)) (_2!6472 lt!349111)) e!627029)))

(declare-fun b!973015 () Bool)

(assert (=> b!973015 (= e!627025 (= (_2!6472 lt!349111) (Cons!9927 (c!158524 (regOne!5939 (regTwo!5938 r!15766))) Nil!9927)))))

(declare-fun call!61874 () Bool)

(declare-fun bm!61870 () Bool)

(assert (=> bm!61870 (= call!61874 (Exists!452 (ite c!158738 lambda!34529 lambda!34530)))))

(declare-fun b!973016 () Bool)

(assert (=> b!973016 (= e!627029 e!627027)))

(declare-fun res!442250 () Bool)

(assert (=> b!973016 (= res!442250 (not ((_ is EmptyLang!2713) (regOne!5939 (regTwo!5938 r!15766)))))))

(assert (=> b!973016 (=> (not res!442250) (not e!627027))))

(assert (=> b!973017 (= e!627026 call!61874)))

(declare-fun b!973018 () Bool)

(declare-fun e!627023 () Bool)

(assert (=> b!973018 (= e!627023 (matchRSpec!512 (regTwo!5939 (regOne!5939 (regTwo!5938 r!15766))) (_2!6472 lt!349111)))))

(declare-fun b!973019 () Bool)

(declare-fun c!158740 () Bool)

(assert (=> b!973019 (= c!158740 ((_ is Union!2713) (regOne!5939 (regTwo!5938 r!15766))))))

(assert (=> b!973019 (= e!627025 e!627024)))

(declare-fun b!973020 () Bool)

(assert (=> b!973020 (= e!627024 e!627023)))

(declare-fun res!442251 () Bool)

(assert (=> b!973020 (= res!442251 (matchRSpec!512 (regOne!5939 (regOne!5939 (regTwo!5938 r!15766))) (_2!6472 lt!349111)))))

(assert (=> b!973020 (=> res!442251 e!627023)))

(assert (=> b!973021 (= e!627028 call!61874)))

(declare-fun b!973022 () Bool)

(assert (=> b!973022 (= e!627029 call!61875)))

(assert (= (and d!286890 c!158737) b!973022))

(assert (= (and d!286890 (not c!158737)) b!973016))

(assert (= (and b!973016 res!442250) b!973012))

(assert (= (and b!973012 c!158739) b!973015))

(assert (= (and b!973012 (not c!158739)) b!973019))

(assert (= (and b!973019 c!158740) b!973020))

(assert (= (and b!973019 (not c!158740)) b!973013))

(assert (= (and b!973020 (not res!442251)) b!973018))

(assert (= (and b!973013 c!158738) b!973014))

(assert (= (and b!973013 (not c!158738)) b!973021))

(assert (= (and b!973014 (not res!442249)) b!973017))

(assert (= (or b!973017 b!973021) bm!61870))

(assert (= (or b!973022 b!973014) bm!61869))

(assert (=> bm!61869 m!1175661))

(declare-fun m!1175953 () Bool)

(assert (=> bm!61870 m!1175953))

(declare-fun m!1175955 () Bool)

(assert (=> b!973018 m!1175955))

(declare-fun m!1175957 () Bool)

(assert (=> b!973020 m!1175957))

(assert (=> b!972774 d!286890))

(declare-fun d!286898 () Bool)

(assert (=> d!286898 (= (isEmpty!6238 (tail!1354 s!10566)) ((_ is Nil!9927) (tail!1354 s!10566)))))

(assert (=> b!972443 d!286898))

(declare-fun d!286900 () Bool)

(assert (=> d!286900 (= (tail!1354 s!10566) (t!100989 s!10566))))

(assert (=> b!972443 d!286900))

(declare-fun bm!61881 () Bool)

(declare-fun call!61886 () Bool)

(assert (=> bm!61881 (= call!61886 (isEmpty!6238 (tail!1354 (_2!6472 lt!349111))))))

(declare-fun b!973049 () Bool)

(declare-fun res!442267 () Bool)

(declare-fun e!627048 () Bool)

(assert (=> b!973049 (=> res!442267 e!627048)))

(assert (=> b!973049 (= res!442267 (not ((_ is ElementMatch!2713) (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111))))))))

(declare-fun e!627049 () Bool)

(assert (=> b!973049 (= e!627049 e!627048)))

(declare-fun b!973050 () Bool)

(declare-fun e!627053 () Bool)

(assert (=> b!973050 (= e!627053 (not (= (head!1792 (tail!1354 (_2!6472 lt!349111))) (c!158524 (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111)))))))))

(declare-fun b!973051 () Bool)

(declare-fun res!442261 () Bool)

(declare-fun e!627050 () Bool)

(assert (=> b!973051 (=> (not res!442261) (not e!627050))))

(assert (=> b!973051 (= res!442261 (isEmpty!6238 (tail!1354 (tail!1354 (_2!6472 lt!349111)))))))

(declare-fun b!973053 () Bool)

(declare-fun res!442264 () Bool)

(assert (=> b!973053 (=> (not res!442264) (not e!627050))))

(assert (=> b!973053 (= res!442264 (not call!61886))))

(declare-fun b!973054 () Bool)

(declare-fun e!627052 () Bool)

(assert (=> b!973054 (= e!627052 e!627049)))

(declare-fun c!158751 () Bool)

(assert (=> b!973054 (= c!158751 ((_ is EmptyLang!2713) (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111)))))))

(declare-fun b!973055 () Bool)

(declare-fun lt!349187 () Bool)

(assert (=> b!973055 (= e!627049 (not lt!349187))))

(declare-fun b!973052 () Bool)

(assert (=> b!973052 (= e!627052 (= lt!349187 call!61886))))

(declare-fun d!286902 () Bool)

(assert (=> d!286902 e!627052))

(declare-fun c!158750 () Bool)

(assert (=> d!286902 (= c!158750 ((_ is EmptyExpr!2713) (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111)))))))

(declare-fun e!627047 () Bool)

(assert (=> d!286902 (= lt!349187 e!627047)))

(declare-fun c!158752 () Bool)

(assert (=> d!286902 (= c!158752 (isEmpty!6238 (tail!1354 (_2!6472 lt!349111))))))

(assert (=> d!286902 (validRegex!1182 (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111))))))

(assert (=> d!286902 (= (matchR!1249 (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111))) (tail!1354 (_2!6472 lt!349111))) lt!349187)))

(declare-fun b!973056 () Bool)

(declare-fun e!627051 () Bool)

(assert (=> b!973056 (= e!627051 e!627053)))

(declare-fun res!442262 () Bool)

(assert (=> b!973056 (=> res!442262 e!627053)))

(assert (=> b!973056 (= res!442262 call!61886)))

(declare-fun b!973057 () Bool)

(assert (=> b!973057 (= e!627047 (nullable!833 (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111)))))))

(declare-fun b!973058 () Bool)

(declare-fun res!442260 () Bool)

(assert (=> b!973058 (=> res!442260 e!627053)))

(assert (=> b!973058 (= res!442260 (not (isEmpty!6238 (tail!1354 (tail!1354 (_2!6472 lt!349111))))))))

(declare-fun b!973059 () Bool)

(assert (=> b!973059 (= e!627050 (= (head!1792 (tail!1354 (_2!6472 lt!349111))) (c!158524 (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111))))))))

(declare-fun b!973060 () Bool)

(assert (=> b!973060 (= e!627047 (matchR!1249 (derivativeStep!639 (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111))) (head!1792 (tail!1354 (_2!6472 lt!349111)))) (tail!1354 (tail!1354 (_2!6472 lt!349111)))))))

(declare-fun b!973061 () Bool)

(assert (=> b!973061 (= e!627048 e!627051)))

(declare-fun res!442266 () Bool)

(assert (=> b!973061 (=> (not res!442266) (not e!627051))))

(assert (=> b!973061 (= res!442266 (not lt!349187))))

(declare-fun b!973062 () Bool)

(declare-fun res!442263 () Bool)

(assert (=> b!973062 (=> res!442263 e!627048)))

(assert (=> b!973062 (= res!442263 e!627050)))

(declare-fun res!442265 () Bool)

(assert (=> b!973062 (=> (not res!442265) (not e!627050))))

(assert (=> b!973062 (= res!442265 lt!349187)))

(assert (= (and d!286902 c!158752) b!973057))

(assert (= (and d!286902 (not c!158752)) b!973060))

(assert (= (and d!286902 c!158750) b!973052))

(assert (= (and d!286902 (not c!158750)) b!973054))

(assert (= (and b!973054 c!158751) b!973055))

(assert (= (and b!973054 (not c!158751)) b!973049))

(assert (= (and b!973049 (not res!442267)) b!973062))

(assert (= (and b!973062 res!442265) b!973053))

(assert (= (and b!973053 res!442264) b!973051))

(assert (= (and b!973051 res!442261) b!973059))

(assert (= (and b!973062 (not res!442263)) b!973061))

(assert (= (and b!973061 res!442266) b!973056))

(assert (= (and b!973056 (not res!442262)) b!973058))

(assert (= (and b!973058 (not res!442260)) b!973050))

(assert (= (or b!973052 b!973056 b!973053) bm!61881))

(assert (=> b!973058 m!1175655))

(declare-fun m!1175959 () Bool)

(assert (=> b!973058 m!1175959))

(assert (=> b!973058 m!1175959))

(declare-fun m!1175961 () Bool)

(assert (=> b!973058 m!1175961))

(assert (=> b!973050 m!1175655))

(declare-fun m!1175963 () Bool)

(assert (=> b!973050 m!1175963))

(assert (=> b!973051 m!1175655))

(assert (=> b!973051 m!1175959))

(assert (=> b!973051 m!1175959))

(assert (=> b!973051 m!1175961))

(assert (=> b!973059 m!1175655))

(assert (=> b!973059 m!1175963))

(assert (=> d!286902 m!1175655))

(assert (=> d!286902 m!1175657))

(assert (=> d!286902 m!1175665))

(declare-fun m!1175965 () Bool)

(assert (=> d!286902 m!1175965))

(assert (=> b!973057 m!1175665))

(declare-fun m!1175967 () Bool)

(assert (=> b!973057 m!1175967))

(assert (=> b!973060 m!1175655))

(assert (=> b!973060 m!1175963))

(assert (=> b!973060 m!1175665))

(assert (=> b!973060 m!1175963))

(declare-fun m!1175969 () Bool)

(assert (=> b!973060 m!1175969))

(assert (=> b!973060 m!1175655))

(assert (=> b!973060 m!1175959))

(assert (=> b!973060 m!1175969))

(assert (=> b!973060 m!1175959))

(declare-fun m!1175971 () Bool)

(assert (=> b!973060 m!1175971))

(assert (=> bm!61881 m!1175655))

(assert (=> bm!61881 m!1175657))

(assert (=> b!972467 d!286902))

(declare-fun bm!61890 () Bool)

(declare-fun call!61895 () Regex!2713)

(declare-fun call!61898 () Regex!2713)

(assert (=> bm!61890 (= call!61895 call!61898)))

(declare-fun b!973083 () Bool)

(declare-fun e!627065 () Regex!2713)

(declare-fun call!61897 () Regex!2713)

(assert (=> b!973083 (= e!627065 (Union!2713 (Concat!4546 call!61897 (regTwo!5938 (regTwo!5938 r!15766))) EmptyLang!2713))))

(declare-fun b!973084 () Bool)

(declare-fun e!627068 () Regex!2713)

(assert (=> b!973084 (= e!627068 EmptyLang!2713)))

(declare-fun b!973085 () Bool)

(declare-fun call!61896 () Regex!2713)

(assert (=> b!973085 (= e!627065 (Union!2713 (Concat!4546 call!61896 (regTwo!5938 (regTwo!5938 r!15766))) call!61897))))

(declare-fun b!973086 () Bool)

(declare-fun e!627064 () Regex!2713)

(assert (=> b!973086 (= e!627064 (Union!2713 call!61898 call!61896))))

(declare-fun b!973087 () Bool)

(declare-fun c!158766 () Bool)

(assert (=> b!973087 (= c!158766 (nullable!833 (regOne!5938 (regTwo!5938 r!15766))))))

(declare-fun e!627066 () Regex!2713)

(assert (=> b!973087 (= e!627066 e!627065)))

(declare-fun bm!61891 () Bool)

(declare-fun c!158767 () Bool)

(assert (=> bm!61891 (= call!61896 (derivativeStep!639 (ite c!158767 (regTwo!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))) (head!1792 (_2!6472 lt!349111))))))

(declare-fun b!973089 () Bool)

(assert (=> b!973089 (= e!627064 e!627066)))

(declare-fun c!158765 () Bool)

(assert (=> b!973089 (= c!158765 ((_ is Star!2713) (regTwo!5938 r!15766)))))

(declare-fun b!973090 () Bool)

(assert (=> b!973090 (= c!158767 ((_ is Union!2713) (regTwo!5938 r!15766)))))

(declare-fun e!627067 () Regex!2713)

(assert (=> b!973090 (= e!627067 e!627064)))

(declare-fun b!973091 () Bool)

(assert (=> b!973091 (= e!627067 (ite (= (head!1792 (_2!6472 lt!349111)) (c!158524 (regTwo!5938 r!15766))) EmptyExpr!2713 EmptyLang!2713))))

(declare-fun bm!61892 () Bool)

(assert (=> bm!61892 (= call!61897 call!61895)))

(declare-fun b!973092 () Bool)

(assert (=> b!973092 (= e!627068 e!627067)))

(declare-fun c!158763 () Bool)

(assert (=> b!973092 (= c!158763 ((_ is ElementMatch!2713) (regTwo!5938 r!15766)))))

(declare-fun bm!61893 () Bool)

(assert (=> bm!61893 (= call!61898 (derivativeStep!639 (ite c!158767 (regOne!5939 (regTwo!5938 r!15766)) (ite c!158765 (reg!3042 (regTwo!5938 r!15766)) (ite c!158766 (regTwo!5938 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))) (head!1792 (_2!6472 lt!349111))))))

(declare-fun b!973088 () Bool)

(assert (=> b!973088 (= e!627066 (Concat!4546 call!61895 (regTwo!5938 r!15766)))))

(declare-fun d!286904 () Bool)

(declare-fun lt!349190 () Regex!2713)

(assert (=> d!286904 (validRegex!1182 lt!349190)))

(assert (=> d!286904 (= lt!349190 e!627068)))

(declare-fun c!158764 () Bool)

(assert (=> d!286904 (= c!158764 (or ((_ is EmptyExpr!2713) (regTwo!5938 r!15766)) ((_ is EmptyLang!2713) (regTwo!5938 r!15766))))))

(assert (=> d!286904 (validRegex!1182 (regTwo!5938 r!15766))))

(assert (=> d!286904 (= (derivativeStep!639 (regTwo!5938 r!15766) (head!1792 (_2!6472 lt!349111))) lt!349190)))

(assert (= (and d!286904 c!158764) b!973084))

(assert (= (and d!286904 (not c!158764)) b!973092))

(assert (= (and b!973092 c!158763) b!973091))

(assert (= (and b!973092 (not c!158763)) b!973090))

(assert (= (and b!973090 c!158767) b!973086))

(assert (= (and b!973090 (not c!158767)) b!973089))

(assert (= (and b!973089 c!158765) b!973088))

(assert (= (and b!973089 (not c!158765)) b!973087))

(assert (= (and b!973087 c!158766) b!973085))

(assert (= (and b!973087 (not c!158766)) b!973083))

(assert (= (or b!973085 b!973083) bm!61892))

(assert (= (or b!973088 bm!61892) bm!61890))

(assert (= (or b!973086 bm!61890) bm!61893))

(assert (= (or b!973086 b!973085) bm!61891))

(declare-fun m!1175987 () Bool)

(assert (=> b!973087 m!1175987))

(assert (=> bm!61891 m!1175659))

(declare-fun m!1175989 () Bool)

(assert (=> bm!61891 m!1175989))

(assert (=> bm!61893 m!1175659))

(declare-fun m!1175991 () Bool)

(assert (=> bm!61893 m!1175991))

(declare-fun m!1175993 () Bool)

(assert (=> d!286904 m!1175993))

(assert (=> d!286904 m!1175557))

(assert (=> b!972467 d!286904))

(assert (=> b!972467 d!286858))

(assert (=> b!972467 d!286882))

(declare-fun b!973093 () Bool)

(declare-fun e!627078 () Int)

(assert (=> b!973093 (= e!627078 1)))

(declare-fun bm!61894 () Bool)

(declare-fun call!61905 () Int)

(declare-fun call!61903 () Int)

(assert (=> bm!61894 (= call!61905 call!61903)))

(declare-fun b!973094 () Bool)

(declare-fun e!627075 () Bool)

(declare-fun lt!349191 () Int)

(assert (=> b!973094 (= e!627075 (= lt!349191 1))))

(declare-fun b!973095 () Bool)

(declare-fun e!627073 () Bool)

(declare-fun e!627076 () Bool)

(assert (=> b!973095 (= e!627073 e!627076)))

(declare-fun res!442270 () Bool)

(declare-fun call!61900 () Int)

(assert (=> b!973095 (= res!442270 (> lt!349191 call!61900))))

(assert (=> b!973095 (=> (not res!442270) (not e!627076))))

(declare-fun bm!61895 () Bool)

(declare-fun call!61901 () Int)

(declare-fun call!61904 () Int)

(assert (=> bm!61895 (= call!61901 call!61904)))

(declare-fun b!973096 () Bool)

(declare-fun e!627074 () Bool)

(assert (=> b!973096 (= e!627074 e!627073)))

(declare-fun c!158771 () Bool)

(assert (=> b!973096 (= c!158771 ((_ is Union!2713) (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))

(declare-fun b!973097 () Bool)

(assert (=> b!973097 (= e!627076 (> lt!349191 call!61904))))

(declare-fun b!973098 () Bool)

(declare-fun e!627072 () Int)

(assert (=> b!973098 (= e!627072 e!627078)))

(declare-fun c!158773 () Bool)

(assert (=> b!973098 (= c!158773 ((_ is Concat!4546) (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))

(declare-fun b!973099 () Bool)

(declare-fun e!627069 () Int)

(declare-fun e!627077 () Int)

(assert (=> b!973099 (= e!627069 e!627077)))

(declare-fun c!158774 () Bool)

(assert (=> b!973099 (= c!158774 ((_ is Star!2713) (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))

(declare-fun b!973100 () Bool)

(declare-fun e!627070 () Bool)

(assert (=> b!973100 (= e!627070 (> lt!349191 call!61901))))

(declare-fun c!158768 () Bool)

(declare-fun b!973101 () Bool)

(assert (=> b!973101 (= c!158768 ((_ is Star!2713) (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))

(declare-fun e!627071 () Bool)

(assert (=> b!973101 (= e!627071 e!627075)))

(declare-fun b!973102 () Bool)

(assert (=> b!973102 (= e!627069 1)))

(declare-fun c!158769 () Bool)

(declare-fun bm!61897 () Bool)

(assert (=> bm!61897 (= call!61903 (regexDepth!16 (ite c!158774 (reg!3042 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))) (ite c!158769 (regOne!5939 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))) (regOne!5938 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766))))))))))

(declare-fun b!973103 () Bool)

(assert (=> b!973103 (= c!158769 ((_ is Union!2713) (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))

(assert (=> b!973103 (= e!627077 e!627072)))

(declare-fun b!973104 () Bool)

(assert (=> b!973104 (= e!627073 e!627071)))

(declare-fun c!158772 () Bool)

(assert (=> b!973104 (= c!158772 ((_ is Concat!4546) (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))

(declare-fun bm!61898 () Bool)

(assert (=> bm!61898 (= call!61904 (regexDepth!16 (ite c!158771 (regTwo!5939 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))) (ite c!158772 (regTwo!5938 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))) (reg!3042 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766))))))))))

(declare-fun bm!61899 () Bool)

(assert (=> bm!61899 (= call!61900 (regexDepth!16 (ite c!158771 (regOne!5939 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))) (regOne!5938 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))))

(declare-fun b!973105 () Bool)

(declare-fun call!61899 () Int)

(assert (=> b!973105 (= e!627078 (+ 1 call!61899))))

(declare-fun b!973106 () Bool)

(declare-fun res!442269 () Bool)

(assert (=> b!973106 (=> (not res!442269) (not e!627070))))

(assert (=> b!973106 (= res!442269 (> lt!349191 call!61900))))

(assert (=> b!973106 (= e!627071 e!627070)))

(declare-fun b!973107 () Bool)

(assert (=> b!973107 (= e!627075 (> lt!349191 call!61901))))

(declare-fun b!973108 () Bool)

(assert (=> b!973108 (= e!627072 (+ 1 call!61899))))

(declare-fun bm!61896 () Bool)

(declare-fun call!61902 () Int)

(assert (=> bm!61896 (= call!61899 (maxBigInt!0 call!61905 call!61902))))

(declare-fun d!286914 () Bool)

(assert (=> d!286914 e!627074))

(declare-fun res!442268 () Bool)

(assert (=> d!286914 (=> (not res!442268) (not e!627074))))

(assert (=> d!286914 (= res!442268 (> lt!349191 0))))

(assert (=> d!286914 (= lt!349191 e!627069)))

(declare-fun c!158770 () Bool)

(assert (=> d!286914 (= c!158770 ((_ is ElementMatch!2713) (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))

(assert (=> d!286914 (= (regexDepth!16 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))) lt!349191)))

(declare-fun bm!61900 () Bool)

(assert (=> bm!61900 (= call!61902 (regexDepth!16 (ite c!158769 (regTwo!5939 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))) (regTwo!5938 (ite c!158653 (reg!3042 r!15766) (ite c!158648 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))))

(declare-fun b!973109 () Bool)

(assert (=> b!973109 (= e!627077 (+ 1 call!61903))))

(assert (= (and d!286914 c!158770) b!973102))

(assert (= (and d!286914 (not c!158770)) b!973099))

(assert (= (and b!973099 c!158774) b!973109))

(assert (= (and b!973099 (not c!158774)) b!973103))

(assert (= (and b!973103 c!158769) b!973108))

(assert (= (and b!973103 (not c!158769)) b!973098))

(assert (= (and b!973098 c!158773) b!973105))

(assert (= (and b!973098 (not c!158773)) b!973093))

(assert (= (or b!973108 b!973105) bm!61900))

(assert (= (or b!973108 b!973105) bm!61894))

(assert (= (or b!973108 b!973105) bm!61896))

(assert (= (or b!973109 bm!61894) bm!61897))

(assert (= (and d!286914 res!442268) b!973096))

(assert (= (and b!973096 c!158771) b!973095))

(assert (= (and b!973096 (not c!158771)) b!973104))

(assert (= (and b!973095 res!442270) b!973097))

(assert (= (and b!973104 c!158772) b!973106))

(assert (= (and b!973104 (not c!158772)) b!973101))

(assert (= (and b!973106 res!442269) b!973100))

(assert (= (and b!973101 c!158768) b!973107))

(assert (= (and b!973101 (not c!158768)) b!973094))

(assert (= (or b!973100 b!973107) bm!61895))

(assert (= (or b!973097 bm!61895) bm!61898))

(assert (= (or b!973095 b!973106) bm!61899))

(declare-fun m!1175995 () Bool)

(assert (=> bm!61898 m!1175995))

(declare-fun m!1175997 () Bool)

(assert (=> bm!61897 m!1175997))

(declare-fun m!1175999 () Bool)

(assert (=> bm!61896 m!1175999))

(declare-fun m!1176001 () Bool)

(assert (=> bm!61900 m!1176001))

(declare-fun m!1176003 () Bool)

(assert (=> bm!61899 m!1176003))

(assert (=> bm!61801 d!286914))

(declare-fun bm!61901 () Bool)

(declare-fun call!61906 () Bool)

(assert (=> bm!61901 (= call!61906 (isEmpty!6238 (_1!6472 (get!3425 lt!349165))))))

(declare-fun b!973110 () Bool)

(declare-fun res!442278 () Bool)

(declare-fun e!627080 () Bool)

(assert (=> b!973110 (=> res!442278 e!627080)))

(assert (=> b!973110 (= res!442278 (not ((_ is ElementMatch!2713) EmptyExpr!2713)))))

(declare-fun e!627081 () Bool)

(assert (=> b!973110 (= e!627081 e!627080)))

(declare-fun b!973111 () Bool)

(declare-fun e!627085 () Bool)

(assert (=> b!973111 (= e!627085 (not (= (head!1792 (_1!6472 (get!3425 lt!349165))) (c!158524 EmptyExpr!2713))))))

(declare-fun b!973112 () Bool)

(declare-fun res!442272 () Bool)

(declare-fun e!627082 () Bool)

(assert (=> b!973112 (=> (not res!442272) (not e!627082))))

(assert (=> b!973112 (= res!442272 (isEmpty!6238 (tail!1354 (_1!6472 (get!3425 lt!349165)))))))

(declare-fun b!973114 () Bool)

(declare-fun res!442275 () Bool)

(assert (=> b!973114 (=> (not res!442275) (not e!627082))))

(assert (=> b!973114 (= res!442275 (not call!61906))))

(declare-fun b!973115 () Bool)

(declare-fun e!627084 () Bool)

(assert (=> b!973115 (= e!627084 e!627081)))

(declare-fun c!158776 () Bool)

(assert (=> b!973115 (= c!158776 ((_ is EmptyLang!2713) EmptyExpr!2713))))

(declare-fun b!973116 () Bool)

(declare-fun lt!349192 () Bool)

(assert (=> b!973116 (= e!627081 (not lt!349192))))

(declare-fun b!973113 () Bool)

(assert (=> b!973113 (= e!627084 (= lt!349192 call!61906))))

(declare-fun d!286916 () Bool)

(assert (=> d!286916 e!627084))

(declare-fun c!158775 () Bool)

(assert (=> d!286916 (= c!158775 ((_ is EmptyExpr!2713) EmptyExpr!2713))))

(declare-fun e!627079 () Bool)

(assert (=> d!286916 (= lt!349192 e!627079)))

(declare-fun c!158777 () Bool)

(assert (=> d!286916 (= c!158777 (isEmpty!6238 (_1!6472 (get!3425 lt!349165))))))

(assert (=> d!286916 (validRegex!1182 EmptyExpr!2713)))

(assert (=> d!286916 (= (matchR!1249 EmptyExpr!2713 (_1!6472 (get!3425 lt!349165))) lt!349192)))

(declare-fun b!973117 () Bool)

(declare-fun e!627083 () Bool)

(assert (=> b!973117 (= e!627083 e!627085)))

(declare-fun res!442273 () Bool)

(assert (=> b!973117 (=> res!442273 e!627085)))

(assert (=> b!973117 (= res!442273 call!61906)))

(declare-fun b!973118 () Bool)

(assert (=> b!973118 (= e!627079 (nullable!833 EmptyExpr!2713))))

(declare-fun b!973119 () Bool)

(declare-fun res!442271 () Bool)

(assert (=> b!973119 (=> res!442271 e!627085)))

(assert (=> b!973119 (= res!442271 (not (isEmpty!6238 (tail!1354 (_1!6472 (get!3425 lt!349165))))))))

(declare-fun b!973120 () Bool)

(assert (=> b!973120 (= e!627082 (= (head!1792 (_1!6472 (get!3425 lt!349165))) (c!158524 EmptyExpr!2713)))))

(declare-fun b!973121 () Bool)

(assert (=> b!973121 (= e!627079 (matchR!1249 (derivativeStep!639 EmptyExpr!2713 (head!1792 (_1!6472 (get!3425 lt!349165)))) (tail!1354 (_1!6472 (get!3425 lt!349165)))))))

(declare-fun b!973122 () Bool)

(assert (=> b!973122 (= e!627080 e!627083)))

(declare-fun res!442277 () Bool)

(assert (=> b!973122 (=> (not res!442277) (not e!627083))))

(assert (=> b!973122 (= res!442277 (not lt!349192))))

(declare-fun b!973123 () Bool)

(declare-fun res!442274 () Bool)

(assert (=> b!973123 (=> res!442274 e!627080)))

(assert (=> b!973123 (= res!442274 e!627082)))

(declare-fun res!442276 () Bool)

(assert (=> b!973123 (=> (not res!442276) (not e!627082))))

(assert (=> b!973123 (= res!442276 lt!349192)))

(assert (= (and d!286916 c!158777) b!973118))

(assert (= (and d!286916 (not c!158777)) b!973121))

(assert (= (and d!286916 c!158775) b!973113))

(assert (= (and d!286916 (not c!158775)) b!973115))

(assert (= (and b!973115 c!158776) b!973116))

(assert (= (and b!973115 (not c!158776)) b!973110))

(assert (= (and b!973110 (not res!442278)) b!973123))

(assert (= (and b!973123 res!442276) b!973114))

(assert (= (and b!973114 res!442275) b!973112))

(assert (= (and b!973112 res!442272) b!973120))

(assert (= (and b!973123 (not res!442274)) b!973122))

(assert (= (and b!973122 res!442277) b!973117))

(assert (= (and b!973117 (not res!442273)) b!973119))

(assert (= (and b!973119 (not res!442271)) b!973111))

(assert (= (or b!973113 b!973117 b!973114) bm!61901))

(declare-fun m!1176005 () Bool)

(assert (=> b!973119 m!1176005))

(assert (=> b!973119 m!1176005))

(declare-fun m!1176007 () Bool)

(assert (=> b!973119 m!1176007))

(declare-fun m!1176009 () Bool)

(assert (=> b!973111 m!1176009))

(assert (=> b!973112 m!1176005))

(assert (=> b!973112 m!1176005))

(assert (=> b!973112 m!1176007))

(assert (=> b!973120 m!1176009))

(declare-fun m!1176011 () Bool)

(assert (=> d!286916 m!1176011))

(assert (=> d!286916 m!1175771))

(assert (=> b!973118 m!1175845))

(assert (=> b!973121 m!1176009))

(assert (=> b!973121 m!1176009))

(declare-fun m!1176013 () Bool)

(assert (=> b!973121 m!1176013))

(assert (=> b!973121 m!1176005))

(assert (=> b!973121 m!1176013))

(assert (=> b!973121 m!1176005))

(declare-fun m!1176015 () Bool)

(assert (=> b!973121 m!1176015))

(assert (=> bm!61901 m!1176011))

(assert (=> b!972741 d!286916))

(assert (=> b!972741 d!286826))

(assert (=> d!286822 d!286770))

(assert (=> d!286822 d!286820))

(declare-fun d!286918 () Bool)

(assert (=> d!286918 (= (matchR!1249 (regTwo!5938 r!15766) (_2!6472 lt!349111)) (matchRSpec!512 (regTwo!5938 r!15766) (_2!6472 lt!349111)))))

(assert (=> d!286918 true))

(declare-fun _$88!3025 () Unit!15085)

(assert (=> d!286918 (= (choose!6160 (regTwo!5938 r!15766) (_2!6472 lt!349111)) _$88!3025)))

(declare-fun bs!242650 () Bool)

(assert (= bs!242650 d!286918))

(assert (=> bs!242650 m!1175563))

(assert (=> bs!242650 m!1175559))

(assert (=> d!286822 d!286918))

(assert (=> d!286822 d!286818))

(declare-fun bm!61902 () Bool)

(declare-fun call!61907 () Bool)

(assert (=> bm!61902 (= call!61907 (isEmpty!6238 (tail!1354 s!10566)))))

(declare-fun b!973128 () Bool)

(declare-fun res!442290 () Bool)

(declare-fun e!627089 () Bool)

(assert (=> b!973128 (=> res!442290 e!627089)))

(assert (=> b!973128 (= res!442290 (not ((_ is ElementMatch!2713) (derivativeStep!639 r!15766 (head!1792 s!10566)))))))

(declare-fun e!627090 () Bool)

(assert (=> b!973128 (= e!627090 e!627089)))

(declare-fun b!973129 () Bool)

(declare-fun e!627094 () Bool)

(assert (=> b!973129 (= e!627094 (not (= (head!1792 (tail!1354 s!10566)) (c!158524 (derivativeStep!639 r!15766 (head!1792 s!10566))))))))

(declare-fun b!973130 () Bool)

(declare-fun res!442284 () Bool)

(declare-fun e!627091 () Bool)

(assert (=> b!973130 (=> (not res!442284) (not e!627091))))

(assert (=> b!973130 (= res!442284 (isEmpty!6238 (tail!1354 (tail!1354 s!10566))))))

(declare-fun b!973132 () Bool)

(declare-fun res!442287 () Bool)

(assert (=> b!973132 (=> (not res!442287) (not e!627091))))

(assert (=> b!973132 (= res!442287 (not call!61907))))

(declare-fun b!973133 () Bool)

(declare-fun e!627093 () Bool)

(assert (=> b!973133 (= e!627093 e!627090)))

(declare-fun c!158779 () Bool)

(assert (=> b!973133 (= c!158779 ((_ is EmptyLang!2713) (derivativeStep!639 r!15766 (head!1792 s!10566))))))

(declare-fun b!973134 () Bool)

(declare-fun lt!349193 () Bool)

(assert (=> b!973134 (= e!627090 (not lt!349193))))

(declare-fun b!973131 () Bool)

(assert (=> b!973131 (= e!627093 (= lt!349193 call!61907))))

(declare-fun d!286920 () Bool)

(assert (=> d!286920 e!627093))

(declare-fun c!158778 () Bool)

(assert (=> d!286920 (= c!158778 ((_ is EmptyExpr!2713) (derivativeStep!639 r!15766 (head!1792 s!10566))))))

(declare-fun e!627088 () Bool)

(assert (=> d!286920 (= lt!349193 e!627088)))

(declare-fun c!158780 () Bool)

(assert (=> d!286920 (= c!158780 (isEmpty!6238 (tail!1354 s!10566)))))

(assert (=> d!286920 (validRegex!1182 (derivativeStep!639 r!15766 (head!1792 s!10566)))))

(assert (=> d!286920 (= (matchR!1249 (derivativeStep!639 r!15766 (head!1792 s!10566)) (tail!1354 s!10566)) lt!349193)))

(declare-fun b!973135 () Bool)

(declare-fun e!627092 () Bool)

(assert (=> b!973135 (= e!627092 e!627094)))

(declare-fun res!442285 () Bool)

(assert (=> b!973135 (=> res!442285 e!627094)))

(assert (=> b!973135 (= res!442285 call!61907)))

(declare-fun b!973136 () Bool)

(assert (=> b!973136 (= e!627088 (nullable!833 (derivativeStep!639 r!15766 (head!1792 s!10566))))))

(declare-fun b!973137 () Bool)

(declare-fun res!442283 () Bool)

(assert (=> b!973137 (=> res!442283 e!627094)))

(assert (=> b!973137 (= res!442283 (not (isEmpty!6238 (tail!1354 (tail!1354 s!10566)))))))

(declare-fun b!973138 () Bool)

(assert (=> b!973138 (= e!627091 (= (head!1792 (tail!1354 s!10566)) (c!158524 (derivativeStep!639 r!15766 (head!1792 s!10566)))))))

(declare-fun b!973139 () Bool)

(assert (=> b!973139 (= e!627088 (matchR!1249 (derivativeStep!639 (derivativeStep!639 r!15766 (head!1792 s!10566)) (head!1792 (tail!1354 s!10566))) (tail!1354 (tail!1354 s!10566))))))

(declare-fun b!973140 () Bool)

(assert (=> b!973140 (= e!627089 e!627092)))

(declare-fun res!442289 () Bool)

(assert (=> b!973140 (=> (not res!442289) (not e!627092))))

(assert (=> b!973140 (= res!442289 (not lt!349193))))

(declare-fun b!973141 () Bool)

(declare-fun res!442286 () Bool)

(assert (=> b!973141 (=> res!442286 e!627089)))

(assert (=> b!973141 (= res!442286 e!627091)))

(declare-fun res!442288 () Bool)

(assert (=> b!973141 (=> (not res!442288) (not e!627091))))

(assert (=> b!973141 (= res!442288 lt!349193)))

(assert (= (and d!286920 c!158780) b!973136))

(assert (= (and d!286920 (not c!158780)) b!973139))

(assert (= (and d!286920 c!158778) b!973131))

(assert (= (and d!286920 (not c!158778)) b!973133))

(assert (= (and b!973133 c!158779) b!973134))

(assert (= (and b!973133 (not c!158779)) b!973128))

(assert (= (and b!973128 (not res!442290)) b!973141))

(assert (= (and b!973141 res!442288) b!973132))

(assert (= (and b!973132 res!442287) b!973130))

(assert (= (and b!973130 res!442284) b!973138))

(assert (= (and b!973141 (not res!442286)) b!973140))

(assert (= (and b!973140 res!442289) b!973135))

(assert (= (and b!973135 (not res!442285)) b!973137))

(assert (= (and b!973137 (not res!442283)) b!973129))

(assert (= (or b!973131 b!973135 b!973132) bm!61902))

(assert (=> b!973137 m!1175633))

(declare-fun m!1176017 () Bool)

(assert (=> b!973137 m!1176017))

(assert (=> b!973137 m!1176017))

(declare-fun m!1176019 () Bool)

(assert (=> b!973137 m!1176019))

(assert (=> b!973129 m!1175633))

(declare-fun m!1176021 () Bool)

(assert (=> b!973129 m!1176021))

(assert (=> b!973130 m!1175633))

(assert (=> b!973130 m!1176017))

(assert (=> b!973130 m!1176017))

(assert (=> b!973130 m!1176019))

(assert (=> b!973138 m!1175633))

(assert (=> b!973138 m!1176021))

(assert (=> d!286920 m!1175633))

(assert (=> d!286920 m!1175635))

(assert (=> d!286920 m!1175641))

(declare-fun m!1176023 () Bool)

(assert (=> d!286920 m!1176023))

(assert (=> b!973136 m!1175641))

(declare-fun m!1176025 () Bool)

(assert (=> b!973136 m!1176025))

(assert (=> b!973139 m!1175633))

(assert (=> b!973139 m!1176021))

(assert (=> b!973139 m!1175641))

(assert (=> b!973139 m!1176021))

(declare-fun m!1176027 () Bool)

(assert (=> b!973139 m!1176027))

(assert (=> b!973139 m!1175633))

(assert (=> b!973139 m!1176017))

(assert (=> b!973139 m!1176027))

(assert (=> b!973139 m!1176017))

(declare-fun m!1176029 () Bool)

(assert (=> b!973139 m!1176029))

(assert (=> bm!61902 m!1175633))

(assert (=> bm!61902 m!1175635))

(assert (=> b!972445 d!286920))

(declare-fun bm!61903 () Bool)

(declare-fun call!61908 () Regex!2713)

(declare-fun call!61911 () Regex!2713)

(assert (=> bm!61903 (= call!61908 call!61911)))

(declare-fun b!973142 () Bool)

(declare-fun e!627096 () Regex!2713)

(declare-fun call!61910 () Regex!2713)

(assert (=> b!973142 (= e!627096 (Union!2713 (Concat!4546 call!61910 (regTwo!5938 r!15766)) EmptyLang!2713))))

(declare-fun b!973143 () Bool)

(declare-fun e!627099 () Regex!2713)

(assert (=> b!973143 (= e!627099 EmptyLang!2713)))

(declare-fun b!973144 () Bool)

(declare-fun call!61909 () Regex!2713)

(assert (=> b!973144 (= e!627096 (Union!2713 (Concat!4546 call!61909 (regTwo!5938 r!15766)) call!61910))))

(declare-fun b!973145 () Bool)

(declare-fun e!627095 () Regex!2713)

(assert (=> b!973145 (= e!627095 (Union!2713 call!61911 call!61909))))

(declare-fun b!973146 () Bool)

(declare-fun c!158784 () Bool)

(assert (=> b!973146 (= c!158784 (nullable!833 (regOne!5938 r!15766)))))

(declare-fun e!627097 () Regex!2713)

(assert (=> b!973146 (= e!627097 e!627096)))

(declare-fun c!158785 () Bool)

(declare-fun bm!61904 () Bool)

(assert (=> bm!61904 (= call!61909 (derivativeStep!639 (ite c!158785 (regTwo!5939 r!15766) (regOne!5938 r!15766)) (head!1792 s!10566)))))

(declare-fun b!973148 () Bool)

(assert (=> b!973148 (= e!627095 e!627097)))

(declare-fun c!158783 () Bool)

(assert (=> b!973148 (= c!158783 ((_ is Star!2713) r!15766))))

(declare-fun b!973149 () Bool)

(assert (=> b!973149 (= c!158785 ((_ is Union!2713) r!15766))))

(declare-fun e!627098 () Regex!2713)

(assert (=> b!973149 (= e!627098 e!627095)))

(declare-fun b!973150 () Bool)

(assert (=> b!973150 (= e!627098 (ite (= (head!1792 s!10566) (c!158524 r!15766)) EmptyExpr!2713 EmptyLang!2713))))

(declare-fun bm!61905 () Bool)

(assert (=> bm!61905 (= call!61910 call!61908)))

(declare-fun b!973151 () Bool)

(assert (=> b!973151 (= e!627099 e!627098)))

(declare-fun c!158781 () Bool)

(assert (=> b!973151 (= c!158781 ((_ is ElementMatch!2713) r!15766))))

(declare-fun bm!61906 () Bool)

(assert (=> bm!61906 (= call!61911 (derivativeStep!639 (ite c!158785 (regOne!5939 r!15766) (ite c!158783 (reg!3042 r!15766) (ite c!158784 (regTwo!5938 r!15766) (regOne!5938 r!15766)))) (head!1792 s!10566)))))

(declare-fun b!973147 () Bool)

(assert (=> b!973147 (= e!627097 (Concat!4546 call!61908 r!15766))))

(declare-fun d!286922 () Bool)

(declare-fun lt!349194 () Regex!2713)

(assert (=> d!286922 (validRegex!1182 lt!349194)))

(assert (=> d!286922 (= lt!349194 e!627099)))

(declare-fun c!158782 () Bool)

(assert (=> d!286922 (= c!158782 (or ((_ is EmptyExpr!2713) r!15766) ((_ is EmptyLang!2713) r!15766)))))

(assert (=> d!286922 (validRegex!1182 r!15766)))

(assert (=> d!286922 (= (derivativeStep!639 r!15766 (head!1792 s!10566)) lt!349194)))

(assert (= (and d!286922 c!158782) b!973143))

(assert (= (and d!286922 (not c!158782)) b!973151))

(assert (= (and b!973151 c!158781) b!973150))

(assert (= (and b!973151 (not c!158781)) b!973149))

(assert (= (and b!973149 c!158785) b!973145))

(assert (= (and b!973149 (not c!158785)) b!973148))

(assert (= (and b!973148 c!158783) b!973147))

(assert (= (and b!973148 (not c!158783)) b!973146))

(assert (= (and b!973146 c!158784) b!973144))

(assert (= (and b!973146 (not c!158784)) b!973142))

(assert (= (or b!973144 b!973142) bm!61905))

(assert (= (or b!973147 bm!61905) bm!61903))

(assert (= (or b!973145 bm!61903) bm!61906))

(assert (= (or b!973145 b!973144) bm!61904))

(declare-fun m!1176031 () Bool)

(assert (=> b!973146 m!1176031))

(assert (=> bm!61904 m!1175637))

(declare-fun m!1176033 () Bool)

(assert (=> bm!61904 m!1176033))

(assert (=> bm!61906 m!1175637))

(declare-fun m!1176035 () Bool)

(assert (=> bm!61906 m!1176035))

(declare-fun m!1176037 () Bool)

(assert (=> d!286922 m!1176037))

(assert (=> d!286922 m!1175523))

(assert (=> b!972445 d!286922))

(assert (=> b!972445 d!286860))

(assert (=> b!972445 d!286900))

(declare-fun b!973152 () Bool)

(declare-fun e!627109 () Int)

(assert (=> b!973152 (= e!627109 1)))

(declare-fun bm!61907 () Bool)

(declare-fun call!61918 () Int)

(declare-fun call!61916 () Int)

(assert (=> bm!61907 (= call!61918 call!61916)))

(declare-fun b!973153 () Bool)

(declare-fun e!627106 () Bool)

(declare-fun lt!349195 () Int)

(assert (=> b!973153 (= e!627106 (= lt!349195 1))))

(declare-fun b!973154 () Bool)

(declare-fun e!627104 () Bool)

(declare-fun e!627107 () Bool)

(assert (=> b!973154 (= e!627104 e!627107)))

(declare-fun res!442293 () Bool)

(declare-fun call!61913 () Int)

(assert (=> b!973154 (= res!442293 (> lt!349195 call!61913))))

(assert (=> b!973154 (=> (not res!442293) (not e!627107))))

(declare-fun bm!61908 () Bool)

(declare-fun call!61914 () Int)

(declare-fun call!61917 () Int)

(assert (=> bm!61908 (= call!61914 call!61917)))

(declare-fun b!973155 () Bool)

(declare-fun e!627105 () Bool)

(assert (=> b!973155 (= e!627105 e!627104)))

(declare-fun c!158789 () Bool)

(assert (=> b!973155 (= c!158789 ((_ is Union!2713) (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!973156 () Bool)

(assert (=> b!973156 (= e!627107 (> lt!349195 call!61917))))

(declare-fun b!973157 () Bool)

(declare-fun e!627103 () Int)

(assert (=> b!973157 (= e!627103 e!627109)))

(declare-fun c!158791 () Bool)

(assert (=> b!973157 (= c!158791 ((_ is Concat!4546) (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!973158 () Bool)

(declare-fun e!627100 () Int)

(declare-fun e!627108 () Int)

(assert (=> b!973158 (= e!627100 e!627108)))

(declare-fun c!158792 () Bool)

(assert (=> b!973158 (= c!158792 ((_ is Star!2713) (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!973159 () Bool)

(declare-fun e!627101 () Bool)

(assert (=> b!973159 (= e!627101 (> lt!349195 call!61914))))

(declare-fun b!973160 () Bool)

(declare-fun c!158786 () Bool)

(assert (=> b!973160 (= c!158786 ((_ is Star!2713) (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(declare-fun e!627102 () Bool)

(assert (=> b!973160 (= e!627102 e!627106)))

(declare-fun b!973161 () Bool)

(assert (=> b!973161 (= e!627100 1)))

(declare-fun c!158787 () Bool)

(declare-fun bm!61910 () Bool)

(assert (=> bm!61910 (= call!61916 (regexDepth!16 (ite c!158792 (reg!3042 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) (ite c!158787 (regOne!5939 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) (regOne!5938 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))))

(declare-fun b!973162 () Bool)

(assert (=> b!973162 (= c!158787 ((_ is Union!2713) (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(assert (=> b!973162 (= e!627108 e!627103)))

(declare-fun b!973163 () Bool)

(assert (=> b!973163 (= e!627104 e!627102)))

(declare-fun c!158790 () Bool)

(assert (=> b!973163 (= c!158790 ((_ is Concat!4546) (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(declare-fun bm!61911 () Bool)

(assert (=> bm!61911 (= call!61917 (regexDepth!16 (ite c!158789 (regTwo!5939 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) (ite c!158790 (regTwo!5938 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) (reg!3042 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))))

(declare-fun bm!61912 () Bool)

(assert (=> bm!61912 (= call!61913 (regexDepth!16 (ite c!158789 (regOne!5939 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) (regOne!5938 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))))

(declare-fun b!973164 () Bool)

(declare-fun call!61912 () Int)

(assert (=> b!973164 (= e!627109 (+ 1 call!61912))))

(declare-fun b!973165 () Bool)

(declare-fun res!442292 () Bool)

(assert (=> b!973165 (=> (not res!442292) (not e!627101))))

(assert (=> b!973165 (= res!442292 (> lt!349195 call!61913))))

(assert (=> b!973165 (= e!627102 e!627101)))

(declare-fun b!973166 () Bool)

(assert (=> b!973166 (= e!627106 (> lt!349195 call!61914))))

(declare-fun b!973167 () Bool)

(assert (=> b!973167 (= e!627103 (+ 1 call!61912))))

(declare-fun bm!61909 () Bool)

(declare-fun call!61915 () Int)

(assert (=> bm!61909 (= call!61912 (maxBigInt!0 call!61918 call!61915))))

(declare-fun d!286924 () Bool)

(assert (=> d!286924 e!627105))

(declare-fun res!442291 () Bool)

(assert (=> d!286924 (=> (not res!442291) (not e!627105))))

(assert (=> d!286924 (= res!442291 (> lt!349195 0))))

(assert (=> d!286924 (= lt!349195 e!627100)))

(declare-fun c!158788 () Bool)

(assert (=> d!286924 (= c!158788 ((_ is ElementMatch!2713) (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(assert (=> d!286924 (= (regexDepth!16 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) lt!349195)))

(declare-fun bm!61913 () Bool)

(assert (=> bm!61913 (= call!61915 (regexDepth!16 (ite c!158787 (regTwo!5939 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) (regTwo!5938 (ite c!158640 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))))

(declare-fun b!973168 () Bool)

(assert (=> b!973168 (= e!627108 (+ 1 call!61916))))

(assert (= (and d!286924 c!158788) b!973161))

(assert (= (and d!286924 (not c!158788)) b!973158))

(assert (= (and b!973158 c!158792) b!973168))

(assert (= (and b!973158 (not c!158792)) b!973162))

(assert (= (and b!973162 c!158787) b!973167))

(assert (= (and b!973162 (not c!158787)) b!973157))

(assert (= (and b!973157 c!158791) b!973164))

(assert (= (and b!973157 (not c!158791)) b!973152))

(assert (= (or b!973167 b!973164) bm!61913))

(assert (= (or b!973167 b!973164) bm!61907))

(assert (= (or b!973167 b!973164) bm!61909))

(assert (= (or b!973168 bm!61907) bm!61910))

(assert (= (and d!286924 res!442291) b!973155))

(assert (= (and b!973155 c!158789) b!973154))

(assert (= (and b!973155 (not c!158789)) b!973163))

(assert (= (and b!973154 res!442293) b!973156))

(assert (= (and b!973163 c!158790) b!973165))

(assert (= (and b!973163 (not c!158790)) b!973160))

(assert (= (and b!973165 res!442292) b!973159))

(assert (= (and b!973160 c!158786) b!973166))

(assert (= (and b!973160 (not c!158786)) b!973153))

(assert (= (or b!973159 b!973166) bm!61908))

(assert (= (or b!973156 bm!61908) bm!61911))

(assert (= (or b!973154 b!973165) bm!61912))

(declare-fun m!1176039 () Bool)

(assert (=> bm!61911 m!1176039))

(declare-fun m!1176041 () Bool)

(assert (=> bm!61910 m!1176041))

(declare-fun m!1176043 () Bool)

(assert (=> bm!61909 m!1176043))

(declare-fun m!1176045 () Bool)

(assert (=> bm!61913 m!1176045))

(declare-fun m!1176047 () Bool)

(assert (=> bm!61912 m!1176047))

(assert (=> bm!61796 d!286924))

(declare-fun b!973173 () Bool)

(declare-fun e!627121 () Int)

(assert (=> b!973173 (= e!627121 1)))

(declare-fun bm!61914 () Bool)

(declare-fun call!61925 () Int)

(declare-fun call!61923 () Int)

(assert (=> bm!61914 (= call!61925 call!61923)))

(declare-fun b!973174 () Bool)

(declare-fun e!627118 () Bool)

(declare-fun lt!349196 () Int)

(assert (=> b!973174 (= e!627118 (= lt!349196 1))))

(declare-fun b!973175 () Bool)

(declare-fun e!627116 () Bool)

(declare-fun e!627119 () Bool)

(assert (=> b!973175 (= e!627116 e!627119)))

(declare-fun res!442300 () Bool)

(declare-fun call!61920 () Int)

(assert (=> b!973175 (= res!442300 (> lt!349196 call!61920))))

(assert (=> b!973175 (=> (not res!442300) (not e!627119))))

(declare-fun bm!61915 () Bool)

(declare-fun call!61921 () Int)

(declare-fun call!61924 () Int)

(assert (=> bm!61915 (= call!61921 call!61924)))

(declare-fun b!973176 () Bool)

(declare-fun e!627117 () Bool)

(assert (=> b!973176 (= e!627117 e!627116)))

(declare-fun c!158796 () Bool)

(assert (=> b!973176 (= c!158796 ((_ is Union!2713) (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(declare-fun b!973177 () Bool)

(assert (=> b!973177 (= e!627119 (> lt!349196 call!61924))))

(declare-fun b!973178 () Bool)

(declare-fun e!627115 () Int)

(assert (=> b!973178 (= e!627115 e!627121)))

(declare-fun c!158798 () Bool)

(assert (=> b!973178 (= c!158798 ((_ is Concat!4546) (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(declare-fun b!973179 () Bool)

(declare-fun e!627112 () Int)

(declare-fun e!627120 () Int)

(assert (=> b!973179 (= e!627112 e!627120)))

(declare-fun c!158799 () Bool)

(assert (=> b!973179 (= c!158799 ((_ is Star!2713) (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(declare-fun b!973180 () Bool)

(declare-fun e!627113 () Bool)

(assert (=> b!973180 (= e!627113 (> lt!349196 call!61921))))

(declare-fun b!973181 () Bool)

(declare-fun c!158793 () Bool)

(assert (=> b!973181 (= c!158793 ((_ is Star!2713) (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(declare-fun e!627114 () Bool)

(assert (=> b!973181 (= e!627114 e!627118)))

(declare-fun b!973182 () Bool)

(assert (=> b!973182 (= e!627112 1)))

(declare-fun c!158794 () Bool)

(declare-fun bm!61917 () Bool)

(assert (=> bm!61917 (= call!61923 (regexDepth!16 (ite c!158799 (reg!3042 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))) (ite c!158794 (regOne!5939 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))) (regOne!5938 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))))

(declare-fun b!973183 () Bool)

(assert (=> b!973183 (= c!158794 ((_ is Union!2713) (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(assert (=> b!973183 (= e!627120 e!627115)))

(declare-fun b!973184 () Bool)

(assert (=> b!973184 (= e!627116 e!627114)))

(declare-fun c!158797 () Bool)

(assert (=> b!973184 (= c!158797 ((_ is Concat!4546) (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(declare-fun bm!61918 () Bool)

(assert (=> bm!61918 (= call!61924 (regexDepth!16 (ite c!158796 (regTwo!5939 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))) (ite c!158797 (regTwo!5938 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))) (reg!3042 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766)))))))))

(declare-fun bm!61919 () Bool)

(assert (=> bm!61919 (= call!61920 (regexDepth!16 (ite c!158796 (regOne!5939 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))) (regOne!5938 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))))))))

(declare-fun b!973185 () Bool)

(declare-fun call!61919 () Int)

(assert (=> b!973185 (= e!627121 (+ 1 call!61919))))

(declare-fun b!973186 () Bool)

(declare-fun res!442299 () Bool)

(assert (=> b!973186 (=> (not res!442299) (not e!627113))))

(assert (=> b!973186 (= res!442299 (> lt!349196 call!61920))))

(assert (=> b!973186 (= e!627114 e!627113)))

(declare-fun b!973187 () Bool)

(assert (=> b!973187 (= e!627118 (> lt!349196 call!61921))))

(declare-fun b!973188 () Bool)

(assert (=> b!973188 (= e!627115 (+ 1 call!61919))))

(declare-fun bm!61916 () Bool)

(declare-fun call!61922 () Int)

(assert (=> bm!61916 (= call!61919 (maxBigInt!0 call!61925 call!61922))))

(declare-fun d!286926 () Bool)

(assert (=> d!286926 e!627117))

(declare-fun res!442298 () Bool)

(assert (=> d!286926 (=> (not res!442298) (not e!627117))))

(assert (=> d!286926 (= res!442298 (> lt!349196 0))))

(assert (=> d!286926 (= lt!349196 e!627112)))

(declare-fun c!158795 () Bool)

(assert (=> d!286926 (= c!158795 ((_ is ElementMatch!2713) (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))))))

(assert (=> d!286926 (= (regexDepth!16 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))) lt!349196)))

(declare-fun bm!61920 () Bool)

(assert (=> bm!61920 (= call!61922 (regexDepth!16 (ite c!158794 (regTwo!5939 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))) (regTwo!5938 (ite c!158650 (regOne!5939 r!15766) (regOne!5938 r!15766))))))))

(declare-fun b!973189 () Bool)

(assert (=> b!973189 (= e!627120 (+ 1 call!61923))))

(assert (= (and d!286926 c!158795) b!973182))

(assert (= (and d!286926 (not c!158795)) b!973179))

(assert (= (and b!973179 c!158799) b!973189))

(assert (= (and b!973179 (not c!158799)) b!973183))

(assert (= (and b!973183 c!158794) b!973188))

(assert (= (and b!973183 (not c!158794)) b!973178))

(assert (= (and b!973178 c!158798) b!973185))

(assert (= (and b!973178 (not c!158798)) b!973173))

(assert (= (or b!973188 b!973185) bm!61920))

(assert (= (or b!973188 b!973185) bm!61914))

(assert (= (or b!973188 b!973185) bm!61916))

(assert (= (or b!973189 bm!61914) bm!61917))

(assert (= (and d!286926 res!442298) b!973176))

(assert (= (and b!973176 c!158796) b!973175))

(assert (= (and b!973176 (not c!158796)) b!973184))

(assert (= (and b!973175 res!442300) b!973177))

(assert (= (and b!973184 c!158797) b!973186))

(assert (= (and b!973184 (not c!158797)) b!973181))

(assert (= (and b!973186 res!442299) b!973180))

(assert (= (and b!973181 c!158793) b!973187))

(assert (= (and b!973181 (not c!158793)) b!973174))

(assert (= (or b!973180 b!973187) bm!61915))

(assert (= (or b!973177 bm!61915) bm!61918))

(assert (= (or b!973175 b!973186) bm!61919))

(declare-fun m!1176049 () Bool)

(assert (=> bm!61918 m!1176049))

(declare-fun m!1176051 () Bool)

(assert (=> bm!61917 m!1176051))

(declare-fun m!1176053 () Bool)

(assert (=> bm!61916 m!1176053))

(declare-fun m!1176055 () Bool)

(assert (=> bm!61920 m!1176055))

(declare-fun m!1176057 () Bool)

(assert (=> bm!61919 m!1176057))

(assert (=> bm!61803 d!286926))

(declare-fun d!286928 () Bool)

(declare-fun lt!349197 () Int)

(assert (=> d!286928 (>= lt!349197 0)))

(declare-fun e!627122 () Int)

(assert (=> d!286928 (= lt!349197 e!627122)))

(declare-fun c!158800 () Bool)

(assert (=> d!286928 (= c!158800 ((_ is Nil!9927) (t!100989 s!10566)))))

(assert (=> d!286928 (= (size!7949 (t!100989 s!10566)) lt!349197)))

(declare-fun b!973190 () Bool)

(assert (=> b!973190 (= e!627122 0)))

(declare-fun b!973191 () Bool)

(assert (=> b!973191 (= e!627122 (+ 1 (size!7949 (t!100989 (t!100989 s!10566)))))))

(assert (= (and d!286928 c!158800) b!973190))

(assert (= (and d!286928 (not c!158800)) b!973191))

(declare-fun m!1176059 () Bool)

(assert (=> b!973191 m!1176059))

(assert (=> b!972690 d!286928))

(declare-fun d!286930 () Bool)

(declare-fun nullableFct!198 (Regex!2713) Bool)

(assert (=> d!286930 (= (nullable!833 (reg!3042 (regTwo!5938 r!15766))) (nullableFct!198 (reg!3042 (regTwo!5938 r!15766))))))

(declare-fun bs!242651 () Bool)

(assert (= bs!242651 d!286930))

(declare-fun m!1176061 () Bool)

(assert (=> bs!242651 m!1176061))

(assert (=> b!972764 d!286930))

(assert (=> d!286758 d!286804))

(assert (=> d!286758 d!286802))

(declare-fun d!286932 () Bool)

(assert (=> d!286932 (= (Exists!452 lambda!34508) (choose!6163 lambda!34508))))

(declare-fun bs!242652 () Bool)

(assert (= bs!242652 d!286932))

(declare-fun m!1176063 () Bool)

(assert (=> bs!242652 m!1176063))

(assert (=> d!286808 d!286932))

(assert (=> d!286808 d!286806))

(declare-fun bs!242665 () Bool)

(declare-fun d!286934 () Bool)

(assert (= bs!242665 (and d!286934 d!286808)))

(declare-fun lambda!34539 () Int)

(assert (=> bs!242665 (= lambda!34539 lambda!34508)))

(declare-fun bs!242666 () Bool)

(assert (= bs!242666 (and d!286934 d!286836)))

(assert (=> bs!242666 (not (= lambda!34539 lambda!34523))))

(declare-fun bs!242667 () Bool)

(assert (= bs!242667 (and d!286934 d!286810)))

(assert (=> bs!242667 (not (= lambda!34539 lambda!34514))))

(declare-fun bs!242668 () Bool)

(assert (= bs!242668 (and d!286934 b!972775)))

(assert (=> bs!242668 (not (= lambda!34539 lambda!34516))))

(declare-fun bs!242669 () Bool)

(assert (= bs!242669 (and d!286934 b!972207)))

(assert (=> bs!242669 (not (= lambda!34539 lambda!34482))))

(declare-fun bs!242670 () Bool)

(assert (= bs!242670 (and d!286934 b!972355)))

(assert (=> bs!242670 (not (= lambda!34539 lambda!34493))))

(assert (=> bs!242666 (= lambda!34539 lambda!34521)))

(declare-fun bs!242671 () Bool)

(assert (= bs!242671 (and d!286934 b!972771)))

(assert (=> bs!242671 (not (= lambda!34539 lambda!34515))))

(declare-fun bs!242672 () Bool)

(assert (= bs!242672 (and d!286934 b!972947)))

(assert (=> bs!242672 (not (= lambda!34539 lambda!34525))))

(assert (=> bs!242669 (= lambda!34539 lambda!34481)))

(assert (=> bs!242667 (= lambda!34539 lambda!34513)))

(declare-fun bs!242673 () Bool)

(assert (= bs!242673 (and d!286934 b!973017)))

(assert (=> bs!242673 (not (= lambda!34539 lambda!34529))))

(declare-fun bs!242674 () Bool)

(assert (= bs!242674 (and d!286934 b!972951)))

(assert (=> bs!242674 (not (= lambda!34539 lambda!34526))))

(declare-fun bs!242675 () Bool)

(assert (= bs!242675 (and d!286934 b!973021)))

(assert (=> bs!242675 (not (= lambda!34539 lambda!34530))))

(declare-fun bs!242676 () Bool)

(assert (= bs!242676 (and d!286934 b!972359)))

(assert (=> bs!242676 (not (= lambda!34539 lambda!34494))))

(assert (=> d!286934 true))

(assert (=> d!286934 true))

(assert (=> d!286934 true))

(assert (=> d!286934 (= (isDefined!1930 (findConcatSeparation!394 EmptyExpr!2713 (regTwo!5938 r!15766) Nil!9927 s!10566 s!10566)) (Exists!452 lambda!34539))))

(assert (=> d!286934 true))

(declare-fun _$89!1149 () Unit!15085)

(assert (=> d!286934 (= (choose!6161 EmptyExpr!2713 (regTwo!5938 r!15766) s!10566) _$89!1149)))

(declare-fun bs!242677 () Bool)

(assert (= bs!242677 d!286934))

(assert (=> bs!242677 m!1175547))

(assert (=> bs!242677 m!1175547))

(assert (=> bs!242677 m!1175777))

(declare-fun m!1176069 () Bool)

(assert (=> bs!242677 m!1176069))

(assert (=> d!286808 d!286934))

(declare-fun d!286938 () Bool)

(assert (=> d!286938 (= (isDefined!1930 (findConcatSeparation!394 EmptyExpr!2713 (regTwo!5938 r!15766) Nil!9927 s!10566 s!10566)) (not (isEmpty!6240 (findConcatSeparation!394 EmptyExpr!2713 (regTwo!5938 r!15766) Nil!9927 s!10566 s!10566))))))

(declare-fun bs!242678 () Bool)

(assert (= bs!242678 d!286938))

(assert (=> bs!242678 m!1175547))

(declare-fun m!1176071 () Bool)

(assert (=> bs!242678 m!1176071))

(assert (=> d!286808 d!286938))

(assert (=> d!286808 d!286840))

(declare-fun bs!242679 () Bool)

(declare-fun b!973201 () Bool)

(assert (= bs!242679 (and b!973201 d!286808)))

(declare-fun lambda!34540 () Int)

(assert (=> bs!242679 (not (= lambda!34540 lambda!34508))))

(declare-fun bs!242680 () Bool)

(assert (= bs!242680 (and b!973201 d!286836)))

(assert (=> bs!242680 (not (= lambda!34540 lambda!34523))))

(declare-fun bs!242681 () Bool)

(assert (= bs!242681 (and b!973201 d!286810)))

(assert (=> bs!242681 (not (= lambda!34540 lambda!34514))))

(declare-fun bs!242682 () Bool)

(assert (= bs!242682 (and b!973201 b!972775)))

(assert (=> bs!242682 (not (= lambda!34540 lambda!34516))))

(declare-fun bs!242683 () Bool)

(assert (= bs!242683 (and b!973201 b!972207)))

(assert (=> bs!242683 (not (= lambda!34540 lambda!34482))))

(declare-fun bs!242684 () Bool)

(assert (= bs!242684 (and b!973201 b!972355)))

(assert (=> bs!242684 (= (and (= (reg!3042 (regTwo!5939 r!15766)) (reg!3042 r!15766)) (= (regTwo!5939 r!15766) r!15766)) (= lambda!34540 lambda!34493))))

(assert (=> bs!242680 (not (= lambda!34540 lambda!34521))))

(declare-fun bs!242685 () Bool)

(assert (= bs!242685 (and b!973201 b!972947)))

(assert (=> bs!242685 (= (and (= s!10566 (_2!6472 lt!349111)) (= (reg!3042 (regTwo!5939 r!15766)) (reg!3042 (regTwo!5939 (regTwo!5938 r!15766)))) (= (regTwo!5939 r!15766) (regTwo!5939 (regTwo!5938 r!15766)))) (= lambda!34540 lambda!34525))))

(assert (=> bs!242683 (not (= lambda!34540 lambda!34481))))

(assert (=> bs!242681 (not (= lambda!34540 lambda!34513))))

(declare-fun bs!242686 () Bool)

(assert (= bs!242686 (and b!973201 b!973017)))

(assert (=> bs!242686 (= (and (= s!10566 (_2!6472 lt!349111)) (= (reg!3042 (regTwo!5939 r!15766)) (reg!3042 (regOne!5939 (regTwo!5938 r!15766)))) (= (regTwo!5939 r!15766) (regOne!5939 (regTwo!5938 r!15766)))) (= lambda!34540 lambda!34529))))

(declare-fun bs!242687 () Bool)

(assert (= bs!242687 (and b!973201 b!972951)))

(assert (=> bs!242687 (not (= lambda!34540 lambda!34526))))

(declare-fun bs!242688 () Bool)

(assert (= bs!242688 (and b!973201 b!973021)))

(assert (=> bs!242688 (not (= lambda!34540 lambda!34530))))

(declare-fun bs!242689 () Bool)

(assert (= bs!242689 (and b!973201 b!972359)))

(assert (=> bs!242689 (not (= lambda!34540 lambda!34494))))

(declare-fun bs!242690 () Bool)

(assert (= bs!242690 (and b!973201 b!972771)))

(assert (=> bs!242690 (= (and (= s!10566 (_2!6472 lt!349111)) (= (reg!3042 (regTwo!5939 r!15766)) (reg!3042 (regTwo!5938 r!15766))) (= (regTwo!5939 r!15766) (regTwo!5938 r!15766))) (= lambda!34540 lambda!34515))))

(declare-fun bs!242691 () Bool)

(assert (= bs!242691 (and b!973201 d!286934)))

(assert (=> bs!242691 (not (= lambda!34540 lambda!34539))))

(assert (=> b!973201 true))

(assert (=> b!973201 true))

(declare-fun bs!242692 () Bool)

(declare-fun b!973205 () Bool)

(assert (= bs!242692 (and b!973205 d!286808)))

(declare-fun lambda!34541 () Int)

(assert (=> bs!242692 (not (= lambda!34541 lambda!34508))))

(declare-fun bs!242693 () Bool)

(assert (= bs!242693 (and b!973205 d!286836)))

(assert (=> bs!242693 (= (and (= (regOne!5938 (regTwo!5939 r!15766)) EmptyExpr!2713) (= (regTwo!5938 (regTwo!5939 r!15766)) (regTwo!5938 r!15766))) (= lambda!34541 lambda!34523))))

(declare-fun bs!242694 () Bool)

(assert (= bs!242694 (and b!973205 d!286810)))

(assert (=> bs!242694 (= (and (= (regOne!5938 (regTwo!5939 r!15766)) EmptyExpr!2713) (= (regTwo!5938 (regTwo!5939 r!15766)) (regTwo!5938 r!15766))) (= lambda!34541 lambda!34514))))

(declare-fun bs!242695 () Bool)

(assert (= bs!242695 (and b!973205 b!972775)))

(assert (=> bs!242695 (= (and (= s!10566 (_2!6472 lt!349111)) (= (regOne!5938 (regTwo!5939 r!15766)) (regOne!5938 (regTwo!5938 r!15766))) (= (regTwo!5938 (regTwo!5939 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))) (= lambda!34541 lambda!34516))))

(declare-fun bs!242696 () Bool)

(assert (= bs!242696 (and b!973205 b!972207)))

(assert (=> bs!242696 (= (and (= (regOne!5938 (regTwo!5939 r!15766)) EmptyExpr!2713) (= (regTwo!5938 (regTwo!5939 r!15766)) (regTwo!5938 r!15766))) (= lambda!34541 lambda!34482))))

(declare-fun bs!242697 () Bool)

(assert (= bs!242697 (and b!973205 b!972355)))

(assert (=> bs!242697 (not (= lambda!34541 lambda!34493))))

(assert (=> bs!242693 (not (= lambda!34541 lambda!34521))))

(declare-fun bs!242698 () Bool)

(assert (= bs!242698 (and b!973205 b!973201)))

(assert (=> bs!242698 (not (= lambda!34541 lambda!34540))))

(declare-fun bs!242699 () Bool)

(assert (= bs!242699 (and b!973205 b!972947)))

(assert (=> bs!242699 (not (= lambda!34541 lambda!34525))))

(assert (=> bs!242696 (not (= lambda!34541 lambda!34481))))

(assert (=> bs!242694 (not (= lambda!34541 lambda!34513))))

(declare-fun bs!242700 () Bool)

(assert (= bs!242700 (and b!973205 b!973017)))

(assert (=> bs!242700 (not (= lambda!34541 lambda!34529))))

(declare-fun bs!242701 () Bool)

(assert (= bs!242701 (and b!973205 b!972951)))

(assert (=> bs!242701 (= (and (= s!10566 (_2!6472 lt!349111)) (= (regOne!5938 (regTwo!5939 r!15766)) (regOne!5938 (regTwo!5939 (regTwo!5938 r!15766)))) (= (regTwo!5938 (regTwo!5939 r!15766)) (regTwo!5938 (regTwo!5939 (regTwo!5938 r!15766))))) (= lambda!34541 lambda!34526))))

(declare-fun bs!242702 () Bool)

(assert (= bs!242702 (and b!973205 b!973021)))

(assert (=> bs!242702 (= (and (= s!10566 (_2!6472 lt!349111)) (= (regOne!5938 (regTwo!5939 r!15766)) (regOne!5938 (regOne!5939 (regTwo!5938 r!15766)))) (= (regTwo!5938 (regTwo!5939 r!15766)) (regTwo!5938 (regOne!5939 (regTwo!5938 r!15766))))) (= lambda!34541 lambda!34530))))

(declare-fun bs!242703 () Bool)

(assert (= bs!242703 (and b!973205 b!972359)))

(assert (=> bs!242703 (= (and (= (regOne!5938 (regTwo!5939 r!15766)) (regOne!5938 r!15766)) (= (regTwo!5938 (regTwo!5939 r!15766)) (regTwo!5938 r!15766))) (= lambda!34541 lambda!34494))))

(declare-fun bs!242704 () Bool)

(assert (= bs!242704 (and b!973205 b!972771)))

(assert (=> bs!242704 (not (= lambda!34541 lambda!34515))))

(declare-fun bs!242705 () Bool)

(assert (= bs!242705 (and b!973205 d!286934)))

(assert (=> bs!242705 (not (= lambda!34541 lambda!34539))))

(assert (=> b!973205 true))

(assert (=> b!973205 true))

(declare-fun b!973196 () Bool)

(declare-fun c!158803 () Bool)

(assert (=> b!973196 (= c!158803 ((_ is ElementMatch!2713) (regTwo!5939 r!15766)))))

(declare-fun e!627129 () Bool)

(declare-fun e!627127 () Bool)

(assert (=> b!973196 (= e!627129 e!627127)))

(declare-fun b!973197 () Bool)

(declare-fun e!627126 () Bool)

(declare-fun e!627130 () Bool)

(assert (=> b!973197 (= e!627126 e!627130)))

(declare-fun c!158802 () Bool)

(assert (=> b!973197 (= c!158802 ((_ is Star!2713) (regTwo!5939 r!15766)))))

(declare-fun b!973198 () Bool)

(declare-fun res!442305 () Bool)

(declare-fun e!627128 () Bool)

(assert (=> b!973198 (=> res!442305 e!627128)))

(declare-fun call!61927 () Bool)

(assert (=> b!973198 (= res!442305 call!61927)))

(assert (=> b!973198 (= e!627130 e!627128)))

(declare-fun bm!61921 () Bool)

(assert (=> bm!61921 (= call!61927 (isEmpty!6238 s!10566))))

(declare-fun d!286940 () Bool)

(declare-fun c!158801 () Bool)

(assert (=> d!286940 (= c!158801 ((_ is EmptyExpr!2713) (regTwo!5939 r!15766)))))

(declare-fun e!627131 () Bool)

(assert (=> d!286940 (= (matchRSpec!512 (regTwo!5939 r!15766) s!10566) e!627131)))

(declare-fun b!973199 () Bool)

(assert (=> b!973199 (= e!627127 (= s!10566 (Cons!9927 (c!158524 (regTwo!5939 r!15766)) Nil!9927)))))

(declare-fun bm!61922 () Bool)

(declare-fun call!61926 () Bool)

(assert (=> bm!61922 (= call!61926 (Exists!452 (ite c!158802 lambda!34540 lambda!34541)))))

(declare-fun b!973200 () Bool)

(assert (=> b!973200 (= e!627131 e!627129)))

(declare-fun res!442306 () Bool)

(assert (=> b!973200 (= res!442306 (not ((_ is EmptyLang!2713) (regTwo!5939 r!15766))))))

(assert (=> b!973200 (=> (not res!442306) (not e!627129))))

(assert (=> b!973201 (= e!627128 call!61926)))

(declare-fun b!973202 () Bool)

(declare-fun e!627125 () Bool)

(assert (=> b!973202 (= e!627125 (matchRSpec!512 (regTwo!5939 (regTwo!5939 r!15766)) s!10566))))

(declare-fun b!973203 () Bool)

(declare-fun c!158804 () Bool)

(assert (=> b!973203 (= c!158804 ((_ is Union!2713) (regTwo!5939 r!15766)))))

(assert (=> b!973203 (= e!627127 e!627126)))

(declare-fun b!973204 () Bool)

(assert (=> b!973204 (= e!627126 e!627125)))

(declare-fun res!442307 () Bool)

(assert (=> b!973204 (= res!442307 (matchRSpec!512 (regOne!5939 (regTwo!5939 r!15766)) s!10566))))

(assert (=> b!973204 (=> res!442307 e!627125)))

(assert (=> b!973205 (= e!627130 call!61926)))

(declare-fun b!973206 () Bool)

(assert (=> b!973206 (= e!627131 call!61927)))

(assert (= (and d!286940 c!158801) b!973206))

(assert (= (and d!286940 (not c!158801)) b!973200))

(assert (= (and b!973200 res!442306) b!973196))

(assert (= (and b!973196 c!158803) b!973199))

(assert (= (and b!973196 (not c!158803)) b!973203))

(assert (= (and b!973203 c!158804) b!973204))

(assert (= (and b!973203 (not c!158804)) b!973197))

(assert (= (and b!973204 (not res!442307)) b!973202))

(assert (= (and b!973197 c!158802) b!973198))

(assert (= (and b!973197 (not c!158802)) b!973205))

(assert (= (and b!973198 (not res!442305)) b!973201))

(assert (= (or b!973201 b!973205) bm!61922))

(assert (= (or b!973206 b!973198) bm!61921))

(assert (=> bm!61921 m!1175541))

(declare-fun m!1176087 () Bool)

(assert (=> bm!61922 m!1176087))

(declare-fun m!1176089 () Bool)

(assert (=> b!973202 m!1176089))

(declare-fun m!1176091 () Bool)

(assert (=> b!973204 m!1176091))

(assert (=> b!972356 d!286940))

(declare-fun bs!242706 () Bool)

(declare-fun b!973226 () Bool)

(assert (= bs!242706 (and b!973226 d!286808)))

(declare-fun lambda!34542 () Int)

(assert (=> bs!242706 (not (= lambda!34542 lambda!34508))))

(declare-fun bs!242707 () Bool)

(assert (= bs!242707 (and b!973226 d!286836)))

(assert (=> bs!242707 (not (= lambda!34542 lambda!34523))))

(declare-fun bs!242708 () Bool)

(assert (= bs!242708 (and b!973226 d!286810)))

(assert (=> bs!242708 (not (= lambda!34542 lambda!34514))))

(declare-fun bs!242709 () Bool)

(assert (= bs!242709 (and b!973226 b!972775)))

(assert (=> bs!242709 (not (= lambda!34542 lambda!34516))))

(declare-fun bs!242710 () Bool)

(assert (= bs!242710 (and b!973226 b!972207)))

(assert (=> bs!242710 (not (= lambda!34542 lambda!34482))))

(declare-fun bs!242711 () Bool)

(assert (= bs!242711 (and b!973226 b!972355)))

(assert (=> bs!242711 (= (and (= (reg!3042 (regOne!5939 r!15766)) (reg!3042 r!15766)) (= (regOne!5939 r!15766) r!15766)) (= lambda!34542 lambda!34493))))

(assert (=> bs!242707 (not (= lambda!34542 lambda!34521))))

(declare-fun bs!242712 () Bool)

(assert (= bs!242712 (and b!973226 b!973201)))

(assert (=> bs!242712 (= (and (= (reg!3042 (regOne!5939 r!15766)) (reg!3042 (regTwo!5939 r!15766))) (= (regOne!5939 r!15766) (regTwo!5939 r!15766))) (= lambda!34542 lambda!34540))))

(declare-fun bs!242713 () Bool)

(assert (= bs!242713 (and b!973226 b!972947)))

(assert (=> bs!242713 (= (and (= s!10566 (_2!6472 lt!349111)) (= (reg!3042 (regOne!5939 r!15766)) (reg!3042 (regTwo!5939 (regTwo!5938 r!15766)))) (= (regOne!5939 r!15766) (regTwo!5939 (regTwo!5938 r!15766)))) (= lambda!34542 lambda!34525))))

(declare-fun bs!242714 () Bool)

(assert (= bs!242714 (and b!973226 b!973205)))

(assert (=> bs!242714 (not (= lambda!34542 lambda!34541))))

(assert (=> bs!242710 (not (= lambda!34542 lambda!34481))))

(assert (=> bs!242708 (not (= lambda!34542 lambda!34513))))

(declare-fun bs!242715 () Bool)

(assert (= bs!242715 (and b!973226 b!973017)))

(assert (=> bs!242715 (= (and (= s!10566 (_2!6472 lt!349111)) (= (reg!3042 (regOne!5939 r!15766)) (reg!3042 (regOne!5939 (regTwo!5938 r!15766)))) (= (regOne!5939 r!15766) (regOne!5939 (regTwo!5938 r!15766)))) (= lambda!34542 lambda!34529))))

(declare-fun bs!242716 () Bool)

(assert (= bs!242716 (and b!973226 b!972951)))

(assert (=> bs!242716 (not (= lambda!34542 lambda!34526))))

(declare-fun bs!242717 () Bool)

(assert (= bs!242717 (and b!973226 b!973021)))

(assert (=> bs!242717 (not (= lambda!34542 lambda!34530))))

(declare-fun bs!242718 () Bool)

(assert (= bs!242718 (and b!973226 b!972359)))

(assert (=> bs!242718 (not (= lambda!34542 lambda!34494))))

(declare-fun bs!242719 () Bool)

(assert (= bs!242719 (and b!973226 b!972771)))

(assert (=> bs!242719 (= (and (= s!10566 (_2!6472 lt!349111)) (= (reg!3042 (regOne!5939 r!15766)) (reg!3042 (regTwo!5938 r!15766))) (= (regOne!5939 r!15766) (regTwo!5938 r!15766))) (= lambda!34542 lambda!34515))))

(declare-fun bs!242720 () Bool)

(assert (= bs!242720 (and b!973226 d!286934)))

(assert (=> bs!242720 (not (= lambda!34542 lambda!34539))))

(assert (=> b!973226 true))

(assert (=> b!973226 true))

(declare-fun bs!242721 () Bool)

(declare-fun b!973230 () Bool)

(assert (= bs!242721 (and b!973230 d!286808)))

(declare-fun lambda!34543 () Int)

(assert (=> bs!242721 (not (= lambda!34543 lambda!34508))))

(declare-fun bs!242722 () Bool)

(assert (= bs!242722 (and b!973230 d!286836)))

(assert (=> bs!242722 (= (and (= (regOne!5938 (regOne!5939 r!15766)) EmptyExpr!2713) (= (regTwo!5938 (regOne!5939 r!15766)) (regTwo!5938 r!15766))) (= lambda!34543 lambda!34523))))

(declare-fun bs!242723 () Bool)

(assert (= bs!242723 (and b!973230 d!286810)))

(assert (=> bs!242723 (= (and (= (regOne!5938 (regOne!5939 r!15766)) EmptyExpr!2713) (= (regTwo!5938 (regOne!5939 r!15766)) (regTwo!5938 r!15766))) (= lambda!34543 lambda!34514))))

(declare-fun bs!242724 () Bool)

(assert (= bs!242724 (and b!973230 b!972775)))

(assert (=> bs!242724 (= (and (= s!10566 (_2!6472 lt!349111)) (= (regOne!5938 (regOne!5939 r!15766)) (regOne!5938 (regTwo!5938 r!15766))) (= (regTwo!5938 (regOne!5939 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))) (= lambda!34543 lambda!34516))))

(declare-fun bs!242725 () Bool)

(assert (= bs!242725 (and b!973230 b!973226)))

(assert (=> bs!242725 (not (= lambda!34543 lambda!34542))))

(declare-fun bs!242726 () Bool)

(assert (= bs!242726 (and b!973230 b!972207)))

(assert (=> bs!242726 (= (and (= (regOne!5938 (regOne!5939 r!15766)) EmptyExpr!2713) (= (regTwo!5938 (regOne!5939 r!15766)) (regTwo!5938 r!15766))) (= lambda!34543 lambda!34482))))

(declare-fun bs!242727 () Bool)

(assert (= bs!242727 (and b!973230 b!972355)))

(assert (=> bs!242727 (not (= lambda!34543 lambda!34493))))

(assert (=> bs!242722 (not (= lambda!34543 lambda!34521))))

(declare-fun bs!242728 () Bool)

(assert (= bs!242728 (and b!973230 b!973201)))

(assert (=> bs!242728 (not (= lambda!34543 lambda!34540))))

(declare-fun bs!242729 () Bool)

(assert (= bs!242729 (and b!973230 b!972947)))

(assert (=> bs!242729 (not (= lambda!34543 lambda!34525))))

(declare-fun bs!242730 () Bool)

(assert (= bs!242730 (and b!973230 b!973205)))

(assert (=> bs!242730 (= (and (= (regOne!5938 (regOne!5939 r!15766)) (regOne!5938 (regTwo!5939 r!15766))) (= (regTwo!5938 (regOne!5939 r!15766)) (regTwo!5938 (regTwo!5939 r!15766)))) (= lambda!34543 lambda!34541))))

(assert (=> bs!242726 (not (= lambda!34543 lambda!34481))))

(assert (=> bs!242723 (not (= lambda!34543 lambda!34513))))

(declare-fun bs!242731 () Bool)

(assert (= bs!242731 (and b!973230 b!973017)))

(assert (=> bs!242731 (not (= lambda!34543 lambda!34529))))

(declare-fun bs!242732 () Bool)

(assert (= bs!242732 (and b!973230 b!972951)))

(assert (=> bs!242732 (= (and (= s!10566 (_2!6472 lt!349111)) (= (regOne!5938 (regOne!5939 r!15766)) (regOne!5938 (regTwo!5939 (regTwo!5938 r!15766)))) (= (regTwo!5938 (regOne!5939 r!15766)) (regTwo!5938 (regTwo!5939 (regTwo!5938 r!15766))))) (= lambda!34543 lambda!34526))))

(declare-fun bs!242733 () Bool)

(assert (= bs!242733 (and b!973230 b!973021)))

(assert (=> bs!242733 (= (and (= s!10566 (_2!6472 lt!349111)) (= (regOne!5938 (regOne!5939 r!15766)) (regOne!5938 (regOne!5939 (regTwo!5938 r!15766)))) (= (regTwo!5938 (regOne!5939 r!15766)) (regTwo!5938 (regOne!5939 (regTwo!5938 r!15766))))) (= lambda!34543 lambda!34530))))

(declare-fun bs!242734 () Bool)

(assert (= bs!242734 (and b!973230 b!972359)))

(assert (=> bs!242734 (= (and (= (regOne!5938 (regOne!5939 r!15766)) (regOne!5938 r!15766)) (= (regTwo!5938 (regOne!5939 r!15766)) (regTwo!5938 r!15766))) (= lambda!34543 lambda!34494))))

(declare-fun bs!242735 () Bool)

(assert (= bs!242735 (and b!973230 b!972771)))

(assert (=> bs!242735 (not (= lambda!34543 lambda!34515))))

(declare-fun bs!242736 () Bool)

(assert (= bs!242736 (and b!973230 d!286934)))

(assert (=> bs!242736 (not (= lambda!34543 lambda!34539))))

(assert (=> b!973230 true))

(assert (=> b!973230 true))

(declare-fun b!973221 () Bool)

(declare-fun c!158810 () Bool)

(assert (=> b!973221 (= c!158810 ((_ is ElementMatch!2713) (regOne!5939 r!15766)))))

(declare-fun e!627143 () Bool)

(declare-fun e!627141 () Bool)

(assert (=> b!973221 (= e!627143 e!627141)))

(declare-fun b!973222 () Bool)

(declare-fun e!627140 () Bool)

(declare-fun e!627144 () Bool)

(assert (=> b!973222 (= e!627140 e!627144)))

(declare-fun c!158809 () Bool)

(assert (=> b!973222 (= c!158809 ((_ is Star!2713) (regOne!5939 r!15766)))))

(declare-fun b!973223 () Bool)

(declare-fun res!442316 () Bool)

(declare-fun e!627142 () Bool)

(assert (=> b!973223 (=> res!442316 e!627142)))

(declare-fun call!61930 () Bool)

(assert (=> b!973223 (= res!442316 call!61930)))

(assert (=> b!973223 (= e!627144 e!627142)))

(declare-fun bm!61924 () Bool)

(assert (=> bm!61924 (= call!61930 (isEmpty!6238 s!10566))))

(declare-fun d!286946 () Bool)

(declare-fun c!158808 () Bool)

(assert (=> d!286946 (= c!158808 ((_ is EmptyExpr!2713) (regOne!5939 r!15766)))))

(declare-fun e!627145 () Bool)

(assert (=> d!286946 (= (matchRSpec!512 (regOne!5939 r!15766) s!10566) e!627145)))

(declare-fun b!973224 () Bool)

(assert (=> b!973224 (= e!627141 (= s!10566 (Cons!9927 (c!158524 (regOne!5939 r!15766)) Nil!9927)))))

(declare-fun bm!61925 () Bool)

(declare-fun call!61929 () Bool)

(assert (=> bm!61925 (= call!61929 (Exists!452 (ite c!158809 lambda!34542 lambda!34543)))))

(declare-fun b!973225 () Bool)

(assert (=> b!973225 (= e!627145 e!627143)))

(declare-fun res!442317 () Bool)

(assert (=> b!973225 (= res!442317 (not ((_ is EmptyLang!2713) (regOne!5939 r!15766))))))

(assert (=> b!973225 (=> (not res!442317) (not e!627143))))

(assert (=> b!973226 (= e!627142 call!61929)))

(declare-fun b!973227 () Bool)

(declare-fun e!627139 () Bool)

(assert (=> b!973227 (= e!627139 (matchRSpec!512 (regTwo!5939 (regOne!5939 r!15766)) s!10566))))

(declare-fun b!973228 () Bool)

(declare-fun c!158811 () Bool)

(assert (=> b!973228 (= c!158811 ((_ is Union!2713) (regOne!5939 r!15766)))))

(assert (=> b!973228 (= e!627141 e!627140)))

(declare-fun b!973229 () Bool)

(assert (=> b!973229 (= e!627140 e!627139)))

(declare-fun res!442318 () Bool)

(assert (=> b!973229 (= res!442318 (matchRSpec!512 (regOne!5939 (regOne!5939 r!15766)) s!10566))))

(assert (=> b!973229 (=> res!442318 e!627139)))

(assert (=> b!973230 (= e!627144 call!61929)))

(declare-fun b!973231 () Bool)

(assert (=> b!973231 (= e!627145 call!61930)))

(assert (= (and d!286946 c!158808) b!973231))

(assert (= (and d!286946 (not c!158808)) b!973225))

(assert (= (and b!973225 res!442317) b!973221))

(assert (= (and b!973221 c!158810) b!973224))

(assert (= (and b!973221 (not c!158810)) b!973228))

(assert (= (and b!973228 c!158811) b!973229))

(assert (= (and b!973228 (not c!158811)) b!973222))

(assert (= (and b!973229 (not res!442318)) b!973227))

(assert (= (and b!973222 c!158809) b!973223))

(assert (= (and b!973222 (not c!158809)) b!973230))

(assert (= (and b!973223 (not res!442316)) b!973226))

(assert (= (or b!973226 b!973230) bm!61925))

(assert (= (or b!973231 b!973223) bm!61924))

(assert (=> bm!61924 m!1175541))

(declare-fun m!1176093 () Bool)

(assert (=> bm!61925 m!1176093))

(declare-fun m!1176095 () Bool)

(assert (=> b!973227 m!1176095))

(declare-fun m!1176097 () Bool)

(assert (=> b!973229 m!1176097))

(assert (=> b!972358 d!286946))

(assert (=> b!972458 d!286880))

(assert (=> b!972458 d!286882))

(assert (=> bm!61817 d!286854))

(declare-fun d!286948 () Bool)

(assert (=> d!286948 (= (nullable!833 (reg!3042 r!15766)) (nullableFct!198 (reg!3042 r!15766)))))

(declare-fun bs!242737 () Bool)

(assert (= bs!242737 d!286948))

(declare-fun m!1176099 () Bool)

(assert (=> bs!242737 m!1176099))

(assert (=> b!972716 d!286948))

(assert (=> b!972436 d!286898))

(assert (=> b!972436 d!286900))

(declare-fun d!286950 () Bool)

(assert (=> d!286950 (= (Exists!452 (ite c!158670 lambda!34515 lambda!34516)) (choose!6163 (ite c!158670 lambda!34515 lambda!34516)))))

(declare-fun bs!242738 () Bool)

(assert (= bs!242738 d!286950))

(declare-fun m!1176101 () Bool)

(assert (=> bs!242738 m!1176101))

(assert (=> bm!61818 d!286950))

(declare-fun d!286952 () Bool)

(assert (=> d!286952 (= (maxBigInt!0 call!61802 call!61799) (ite (>= call!61802 call!61799) call!61802 call!61799))))

(assert (=> bm!61793 d!286952))

(declare-fun d!286954 () Bool)

(assert (=> d!286954 (= (maxBigInt!0 call!61809 call!61806) (ite (>= call!61809 call!61806) call!61809 call!61806))))

(assert (=> bm!61800 d!286954))

(declare-fun b!973253 () Bool)

(declare-fun res!442320 () Bool)

(declare-fun e!627157 () Bool)

(assert (=> b!973253 (=> res!442320 e!627157)))

(assert (=> b!973253 (= res!442320 (not ((_ is Concat!4546) (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))

(declare-fun e!627160 () Bool)

(assert (=> b!973253 (= e!627160 e!627157)))

(declare-fun bm!61930 () Bool)

(declare-fun c!158822 () Bool)

(declare-fun call!61936 () Bool)

(assert (=> bm!61930 (= call!61936 (validRegex!1182 (ite c!158822 (regOne!5939 (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) (regOne!5938 (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))))

(declare-fun b!973254 () Bool)

(declare-fun res!442319 () Bool)

(declare-fun e!627161 () Bool)

(assert (=> b!973254 (=> (not res!442319) (not e!627161))))

(assert (=> b!973254 (= res!442319 call!61936)))

(assert (=> b!973254 (= e!627160 e!627161)))

(declare-fun call!61937 () Bool)

(declare-fun bm!61931 () Bool)

(declare-fun c!158823 () Bool)

(assert (=> bm!61931 (= call!61937 (validRegex!1182 (ite c!158823 (reg!3042 (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) (ite c!158822 (regTwo!5939 (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) (regTwo!5938 (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766))))))))))

(declare-fun b!973255 () Bool)

(declare-fun e!627162 () Bool)

(declare-fun e!627156 () Bool)

(assert (=> b!973255 (= e!627162 e!627156)))

(assert (=> b!973255 (= c!158823 ((_ is Star!2713) (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!973256 () Bool)

(declare-fun e!627159 () Bool)

(assert (=> b!973256 (= e!627159 call!61937)))

(declare-fun bm!61932 () Bool)

(declare-fun call!61935 () Bool)

(assert (=> bm!61932 (= call!61935 call!61937)))

(declare-fun b!973257 () Bool)

(assert (=> b!973257 (= e!627156 e!627160)))

(assert (=> b!973257 (= c!158822 ((_ is Union!2713) (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(declare-fun b!973258 () Bool)

(assert (=> b!973258 (= e!627161 call!61935)))

(declare-fun d!286956 () Bool)

(declare-fun res!442322 () Bool)

(assert (=> d!286956 (=> res!442322 e!627162)))

(assert (=> d!286956 (= res!442322 ((_ is ElementMatch!2713) (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))

(assert (=> d!286956 (= (validRegex!1182 (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))) e!627162)))

(declare-fun b!973259 () Bool)

(declare-fun e!627158 () Bool)

(assert (=> b!973259 (= e!627158 call!61935)))

(declare-fun b!973260 () Bool)

(assert (=> b!973260 (= e!627156 e!627159)))

(declare-fun res!442321 () Bool)

(assert (=> b!973260 (= res!442321 (not (nullable!833 (reg!3042 (ite c!158667 (regOne!5939 (regTwo!5938 r!15766)) (regOne!5938 (regTwo!5938 r!15766)))))))))

(assert (=> b!973260 (=> (not res!442321) (not e!627159))))

(declare-fun b!973261 () Bool)

(assert (=> b!973261 (= e!627157 e!627158)))

(declare-fun res!442323 () Bool)

(assert (=> b!973261 (=> (not res!442323) (not e!627158))))

(assert (=> b!973261 (= res!442323 call!61936)))

(assert (= (and d!286956 (not res!442322)) b!973255))

(assert (= (and b!973255 c!158823) b!973260))

(assert (= (and b!973255 (not c!158823)) b!973257))

(assert (= (and b!973260 res!442321) b!973256))

(assert (= (and b!973257 c!158822) b!973254))

(assert (= (and b!973257 (not c!158822)) b!973253))

(assert (= (and b!973254 res!442319) b!973258))

(assert (= (and b!973253 (not res!442320)) b!973261))

(assert (= (and b!973261 res!442323) b!973259))

(assert (= (or b!973258 b!973259) bm!61932))

(assert (= (or b!973254 b!973261) bm!61930))

(assert (= (or b!973256 bm!61932) bm!61931))

(declare-fun m!1176103 () Bool)

(assert (=> bm!61930 m!1176103))

(declare-fun m!1176105 () Bool)

(assert (=> bm!61931 m!1176105))

(declare-fun m!1176107 () Bool)

(assert (=> b!973260 m!1176107))

(assert (=> bm!61814 d!286956))

(declare-fun d!286958 () Bool)

(assert (=> d!286958 (= (nullable!833 (regTwo!5938 r!15766)) (nullableFct!198 (regTwo!5938 r!15766)))))

(declare-fun bs!242739 () Bool)

(assert (= bs!242739 d!286958))

(declare-fun m!1176109 () Bool)

(assert (=> bs!242739 m!1176109))

(assert (=> b!972464 d!286958))

(assert (=> b!972738 d!286842))

(declare-fun b!973262 () Bool)

(declare-fun res!442325 () Bool)

(declare-fun e!627164 () Bool)

(assert (=> b!973262 (=> res!442325 e!627164)))

(assert (=> b!973262 (= res!442325 (not ((_ is Concat!4546) (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))))

(declare-fun e!627167 () Bool)

(assert (=> b!973262 (= e!627167 e!627164)))

(declare-fun c!158824 () Bool)

(declare-fun call!61943 () Bool)

(declare-fun bm!61937 () Bool)

(assert (=> bm!61937 (= call!61943 (validRegex!1182 (ite c!158824 (regOne!5939 (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))) (regOne!5938 (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))))))))

(declare-fun b!973263 () Bool)

(declare-fun res!442324 () Bool)

(declare-fun e!627168 () Bool)

(assert (=> b!973263 (=> (not res!442324) (not e!627168))))

(assert (=> b!973263 (= res!442324 call!61943)))

(assert (=> b!973263 (= e!627167 e!627168)))

(declare-fun c!158825 () Bool)

(declare-fun bm!61938 () Bool)

(declare-fun call!61944 () Bool)

(assert (=> bm!61938 (= call!61944 (validRegex!1182 (ite c!158825 (reg!3042 (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))) (ite c!158824 (regTwo!5939 (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))) (regTwo!5938 (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766)))))))))))

(declare-fun b!973264 () Bool)

(declare-fun e!627169 () Bool)

(declare-fun e!627163 () Bool)

(assert (=> b!973264 (= e!627169 e!627163)))

(assert (=> b!973264 (= c!158825 ((_ is Star!2713) (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))))))

(declare-fun b!973265 () Bool)

(declare-fun e!627166 () Bool)

(assert (=> b!973265 (= e!627166 call!61944)))

(declare-fun bm!61939 () Bool)

(declare-fun call!61942 () Bool)

(assert (=> bm!61939 (= call!61942 call!61944)))

(declare-fun b!973266 () Bool)

(assert (=> b!973266 (= e!627163 e!627167)))

(assert (=> b!973266 (= c!158824 ((_ is Union!2713) (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))))))

(declare-fun b!973267 () Bool)

(assert (=> b!973267 (= e!627168 call!61942)))

(declare-fun d!286960 () Bool)

(declare-fun res!442327 () Bool)

(assert (=> d!286960 (=> res!442327 e!627169)))

(assert (=> d!286960 (= res!442327 ((_ is ElementMatch!2713) (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))))))

(assert (=> d!286960 (= (validRegex!1182 (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))) e!627169)))

(declare-fun b!973268 () Bool)

(declare-fun e!627165 () Bool)

(assert (=> b!973268 (= e!627165 call!61942)))

(declare-fun b!973269 () Bool)

(assert (=> b!973269 (= e!627163 e!627166)))

(declare-fun res!442326 () Bool)

(assert (=> b!973269 (= res!442326 (not (nullable!833 (reg!3042 (ite c!158668 (reg!3042 (regTwo!5938 r!15766)) (ite c!158667 (regTwo!5939 (regTwo!5938 r!15766)) (regTwo!5938 (regTwo!5938 r!15766))))))))))

(assert (=> b!973269 (=> (not res!442326) (not e!627166))))

(declare-fun b!973270 () Bool)

(assert (=> b!973270 (= e!627164 e!627165)))

(declare-fun res!442328 () Bool)

(assert (=> b!973270 (=> (not res!442328) (not e!627165))))

(assert (=> b!973270 (= res!442328 call!61943)))

(assert (= (and d!286960 (not res!442327)) b!973264))

(assert (= (and b!973264 c!158825) b!973269))

(assert (= (and b!973264 (not c!158825)) b!973266))

(assert (= (and b!973269 res!442326) b!973265))

(assert (= (and b!973266 c!158824) b!973263))

(assert (= (and b!973266 (not c!158824)) b!973262))

(assert (= (and b!973263 res!442324) b!973267))

(assert (= (and b!973262 (not res!442325)) b!973270))

(assert (= (and b!973270 res!442328) b!973268))

(assert (= (or b!973267 b!973268) bm!61939))

(assert (= (or b!973263 b!973270) bm!61937))

(assert (= (or b!973265 bm!61939) bm!61938))

(declare-fun m!1176111 () Bool)

(assert (=> bm!61937 m!1176111))

(declare-fun m!1176113 () Bool)

(assert (=> bm!61938 m!1176113))

(declare-fun m!1176115 () Bool)

(assert (=> b!973269 m!1176115))

(assert (=> bm!61815 d!286960))

(declare-fun d!286962 () Bool)

(assert (=> d!286962 (= (nullable!833 r!15766) (nullableFct!198 r!15766))))

(declare-fun bs!242740 () Bool)

(assert (= bs!242740 d!286962))

(declare-fun m!1176117 () Bool)

(assert (=> bs!242740 m!1176117))

(assert (=> b!972442 d!286962))

(assert (=> b!972466 d!286858))

(declare-fun d!286964 () Bool)

(declare-fun e!627170 () Bool)

(assert (=> d!286964 e!627170))

(declare-fun res!442329 () Bool)

(assert (=> d!286964 (=> (not res!442329) (not e!627170))))

(declare-fun lt!349201 () List!9943)

(assert (=> d!286964 (= res!442329 (= (content!1415 lt!349201) ((_ map or) (content!1415 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927))) (content!1415 (t!100989 s!10566)))))))

(declare-fun e!627171 () List!9943)

(assert (=> d!286964 (= lt!349201 e!627171)))

(declare-fun c!158826 () Bool)

(assert (=> d!286964 (= c!158826 ((_ is Nil!9927) (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927))))))

(assert (=> d!286964 (= (++!2689 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)) (t!100989 s!10566)) lt!349201)))

(declare-fun b!973272 () Bool)

(assert (=> b!973272 (= e!627171 (Cons!9927 (h!15328 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927))) (++!2689 (t!100989 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927))) (t!100989 s!10566))))))

(declare-fun b!973274 () Bool)

(assert (=> b!973274 (= e!627170 (or (not (= (t!100989 s!10566) Nil!9927)) (= lt!349201 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)))))))

(declare-fun b!973273 () Bool)

(declare-fun res!442330 () Bool)

(assert (=> b!973273 (=> (not res!442330) (not e!627170))))

(assert (=> b!973273 (= res!442330 (= (size!7949 lt!349201) (+ (size!7949 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927))) (size!7949 (t!100989 s!10566)))))))

(declare-fun b!973271 () Bool)

(assert (=> b!973271 (= e!627171 (t!100989 s!10566))))

(assert (= (and d!286964 c!158826) b!973271))

(assert (= (and d!286964 (not c!158826)) b!973272))

(assert (= (and d!286964 res!442329) b!973273))

(assert (= (and b!973273 res!442330) b!973274))

(declare-fun m!1176119 () Bool)

(assert (=> d!286964 m!1176119))

(assert (=> d!286964 m!1175753))

(declare-fun m!1176121 () Bool)

(assert (=> d!286964 m!1176121))

(declare-fun m!1176123 () Bool)

(assert (=> d!286964 m!1176123))

(declare-fun m!1176125 () Bool)

(assert (=> b!973272 m!1176125))

(declare-fun m!1176127 () Bool)

(assert (=> b!973273 m!1176127))

(assert (=> b!973273 m!1175753))

(declare-fun m!1176129 () Bool)

(assert (=> b!973273 m!1176129))

(assert (=> b!973273 m!1175741))

(assert (=> b!972740 d!286964))

(declare-fun d!286966 () Bool)

(declare-fun e!627172 () Bool)

(assert (=> d!286966 e!627172))

(declare-fun res!442331 () Bool)

(assert (=> d!286966 (=> (not res!442331) (not e!627172))))

(declare-fun lt!349202 () List!9943)

(assert (=> d!286966 (= res!442331 (= (content!1415 lt!349202) ((_ map or) (content!1415 Nil!9927) (content!1415 (Cons!9927 (h!15328 s!10566) Nil!9927)))))))

(declare-fun e!627173 () List!9943)

(assert (=> d!286966 (= lt!349202 e!627173)))

(declare-fun c!158827 () Bool)

(assert (=> d!286966 (= c!158827 ((_ is Nil!9927) Nil!9927))))

(assert (=> d!286966 (= (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)) lt!349202)))

(declare-fun b!973276 () Bool)

(assert (=> b!973276 (= e!627173 (Cons!9927 (h!15328 Nil!9927) (++!2689 (t!100989 Nil!9927) (Cons!9927 (h!15328 s!10566) Nil!9927))))))

(declare-fun b!973278 () Bool)

(assert (=> b!973278 (= e!627172 (or (not (= (Cons!9927 (h!15328 s!10566) Nil!9927) Nil!9927)) (= lt!349202 Nil!9927)))))

(declare-fun b!973277 () Bool)

(declare-fun res!442332 () Bool)

(assert (=> b!973277 (=> (not res!442332) (not e!627172))))

(assert (=> b!973277 (= res!442332 (= (size!7949 lt!349202) (+ (size!7949 Nil!9927) (size!7949 (Cons!9927 (h!15328 s!10566) Nil!9927)))))))

(declare-fun b!973275 () Bool)

(assert (=> b!973275 (= e!627173 (Cons!9927 (h!15328 s!10566) Nil!9927))))

(assert (= (and d!286966 c!158827) b!973275))

(assert (= (and d!286966 (not c!158827)) b!973276))

(assert (= (and d!286966 res!442331) b!973277))

(assert (= (and b!973277 res!442332) b!973278))

(declare-fun m!1176131 () Bool)

(assert (=> d!286966 m!1176131))

(declare-fun m!1176133 () Bool)

(assert (=> d!286966 m!1176133))

(declare-fun m!1176135 () Bool)

(assert (=> d!286966 m!1176135))

(declare-fun m!1176137 () Bool)

(assert (=> b!973276 m!1176137))

(declare-fun m!1176139 () Bool)

(assert (=> b!973277 m!1176139))

(declare-fun m!1176141 () Bool)

(assert (=> b!973277 m!1176141))

(declare-fun m!1176143 () Bool)

(assert (=> b!973277 m!1176143))

(assert (=> b!972740 d!286966))

(declare-fun d!286968 () Bool)

(assert (=> d!286968 (= (++!2689 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)) (t!100989 s!10566)) s!10566)))

(declare-fun lt!349206 () Unit!15085)

(declare-fun choose!6164 (List!9943 C!5996 List!9943 List!9943) Unit!15085)

(assert (=> d!286968 (= lt!349206 (choose!6164 Nil!9927 (h!15328 s!10566) (t!100989 s!10566) s!10566))))

(assert (=> d!286968 (= (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) (t!100989 s!10566))) s!10566)))

(assert (=> d!286968 (= (lemmaMoveElementToOtherListKeepsConcatEq!290 Nil!9927 (h!15328 s!10566) (t!100989 s!10566) s!10566) lt!349206)))

(declare-fun bs!242741 () Bool)

(assert (= bs!242741 d!286968))

(assert (=> bs!242741 m!1175753))

(assert (=> bs!242741 m!1175753))

(assert (=> bs!242741 m!1175755))

(declare-fun m!1176153 () Bool)

(assert (=> bs!242741 m!1176153))

(declare-fun m!1176155 () Bool)

(assert (=> bs!242741 m!1176155))

(assert (=> b!972740 d!286968))

(declare-fun b!973289 () Bool)

(declare-fun e!627179 () Option!2288)

(declare-fun e!627181 () Option!2288)

(assert (=> b!973289 (= e!627179 e!627181)))

(declare-fun c!158834 () Bool)

(assert (=> b!973289 (= c!158834 ((_ is Nil!9927) (t!100989 s!10566)))))

(declare-fun b!973291 () Bool)

(declare-fun res!442334 () Bool)

(declare-fun e!627183 () Bool)

(assert (=> b!973291 (=> (not res!442334) (not e!627183))))

(declare-fun lt!349208 () Option!2288)

(assert (=> b!973291 (= res!442334 (matchR!1249 (regTwo!5938 r!15766) (_2!6472 (get!3425 lt!349208))))))

(declare-fun b!973292 () Bool)

(declare-fun e!627182 () Bool)

(assert (=> b!973292 (= e!627182 (not (isDefined!1930 lt!349208)))))

(declare-fun b!973293 () Bool)

(declare-fun e!627180 () Bool)

(assert (=> b!973293 (= e!627180 (matchR!1249 (regTwo!5938 r!15766) (t!100989 s!10566)))))

(declare-fun b!973294 () Bool)

(declare-fun lt!349209 () Unit!15085)

(declare-fun lt!349207 () Unit!15085)

(assert (=> b!973294 (= lt!349209 lt!349207)))

(assert (=> b!973294 (= (++!2689 (++!2689 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)) (Cons!9927 (h!15328 (t!100989 s!10566)) Nil!9927)) (t!100989 (t!100989 s!10566))) s!10566)))

(assert (=> b!973294 (= lt!349207 (lemmaMoveElementToOtherListKeepsConcatEq!290 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)) (h!15328 (t!100989 s!10566)) (t!100989 (t!100989 s!10566)) s!10566))))

(assert (=> b!973294 (= e!627181 (findConcatSeparation!394 EmptyExpr!2713 (regTwo!5938 r!15766) (++!2689 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)) (Cons!9927 (h!15328 (t!100989 s!10566)) Nil!9927)) (t!100989 (t!100989 s!10566)) s!10566))))

(declare-fun b!973295 () Bool)

(declare-fun res!442333 () Bool)

(assert (=> b!973295 (=> (not res!442333) (not e!627183))))

(assert (=> b!973295 (= res!442333 (matchR!1249 EmptyExpr!2713 (_1!6472 (get!3425 lt!349208))))))

(declare-fun d!286974 () Bool)

(assert (=> d!286974 e!627182))

(declare-fun res!442336 () Bool)

(assert (=> d!286974 (=> res!442336 e!627182)))

(assert (=> d!286974 (= res!442336 e!627183)))

(declare-fun res!442335 () Bool)

(assert (=> d!286974 (=> (not res!442335) (not e!627183))))

(assert (=> d!286974 (= res!442335 (isDefined!1930 lt!349208))))

(assert (=> d!286974 (= lt!349208 e!627179)))

(declare-fun c!158833 () Bool)

(assert (=> d!286974 (= c!158833 e!627180)))

(declare-fun res!442337 () Bool)

(assert (=> d!286974 (=> (not res!442337) (not e!627180))))

(assert (=> d!286974 (= res!442337 (matchR!1249 EmptyExpr!2713 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927))))))

(assert (=> d!286974 (validRegex!1182 EmptyExpr!2713)))

(assert (=> d!286974 (= (findConcatSeparation!394 EmptyExpr!2713 (regTwo!5938 r!15766) (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)) (t!100989 s!10566) s!10566) lt!349208)))

(declare-fun b!973296 () Bool)

(assert (=> b!973296 (= e!627181 None!2287)))

(declare-fun b!973297 () Bool)

(assert (=> b!973297 (= e!627179 (Some!2287 (tuple2!11293 (++!2689 Nil!9927 (Cons!9927 (h!15328 s!10566) Nil!9927)) (t!100989 s!10566))))))

(declare-fun b!973298 () Bool)

(assert (=> b!973298 (= e!627183 (= (++!2689 (_1!6472 (get!3425 lt!349208)) (_2!6472 (get!3425 lt!349208))) s!10566))))

(assert (= (and d!286974 res!442337) b!973293))

(assert (= (and d!286974 c!158833) b!973297))

(assert (= (and d!286974 (not c!158833)) b!973289))

(assert (= (and b!973289 c!158834) b!973296))

(assert (= (and b!973289 (not c!158834)) b!973294))

(assert (= (and d!286974 res!442335) b!973295))

(assert (= (and b!973295 res!442333) b!973291))

(assert (= (and b!973291 res!442334) b!973298))

(assert (= (and d!286974 (not res!442336)) b!973292))

(declare-fun m!1176159 () Bool)

(assert (=> b!973293 m!1176159))

(declare-fun m!1176161 () Bool)

(assert (=> b!973292 m!1176161))

(assert (=> b!973294 m!1175753))

(declare-fun m!1176163 () Bool)

(assert (=> b!973294 m!1176163))

(assert (=> b!973294 m!1176163))

(declare-fun m!1176165 () Bool)

(assert (=> b!973294 m!1176165))

(assert (=> b!973294 m!1175753))

(declare-fun m!1176167 () Bool)

(assert (=> b!973294 m!1176167))

(assert (=> b!973294 m!1176163))

(declare-fun m!1176169 () Bool)

(assert (=> b!973294 m!1176169))

(declare-fun m!1176171 () Bool)

(assert (=> b!973298 m!1176171))

(declare-fun m!1176173 () Bool)

(assert (=> b!973298 m!1176173))

(assert (=> b!973291 m!1176171))

(declare-fun m!1176175 () Bool)

(assert (=> b!973291 m!1176175))

(assert (=> b!973295 m!1176171))

(declare-fun m!1176179 () Bool)

(assert (=> b!973295 m!1176179))

(assert (=> d!286974 m!1176161))

(assert (=> d!286974 m!1175753))

(declare-fun m!1176181 () Bool)

(assert (=> d!286974 m!1176181))

(assert (=> d!286974 m!1175771))

(assert (=> b!972740 d!286974))

(declare-fun d!286982 () Bool)

(assert (=> d!286982 (= (isEmpty!6240 lt!349108) (not ((_ is Some!2287) lt!349108)))))

(assert (=> d!286812 d!286982))

(assert (=> b!972444 d!286860))

(declare-fun b!973330 () Bool)

(declare-fun e!627210 () Int)

(assert (=> b!973330 (= e!627210 1)))

(declare-fun bm!61952 () Bool)

(declare-fun call!61963 () Int)

(declare-fun call!61961 () Int)

(assert (=> bm!61952 (= call!61963 call!61961)))

(declare-fun b!973331 () Bool)

(declare-fun e!627207 () Bool)

(declare-fun lt!349212 () Int)

(assert (=> b!973331 (= e!627207 (= lt!349212 1))))

(declare-fun b!973332 () Bool)

(declare-fun e!627205 () Bool)

(declare-fun e!627208 () Bool)

(assert (=> b!973332 (= e!627205 e!627208)))

(declare-fun res!442351 () Bool)

(declare-fun call!61958 () Int)

(assert (=> b!973332 (= res!442351 (> lt!349212 call!61958))))

(assert (=> b!973332 (=> (not res!442351) (not e!627208))))

(declare-fun bm!61953 () Bool)

(declare-fun call!61959 () Int)

(declare-fun call!61962 () Int)

(assert (=> bm!61953 (= call!61959 call!61962)))

(declare-fun b!973333 () Bool)

(declare-fun e!627206 () Bool)

(assert (=> b!973333 (= e!627206 e!627205)))

(declare-fun c!158848 () Bool)

(assert (=> b!973333 (= c!158848 ((_ is Union!2713) (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))))))

(declare-fun b!973334 () Bool)

(assert (=> b!973334 (= e!627208 (> lt!349212 call!61962))))

(declare-fun b!973335 () Bool)

(declare-fun e!627204 () Int)

(assert (=> b!973335 (= e!627204 e!627210)))

(declare-fun c!158850 () Bool)

(assert (=> b!973335 (= c!158850 ((_ is Concat!4546) (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))))))

(declare-fun b!973336 () Bool)

(declare-fun e!627201 () Int)

(declare-fun e!627209 () Int)

(assert (=> b!973336 (= e!627201 e!627209)))

(declare-fun c!158851 () Bool)

(assert (=> b!973336 (= c!158851 ((_ is Star!2713) (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))))))

(declare-fun b!973337 () Bool)

(declare-fun e!627202 () Bool)

(assert (=> b!973337 (= e!627202 (> lt!349212 call!61959))))

(declare-fun c!158845 () Bool)

(declare-fun b!973338 () Bool)

(assert (=> b!973338 (= c!158845 ((_ is Star!2713) (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))))))

(declare-fun e!627203 () Bool)

(assert (=> b!973338 (= e!627203 e!627207)))

(declare-fun b!973339 () Bool)

(assert (=> b!973339 (= e!627201 1)))

(declare-fun c!158846 () Bool)

(declare-fun bm!61955 () Bool)

(assert (=> bm!61955 (= call!61961 (regexDepth!16 (ite c!158851 (reg!3042 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))) (ite c!158846 (regOne!5939 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))) (regOne!5938 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766)))))))))))

(declare-fun b!973340 () Bool)

(assert (=> b!973340 (= c!158846 ((_ is Union!2713) (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))))))

(assert (=> b!973340 (= e!627209 e!627204)))

(declare-fun b!973341 () Bool)

(assert (=> b!973341 (= e!627205 e!627203)))

(declare-fun c!158849 () Bool)

(assert (=> b!973341 (= c!158849 ((_ is Concat!4546) (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))))))

(declare-fun bm!61956 () Bool)

(assert (=> bm!61956 (= call!61962 (regexDepth!16 (ite c!158848 (regTwo!5939 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))) (ite c!158849 (regTwo!5938 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))) (reg!3042 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766)))))))))))

(declare-fun bm!61957 () Bool)

(assert (=> bm!61957 (= call!61958 (regexDepth!16 (ite c!158848 (regOne!5939 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))) (regOne!5938 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))))))))

(declare-fun b!973342 () Bool)

(declare-fun call!61957 () Int)

(assert (=> b!973342 (= e!627210 (+ 1 call!61957))))

(declare-fun b!973343 () Bool)

(declare-fun res!442350 () Bool)

(assert (=> b!973343 (=> (not res!442350) (not e!627202))))

(assert (=> b!973343 (= res!442350 (> lt!349212 call!61958))))

(assert (=> b!973343 (= e!627203 e!627202)))

(declare-fun b!973344 () Bool)

(assert (=> b!973344 (= e!627207 (> lt!349212 call!61959))))

(declare-fun b!973345 () Bool)

(assert (=> b!973345 (= e!627204 (+ 1 call!61957))))

(declare-fun bm!61954 () Bool)

(declare-fun call!61960 () Int)

(assert (=> bm!61954 (= call!61957 (maxBigInt!0 call!61963 call!61960))))

(declare-fun d!286986 () Bool)

(assert (=> d!286986 e!627206))

(declare-fun res!442349 () Bool)

(assert (=> d!286986 (=> (not res!442349) (not e!627206))))

(assert (=> d!286986 (= res!442349 (> lt!349212 0))))

(assert (=> d!286986 (= lt!349212 e!627201)))

(declare-fun c!158847 () Bool)

(assert (=> d!286986 (= c!158847 ((_ is ElementMatch!2713) (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))))))

(assert (=> d!286986 (= (regexDepth!16 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))) lt!349212)))

(declare-fun bm!61958 () Bool)

(assert (=> bm!61958 (= call!61960 (regexDepth!16 (ite c!158846 (regTwo!5939 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))) (regTwo!5938 (ite c!158640 (regTwo!5939 (regTwo!5938 r!15766)) (ite c!158641 (regTwo!5938 (regTwo!5938 r!15766)) (reg!3042 (regTwo!5938 r!15766))))))))))

(declare-fun b!973346 () Bool)

(assert (=> b!973346 (= e!627209 (+ 1 call!61961))))

(assert (= (and d!286986 c!158847) b!973339))

(assert (= (and d!286986 (not c!158847)) b!973336))

(assert (= (and b!973336 c!158851) b!973346))

(assert (= (and b!973336 (not c!158851)) b!973340))

(assert (= (and b!973340 c!158846) b!973345))

(assert (= (and b!973340 (not c!158846)) b!973335))

(assert (= (and b!973335 c!158850) b!973342))

(assert (= (and b!973335 (not c!158850)) b!973330))

(assert (= (or b!973345 b!973342) bm!61958))

(assert (= (or b!973345 b!973342) bm!61952))

(assert (= (or b!973345 b!973342) bm!61954))

(assert (= (or b!973346 bm!61952) bm!61955))

(assert (= (and d!286986 res!442349) b!973333))

(assert (= (and b!973333 c!158848) b!973332))

(assert (= (and b!973333 (not c!158848)) b!973341))

(assert (= (and b!973332 res!442351) b!973334))

(assert (= (and b!973341 c!158849) b!973343))

(assert (= (and b!973341 (not c!158849)) b!973338))

(assert (= (and b!973343 res!442350) b!973337))

(assert (= (and b!973338 c!158845) b!973344))

(assert (= (and b!973338 (not c!158845)) b!973331))

(assert (= (or b!973337 b!973344) bm!61953))

(assert (= (or b!973334 bm!61953) bm!61956))

(assert (= (or b!973332 b!973343) bm!61957))

(declare-fun m!1176195 () Bool)

(assert (=> bm!61956 m!1176195))

(declare-fun m!1176197 () Bool)

(assert (=> bm!61955 m!1176197))

(declare-fun m!1176199 () Bool)

(assert (=> bm!61954 m!1176199))

(declare-fun m!1176201 () Bool)

(assert (=> bm!61958 m!1176201))

(declare-fun m!1176203 () Bool)

(assert (=> bm!61957 m!1176203))

(assert (=> bm!61795 d!286986))

(declare-fun b!973364 () Bool)

(declare-fun e!627230 () Int)

(assert (=> b!973364 (= e!627230 1)))

(declare-fun bm!61966 () Bool)

(declare-fun call!61977 () Int)

(declare-fun call!61975 () Int)

(assert (=> bm!61966 (= call!61977 call!61975)))

(declare-fun b!973365 () Bool)

(declare-fun e!627227 () Bool)

(declare-fun lt!349214 () Int)

(assert (=> b!973365 (= e!627227 (= lt!349214 1))))

(declare-fun b!973366 () Bool)

(declare-fun e!627225 () Bool)

(declare-fun e!627228 () Bool)

(assert (=> b!973366 (= e!627225 e!627228)))

(declare-fun res!442357 () Bool)

(declare-fun call!61972 () Int)

(assert (=> b!973366 (= res!442357 (> lt!349214 call!61972))))

(assert (=> b!973366 (=> (not res!442357) (not e!627228))))

(declare-fun bm!61967 () Bool)

(declare-fun call!61973 () Int)

(declare-fun call!61976 () Int)

(assert (=> bm!61967 (= call!61973 call!61976)))

(declare-fun b!973367 () Bool)

(declare-fun e!627226 () Bool)

(assert (=> b!973367 (= e!627226 e!627225)))

(declare-fun c!158862 () Bool)

(assert (=> b!973367 (= c!158862 ((_ is Union!2713) (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))))))

(declare-fun b!973368 () Bool)

(assert (=> b!973368 (= e!627228 (> lt!349214 call!61976))))

(declare-fun b!973369 () Bool)

(declare-fun e!627224 () Int)

(assert (=> b!973369 (= e!627224 e!627230)))

(declare-fun c!158864 () Bool)

(assert (=> b!973369 (= c!158864 ((_ is Concat!4546) (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))))))

(declare-fun b!973370 () Bool)

(declare-fun e!627221 () Int)

(declare-fun e!627229 () Int)

(assert (=> b!973370 (= e!627221 e!627229)))

(declare-fun c!158865 () Bool)

(assert (=> b!973370 (= c!158865 ((_ is Star!2713) (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))))))

(declare-fun b!973371 () Bool)

(declare-fun e!627222 () Bool)

(assert (=> b!973371 (= e!627222 (> lt!349214 call!61973))))

(declare-fun c!158859 () Bool)

(declare-fun b!973372 () Bool)

(assert (=> b!973372 (= c!158859 ((_ is Star!2713) (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))))))

(declare-fun e!627223 () Bool)

(assert (=> b!973372 (= e!627223 e!627227)))

(declare-fun b!973373 () Bool)

(assert (=> b!973373 (= e!627221 1)))

(declare-fun c!158860 () Bool)

(declare-fun bm!61969 () Bool)

(assert (=> bm!61969 (= call!61975 (regexDepth!16 (ite c!158865 (reg!3042 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))) (ite c!158860 (regOne!5939 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))) (regOne!5938 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766))))))))))

(declare-fun b!973374 () Bool)

(assert (=> b!973374 (= c!158860 ((_ is Union!2713) (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))))))

(assert (=> b!973374 (= e!627229 e!627224)))

(declare-fun b!973375 () Bool)

(assert (=> b!973375 (= e!627225 e!627223)))

(declare-fun c!158863 () Bool)

(assert (=> b!973375 (= c!158863 ((_ is Concat!4546) (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))))))

(declare-fun bm!61970 () Bool)

(assert (=> bm!61970 (= call!61976 (regexDepth!16 (ite c!158862 (regTwo!5939 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))) (ite c!158863 (regTwo!5938 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))) (reg!3042 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766))))))))))

(declare-fun bm!61971 () Bool)

(assert (=> bm!61971 (= call!61972 (regexDepth!16 (ite c!158862 (regOne!5939 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))) (regOne!5938 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))))))))

(declare-fun b!973376 () Bool)

(declare-fun call!61971 () Int)

(assert (=> b!973376 (= e!627230 (+ 1 call!61971))))

(declare-fun b!973377 () Bool)

(declare-fun res!442356 () Bool)

(assert (=> b!973377 (=> (not res!442356) (not e!627222))))

(assert (=> b!973377 (= res!442356 (> lt!349214 call!61972))))

(assert (=> b!973377 (= e!627223 e!627222)))

(declare-fun b!973378 () Bool)

(assert (=> b!973378 (= e!627227 (> lt!349214 call!61973))))

(declare-fun b!973379 () Bool)

(assert (=> b!973379 (= e!627224 (+ 1 call!61971))))

(declare-fun bm!61968 () Bool)

(declare-fun call!61974 () Int)

(assert (=> bm!61968 (= call!61971 (maxBigInt!0 call!61977 call!61974))))

(declare-fun d!286990 () Bool)

(assert (=> d!286990 e!627226))

(declare-fun res!442355 () Bool)

(assert (=> d!286990 (=> (not res!442355) (not e!627226))))

(assert (=> d!286990 (= res!442355 (> lt!349214 0))))

(assert (=> d!286990 (= lt!349214 e!627221)))

(declare-fun c!158861 () Bool)

(assert (=> d!286990 (= c!158861 ((_ is ElementMatch!2713) (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))))))

(assert (=> d!286990 (= (regexDepth!16 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))) lt!349214)))

(declare-fun bm!61972 () Bool)

(assert (=> bm!61972 (= call!61974 (regexDepth!16 (ite c!158860 (regTwo!5939 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))) (regTwo!5938 (ite c!158650 (regTwo!5939 r!15766) (ite c!158651 (regTwo!5938 r!15766) (reg!3042 r!15766)))))))))

(declare-fun b!973380 () Bool)

(assert (=> b!973380 (= e!627229 (+ 1 call!61975))))

(assert (= (and d!286990 c!158861) b!973373))

(assert (= (and d!286990 (not c!158861)) b!973370))

(assert (= (and b!973370 c!158865) b!973380))

(assert (= (and b!973370 (not c!158865)) b!973374))

(assert (= (and b!973374 c!158860) b!973379))

(assert (= (and b!973374 (not c!158860)) b!973369))

(assert (= (and b!973369 c!158864) b!973376))

(assert (= (and b!973369 (not c!158864)) b!973364))

(assert (= (or b!973379 b!973376) bm!61972))

(assert (= (or b!973379 b!973376) bm!61966))

(assert (= (or b!973379 b!973376) bm!61968))

(assert (= (or b!973380 bm!61966) bm!61969))

(assert (= (and d!286990 res!442355) b!973367))

(assert (= (and b!973367 c!158862) b!973366))

(assert (= (and b!973367 (not c!158862)) b!973375))

(assert (= (and b!973366 res!442357) b!973368))

(assert (= (and b!973375 c!158863) b!973377))

(assert (= (and b!973375 (not c!158863)) b!973372))

(assert (= (and b!973377 res!442356) b!973371))

(assert (= (and b!973372 c!158859) b!973378))

(assert (= (and b!973372 (not c!158859)) b!973365))

(assert (= (or b!973371 b!973378) bm!61967))

(assert (= (or b!973368 bm!61967) bm!61970))

(assert (= (or b!973366 b!973377) bm!61971))

(declare-fun m!1176217 () Bool)

(assert (=> bm!61970 m!1176217))

(declare-fun m!1176219 () Bool)

(assert (=> bm!61969 m!1176219))

(declare-fun m!1176221 () Bool)

(assert (=> bm!61968 m!1176221))

(declare-fun m!1176223 () Bool)

(assert (=> bm!61972 m!1176223))

(declare-fun m!1176225 () Bool)

(assert (=> bm!61971 m!1176225))

(assert (=> bm!61802 d!286990))

(declare-fun b!973398 () Bool)

(declare-fun e!627238 () Bool)

(declare-fun tp!297783 () Bool)

(declare-fun tp!297782 () Bool)

(assert (=> b!973398 (= e!627238 (and tp!297783 tp!297782))))

(declare-fun b!973395 () Bool)

(assert (=> b!973395 (= e!627238 tp_is_empty!5069)))

(declare-fun b!973396 () Bool)

(declare-fun tp!297781 () Bool)

(declare-fun tp!297784 () Bool)

(assert (=> b!973396 (= e!627238 (and tp!297781 tp!297784))))

(declare-fun b!973397 () Bool)

(declare-fun tp!297785 () Bool)

(assert (=> b!973397 (= e!627238 tp!297785)))

(assert (=> b!972804 (= tp!297773 e!627238)))

(assert (= (and b!972804 ((_ is ElementMatch!2713) (regOne!5938 (reg!3042 r!15766)))) b!973395))

(assert (= (and b!972804 ((_ is Concat!4546) (regOne!5938 (reg!3042 r!15766)))) b!973396))

(assert (= (and b!972804 ((_ is Star!2713) (regOne!5938 (reg!3042 r!15766)))) b!973397))

(assert (= (and b!972804 ((_ is Union!2713) (regOne!5938 (reg!3042 r!15766)))) b!973398))

(declare-fun b!973402 () Bool)

(declare-fun e!627239 () Bool)

(declare-fun tp!297788 () Bool)

(declare-fun tp!297787 () Bool)

(assert (=> b!973402 (= e!627239 (and tp!297788 tp!297787))))

(declare-fun b!973399 () Bool)

(assert (=> b!973399 (= e!627239 tp_is_empty!5069)))

(declare-fun b!973400 () Bool)

(declare-fun tp!297786 () Bool)

(declare-fun tp!297789 () Bool)

(assert (=> b!973400 (= e!627239 (and tp!297786 tp!297789))))

(declare-fun b!973401 () Bool)

(declare-fun tp!297790 () Bool)

(assert (=> b!973401 (= e!627239 tp!297790)))

(assert (=> b!972804 (= tp!297776 e!627239)))

(assert (= (and b!972804 ((_ is ElementMatch!2713) (regTwo!5938 (reg!3042 r!15766)))) b!973399))

(assert (= (and b!972804 ((_ is Concat!4546) (regTwo!5938 (reg!3042 r!15766)))) b!973400))

(assert (= (and b!972804 ((_ is Star!2713) (regTwo!5938 (reg!3042 r!15766)))) b!973401))

(assert (= (and b!972804 ((_ is Union!2713) (regTwo!5938 (reg!3042 r!15766)))) b!973402))

(declare-fun b!973406 () Bool)

(declare-fun e!627240 () Bool)

(declare-fun tp!297793 () Bool)

(declare-fun tp!297792 () Bool)

(assert (=> b!973406 (= e!627240 (and tp!297793 tp!297792))))

(declare-fun b!973403 () Bool)

(assert (=> b!973403 (= e!627240 tp_is_empty!5069)))

(declare-fun b!973404 () Bool)

(declare-fun tp!297791 () Bool)

(declare-fun tp!297794 () Bool)

(assert (=> b!973404 (= e!627240 (and tp!297791 tp!297794))))

(declare-fun b!973405 () Bool)

(declare-fun tp!297795 () Bool)

(assert (=> b!973405 (= e!627240 tp!297795)))

(assert (=> b!972800 (= tp!297768 e!627240)))

(assert (= (and b!972800 ((_ is ElementMatch!2713) (regOne!5938 (regTwo!5938 r!15766)))) b!973403))

(assert (= (and b!972800 ((_ is Concat!4546) (regOne!5938 (regTwo!5938 r!15766)))) b!973404))

(assert (= (and b!972800 ((_ is Star!2713) (regOne!5938 (regTwo!5938 r!15766)))) b!973405))

(assert (= (and b!972800 ((_ is Union!2713) (regOne!5938 (regTwo!5938 r!15766)))) b!973406))

(declare-fun b!973410 () Bool)

(declare-fun e!627241 () Bool)

(declare-fun tp!297798 () Bool)

(declare-fun tp!297797 () Bool)

(assert (=> b!973410 (= e!627241 (and tp!297798 tp!297797))))

(declare-fun b!973407 () Bool)

(assert (=> b!973407 (= e!627241 tp_is_empty!5069)))

(declare-fun b!973408 () Bool)

(declare-fun tp!297796 () Bool)

(declare-fun tp!297799 () Bool)

(assert (=> b!973408 (= e!627241 (and tp!297796 tp!297799))))

(declare-fun b!973409 () Bool)

(declare-fun tp!297800 () Bool)

(assert (=> b!973409 (= e!627241 tp!297800)))

(assert (=> b!972800 (= tp!297771 e!627241)))

(assert (= (and b!972800 ((_ is ElementMatch!2713) (regTwo!5938 (regTwo!5938 r!15766)))) b!973407))

(assert (= (and b!972800 ((_ is Concat!4546) (regTwo!5938 (regTwo!5938 r!15766)))) b!973408))

(assert (= (and b!972800 ((_ is Star!2713) (regTwo!5938 (regTwo!5938 r!15766)))) b!973409))

(assert (= (and b!972800 ((_ is Union!2713) (regTwo!5938 (regTwo!5938 r!15766)))) b!973410))

(declare-fun b!973414 () Bool)

(declare-fun e!627242 () Bool)

(declare-fun tp!297803 () Bool)

(declare-fun tp!297802 () Bool)

(assert (=> b!973414 (= e!627242 (and tp!297803 tp!297802))))

(declare-fun b!973411 () Bool)

(assert (=> b!973411 (= e!627242 tp_is_empty!5069)))

(declare-fun b!973412 () Bool)

(declare-fun tp!297801 () Bool)

(declare-fun tp!297804 () Bool)

(assert (=> b!973412 (= e!627242 (and tp!297801 tp!297804))))

(declare-fun b!973413 () Bool)

(declare-fun tp!297805 () Bool)

(assert (=> b!973413 (= e!627242 tp!297805)))

(assert (=> b!972805 (= tp!297777 e!627242)))

(assert (= (and b!972805 ((_ is ElementMatch!2713) (reg!3042 (reg!3042 r!15766)))) b!973411))

(assert (= (and b!972805 ((_ is Concat!4546) (reg!3042 (reg!3042 r!15766)))) b!973412))

(assert (= (and b!972805 ((_ is Star!2713) (reg!3042 (reg!3042 r!15766)))) b!973413))

(assert (= (and b!972805 ((_ is Union!2713) (reg!3042 (reg!3042 r!15766)))) b!973414))

(declare-fun b!973422 () Bool)

(declare-fun e!627250 () Bool)

(declare-fun tp!297808 () Bool)

(declare-fun tp!297807 () Bool)

(assert (=> b!973422 (= e!627250 (and tp!297808 tp!297807))))

(declare-fun b!973417 () Bool)

(assert (=> b!973417 (= e!627250 tp_is_empty!5069)))

(declare-fun b!973419 () Bool)

(declare-fun tp!297806 () Bool)

(declare-fun tp!297809 () Bool)

(assert (=> b!973419 (= e!627250 (and tp!297806 tp!297809))))

(declare-fun b!973421 () Bool)

(declare-fun tp!297810 () Bool)

(assert (=> b!973421 (= e!627250 tp!297810)))

(assert (=> b!972796 (= tp!297763 e!627250)))

(assert (= (and b!972796 ((_ is ElementMatch!2713) (regOne!5938 (regOne!5938 r!15766)))) b!973417))

(assert (= (and b!972796 ((_ is Concat!4546) (regOne!5938 (regOne!5938 r!15766)))) b!973419))

(assert (= (and b!972796 ((_ is Star!2713) (regOne!5938 (regOne!5938 r!15766)))) b!973421))

(assert (= (and b!972796 ((_ is Union!2713) (regOne!5938 (regOne!5938 r!15766)))) b!973422))

(declare-fun b!973431 () Bool)

(declare-fun e!627251 () Bool)

(declare-fun tp!297813 () Bool)

(declare-fun tp!297812 () Bool)

(assert (=> b!973431 (= e!627251 (and tp!297813 tp!297812))))

(declare-fun b!973428 () Bool)

(assert (=> b!973428 (= e!627251 tp_is_empty!5069)))

(declare-fun b!973429 () Bool)

(declare-fun tp!297811 () Bool)

(declare-fun tp!297814 () Bool)

(assert (=> b!973429 (= e!627251 (and tp!297811 tp!297814))))

(declare-fun b!973430 () Bool)

(declare-fun tp!297815 () Bool)

(assert (=> b!973430 (= e!627251 tp!297815)))

(assert (=> b!972796 (= tp!297766 e!627251)))

(assert (= (and b!972796 ((_ is ElementMatch!2713) (regTwo!5938 (regOne!5938 r!15766)))) b!973428))

(assert (= (and b!972796 ((_ is Concat!4546) (regTwo!5938 (regOne!5938 r!15766)))) b!973429))

(assert (= (and b!972796 ((_ is Star!2713) (regTwo!5938 (regOne!5938 r!15766)))) b!973430))

(assert (= (and b!972796 ((_ is Union!2713) (regTwo!5938 (regOne!5938 r!15766)))) b!973431))

(declare-fun b!973435 () Bool)

(declare-fun e!627252 () Bool)

(declare-fun tp!297818 () Bool)

(declare-fun tp!297817 () Bool)

(assert (=> b!973435 (= e!627252 (and tp!297818 tp!297817))))

(declare-fun b!973432 () Bool)

(assert (=> b!973432 (= e!627252 tp_is_empty!5069)))

(declare-fun b!973433 () Bool)

(declare-fun tp!297816 () Bool)

(declare-fun tp!297819 () Bool)

(assert (=> b!973433 (= e!627252 (and tp!297816 tp!297819))))

(declare-fun b!973434 () Bool)

(declare-fun tp!297820 () Bool)

(assert (=> b!973434 (= e!627252 tp!297820)))

(assert (=> b!972801 (= tp!297772 e!627252)))

(assert (= (and b!972801 ((_ is ElementMatch!2713) (reg!3042 (regTwo!5938 r!15766)))) b!973432))

(assert (= (and b!972801 ((_ is Concat!4546) (reg!3042 (regTwo!5938 r!15766)))) b!973433))

(assert (= (and b!972801 ((_ is Star!2713) (reg!3042 (regTwo!5938 r!15766)))) b!973434))

(assert (= (and b!972801 ((_ is Union!2713) (reg!3042 (regTwo!5938 r!15766)))) b!973435))

(declare-fun b!973439 () Bool)

(declare-fun e!627253 () Bool)

(declare-fun tp!297823 () Bool)

(declare-fun tp!297822 () Bool)

(assert (=> b!973439 (= e!627253 (and tp!297823 tp!297822))))

(declare-fun b!973436 () Bool)

(assert (=> b!973436 (= e!627253 tp_is_empty!5069)))

(declare-fun b!973437 () Bool)

(declare-fun tp!297821 () Bool)

(declare-fun tp!297824 () Bool)

(assert (=> b!973437 (= e!627253 (and tp!297821 tp!297824))))

(declare-fun b!973438 () Bool)

(declare-fun tp!297825 () Bool)

(assert (=> b!973438 (= e!627253 tp!297825)))

(assert (=> b!972792 (= tp!297758 e!627253)))

(assert (= (and b!972792 ((_ is ElementMatch!2713) (regOne!5938 (regTwo!5939 r!15766)))) b!973436))

(assert (= (and b!972792 ((_ is Concat!4546) (regOne!5938 (regTwo!5939 r!15766)))) b!973437))

(assert (= (and b!972792 ((_ is Star!2713) (regOne!5938 (regTwo!5939 r!15766)))) b!973438))

(assert (= (and b!972792 ((_ is Union!2713) (regOne!5938 (regTwo!5939 r!15766)))) b!973439))

(declare-fun b!973443 () Bool)

(declare-fun e!627254 () Bool)

(declare-fun tp!297828 () Bool)

(declare-fun tp!297827 () Bool)

(assert (=> b!973443 (= e!627254 (and tp!297828 tp!297827))))

(declare-fun b!973440 () Bool)

(assert (=> b!973440 (= e!627254 tp_is_empty!5069)))

(declare-fun b!973441 () Bool)

(declare-fun tp!297826 () Bool)

(declare-fun tp!297829 () Bool)

(assert (=> b!973441 (= e!627254 (and tp!297826 tp!297829))))

(declare-fun b!973442 () Bool)

(declare-fun tp!297830 () Bool)

(assert (=> b!973442 (= e!627254 tp!297830)))

(assert (=> b!972792 (= tp!297761 e!627254)))

(assert (= (and b!972792 ((_ is ElementMatch!2713) (regTwo!5938 (regTwo!5939 r!15766)))) b!973440))

(assert (= (and b!972792 ((_ is Concat!4546) (regTwo!5938 (regTwo!5939 r!15766)))) b!973441))

(assert (= (and b!972792 ((_ is Star!2713) (regTwo!5938 (regTwo!5939 r!15766)))) b!973442))

(assert (= (and b!972792 ((_ is Union!2713) (regTwo!5938 (regTwo!5939 r!15766)))) b!973443))

(declare-fun b!973447 () Bool)

(declare-fun e!627255 () Bool)

(declare-fun tp!297833 () Bool)

(declare-fun tp!297832 () Bool)

(assert (=> b!973447 (= e!627255 (and tp!297833 tp!297832))))

(declare-fun b!973444 () Bool)

(assert (=> b!973444 (= e!627255 tp_is_empty!5069)))

(declare-fun b!973445 () Bool)

(declare-fun tp!297831 () Bool)

(declare-fun tp!297834 () Bool)

(assert (=> b!973445 (= e!627255 (and tp!297831 tp!297834))))

(declare-fun b!973446 () Bool)

(declare-fun tp!297835 () Bool)

(assert (=> b!973446 (= e!627255 tp!297835)))

(assert (=> b!972806 (= tp!297775 e!627255)))

(assert (= (and b!972806 ((_ is ElementMatch!2713) (regOne!5939 (reg!3042 r!15766)))) b!973444))

(assert (= (and b!972806 ((_ is Concat!4546) (regOne!5939 (reg!3042 r!15766)))) b!973445))

(assert (= (and b!972806 ((_ is Star!2713) (regOne!5939 (reg!3042 r!15766)))) b!973446))

(assert (= (and b!972806 ((_ is Union!2713) (regOne!5939 (reg!3042 r!15766)))) b!973447))

(declare-fun b!973468 () Bool)

(declare-fun e!627266 () Bool)

(declare-fun tp!297838 () Bool)

(declare-fun tp!297837 () Bool)

(assert (=> b!973468 (= e!627266 (and tp!297838 tp!297837))))

(declare-fun b!973465 () Bool)

(assert (=> b!973465 (= e!627266 tp_is_empty!5069)))

(declare-fun b!973466 () Bool)

(declare-fun tp!297836 () Bool)

(declare-fun tp!297839 () Bool)

(assert (=> b!973466 (= e!627266 (and tp!297836 tp!297839))))

(declare-fun b!973467 () Bool)

(declare-fun tp!297840 () Bool)

(assert (=> b!973467 (= e!627266 tp!297840)))

(assert (=> b!972806 (= tp!297774 e!627266)))

(assert (= (and b!972806 ((_ is ElementMatch!2713) (regTwo!5939 (reg!3042 r!15766)))) b!973465))

(assert (= (and b!972806 ((_ is Concat!4546) (regTwo!5939 (reg!3042 r!15766)))) b!973466))

(assert (= (and b!972806 ((_ is Star!2713) (regTwo!5939 (reg!3042 r!15766)))) b!973467))

(assert (= (and b!972806 ((_ is Union!2713) (regTwo!5939 (reg!3042 r!15766)))) b!973468))

(declare-fun b!973472 () Bool)

(declare-fun e!627267 () Bool)

(declare-fun tp!297843 () Bool)

(declare-fun tp!297842 () Bool)

(assert (=> b!973472 (= e!627267 (and tp!297843 tp!297842))))

(declare-fun b!973469 () Bool)

(assert (=> b!973469 (= e!627267 tp_is_empty!5069)))

(declare-fun b!973470 () Bool)

(declare-fun tp!297841 () Bool)

(declare-fun tp!297844 () Bool)

(assert (=> b!973470 (= e!627267 (and tp!297841 tp!297844))))

(declare-fun b!973471 () Bool)

(declare-fun tp!297845 () Bool)

(assert (=> b!973471 (= e!627267 tp!297845)))

(assert (=> b!972797 (= tp!297767 e!627267)))

(assert (= (and b!972797 ((_ is ElementMatch!2713) (reg!3042 (regOne!5938 r!15766)))) b!973469))

(assert (= (and b!972797 ((_ is Concat!4546) (reg!3042 (regOne!5938 r!15766)))) b!973470))

(assert (= (and b!972797 ((_ is Star!2713) (reg!3042 (regOne!5938 r!15766)))) b!973471))

(assert (= (and b!972797 ((_ is Union!2713) (reg!3042 (regOne!5938 r!15766)))) b!973472))

(declare-fun b!973476 () Bool)

(declare-fun e!627268 () Bool)

(declare-fun tp!297848 () Bool)

(declare-fun tp!297847 () Bool)

(assert (=> b!973476 (= e!627268 (and tp!297848 tp!297847))))

(declare-fun b!973473 () Bool)

(assert (=> b!973473 (= e!627268 tp_is_empty!5069)))

(declare-fun b!973474 () Bool)

(declare-fun tp!297846 () Bool)

(declare-fun tp!297849 () Bool)

(assert (=> b!973474 (= e!627268 (and tp!297846 tp!297849))))

(declare-fun b!973475 () Bool)

(declare-fun tp!297850 () Bool)

(assert (=> b!973475 (= e!627268 tp!297850)))

(assert (=> b!972788 (= tp!297753 e!627268)))

(assert (= (and b!972788 ((_ is ElementMatch!2713) (regOne!5938 (regOne!5939 r!15766)))) b!973473))

(assert (= (and b!972788 ((_ is Concat!4546) (regOne!5938 (regOne!5939 r!15766)))) b!973474))

(assert (= (and b!972788 ((_ is Star!2713) (regOne!5938 (regOne!5939 r!15766)))) b!973475))

(assert (= (and b!972788 ((_ is Union!2713) (regOne!5938 (regOne!5939 r!15766)))) b!973476))

(declare-fun b!973480 () Bool)

(declare-fun e!627269 () Bool)

(declare-fun tp!297853 () Bool)

(declare-fun tp!297852 () Bool)

(assert (=> b!973480 (= e!627269 (and tp!297853 tp!297852))))

(declare-fun b!973477 () Bool)

(assert (=> b!973477 (= e!627269 tp_is_empty!5069)))

(declare-fun b!973478 () Bool)

(declare-fun tp!297851 () Bool)

(declare-fun tp!297854 () Bool)

(assert (=> b!973478 (= e!627269 (and tp!297851 tp!297854))))

(declare-fun b!973479 () Bool)

(declare-fun tp!297855 () Bool)

(assert (=> b!973479 (= e!627269 tp!297855)))

(assert (=> b!972788 (= tp!297756 e!627269)))

(assert (= (and b!972788 ((_ is ElementMatch!2713) (regTwo!5938 (regOne!5939 r!15766)))) b!973477))

(assert (= (and b!972788 ((_ is Concat!4546) (regTwo!5938 (regOne!5939 r!15766)))) b!973478))

(assert (= (and b!972788 ((_ is Star!2713) (regTwo!5938 (regOne!5939 r!15766)))) b!973479))

(assert (= (and b!972788 ((_ is Union!2713) (regTwo!5938 (regOne!5939 r!15766)))) b!973480))

(declare-fun b!973484 () Bool)

(declare-fun e!627270 () Bool)

(declare-fun tp!297858 () Bool)

(declare-fun tp!297857 () Bool)

(assert (=> b!973484 (= e!627270 (and tp!297858 tp!297857))))

(declare-fun b!973481 () Bool)

(assert (=> b!973481 (= e!627270 tp_is_empty!5069)))

(declare-fun b!973482 () Bool)

(declare-fun tp!297856 () Bool)

(declare-fun tp!297859 () Bool)

(assert (=> b!973482 (= e!627270 (and tp!297856 tp!297859))))

(declare-fun b!973483 () Bool)

(declare-fun tp!297860 () Bool)

(assert (=> b!973483 (= e!627270 tp!297860)))

(assert (=> b!972802 (= tp!297770 e!627270)))

(assert (= (and b!972802 ((_ is ElementMatch!2713) (regOne!5939 (regTwo!5938 r!15766)))) b!973481))

(assert (= (and b!972802 ((_ is Concat!4546) (regOne!5939 (regTwo!5938 r!15766)))) b!973482))

(assert (= (and b!972802 ((_ is Star!2713) (regOne!5939 (regTwo!5938 r!15766)))) b!973483))

(assert (= (and b!972802 ((_ is Union!2713) (regOne!5939 (regTwo!5938 r!15766)))) b!973484))

(declare-fun b!973488 () Bool)

(declare-fun e!627271 () Bool)

(declare-fun tp!297863 () Bool)

(declare-fun tp!297862 () Bool)

(assert (=> b!973488 (= e!627271 (and tp!297863 tp!297862))))

(declare-fun b!973485 () Bool)

(assert (=> b!973485 (= e!627271 tp_is_empty!5069)))

(declare-fun b!973486 () Bool)

(declare-fun tp!297861 () Bool)

(declare-fun tp!297864 () Bool)

(assert (=> b!973486 (= e!627271 (and tp!297861 tp!297864))))

(declare-fun b!973487 () Bool)

(declare-fun tp!297865 () Bool)

(assert (=> b!973487 (= e!627271 tp!297865)))

(assert (=> b!972802 (= tp!297769 e!627271)))

(assert (= (and b!972802 ((_ is ElementMatch!2713) (regTwo!5939 (regTwo!5938 r!15766)))) b!973485))

(assert (= (and b!972802 ((_ is Concat!4546) (regTwo!5939 (regTwo!5938 r!15766)))) b!973486))

(assert (= (and b!972802 ((_ is Star!2713) (regTwo!5939 (regTwo!5938 r!15766)))) b!973487))

(assert (= (and b!972802 ((_ is Union!2713) (regTwo!5939 (regTwo!5938 r!15766)))) b!973488))

(declare-fun b!973492 () Bool)

(declare-fun e!627272 () Bool)

(declare-fun tp!297868 () Bool)

(declare-fun tp!297867 () Bool)

(assert (=> b!973492 (= e!627272 (and tp!297868 tp!297867))))

(declare-fun b!973489 () Bool)

(assert (=> b!973489 (= e!627272 tp_is_empty!5069)))

(declare-fun b!973490 () Bool)

(declare-fun tp!297866 () Bool)

(declare-fun tp!297869 () Bool)

(assert (=> b!973490 (= e!627272 (and tp!297866 tp!297869))))

(declare-fun b!973491 () Bool)

(declare-fun tp!297870 () Bool)

(assert (=> b!973491 (= e!627272 tp!297870)))

(assert (=> b!972793 (= tp!297762 e!627272)))

(assert (= (and b!972793 ((_ is ElementMatch!2713) (reg!3042 (regTwo!5939 r!15766)))) b!973489))

(assert (= (and b!972793 ((_ is Concat!4546) (reg!3042 (regTwo!5939 r!15766)))) b!973490))

(assert (= (and b!972793 ((_ is Star!2713) (reg!3042 (regTwo!5939 r!15766)))) b!973491))

(assert (= (and b!972793 ((_ is Union!2713) (reg!3042 (regTwo!5939 r!15766)))) b!973492))

(declare-fun b!973507 () Bool)

(declare-fun e!627280 () Bool)

(declare-fun tp!297873 () Bool)

(declare-fun tp!297872 () Bool)

(assert (=> b!973507 (= e!627280 (and tp!297873 tp!297872))))

(declare-fun b!973504 () Bool)

(assert (=> b!973504 (= e!627280 tp_is_empty!5069)))

(declare-fun b!973505 () Bool)

(declare-fun tp!297871 () Bool)

(declare-fun tp!297874 () Bool)

(assert (=> b!973505 (= e!627280 (and tp!297871 tp!297874))))

(declare-fun b!973506 () Bool)

(declare-fun tp!297875 () Bool)

(assert (=> b!973506 (= e!627280 tp!297875)))

(assert (=> b!972798 (= tp!297765 e!627280)))

(assert (= (and b!972798 ((_ is ElementMatch!2713) (regOne!5939 (regOne!5938 r!15766)))) b!973504))

(assert (= (and b!972798 ((_ is Concat!4546) (regOne!5939 (regOne!5938 r!15766)))) b!973505))

(assert (= (and b!972798 ((_ is Star!2713) (regOne!5939 (regOne!5938 r!15766)))) b!973506))

(assert (= (and b!972798 ((_ is Union!2713) (regOne!5939 (regOne!5938 r!15766)))) b!973507))

(declare-fun b!973511 () Bool)

(declare-fun e!627281 () Bool)

(declare-fun tp!297878 () Bool)

(declare-fun tp!297877 () Bool)

(assert (=> b!973511 (= e!627281 (and tp!297878 tp!297877))))

(declare-fun b!973508 () Bool)

(assert (=> b!973508 (= e!627281 tp_is_empty!5069)))

(declare-fun b!973509 () Bool)

(declare-fun tp!297876 () Bool)

(declare-fun tp!297879 () Bool)

(assert (=> b!973509 (= e!627281 (and tp!297876 tp!297879))))

(declare-fun b!973510 () Bool)

(declare-fun tp!297880 () Bool)

(assert (=> b!973510 (= e!627281 tp!297880)))

(assert (=> b!972798 (= tp!297764 e!627281)))

(assert (= (and b!972798 ((_ is ElementMatch!2713) (regTwo!5939 (regOne!5938 r!15766)))) b!973508))

(assert (= (and b!972798 ((_ is Concat!4546) (regTwo!5939 (regOne!5938 r!15766)))) b!973509))

(assert (= (and b!972798 ((_ is Star!2713) (regTwo!5939 (regOne!5938 r!15766)))) b!973510))

(assert (= (and b!972798 ((_ is Union!2713) (regTwo!5939 (regOne!5938 r!15766)))) b!973511))

(declare-fun b!973515 () Bool)

(declare-fun e!627282 () Bool)

(declare-fun tp!297883 () Bool)

(declare-fun tp!297882 () Bool)

(assert (=> b!973515 (= e!627282 (and tp!297883 tp!297882))))

(declare-fun b!973512 () Bool)

(assert (=> b!973512 (= e!627282 tp_is_empty!5069)))

(declare-fun b!973513 () Bool)

(declare-fun tp!297881 () Bool)

(declare-fun tp!297884 () Bool)

(assert (=> b!973513 (= e!627282 (and tp!297881 tp!297884))))

(declare-fun b!973514 () Bool)

(declare-fun tp!297885 () Bool)

(assert (=> b!973514 (= e!627282 tp!297885)))

(assert (=> b!972789 (= tp!297757 e!627282)))

(assert (= (and b!972789 ((_ is ElementMatch!2713) (reg!3042 (regOne!5939 r!15766)))) b!973512))

(assert (= (and b!972789 ((_ is Concat!4546) (reg!3042 (regOne!5939 r!15766)))) b!973513))

(assert (= (and b!972789 ((_ is Star!2713) (reg!3042 (regOne!5939 r!15766)))) b!973514))

(assert (= (and b!972789 ((_ is Union!2713) (reg!3042 (regOne!5939 r!15766)))) b!973515))

(declare-fun b!973519 () Bool)

(declare-fun e!627283 () Bool)

(declare-fun tp!297888 () Bool)

(declare-fun tp!297887 () Bool)

(assert (=> b!973519 (= e!627283 (and tp!297888 tp!297887))))

(declare-fun b!973516 () Bool)

(assert (=> b!973516 (= e!627283 tp_is_empty!5069)))

(declare-fun b!973517 () Bool)

(declare-fun tp!297886 () Bool)

(declare-fun tp!297889 () Bool)

(assert (=> b!973517 (= e!627283 (and tp!297886 tp!297889))))

(declare-fun b!973518 () Bool)

(declare-fun tp!297890 () Bool)

(assert (=> b!973518 (= e!627283 tp!297890)))

(assert (=> b!972794 (= tp!297760 e!627283)))

(assert (= (and b!972794 ((_ is ElementMatch!2713) (regOne!5939 (regTwo!5939 r!15766)))) b!973516))

(assert (= (and b!972794 ((_ is Concat!4546) (regOne!5939 (regTwo!5939 r!15766)))) b!973517))

(assert (= (and b!972794 ((_ is Star!2713) (regOne!5939 (regTwo!5939 r!15766)))) b!973518))

(assert (= (and b!972794 ((_ is Union!2713) (regOne!5939 (regTwo!5939 r!15766)))) b!973519))

(declare-fun b!973523 () Bool)

(declare-fun e!627284 () Bool)

(declare-fun tp!297893 () Bool)

(declare-fun tp!297892 () Bool)

(assert (=> b!973523 (= e!627284 (and tp!297893 tp!297892))))

(declare-fun b!973520 () Bool)

(assert (=> b!973520 (= e!627284 tp_is_empty!5069)))

(declare-fun b!973521 () Bool)

(declare-fun tp!297891 () Bool)

(declare-fun tp!297894 () Bool)

(assert (=> b!973521 (= e!627284 (and tp!297891 tp!297894))))

(declare-fun b!973522 () Bool)

(declare-fun tp!297895 () Bool)

(assert (=> b!973522 (= e!627284 tp!297895)))

(assert (=> b!972794 (= tp!297759 e!627284)))

(assert (= (and b!972794 ((_ is ElementMatch!2713) (regTwo!5939 (regTwo!5939 r!15766)))) b!973520))

(assert (= (and b!972794 ((_ is Concat!4546) (regTwo!5939 (regTwo!5939 r!15766)))) b!973521))

(assert (= (and b!972794 ((_ is Star!2713) (regTwo!5939 (regTwo!5939 r!15766)))) b!973522))

(assert (= (and b!972794 ((_ is Union!2713) (regTwo!5939 (regTwo!5939 r!15766)))) b!973523))

(declare-fun b!973527 () Bool)

(declare-fun e!627285 () Bool)

(declare-fun tp!297898 () Bool)

(declare-fun tp!297897 () Bool)

(assert (=> b!973527 (= e!627285 (and tp!297898 tp!297897))))

(declare-fun b!973524 () Bool)

(assert (=> b!973524 (= e!627285 tp_is_empty!5069)))

(declare-fun b!973525 () Bool)

(declare-fun tp!297896 () Bool)

(declare-fun tp!297899 () Bool)

(assert (=> b!973525 (= e!627285 (and tp!297896 tp!297899))))

(declare-fun b!973526 () Bool)

(declare-fun tp!297900 () Bool)

(assert (=> b!973526 (= e!627285 tp!297900)))

(assert (=> b!972790 (= tp!297755 e!627285)))

(assert (= (and b!972790 ((_ is ElementMatch!2713) (regOne!5939 (regOne!5939 r!15766)))) b!973524))

(assert (= (and b!972790 ((_ is Concat!4546) (regOne!5939 (regOne!5939 r!15766)))) b!973525))

(assert (= (and b!972790 ((_ is Star!2713) (regOne!5939 (regOne!5939 r!15766)))) b!973526))

(assert (= (and b!972790 ((_ is Union!2713) (regOne!5939 (regOne!5939 r!15766)))) b!973527))

(declare-fun b!973531 () Bool)

(declare-fun e!627286 () Bool)

(declare-fun tp!297903 () Bool)

(declare-fun tp!297902 () Bool)

(assert (=> b!973531 (= e!627286 (and tp!297903 tp!297902))))

(declare-fun b!973528 () Bool)

(assert (=> b!973528 (= e!627286 tp_is_empty!5069)))

(declare-fun b!973529 () Bool)

(declare-fun tp!297901 () Bool)

(declare-fun tp!297904 () Bool)

(assert (=> b!973529 (= e!627286 (and tp!297901 tp!297904))))

(declare-fun b!973530 () Bool)

(declare-fun tp!297905 () Bool)

(assert (=> b!973530 (= e!627286 tp!297905)))

(assert (=> b!972790 (= tp!297754 e!627286)))

(assert (= (and b!972790 ((_ is ElementMatch!2713) (regTwo!5939 (regOne!5939 r!15766)))) b!973528))

(assert (= (and b!972790 ((_ is Concat!4546) (regTwo!5939 (regOne!5939 r!15766)))) b!973529))

(assert (= (and b!972790 ((_ is Star!2713) (regTwo!5939 (regOne!5939 r!15766)))) b!973530))

(assert (= (and b!972790 ((_ is Union!2713) (regTwo!5939 (regOne!5939 r!15766)))) b!973531))

(declare-fun b!973532 () Bool)

(declare-fun e!627287 () Bool)

(declare-fun tp!297906 () Bool)

(assert (=> b!973532 (= e!627287 (and tp_is_empty!5069 tp!297906))))

(assert (=> b!972811 (= tp!297780 e!627287)))

(assert (= (and b!972811 ((_ is Cons!9927) (t!100989 (t!100989 s!10566)))) b!973532))

(check-sat (not bm!61869) (not b!973531) (not b!973298) (not b!972854) (not bm!61838) (not d!286832) (not b!973060) (not bm!61839) (not b!972990) (not d!286920) (not b!973476) (not b!973482) (not b!973486) (not bm!61891) (not bm!61901) (not d!286866) (not b!973507) (not bm!61833) (not bm!61954) (not b!973505) (not b!973525) (not b!973396) (not d!286918) (not b!972939) (not bm!61897) (not b!973020) (not b!973051) (not d!286884) (not bm!61867) (not bm!61824) (not b!973404) (not b!973118) (not b!973291) (not b!973479) (not d!286964) (not b!973260) (not b!973518) (not bm!61938) (not b!973445) (not b!973447) (not bm!61900) (not bm!61849) (not b!972938) (not bm!61937) (not b!973530) (not d!286886) (not b!973487) (not bm!61870) (not b!973438) (not b!972929) (not b!973112) (not b!972863) (not b!973139) (not b!973400) (not d!286824) (not d!286962) (not b!973483) (not b!972983) (not b!973412) (not b!973431) (not b!973269) (not d!286922) (not b!973419) (not b!973121) (not b!973529) (not b!973532) (not b!973480) (not b!973511) (not b!972992) (not bm!61956) (not b!973137) (not bm!61831) (not b!973050) (not bm!61912) (not b!973441) (not b!973277) (not d!286844) (not bm!61832) (not b!973146) (not bm!61918) (not b!973120) (not b!972822) (not b!973202) (not b!972936) (not b!973402) (not b!972930) (not b!973276) (not bm!61925) (not bm!61924) (not b!973475) (not d!286968) (not b!973515) (not b!973406) (not b!972950) (not bm!61906) (not d!286948) (not b!973435) (not b!973229) (not bm!61957) (not b!973136) (not b!973472) (not bm!61904) (not b!973408) (not b!973468) (not bm!61930) (not b!973470) (not d!286830) (not bm!61881) (not b!972853) (not d!286836) (not b!973527) (not d!286950) (not d!286958) (not b!973414) (not b!973430) (not b!973059) (not d!286966) (not b!973087) (not b!972873) (not bm!61921) (not b!973273) (not bm!61893) (not d!286834) (not d!286934) (not b!973484) (not b!972927) (not b!972821) (not bm!61911) (not b!973510) (not bm!61931) (not b!973227) (not b!973443) (not bm!61910) (not bm!61902) (not b!973509) (not b!973478) (not b!973422) (not d!286902) (not b!973272) (not bm!61898) (not b!973191) (not b!973410) (not b!973523) (not d!286938) (not bm!61909) (not bm!61958) (not bm!61850) (not d!286932) (not bm!61837) (not d!286930) (not bm!61868) (not bm!61825) (not b!973429) (not b!973111) (not bm!61826) (not b!973521) (not d!286842) (not b!973526) (not b!973522) (not bm!61861) (not b!973421) (not b!973293) (not bm!61955) (not d!286974) (not b!973397) (not d!286916) (not b!973466) (not b!973294) (not b!973437) (not b!973295) (not b!973130) (not b!973446) (not b!973514) (not b!973474) (not b!972831) (not bm!61917) (not b!973409) (not b!973439) (not b!973434) (not bm!61972) (not b!973413) (not b!973442) (not b!973517) (not b!973057) (not b!972860) (not bm!61922) (not bm!61899) (not b!972948) (not b!973058) (not bm!61834) (not b!973519) (not b!973119) (not b!973129) (not bm!61896) (not bm!61969) (not b!972991) (not bm!61971) (not bm!61864) (not bm!61819) (not b!973138) (not b!973506) (not b!972937) (not b!973401) (not b!973433) (not bm!61830) (not b!973490) (not b!972982) (not b!973492) (not bm!61970) tp_is_empty!5069 (not bm!61841) (not b!973405) (not b!973292) (not b!973204) (not b!973491) (not d!286904) (not bm!61968) (not bm!61851) (not b!972989) (not bm!61913) (not b!973467) (not bm!61820) (not bm!61919) (not b!972861) (not b!972862) (not b!973018) (not bm!61840) (not b!973471) (not bm!61920) (not b!973398) (not b!973513) (not b!973488) (not bm!61916) (not bm!61865) (not bm!61866))
(check-sat)
