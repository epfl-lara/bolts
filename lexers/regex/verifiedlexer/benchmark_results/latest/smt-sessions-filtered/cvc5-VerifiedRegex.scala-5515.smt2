; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278036 () Bool)

(assert start!278036)

(declare-fun b!2856379 () Bool)

(assert (=> b!2856379 true))

(assert (=> b!2856379 true))

(declare-fun b!2856375 () Bool)

(declare-fun res!1186623 () Bool)

(declare-fun e!1809027 () Bool)

(assert (=> b!2856375 (=> (not res!1186623) (not e!1809027))))

(declare-datatypes ((C!17350 0))(
  ( (C!17351 (val!10709 Int)) )
))
(declare-datatypes ((Regex!8584 0))(
  ( (ElementMatch!8584 (c!460293 C!17350)) (Concat!13905 (regOne!17680 Regex!8584) (regTwo!17680 Regex!8584)) (EmptyExpr!8584) (Star!8584 (reg!8913 Regex!8584)) (EmptyLang!8584) (Union!8584 (regOne!17681 Regex!8584) (regTwo!17681 Regex!8584)) )
))
(declare-fun r!23423 () Regex!8584)

(declare-datatypes ((List!34181 0))(
  ( (Nil!34057) (Cons!34057 (h!39477 C!17350) (t!233212 List!34181)) )
))
(declare-fun prefix!1470 () List!34181)

(declare-fun prefixMatch!892 (Regex!8584 List!34181) Bool)

(assert (=> b!2856375 (= res!1186623 (prefixMatch!892 r!23423 prefix!1470))))

(declare-fun res!1186624 () Bool)

(assert (=> start!278036 (=> (not res!1186624) (not e!1809027))))

(declare-fun validRegex!3454 (Regex!8584) Bool)

(assert (=> start!278036 (= res!1186624 (validRegex!3454 r!23423))))

(assert (=> start!278036 e!1809027))

(declare-fun e!1809025 () Bool)

(assert (=> start!278036 e!1809025))

(declare-fun e!1809026 () Bool)

(assert (=> start!278036 e!1809026))

(declare-fun b!2856376 () Bool)

(declare-fun res!1186625 () Bool)

(assert (=> b!2856376 (=> (not res!1186625) (not e!1809027))))

(assert (=> b!2856376 (= res!1186625 (not (is-Nil!34057 prefix!1470)))))

(declare-fun b!2856377 () Bool)

(declare-fun tp!919262 () Bool)

(assert (=> b!2856377 (= e!1809025 tp!919262)))

(declare-fun b!2856378 () Bool)

(declare-fun tp_is_empty!14905 () Bool)

(declare-fun tp!919265 () Bool)

(assert (=> b!2856378 (= e!1809026 (and tp_is_empty!14905 tp!919265))))

(declare-fun lt!1014007 () Regex!8584)

(assert (=> b!2856379 (= e!1809027 (not (validRegex!3454 lt!1014007)))))

(declare-fun lt!1014006 () List!34181)

(declare-fun lambda!105048 () Int)

(declare-fun pickWitness!303 (Int) List!34181)

(assert (=> b!2856379 (= lt!1014006 (pickWitness!303 lambda!105048))))

(declare-fun Exists!1290 (Int) Bool)

(assert (=> b!2856379 (Exists!1290 lambda!105048)))

(assert (=> b!2856379 (Exists!1290 lambda!105048)))

(declare-datatypes ((Unit!47711 0))(
  ( (Unit!47712) )
))
(declare-fun lt!1014008 () Unit!47711)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!338 (Regex!8584 List!34181) Unit!47711)

(assert (=> b!2856379 (= lt!1014008 (lemmaPrefixMatchThenExistsStringThatMatches!338 lt!1014007 (t!233212 prefix!1470)))))

(declare-fun derivativeStep!2273 (Regex!8584 C!17350) Regex!8584)

(assert (=> b!2856379 (= lt!1014007 (derivativeStep!2273 r!23423 (h!39477 prefix!1470)))))

(declare-fun b!2856380 () Bool)

(declare-fun tp!919261 () Bool)

(declare-fun tp!919263 () Bool)

(assert (=> b!2856380 (= e!1809025 (and tp!919261 tp!919263))))

(declare-fun b!2856381 () Bool)

(assert (=> b!2856381 (= e!1809025 tp_is_empty!14905)))

(declare-fun b!2856382 () Bool)

(declare-fun tp!919266 () Bool)

(declare-fun tp!919264 () Bool)

(assert (=> b!2856382 (= e!1809025 (and tp!919266 tp!919264))))

(assert (= (and start!278036 res!1186624) b!2856375))

(assert (= (and b!2856375 res!1186623) b!2856376))

(assert (= (and b!2856376 res!1186625) b!2856379))

(assert (= (and start!278036 (is-ElementMatch!8584 r!23423)) b!2856381))

(assert (= (and start!278036 (is-Concat!13905 r!23423)) b!2856380))

(assert (= (and start!278036 (is-Star!8584 r!23423)) b!2856377))

(assert (= (and start!278036 (is-Union!8584 r!23423)) b!2856382))

(assert (= (and start!278036 (is-Cons!34057 prefix!1470)) b!2856378))

(declare-fun m!3278873 () Bool)

(assert (=> b!2856375 m!3278873))

(declare-fun m!3278875 () Bool)

(assert (=> start!278036 m!3278875))

(declare-fun m!3278877 () Bool)

(assert (=> b!2856379 m!3278877))

(declare-fun m!3278879 () Bool)

(assert (=> b!2856379 m!3278879))

(declare-fun m!3278881 () Bool)

(assert (=> b!2856379 m!3278881))

(declare-fun m!3278883 () Bool)

(assert (=> b!2856379 m!3278883))

(assert (=> b!2856379 m!3278883))

(declare-fun m!3278885 () Bool)

(assert (=> b!2856379 m!3278885))

(push 1)

(assert (not b!2856380))

(assert (not b!2856382))

(assert (not b!2856379))

(assert (not b!2856375))

(assert (not b!2856378))

(assert tp_is_empty!14905)

(assert (not start!278036))

(assert (not b!2856377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!826476 () Bool)

(declare-fun c!460297 () Bool)

(declare-fun isEmpty!18598 (List!34181) Bool)

(assert (=> d!826476 (= c!460297 (isEmpty!18598 prefix!1470))))

(declare-fun e!1809043 () Bool)

(assert (=> d!826476 (= (prefixMatch!892 r!23423 prefix!1470) e!1809043)))

(declare-fun b!2856423 () Bool)

(declare-fun lostCause!744 (Regex!8584) Bool)

(assert (=> b!2856423 (= e!1809043 (not (lostCause!744 r!23423)))))

(declare-fun b!2856424 () Bool)

(declare-fun head!6273 (List!34181) C!17350)

(declare-fun tail!4498 (List!34181) List!34181)

(assert (=> b!2856424 (= e!1809043 (prefixMatch!892 (derivativeStep!2273 r!23423 (head!6273 prefix!1470)) (tail!4498 prefix!1470)))))

(assert (= (and d!826476 c!460297) b!2856423))

(assert (= (and d!826476 (not c!460297)) b!2856424))

(declare-fun m!3278901 () Bool)

(assert (=> d!826476 m!3278901))

(declare-fun m!3278903 () Bool)

(assert (=> b!2856423 m!3278903))

(declare-fun m!3278905 () Bool)

(assert (=> b!2856424 m!3278905))

(assert (=> b!2856424 m!3278905))

(declare-fun m!3278907 () Bool)

(assert (=> b!2856424 m!3278907))

(declare-fun m!3278909 () Bool)

(assert (=> b!2856424 m!3278909))

(assert (=> b!2856424 m!3278907))

(assert (=> b!2856424 m!3278909))

(declare-fun m!3278911 () Bool)

(assert (=> b!2856424 m!3278911))

(assert (=> b!2856375 d!826476))

(declare-fun b!2856461 () Bool)

(declare-fun res!1186661 () Bool)

(declare-fun e!1809073 () Bool)

(assert (=> b!2856461 (=> (not res!1186661) (not e!1809073))))

(declare-fun call!183997 () Bool)

(assert (=> b!2856461 (= res!1186661 call!183997)))

(declare-fun e!1809078 () Bool)

(assert (=> b!2856461 (= e!1809078 e!1809073)))

(declare-fun b!2856462 () Bool)

(declare-fun res!1186662 () Bool)

(declare-fun e!1809074 () Bool)

(assert (=> b!2856462 (=> res!1186662 e!1809074)))

(assert (=> b!2856462 (= res!1186662 (not (is-Concat!13905 r!23423)))))

(assert (=> b!2856462 (= e!1809078 e!1809074)))

(declare-fun call!183999 () Bool)

(declare-fun c!460307 () Bool)

(declare-fun c!460306 () Bool)

(declare-fun bm!183992 () Bool)

(assert (=> bm!183992 (= call!183999 (validRegex!3454 (ite c!460306 (reg!8913 r!23423) (ite c!460307 (regOne!17681 r!23423) (regOne!17680 r!23423)))))))

(declare-fun b!2856463 () Bool)

(declare-fun call!183998 () Bool)

(assert (=> b!2856463 (= e!1809073 call!183998)))

(declare-fun b!2856464 () Bool)

(declare-fun e!1809077 () Bool)

(assert (=> b!2856464 (= e!1809077 e!1809078)))

(assert (=> b!2856464 (= c!460307 (is-Union!8584 r!23423))))

(declare-fun b!2856465 () Bool)

(declare-fun e!1809075 () Bool)

(assert (=> b!2856465 (= e!1809075 e!1809077)))

(assert (=> b!2856465 (= c!460306 (is-Star!8584 r!23423))))

(declare-fun b!2856466 () Bool)

(declare-fun e!1809072 () Bool)

(assert (=> b!2856466 (= e!1809072 call!183998)))

(declare-fun d!826480 () Bool)

(declare-fun res!1186659 () Bool)

(assert (=> d!826480 (=> res!1186659 e!1809075)))

(assert (=> d!826480 (= res!1186659 (is-ElementMatch!8584 r!23423))))

(assert (=> d!826480 (= (validRegex!3454 r!23423) e!1809075)))

(declare-fun b!2856467 () Bool)

(assert (=> b!2856467 (= e!1809074 e!1809072)))

(declare-fun res!1186660 () Bool)

(assert (=> b!2856467 (=> (not res!1186660) (not e!1809072))))

(assert (=> b!2856467 (= res!1186660 call!183997)))

(declare-fun bm!183993 () Bool)

(assert (=> bm!183993 (= call!183997 call!183999)))

(declare-fun b!2856468 () Bool)

(declare-fun e!1809076 () Bool)

(assert (=> b!2856468 (= e!1809076 call!183999)))

(declare-fun b!2856469 () Bool)

(assert (=> b!2856469 (= e!1809077 e!1809076)))

(declare-fun res!1186663 () Bool)

(declare-fun nullable!2645 (Regex!8584) Bool)

(assert (=> b!2856469 (= res!1186663 (not (nullable!2645 (reg!8913 r!23423))))))

(assert (=> b!2856469 (=> (not res!1186663) (not e!1809076))))

(declare-fun bm!183994 () Bool)

(assert (=> bm!183994 (= call!183998 (validRegex!3454 (ite c!460307 (regTwo!17681 r!23423) (regTwo!17680 r!23423))))))

(assert (= (and d!826480 (not res!1186659)) b!2856465))

(assert (= (and b!2856465 c!460306) b!2856469))

(assert (= (and b!2856465 (not c!460306)) b!2856464))

(assert (= (and b!2856469 res!1186663) b!2856468))

(assert (= (and b!2856464 c!460307) b!2856461))

(assert (= (and b!2856464 (not c!460307)) b!2856462))

(assert (= (and b!2856461 res!1186661) b!2856463))

(assert (= (and b!2856462 (not res!1186662)) b!2856467))

(assert (= (and b!2856467 res!1186660) b!2856466))

(assert (= (or b!2856463 b!2856466) bm!183994))

(assert (= (or b!2856461 b!2856467) bm!183993))

(assert (= (or b!2856468 bm!183993) bm!183992))

(declare-fun m!3278913 () Bool)

(assert (=> bm!183992 m!3278913))

(declare-fun m!3278915 () Bool)

(assert (=> b!2856469 m!3278915))

(declare-fun m!3278917 () Bool)

(assert (=> bm!183994 m!3278917))

(assert (=> start!278036 d!826480))

(declare-fun bs!520267 () Bool)

(declare-fun d!826482 () Bool)

(assert (= bs!520267 (and d!826482 b!2856379)))

(declare-fun lambda!105056 () Int)

(assert (=> bs!520267 (= lambda!105056 lambda!105048)))

(assert (=> d!826482 true))

(assert (=> d!826482 true))

(assert (=> d!826482 (Exists!1290 lambda!105056)))

(declare-fun lt!1014020 () Unit!47711)

(declare-fun choose!16798 (Regex!8584 List!34181) Unit!47711)

(assert (=> d!826482 (= lt!1014020 (choose!16798 lt!1014007 (t!233212 prefix!1470)))))

(assert (=> d!826482 (validRegex!3454 lt!1014007)))

(assert (=> d!826482 (= (lemmaPrefixMatchThenExistsStringThatMatches!338 lt!1014007 (t!233212 prefix!1470)) lt!1014020)))

(declare-fun bs!520268 () Bool)

(assert (= bs!520268 d!826482))

(declare-fun m!3278925 () Bool)

(assert (=> bs!520268 m!3278925))

(declare-fun m!3278927 () Bool)

(assert (=> bs!520268 m!3278927))

(assert (=> bs!520268 m!3278877))

(assert (=> b!2856379 d!826482))

(declare-fun b!2856507 () Bool)

(declare-fun e!1809104 () Regex!8584)

(declare-fun e!1809102 () Regex!8584)

(assert (=> b!2856507 (= e!1809104 e!1809102)))

(declare-fun c!460325 () Bool)

(assert (=> b!2856507 (= c!460325 (is-Star!8584 r!23423))))

(declare-fun b!2856508 () Bool)

(declare-fun e!1809103 () Regex!8584)

(assert (=> b!2856508 (= e!1809103 EmptyLang!8584)))

(declare-fun bm!184006 () Bool)

(declare-fun call!184011 () Regex!8584)

(declare-fun call!184012 () Regex!8584)

(assert (=> bm!184006 (= call!184011 call!184012)))

(declare-fun e!1809101 () Regex!8584)

(declare-fun call!184014 () Regex!8584)

(declare-fun b!2856509 () Bool)

(declare-fun call!184013 () Regex!8584)

(assert (=> b!2856509 (= e!1809101 (Union!8584 (Concat!13905 call!184014 (regTwo!17680 r!23423)) call!184013))))

(declare-fun d!826486 () Bool)

(declare-fun lt!1014023 () Regex!8584)

(assert (=> d!826486 (validRegex!3454 lt!1014023)))

(assert (=> d!826486 (= lt!1014023 e!1809103)))

(declare-fun c!460323 () Bool)

(assert (=> d!826486 (= c!460323 (or (is-EmptyExpr!8584 r!23423) (is-EmptyLang!8584 r!23423)))))

(assert (=> d!826486 (validRegex!3454 r!23423)))

(assert (=> d!826486 (= (derivativeStep!2273 r!23423 (h!39477 prefix!1470)) lt!1014023)))

(declare-fun b!2856510 () Bool)

(assert (=> b!2856510 (= e!1809104 (Union!8584 call!184014 call!184012))))

(declare-fun b!2856511 () Bool)

(declare-fun c!460326 () Bool)

(assert (=> b!2856511 (= c!460326 (is-Union!8584 r!23423))))

(declare-fun e!1809105 () Regex!8584)

(assert (=> b!2856511 (= e!1809105 e!1809104)))

(declare-fun bm!184007 () Bool)

(assert (=> bm!184007 (= call!184013 call!184011)))

(declare-fun bm!184008 () Bool)

(assert (=> bm!184008 (= call!184014 (derivativeStep!2273 (ite c!460326 (regOne!17681 r!23423) (regOne!17680 r!23423)) (h!39477 prefix!1470)))))

(declare-fun c!460327 () Bool)

(declare-fun bm!184009 () Bool)

(assert (=> bm!184009 (= call!184012 (derivativeStep!2273 (ite c!460326 (regTwo!17681 r!23423) (ite c!460325 (reg!8913 r!23423) (ite c!460327 (regTwo!17680 r!23423) (regOne!17680 r!23423)))) (h!39477 prefix!1470)))))

(declare-fun b!2856512 () Bool)

(assert (=> b!2856512 (= e!1809105 (ite (= (h!39477 prefix!1470) (c!460293 r!23423)) EmptyExpr!8584 EmptyLang!8584))))

(declare-fun b!2856513 () Bool)

(assert (=> b!2856513 (= e!1809101 (Union!8584 (Concat!13905 call!184013 (regTwo!17680 r!23423)) EmptyLang!8584))))

(declare-fun b!2856514 () Bool)

(assert (=> b!2856514 (= e!1809103 e!1809105)))

(declare-fun c!460324 () Bool)

(assert (=> b!2856514 (= c!460324 (is-ElementMatch!8584 r!23423))))

(declare-fun b!2856515 () Bool)

(assert (=> b!2856515 (= c!460327 (nullable!2645 (regOne!17680 r!23423)))))

(assert (=> b!2856515 (= e!1809102 e!1809101)))

(declare-fun b!2856516 () Bool)

(assert (=> b!2856516 (= e!1809102 (Concat!13905 call!184011 r!23423))))

(assert (= (and d!826486 c!460323) b!2856508))

(assert (= (and d!826486 (not c!460323)) b!2856514))

(assert (= (and b!2856514 c!460324) b!2856512))

(assert (= (and b!2856514 (not c!460324)) b!2856511))

(assert (= (and b!2856511 c!460326) b!2856510))

(assert (= (and b!2856511 (not c!460326)) b!2856507))

(assert (= (and b!2856507 c!460325) b!2856516))

(assert (= (and b!2856507 (not c!460325)) b!2856515))

(assert (= (and b!2856515 c!460327) b!2856509))

(assert (= (and b!2856515 (not c!460327)) b!2856513))

(assert (= (or b!2856509 b!2856513) bm!184007))

(assert (= (or b!2856516 bm!184007) bm!184006))

(assert (= (or b!2856510 bm!184006) bm!184009))

(assert (= (or b!2856510 b!2856509) bm!184008))

(declare-fun m!3278941 () Bool)

(assert (=> d!826486 m!3278941))

(assert (=> d!826486 m!3278875))

(declare-fun m!3278943 () Bool)

(assert (=> bm!184008 m!3278943))

(declare-fun m!3278945 () Bool)

(assert (=> bm!184009 m!3278945))

(declare-fun m!3278947 () Bool)

(assert (=> b!2856515 m!3278947))

(assert (=> b!2856379 d!826486))

(declare-fun b!2856517 () Bool)

(declare-fun res!1186673 () Bool)

(declare-fun e!1809107 () Bool)

(assert (=> b!2856517 (=> (not res!1186673) (not e!1809107))))

(declare-fun call!184015 () Bool)

(assert (=> b!2856517 (= res!1186673 call!184015)))

(declare-fun e!1809112 () Bool)

(assert (=> b!2856517 (= e!1809112 e!1809107)))

(declare-fun b!2856518 () Bool)

(declare-fun res!1186674 () Bool)

(declare-fun e!1809108 () Bool)

(assert (=> b!2856518 (=> res!1186674 e!1809108)))

(assert (=> b!2856518 (= res!1186674 (not (is-Concat!13905 lt!1014007)))))

(assert (=> b!2856518 (= e!1809112 e!1809108)))

(declare-fun call!184017 () Bool)

(declare-fun c!460329 () Bool)

(declare-fun bm!184010 () Bool)

(declare-fun c!460328 () Bool)

(assert (=> bm!184010 (= call!184017 (validRegex!3454 (ite c!460328 (reg!8913 lt!1014007) (ite c!460329 (regOne!17681 lt!1014007) (regOne!17680 lt!1014007)))))))

(declare-fun b!2856519 () Bool)

(declare-fun call!184016 () Bool)

(assert (=> b!2856519 (= e!1809107 call!184016)))

(declare-fun b!2856520 () Bool)

(declare-fun e!1809111 () Bool)

(assert (=> b!2856520 (= e!1809111 e!1809112)))

(assert (=> b!2856520 (= c!460329 (is-Union!8584 lt!1014007))))

(declare-fun b!2856521 () Bool)

(declare-fun e!1809109 () Bool)

(assert (=> b!2856521 (= e!1809109 e!1809111)))

(assert (=> b!2856521 (= c!460328 (is-Star!8584 lt!1014007))))

(declare-fun b!2856522 () Bool)

(declare-fun e!1809106 () Bool)

(assert (=> b!2856522 (= e!1809106 call!184016)))

(declare-fun d!826490 () Bool)

(declare-fun res!1186671 () Bool)

(assert (=> d!826490 (=> res!1186671 e!1809109)))

(assert (=> d!826490 (= res!1186671 (is-ElementMatch!8584 lt!1014007))))

(assert (=> d!826490 (= (validRegex!3454 lt!1014007) e!1809109)))

(declare-fun b!2856523 () Bool)

(assert (=> b!2856523 (= e!1809108 e!1809106)))

(declare-fun res!1186672 () Bool)

(assert (=> b!2856523 (=> (not res!1186672) (not e!1809106))))

(assert (=> b!2856523 (= res!1186672 call!184015)))

(declare-fun bm!184011 () Bool)

(assert (=> bm!184011 (= call!184015 call!184017)))

(declare-fun b!2856524 () Bool)

(declare-fun e!1809110 () Bool)

(assert (=> b!2856524 (= e!1809110 call!184017)))

(declare-fun b!2856525 () Bool)

(assert (=> b!2856525 (= e!1809111 e!1809110)))

(declare-fun res!1186675 () Bool)

(assert (=> b!2856525 (= res!1186675 (not (nullable!2645 (reg!8913 lt!1014007))))))

(assert (=> b!2856525 (=> (not res!1186675) (not e!1809110))))

(declare-fun bm!184012 () Bool)

(assert (=> bm!184012 (= call!184016 (validRegex!3454 (ite c!460329 (regTwo!17681 lt!1014007) (regTwo!17680 lt!1014007))))))

(assert (= (and d!826490 (not res!1186671)) b!2856521))

(assert (= (and b!2856521 c!460328) b!2856525))

(assert (= (and b!2856521 (not c!460328)) b!2856520))

(assert (= (and b!2856525 res!1186675) b!2856524))

(assert (= (and b!2856520 c!460329) b!2856517))

(assert (= (and b!2856520 (not c!460329)) b!2856518))

(assert (= (and b!2856517 res!1186673) b!2856519))

(assert (= (and b!2856518 (not res!1186674)) b!2856523))

(assert (= (and b!2856523 res!1186672) b!2856522))

(assert (= (or b!2856519 b!2856522) bm!184012))

(assert (= (or b!2856517 b!2856523) bm!184011))

(assert (= (or b!2856524 bm!184011) bm!184010))

(declare-fun m!3278949 () Bool)

(assert (=> bm!184010 m!3278949))

(declare-fun m!3278951 () Bool)

(assert (=> b!2856525 m!3278951))

(declare-fun m!3278953 () Bool)

(assert (=> bm!184012 m!3278953))

(assert (=> b!2856379 d!826490))

(declare-fun d!826492 () Bool)

(declare-fun lt!1014029 () List!34181)

(declare-fun dynLambda!14230 (Int List!34181) Bool)

(assert (=> d!826492 (dynLambda!14230 lambda!105048 lt!1014029)))

(declare-fun choose!16799 (Int) List!34181)

(assert (=> d!826492 (= lt!1014029 (choose!16799 lambda!105048))))

(assert (=> d!826492 (Exists!1290 lambda!105048)))

(assert (=> d!826492 (= (pickWitness!303 lambda!105048) lt!1014029)))

(declare-fun b_lambda!85683 () Bool)

(assert (=> (not b_lambda!85683) (not d!826492)))

(declare-fun bs!520269 () Bool)

(assert (= bs!520269 d!826492))

(declare-fun m!3278955 () Bool)

(assert (=> bs!520269 m!3278955))

(declare-fun m!3278957 () Bool)

(assert (=> bs!520269 m!3278957))

(assert (=> bs!520269 m!3278883))

(assert (=> b!2856379 d!826492))

(declare-fun d!826494 () Bool)

(declare-fun choose!16800 (Int) Bool)

(assert (=> d!826494 (= (Exists!1290 lambda!105048) (choose!16800 lambda!105048))))

(declare-fun bs!520271 () Bool)

(assert (= bs!520271 d!826494))

(declare-fun m!3278959 () Bool)

(assert (=> bs!520271 m!3278959))

(assert (=> b!2856379 d!826494))

(declare-fun b!2856547 () Bool)

(declare-fun e!1809124 () Bool)

(assert (=> b!2856547 (= e!1809124 tp_is_empty!14905)))

(declare-fun b!2856549 () Bool)

(declare-fun tp!919297 () Bool)

(assert (=> b!2856549 (= e!1809124 tp!919297)))

(declare-fun b!2856550 () Bool)

(declare-fun tp!919296 () Bool)

(declare-fun tp!919298 () Bool)

(assert (=> b!2856550 (= e!1809124 (and tp!919296 tp!919298))))

(assert (=> b!2856380 (= tp!919261 e!1809124)))

(declare-fun b!2856548 () Bool)

(declare-fun tp!919295 () Bool)

(declare-fun tp!919299 () Bool)

(assert (=> b!2856548 (= e!1809124 (and tp!919295 tp!919299))))

(assert (= (and b!2856380 (is-ElementMatch!8584 (regOne!17680 r!23423))) b!2856547))

(assert (= (and b!2856380 (is-Concat!13905 (regOne!17680 r!23423))) b!2856548))

(assert (= (and b!2856380 (is-Star!8584 (regOne!17680 r!23423))) b!2856549))

(assert (= (and b!2856380 (is-Union!8584 (regOne!17680 r!23423))) b!2856550))

(declare-fun b!2856551 () Bool)

(declare-fun e!1809125 () Bool)

(assert (=> b!2856551 (= e!1809125 tp_is_empty!14905)))

(declare-fun b!2856553 () Bool)

(declare-fun tp!919302 () Bool)

(assert (=> b!2856553 (= e!1809125 tp!919302)))

(declare-fun b!2856554 () Bool)

(declare-fun tp!919301 () Bool)

(declare-fun tp!919303 () Bool)

(assert (=> b!2856554 (= e!1809125 (and tp!919301 tp!919303))))

(assert (=> b!2856380 (= tp!919263 e!1809125)))

(declare-fun b!2856552 () Bool)

(declare-fun tp!919300 () Bool)

(declare-fun tp!919304 () Bool)

(assert (=> b!2856552 (= e!1809125 (and tp!919300 tp!919304))))

(assert (= (and b!2856380 (is-ElementMatch!8584 (regTwo!17680 r!23423))) b!2856551))

(assert (= (and b!2856380 (is-Concat!13905 (regTwo!17680 r!23423))) b!2856552))

(assert (= (and b!2856380 (is-Star!8584 (regTwo!17680 r!23423))) b!2856553))

(assert (= (and b!2856380 (is-Union!8584 (regTwo!17680 r!23423))) b!2856554))

(declare-fun b!2856555 () Bool)

(declare-fun e!1809126 () Bool)

(assert (=> b!2856555 (= e!1809126 tp_is_empty!14905)))

(declare-fun b!2856557 () Bool)

(declare-fun tp!919307 () Bool)

(assert (=> b!2856557 (= e!1809126 tp!919307)))

(declare-fun b!2856558 () Bool)

(declare-fun tp!919306 () Bool)

(declare-fun tp!919308 () Bool)

(assert (=> b!2856558 (= e!1809126 (and tp!919306 tp!919308))))

(assert (=> b!2856382 (= tp!919266 e!1809126)))

(declare-fun b!2856556 () Bool)

(declare-fun tp!919305 () Bool)

(declare-fun tp!919309 () Bool)

(assert (=> b!2856556 (= e!1809126 (and tp!919305 tp!919309))))

(assert (= (and b!2856382 (is-ElementMatch!8584 (regOne!17681 r!23423))) b!2856555))

(assert (= (and b!2856382 (is-Concat!13905 (regOne!17681 r!23423))) b!2856556))

(assert (= (and b!2856382 (is-Star!8584 (regOne!17681 r!23423))) b!2856557))

(assert (= (and b!2856382 (is-Union!8584 (regOne!17681 r!23423))) b!2856558))

(declare-fun b!2856559 () Bool)

(declare-fun e!1809127 () Bool)

(assert (=> b!2856559 (= e!1809127 tp_is_empty!14905)))

(declare-fun b!2856561 () Bool)

(declare-fun tp!919312 () Bool)

(assert (=> b!2856561 (= e!1809127 tp!919312)))

(declare-fun b!2856562 () Bool)

(declare-fun tp!919311 () Bool)

(declare-fun tp!919313 () Bool)

(assert (=> b!2856562 (= e!1809127 (and tp!919311 tp!919313))))

(assert (=> b!2856382 (= tp!919264 e!1809127)))

(declare-fun b!2856560 () Bool)

(declare-fun tp!919310 () Bool)

(declare-fun tp!919314 () Bool)

(assert (=> b!2856560 (= e!1809127 (and tp!919310 tp!919314))))

(assert (= (and b!2856382 (is-ElementMatch!8584 (regTwo!17681 r!23423))) b!2856559))

(assert (= (and b!2856382 (is-Concat!13905 (regTwo!17681 r!23423))) b!2856560))

(assert (= (and b!2856382 (is-Star!8584 (regTwo!17681 r!23423))) b!2856561))

(assert (= (and b!2856382 (is-Union!8584 (regTwo!17681 r!23423))) b!2856562))

(declare-fun b!2856563 () Bool)

(declare-fun e!1809128 () Bool)

(assert (=> b!2856563 (= e!1809128 tp_is_empty!14905)))

(declare-fun b!2856565 () Bool)

(declare-fun tp!919317 () Bool)

(assert (=> b!2856565 (= e!1809128 tp!919317)))

(declare-fun b!2856566 () Bool)

(declare-fun tp!919316 () Bool)

(declare-fun tp!919318 () Bool)

(assert (=> b!2856566 (= e!1809128 (and tp!919316 tp!919318))))

(assert (=> b!2856377 (= tp!919262 e!1809128)))

(declare-fun b!2856564 () Bool)

(declare-fun tp!919315 () Bool)

(declare-fun tp!919319 () Bool)

(assert (=> b!2856564 (= e!1809128 (and tp!919315 tp!919319))))

(assert (= (and b!2856377 (is-ElementMatch!8584 (reg!8913 r!23423))) b!2856563))

(assert (= (and b!2856377 (is-Concat!13905 (reg!8913 r!23423))) b!2856564))

(assert (= (and b!2856377 (is-Star!8584 (reg!8913 r!23423))) b!2856565))

(assert (= (and b!2856377 (is-Union!8584 (reg!8913 r!23423))) b!2856566))

(declare-fun b!2856571 () Bool)

(declare-fun e!1809131 () Bool)

(declare-fun tp!919322 () Bool)

(assert (=> b!2856571 (= e!1809131 (and tp_is_empty!14905 tp!919322))))

(assert (=> b!2856378 (= tp!919265 e!1809131)))

(assert (= (and b!2856378 (is-Cons!34057 (t!233212 prefix!1470))) b!2856571))

(declare-fun b_lambda!85685 () Bool)

(assert (= b_lambda!85683 (or b!2856379 b_lambda!85685)))

(declare-fun bs!520273 () Bool)

(declare-fun d!826500 () Bool)

(assert (= bs!520273 (and d!826500 b!2856379)))

(declare-fun res!1186683 () Bool)

(declare-fun e!1809132 () Bool)

(assert (=> bs!520273 (=> (not res!1186683) (not e!1809132))))

(declare-fun matchR!3691 (Regex!8584 List!34181) Bool)

(assert (=> bs!520273 (= res!1186683 (matchR!3691 lt!1014007 lt!1014029))))

(assert (=> bs!520273 (= (dynLambda!14230 lambda!105048 lt!1014029) e!1809132)))

(declare-fun b!2856572 () Bool)

(declare-fun isPrefix!2666 (List!34181 List!34181) Bool)

(assert (=> b!2856572 (= e!1809132 (isPrefix!2666 (t!233212 prefix!1470) lt!1014029))))

(assert (= (and bs!520273 res!1186683) b!2856572))

(declare-fun m!3278971 () Bool)

(assert (=> bs!520273 m!3278971))

(declare-fun m!3278973 () Bool)

(assert (=> b!2856572 m!3278973))

(assert (=> d!826492 d!826500))

(push 1)

(assert (not bs!520273))

(assert (not b!2856553))

(assert (not bm!183992))

(assert (not b!2856525))

(assert (not b!2856469))

(assert (not b!2856560))

(assert (not b!2856554))

(assert (not b!2856557))

(assert (not b!2856558))

(assert (not b!2856572))

(assert (not d!826482))

(assert (not b!2856565))

(assert (not d!826486))

(assert (not d!826476))

(assert (not b!2856549))

(assert (not b!2856548))

(assert (not b!2856515))

(assert (not bm!184010))

(assert (not b_lambda!85685))

(assert (not b!2856561))

(assert (not bm!183994))

(assert (not b!2856564))

(assert (not d!826492))

(assert (not b!2856556))

(assert (not d!826494))

(assert (not b!2856562))

(assert (not b!2856550))

(assert (not bm!184008))

(assert (not b!2856571))

(assert (not b!2856566))

(assert (not b!2856552))

(assert (not b!2856424))

(assert (not bm!184009))

(assert tp_is_empty!14905)

(assert (not bm!184012))

(assert (not b!2856423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

