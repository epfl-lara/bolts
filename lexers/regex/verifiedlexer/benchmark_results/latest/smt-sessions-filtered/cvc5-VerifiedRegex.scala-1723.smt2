; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86232 () Bool)

(assert start!86232)

(declare-fun b!970118 () Bool)

(assert (=> b!970118 true))

(assert (=> b!970118 true))

(declare-fun b!970116 () Bool)

(declare-fun e!625459 () Bool)

(declare-fun tp!297238 () Bool)

(assert (=> b!970116 (= e!625459 tp!297238)))

(declare-fun b!970117 () Bool)

(declare-fun tp!297235 () Bool)

(declare-fun tp!297237 () Bool)

(assert (=> b!970117 (= e!625459 (and tp!297235 tp!297237))))

(declare-fun e!625457 () Bool)

(declare-fun e!625458 () Bool)

(assert (=> b!970118 (= e!625457 e!625458)))

(declare-fun res!440969 () Bool)

(assert (=> b!970118 (=> res!440969 e!625458)))

(assert (=> b!970118 (= res!440969 false)))

(declare-datatypes ((C!5978 0))(
  ( (C!5979 (val!3237 Int)) )
))
(declare-datatypes ((Regex!2704 0))(
  ( (ElementMatch!2704 (c!158183 C!5978)) (Concat!4537 (regOne!5920 Regex!2704) (regTwo!5920 Regex!2704)) (EmptyExpr!2704) (Star!2704 (reg!3033 Regex!2704)) (EmptyLang!2704) (Union!2704 (regOne!5921 Regex!2704) (regTwo!5921 Regex!2704)) )
))
(declare-fun r!15766 () Regex!2704)

(declare-datatypes ((List!9934 0))(
  ( (Nil!9918) (Cons!9918 (h!15319 C!5978) (t!100980 List!9934)) )
))
(declare-fun s!10566 () List!9934)

(declare-fun lambda!34303 () Int)

(declare-datatypes ((tuple2!11274 0))(
  ( (tuple2!11275 (_1!6463 List!9934) (_2!6463 List!9934)) )
))
(declare-datatypes ((Option!2279 0))(
  ( (None!2278) (Some!2278 (v!19695 tuple2!11274)) )
))
(declare-fun isDefined!1921 (Option!2279) Bool)

(declare-fun findConcatSeparation!385 (Regex!2704 Regex!2704 List!9934 List!9934 List!9934) Option!2279)

(declare-fun Exists!443 (Int) Bool)

(assert (=> b!970118 (= (isDefined!1921 (findConcatSeparation!385 EmptyExpr!2704 (regTwo!5920 r!15766) Nil!9918 s!10566 s!10566)) (Exists!443 lambda!34303))))

(declare-datatypes ((Unit!15067 0))(
  ( (Unit!15068) )
))
(declare-fun lt!348782 () Unit!15067)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!385 (Regex!2704 Regex!2704 List!9934) Unit!15067)

(assert (=> b!970118 (= lt!348782 (lemmaFindConcatSeparationEquivalentToExists!385 EmptyExpr!2704 (regTwo!5920 r!15766) s!10566))))

(declare-fun res!440968 () Bool)

(declare-fun e!625460 () Bool)

(assert (=> start!86232 (=> (not res!440968) (not e!625460))))

(declare-fun validRegex!1173 (Regex!2704) Bool)

(assert (=> start!86232 (= res!440968 (validRegex!1173 r!15766))))

(assert (=> start!86232 e!625460))

(assert (=> start!86232 e!625459))

(declare-fun e!625456 () Bool)

(assert (=> start!86232 e!625456))

(declare-fun b!970119 () Bool)

(assert (=> b!970119 (= e!625460 (not e!625457))))

(declare-fun res!440967 () Bool)

(assert (=> b!970119 (=> res!440967 e!625457)))

(declare-fun lt!348781 () Bool)

(assert (=> b!970119 (= res!440967 (or (not lt!348781) (not (is-Concat!4537 r!15766)) (not (is-EmptyExpr!2704 (regOne!5920 r!15766)))))))

(declare-fun matchRSpec!503 (Regex!2704 List!9934) Bool)

(assert (=> b!970119 (= lt!348781 (matchRSpec!503 r!15766 s!10566))))

(declare-fun matchR!1240 (Regex!2704 List!9934) Bool)

(assert (=> b!970119 (= lt!348781 (matchR!1240 r!15766 s!10566))))

(declare-fun lt!348780 () Unit!15067)

(declare-fun mainMatchTheorem!503 (Regex!2704 List!9934) Unit!15067)

(assert (=> b!970119 (= lt!348780 (mainMatchTheorem!503 r!15766 s!10566))))

(declare-fun b!970120 () Bool)

(declare-fun tp!297236 () Bool)

(declare-fun tp!297233 () Bool)

(assert (=> b!970120 (= e!625459 (and tp!297236 tp!297233))))

(declare-fun b!970121 () Bool)

(declare-fun tp_is_empty!5051 () Bool)

(assert (=> b!970121 (= e!625459 tp_is_empty!5051)))

(declare-fun b!970122 () Bool)

(assert (=> b!970122 (= e!625458 (validRegex!1173 (regTwo!5920 r!15766)))))

(declare-fun b!970123 () Bool)

(declare-fun tp!297234 () Bool)

(assert (=> b!970123 (= e!625456 (and tp_is_empty!5051 tp!297234))))

(assert (= (and start!86232 res!440968) b!970119))

(assert (= (and b!970119 (not res!440967)) b!970118))

(assert (= (and b!970118 (not res!440969)) b!970122))

(assert (= (and start!86232 (is-ElementMatch!2704 r!15766)) b!970121))

(assert (= (and start!86232 (is-Concat!4537 r!15766)) b!970120))

(assert (= (and start!86232 (is-Star!2704 r!15766)) b!970116))

(assert (= (and start!86232 (is-Union!2704 r!15766)) b!970117))

(assert (= (and start!86232 (is-Cons!9918 s!10566)) b!970123))

(declare-fun m!1174601 () Bool)

(assert (=> b!970118 m!1174601))

(assert (=> b!970118 m!1174601))

(declare-fun m!1174603 () Bool)

(assert (=> b!970118 m!1174603))

(declare-fun m!1174605 () Bool)

(assert (=> b!970118 m!1174605))

(declare-fun m!1174607 () Bool)

(assert (=> b!970118 m!1174607))

(declare-fun m!1174609 () Bool)

(assert (=> start!86232 m!1174609))

(declare-fun m!1174611 () Bool)

(assert (=> b!970119 m!1174611))

(declare-fun m!1174613 () Bool)

(assert (=> b!970119 m!1174613))

(declare-fun m!1174615 () Bool)

(assert (=> b!970119 m!1174615))

(declare-fun m!1174617 () Bool)

(assert (=> b!970122 m!1174617))

(push 1)

(assert (not start!86232))

(assert (not b!970122))

(assert (not b!970116))

(assert (not b!970118))

(assert (not b!970123))

(assert (not b!970120))

(assert (not b!970117))

(assert tp_is_empty!5051)

(assert (not b!970119))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!61519 () Bool)

(declare-fun call!61525 () Bool)

(declare-fun c!158189 () Bool)

(declare-fun c!158190 () Bool)

(assert (=> bm!61519 (= call!61525 (validRegex!1173 (ite c!158190 (reg!3033 r!15766) (ite c!158189 (regOne!5921 r!15766) (regOne!5920 r!15766)))))))

(declare-fun b!970178 () Bool)

(declare-fun res!440994 () Bool)

(declare-fun e!625496 () Bool)

(assert (=> b!970178 (=> (not res!440994) (not e!625496))))

(declare-fun call!61526 () Bool)

(assert (=> b!970178 (= res!440994 call!61526)))

(declare-fun e!625494 () Bool)

(assert (=> b!970178 (= e!625494 e!625496)))

(declare-fun b!970179 () Bool)

(declare-fun e!625492 () Bool)

(declare-fun e!625493 () Bool)

(assert (=> b!970179 (= e!625492 e!625493)))

(assert (=> b!970179 (= c!158190 (is-Star!2704 r!15766))))

(declare-fun bm!61520 () Bool)

(declare-fun call!61524 () Bool)

(assert (=> bm!61520 (= call!61524 (validRegex!1173 (ite c!158189 (regTwo!5921 r!15766) (regTwo!5920 r!15766))))))

(declare-fun b!970180 () Bool)

(assert (=> b!970180 (= e!625493 e!625494)))

(assert (=> b!970180 (= c!158189 (is-Union!2704 r!15766))))

(declare-fun b!970181 () Bool)

(declare-fun e!625495 () Bool)

(assert (=> b!970181 (= e!625495 call!61524)))

(declare-fun d!286520 () Bool)

(declare-fun res!440997 () Bool)

(assert (=> d!286520 (=> res!440997 e!625492)))

(assert (=> d!286520 (= res!440997 (is-ElementMatch!2704 r!15766))))

(assert (=> d!286520 (= (validRegex!1173 r!15766) e!625492)))

(declare-fun b!970182 () Bool)

(declare-fun e!625498 () Bool)

(assert (=> b!970182 (= e!625493 e!625498)))

(declare-fun res!440995 () Bool)

(declare-fun nullable!824 (Regex!2704) Bool)

(assert (=> b!970182 (= res!440995 (not (nullable!824 (reg!3033 r!15766))))))

(assert (=> b!970182 (=> (not res!440995) (not e!625498))))

(declare-fun bm!61521 () Bool)

(assert (=> bm!61521 (= call!61526 call!61525)))

(declare-fun b!970183 () Bool)

(declare-fun e!625497 () Bool)

(assert (=> b!970183 (= e!625497 e!625495)))

(declare-fun res!440996 () Bool)

(assert (=> b!970183 (=> (not res!440996) (not e!625495))))

(assert (=> b!970183 (= res!440996 call!61526)))

(declare-fun b!970184 () Bool)

(assert (=> b!970184 (= e!625498 call!61525)))

(declare-fun b!970185 () Bool)

(assert (=> b!970185 (= e!625496 call!61524)))

(declare-fun b!970186 () Bool)

(declare-fun res!440993 () Bool)

(assert (=> b!970186 (=> res!440993 e!625497)))

(assert (=> b!970186 (= res!440993 (not (is-Concat!4537 r!15766)))))

(assert (=> b!970186 (= e!625494 e!625497)))

(assert (= (and d!286520 (not res!440997)) b!970179))

(assert (= (and b!970179 c!158190) b!970182))

(assert (= (and b!970179 (not c!158190)) b!970180))

(assert (= (and b!970182 res!440995) b!970184))

(assert (= (and b!970180 c!158189) b!970178))

(assert (= (and b!970180 (not c!158189)) b!970186))

(assert (= (and b!970178 res!440994) b!970185))

(assert (= (and b!970186 (not res!440993)) b!970183))

(assert (= (and b!970183 res!440996) b!970181))

(assert (= (or b!970185 b!970181) bm!61520))

(assert (= (or b!970178 b!970183) bm!61521))

(assert (= (or b!970184 bm!61521) bm!61519))

(declare-fun m!1174637 () Bool)

(assert (=> bm!61519 m!1174637))

(declare-fun m!1174639 () Bool)

(assert (=> bm!61520 m!1174639))

(declare-fun m!1174641 () Bool)

(assert (=> b!970182 m!1174641))

(assert (=> start!86232 d!286520))

(declare-fun c!158192 () Bool)

(declare-fun bm!61522 () Bool)

(declare-fun c!158191 () Bool)

(declare-fun call!61528 () Bool)

(assert (=> bm!61522 (= call!61528 (validRegex!1173 (ite c!158192 (reg!3033 (regTwo!5920 r!15766)) (ite c!158191 (regOne!5921 (regTwo!5920 r!15766)) (regOne!5920 (regTwo!5920 r!15766))))))))

(declare-fun b!970187 () Bool)

(declare-fun res!440999 () Bool)

(declare-fun e!625503 () Bool)

(assert (=> b!970187 (=> (not res!440999) (not e!625503))))

(declare-fun call!61529 () Bool)

(assert (=> b!970187 (= res!440999 call!61529)))

(declare-fun e!625501 () Bool)

(assert (=> b!970187 (= e!625501 e!625503)))

(declare-fun b!970188 () Bool)

(declare-fun e!625499 () Bool)

(declare-fun e!625500 () Bool)

(assert (=> b!970188 (= e!625499 e!625500)))

(assert (=> b!970188 (= c!158192 (is-Star!2704 (regTwo!5920 r!15766)))))

(declare-fun bm!61523 () Bool)

(declare-fun call!61527 () Bool)

(assert (=> bm!61523 (= call!61527 (validRegex!1173 (ite c!158191 (regTwo!5921 (regTwo!5920 r!15766)) (regTwo!5920 (regTwo!5920 r!15766)))))))

(declare-fun b!970189 () Bool)

(assert (=> b!970189 (= e!625500 e!625501)))

(assert (=> b!970189 (= c!158191 (is-Union!2704 (regTwo!5920 r!15766)))))

(declare-fun b!970190 () Bool)

(declare-fun e!625502 () Bool)

(assert (=> b!970190 (= e!625502 call!61527)))

(declare-fun d!286522 () Bool)

(declare-fun res!441002 () Bool)

(assert (=> d!286522 (=> res!441002 e!625499)))

(assert (=> d!286522 (= res!441002 (is-ElementMatch!2704 (regTwo!5920 r!15766)))))

(assert (=> d!286522 (= (validRegex!1173 (regTwo!5920 r!15766)) e!625499)))

(declare-fun b!970191 () Bool)

(declare-fun e!625505 () Bool)

(assert (=> b!970191 (= e!625500 e!625505)))

(declare-fun res!441000 () Bool)

(assert (=> b!970191 (= res!441000 (not (nullable!824 (reg!3033 (regTwo!5920 r!15766)))))))

(assert (=> b!970191 (=> (not res!441000) (not e!625505))))

(declare-fun bm!61524 () Bool)

(assert (=> bm!61524 (= call!61529 call!61528)))

(declare-fun b!970192 () Bool)

(declare-fun e!625504 () Bool)

(assert (=> b!970192 (= e!625504 e!625502)))

(declare-fun res!441001 () Bool)

(assert (=> b!970192 (=> (not res!441001) (not e!625502))))

(assert (=> b!970192 (= res!441001 call!61529)))

(declare-fun b!970193 () Bool)

(assert (=> b!970193 (= e!625505 call!61528)))

(declare-fun b!970194 () Bool)

(assert (=> b!970194 (= e!625503 call!61527)))

(declare-fun b!970195 () Bool)

(declare-fun res!440998 () Bool)

(assert (=> b!970195 (=> res!440998 e!625504)))

(assert (=> b!970195 (= res!440998 (not (is-Concat!4537 (regTwo!5920 r!15766))))))

(assert (=> b!970195 (= e!625501 e!625504)))

(assert (= (and d!286522 (not res!441002)) b!970188))

(assert (= (and b!970188 c!158192) b!970191))

(assert (= (and b!970188 (not c!158192)) b!970189))

(assert (= (and b!970191 res!441000) b!970193))

(assert (= (and b!970189 c!158191) b!970187))

(assert (= (and b!970189 (not c!158191)) b!970195))

(assert (= (and b!970187 res!440999) b!970194))

(assert (= (and b!970195 (not res!440998)) b!970192))

(assert (= (and b!970192 res!441001) b!970190))

(assert (= (or b!970194 b!970190) bm!61523))

(assert (= (or b!970187 b!970192) bm!61524))

(assert (= (or b!970193 bm!61524) bm!61522))

(declare-fun m!1174643 () Bool)

(assert (=> bm!61522 m!1174643))

(declare-fun m!1174645 () Bool)

(assert (=> bm!61523 m!1174645))

(declare-fun m!1174647 () Bool)

(assert (=> b!970191 m!1174647))

(assert (=> b!970122 d!286522))

(declare-fun d!286524 () Bool)

(declare-fun isEmpty!6222 (Option!2279) Bool)

(assert (=> d!286524 (= (isDefined!1921 (findConcatSeparation!385 EmptyExpr!2704 (regTwo!5920 r!15766) Nil!9918 s!10566 s!10566)) (not (isEmpty!6222 (findConcatSeparation!385 EmptyExpr!2704 (regTwo!5920 r!15766) Nil!9918 s!10566 s!10566))))))

(declare-fun bs!242356 () Bool)

(assert (= bs!242356 d!286524))

(assert (=> bs!242356 m!1174601))

(declare-fun m!1174649 () Bool)

(assert (=> bs!242356 m!1174649))

(assert (=> b!970118 d!286524))

(declare-fun b!970232 () Bool)

(declare-fun e!625530 () Option!2279)

(assert (=> b!970232 (= e!625530 (Some!2278 (tuple2!11275 Nil!9918 s!10566)))))

(declare-fun b!970233 () Bool)

(declare-fun e!625531 () Bool)

(assert (=> b!970233 (= e!625531 (matchR!1240 (regTwo!5920 r!15766) s!10566))))

(declare-fun b!970234 () Bool)

(declare-fun lt!348798 () Unit!15067)

(declare-fun lt!348800 () Unit!15067)

(assert (=> b!970234 (= lt!348798 lt!348800)))

(declare-fun ++!2682 (List!9934 List!9934) List!9934)

(assert (=> b!970234 (= (++!2682 (++!2682 Nil!9918 (Cons!9918 (h!15319 s!10566) Nil!9918)) (t!100980 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!283 (List!9934 C!5978 List!9934 List!9934) Unit!15067)

(assert (=> b!970234 (= lt!348800 (lemmaMoveElementToOtherListKeepsConcatEq!283 Nil!9918 (h!15319 s!10566) (t!100980 s!10566) s!10566))))

(declare-fun e!625532 () Option!2279)

(assert (=> b!970234 (= e!625532 (findConcatSeparation!385 EmptyExpr!2704 (regTwo!5920 r!15766) (++!2682 Nil!9918 (Cons!9918 (h!15319 s!10566) Nil!9918)) (t!100980 s!10566) s!10566))))

(declare-fun b!970236 () Bool)

(declare-fun e!625534 () Bool)

(declare-fun lt!348799 () Option!2279)

(declare-fun get!3413 (Option!2279) tuple2!11274)

(assert (=> b!970236 (= e!625534 (= (++!2682 (_1!6463 (get!3413 lt!348799)) (_2!6463 (get!3413 lt!348799))) s!10566))))

(declare-fun b!970237 () Bool)

(declare-fun res!441023 () Bool)

(assert (=> b!970237 (=> (not res!441023) (not e!625534))))

(assert (=> b!970237 (= res!441023 (matchR!1240 EmptyExpr!2704 (_1!6463 (get!3413 lt!348799))))))

(declare-fun b!970238 () Bool)

(assert (=> b!970238 (= e!625532 None!2278)))

(declare-fun b!970239 () Bool)

(assert (=> b!970239 (= e!625530 e!625532)))

(declare-fun c!158202 () Bool)

(assert (=> b!970239 (= c!158202 (is-Nil!9918 s!10566))))

(declare-fun b!970240 () Bool)

(declare-fun e!625533 () Bool)

(assert (=> b!970240 (= e!625533 (not (isDefined!1921 lt!348799)))))

(declare-fun d!286526 () Bool)

(assert (=> d!286526 e!625533))

(declare-fun res!441025 () Bool)

(assert (=> d!286526 (=> res!441025 e!625533)))

(assert (=> d!286526 (= res!441025 e!625534)))

(declare-fun res!441026 () Bool)

(assert (=> d!286526 (=> (not res!441026) (not e!625534))))

(assert (=> d!286526 (= res!441026 (isDefined!1921 lt!348799))))

(assert (=> d!286526 (= lt!348799 e!625530)))

(declare-fun c!158201 () Bool)

(assert (=> d!286526 (= c!158201 e!625531)))

(declare-fun res!441024 () Bool)

(assert (=> d!286526 (=> (not res!441024) (not e!625531))))

(assert (=> d!286526 (= res!441024 (matchR!1240 EmptyExpr!2704 Nil!9918))))

(assert (=> d!286526 (validRegex!1173 EmptyExpr!2704)))

(assert (=> d!286526 (= (findConcatSeparation!385 EmptyExpr!2704 (regTwo!5920 r!15766) Nil!9918 s!10566 s!10566) lt!348799)))

(declare-fun b!970235 () Bool)

(declare-fun res!441027 () Bool)

(assert (=> b!970235 (=> (not res!441027) (not e!625534))))

(assert (=> b!970235 (= res!441027 (matchR!1240 (regTwo!5920 r!15766) (_2!6463 (get!3413 lt!348799))))))

(assert (= (and d!286526 res!441024) b!970233))

(assert (= (and d!286526 c!158201) b!970232))

(assert (= (and d!286526 (not c!158201)) b!970239))

(assert (= (and b!970239 c!158202) b!970238))

(assert (= (and b!970239 (not c!158202)) b!970234))

(assert (= (and d!286526 res!441026) b!970237))

(assert (= (and b!970237 res!441023) b!970235))

(assert (= (and b!970235 res!441027) b!970236))

(assert (= (and d!286526 (not res!441025)) b!970240))

(declare-fun m!1174651 () Bool)

(assert (=> b!970233 m!1174651))

(declare-fun m!1174653 () Bool)

(assert (=> b!970235 m!1174653))

(declare-fun m!1174655 () Bool)

(assert (=> b!970235 m!1174655))

(assert (=> b!970236 m!1174653))

(declare-fun m!1174657 () Bool)

(assert (=> b!970236 m!1174657))

(declare-fun m!1174659 () Bool)

(assert (=> d!286526 m!1174659))

(declare-fun m!1174661 () Bool)

(assert (=> d!286526 m!1174661))

(declare-fun m!1174663 () Bool)

(assert (=> d!286526 m!1174663))

(assert (=> b!970240 m!1174659))

(declare-fun m!1174665 () Bool)

(assert (=> b!970234 m!1174665))

(assert (=> b!970234 m!1174665))

(declare-fun m!1174667 () Bool)

(assert (=> b!970234 m!1174667))

(declare-fun m!1174669 () Bool)

(assert (=> b!970234 m!1174669))

(assert (=> b!970234 m!1174665))

(declare-fun m!1174671 () Bool)

(assert (=> b!970234 m!1174671))

(assert (=> b!970237 m!1174653))

(declare-fun m!1174673 () Bool)

(assert (=> b!970237 m!1174673))

(assert (=> b!970118 d!286526))

(declare-fun d!286530 () Bool)

(declare-fun choose!6133 (Int) Bool)

(assert (=> d!286530 (= (Exists!443 lambda!34303) (choose!6133 lambda!34303))))

(declare-fun bs!242357 () Bool)

(assert (= bs!242357 d!286530))

(declare-fun m!1174675 () Bool)

(assert (=> bs!242357 m!1174675))

(assert (=> b!970118 d!286530))

(declare-fun bs!242358 () Bool)

(declare-fun d!286532 () Bool)

(assert (= bs!242358 (and d!286532 b!970118)))

(declare-fun lambda!34309 () Int)

(assert (=> bs!242358 (= lambda!34309 lambda!34303)))

(assert (=> d!286532 true))

(assert (=> d!286532 true))

(assert (=> d!286532 true))

(assert (=> d!286532 (= (isDefined!1921 (findConcatSeparation!385 EmptyExpr!2704 (regTwo!5920 r!15766) Nil!9918 s!10566 s!10566)) (Exists!443 lambda!34309))))

(declare-fun lt!348803 () Unit!15067)

(declare-fun choose!6134 (Regex!2704 Regex!2704 List!9934) Unit!15067)

(assert (=> d!286532 (= lt!348803 (choose!6134 EmptyExpr!2704 (regTwo!5920 r!15766) s!10566))))

(assert (=> d!286532 (validRegex!1173 EmptyExpr!2704)))

(assert (=> d!286532 (= (lemmaFindConcatSeparationEquivalentToExists!385 EmptyExpr!2704 (regTwo!5920 r!15766) s!10566) lt!348803)))

(declare-fun bs!242359 () Bool)

(assert (= bs!242359 d!286532))

(assert (=> bs!242359 m!1174663))

(declare-fun m!1174683 () Bool)

(assert (=> bs!242359 m!1174683))

(assert (=> bs!242359 m!1174601))

(declare-fun m!1174685 () Bool)

(assert (=> bs!242359 m!1174685))

(assert (=> bs!242359 m!1174601))

(assert (=> bs!242359 m!1174603))

(assert (=> b!970118 d!286532))

(declare-fun bs!242360 () Bool)

(declare-fun b!970316 () Bool)

(assert (= bs!242360 (and b!970316 b!970118)))

(declare-fun lambda!34316 () Int)

(assert (=> bs!242360 (not (= lambda!34316 lambda!34303))))

(declare-fun bs!242361 () Bool)

(assert (= bs!242361 (and b!970316 d!286532)))

(assert (=> bs!242361 (not (= lambda!34316 lambda!34309))))

(assert (=> b!970316 true))

(assert (=> b!970316 true))

(declare-fun bs!242362 () Bool)

(declare-fun b!970321 () Bool)

(assert (= bs!242362 (and b!970321 b!970118)))

(declare-fun lambda!34318 () Int)

(assert (=> bs!242362 (not (= lambda!34318 lambda!34303))))

(declare-fun bs!242363 () Bool)

(assert (= bs!242363 (and b!970321 d!286532)))

(assert (=> bs!242363 (not (= lambda!34318 lambda!34309))))

(declare-fun bs!242364 () Bool)

(assert (= bs!242364 (and b!970321 b!970316)))

(assert (=> bs!242364 (not (= lambda!34318 lambda!34316))))

(assert (=> b!970321 true))

(assert (=> b!970321 true))

(declare-fun d!286536 () Bool)

(declare-fun c!158221 () Bool)

(assert (=> d!286536 (= c!158221 (is-EmptyExpr!2704 r!15766))))

(declare-fun e!625584 () Bool)

(assert (=> d!286536 (= (matchRSpec!503 r!15766 s!10566) e!625584)))

(declare-fun bm!61538 () Bool)

(declare-fun call!61544 () Bool)

(declare-fun isEmpty!6223 (List!9934) Bool)

(assert (=> bm!61538 (= call!61544 (isEmpty!6223 s!10566))))

(declare-fun b!970314 () Bool)

(assert (=> b!970314 (= e!625584 call!61544)))

(declare-fun c!158222 () Bool)

(declare-fun call!61543 () Bool)

(declare-fun bm!61539 () Bool)

(assert (=> bm!61539 (= call!61543 (Exists!443 (ite c!158222 lambda!34316 lambda!34318)))))

(declare-fun b!970315 () Bool)

(declare-fun res!441066 () Bool)

(declare-fun e!625582 () Bool)

(assert (=> b!970315 (=> res!441066 e!625582)))

(assert (=> b!970315 (= res!441066 call!61544)))

(declare-fun e!625580 () Bool)

(assert (=> b!970315 (= e!625580 e!625582)))

(assert (=> b!970316 (= e!625582 call!61543)))

(declare-fun b!970317 () Bool)

(declare-fun c!158223 () Bool)

(assert (=> b!970317 (= c!158223 (is-Union!2704 r!15766))))

(declare-fun e!625583 () Bool)

(declare-fun e!625581 () Bool)

(assert (=> b!970317 (= e!625583 e!625581)))

(declare-fun b!970318 () Bool)

(assert (=> b!970318 (= e!625583 (= s!10566 (Cons!9918 (c!158183 r!15766) Nil!9918)))))

(declare-fun b!970319 () Bool)

(declare-fun e!625578 () Bool)

(assert (=> b!970319 (= e!625584 e!625578)))

(declare-fun res!441067 () Bool)

(assert (=> b!970319 (= res!441067 (not (is-EmptyLang!2704 r!15766)))))

(assert (=> b!970319 (=> (not res!441067) (not e!625578))))

(declare-fun b!970320 () Bool)

(declare-fun e!625579 () Bool)

(assert (=> b!970320 (= e!625579 (matchRSpec!503 (regTwo!5921 r!15766) s!10566))))

(assert (=> b!970321 (= e!625580 call!61543)))

(declare-fun b!970322 () Bool)

(assert (=> b!970322 (= e!625581 e!625579)))

(declare-fun res!441065 () Bool)

(assert (=> b!970322 (= res!441065 (matchRSpec!503 (regOne!5921 r!15766) s!10566))))

(assert (=> b!970322 (=> res!441065 e!625579)))

(declare-fun b!970323 () Bool)

(assert (=> b!970323 (= e!625581 e!625580)))

(assert (=> b!970323 (= c!158222 (is-Star!2704 r!15766))))

(declare-fun b!970324 () Bool)

(declare-fun c!158224 () Bool)

(assert (=> b!970324 (= c!158224 (is-ElementMatch!2704 r!15766))))

(assert (=> b!970324 (= e!625578 e!625583)))

(assert (= (and d!286536 c!158221) b!970314))

(assert (= (and d!286536 (not c!158221)) b!970319))

(assert (= (and b!970319 res!441067) b!970324))

(assert (= (and b!970324 c!158224) b!970318))

(assert (= (and b!970324 (not c!158224)) b!970317))

(assert (= (and b!970317 c!158223) b!970322))

(assert (= (and b!970317 (not c!158223)) b!970323))

(assert (= (and b!970322 (not res!441065)) b!970320))

(assert (= (and b!970323 c!158222) b!970315))

(assert (= (and b!970323 (not c!158222)) b!970321))

(assert (= (and b!970315 (not res!441066)) b!970316))

(assert (= (or b!970316 b!970321) bm!61539))

(assert (= (or b!970314 b!970315) bm!61538))

(declare-fun m!1174687 () Bool)

(assert (=> bm!61538 m!1174687))

(declare-fun m!1174689 () Bool)

(assert (=> bm!61539 m!1174689))

(declare-fun m!1174691 () Bool)

(assert (=> b!970320 m!1174691))

(declare-fun m!1174693 () Bool)

(assert (=> b!970322 m!1174693))

(assert (=> b!970119 d!286536))

(declare-fun b!970357 () Bool)

(declare-fun e!625607 () Bool)

(declare-fun lt!348806 () Bool)

(declare-fun call!61551 () Bool)

(assert (=> b!970357 (= e!625607 (= lt!348806 call!61551))))

(declare-fun b!970358 () Bool)

(declare-fun e!625604 () Bool)

(declare-fun e!625606 () Bool)

(assert (=> b!970358 (= e!625604 e!625606)))

(declare-fun res!441093 () Bool)

(assert (=> b!970358 (=> (not res!441093) (not e!625606))))

(assert (=> b!970358 (= res!441093 (not lt!348806))))

(declare-fun b!970359 () Bool)

(declare-fun res!441089 () Bool)

(assert (=> b!970359 (=> res!441089 e!625604)))

(assert (=> b!970359 (= res!441089 (not (is-ElementMatch!2704 r!15766)))))

(declare-fun e!625602 () Bool)

(assert (=> b!970359 (= e!625602 e!625604)))

(declare-fun b!970360 () Bool)

(assert (=> b!970360 (= e!625607 e!625602)))

(declare-fun c!158232 () Bool)

(assert (=> b!970360 (= c!158232 (is-EmptyLang!2704 r!15766))))

(declare-fun b!970361 () Bool)

(declare-fun e!625601 () Bool)

(assert (=> b!970361 (= e!625606 e!625601)))

(declare-fun res!441095 () Bool)

(assert (=> b!970361 (=> res!441095 e!625601)))

(assert (=> b!970361 (= res!441095 call!61551)))

(declare-fun b!970362 () Bool)

(declare-fun e!625603 () Bool)

(assert (=> b!970362 (= e!625603 (nullable!824 r!15766))))

(declare-fun b!970363 () Bool)

(declare-fun derivativeStep!630 (Regex!2704 C!5978) Regex!2704)

(declare-fun head!1783 (List!9934) C!5978)

(declare-fun tail!1345 (List!9934) List!9934)

(assert (=> b!970363 (= e!625603 (matchR!1240 (derivativeStep!630 r!15766 (head!1783 s!10566)) (tail!1345 s!10566)))))

(declare-fun b!970365 () Bool)

(assert (=> b!970365 (= e!625602 (not lt!348806))))

(declare-fun b!970366 () Bool)

(assert (=> b!970366 (= e!625601 (not (= (head!1783 s!10566) (c!158183 r!15766))))))

(declare-fun b!970367 () Bool)

(declare-fun res!441088 () Bool)

(declare-fun e!625605 () Bool)

(assert (=> b!970367 (=> (not res!441088) (not e!625605))))

(assert (=> b!970367 (= res!441088 (not call!61551))))

(declare-fun b!970368 () Bool)

(declare-fun res!441090 () Bool)

(assert (=> b!970368 (=> (not res!441090) (not e!625605))))

(assert (=> b!970368 (= res!441090 (isEmpty!6223 (tail!1345 s!10566)))))

(declare-fun b!970369 () Bool)

(assert (=> b!970369 (= e!625605 (= (head!1783 s!10566) (c!158183 r!15766)))))

(declare-fun b!970370 () Bool)

(declare-fun res!441094 () Bool)

(assert (=> b!970370 (=> res!441094 e!625604)))

(assert (=> b!970370 (= res!441094 e!625605)))

(declare-fun res!441091 () Bool)

(assert (=> b!970370 (=> (not res!441091) (not e!625605))))

(assert (=> b!970370 (= res!441091 lt!348806)))

(declare-fun bm!61546 () Bool)

(assert (=> bm!61546 (= call!61551 (isEmpty!6223 s!10566))))

(declare-fun d!286538 () Bool)

(assert (=> d!286538 e!625607))

(declare-fun c!158231 () Bool)

(assert (=> d!286538 (= c!158231 (is-EmptyExpr!2704 r!15766))))

(assert (=> d!286538 (= lt!348806 e!625603)))

(declare-fun c!158233 () Bool)

(assert (=> d!286538 (= c!158233 (isEmpty!6223 s!10566))))

(assert (=> d!286538 (validRegex!1173 r!15766)))

(assert (=> d!286538 (= (matchR!1240 r!15766 s!10566) lt!348806)))

(declare-fun b!970364 () Bool)

(declare-fun res!441092 () Bool)

(assert (=> b!970364 (=> res!441092 e!625601)))

(assert (=> b!970364 (= res!441092 (not (isEmpty!6223 (tail!1345 s!10566))))))

(assert (= (and d!286538 c!158233) b!970362))

(assert (= (and d!286538 (not c!158233)) b!970363))

(assert (= (and d!286538 c!158231) b!970357))

(assert (= (and d!286538 (not c!158231)) b!970360))

(assert (= (and b!970360 c!158232) b!970365))

(assert (= (and b!970360 (not c!158232)) b!970359))

(assert (= (and b!970359 (not res!441089)) b!970370))

(assert (= (and b!970370 res!441091) b!970367))

(assert (= (and b!970367 res!441088) b!970368))

(assert (= (and b!970368 res!441090) b!970369))

(assert (= (and b!970370 (not res!441094)) b!970358))

(assert (= (and b!970358 res!441093) b!970361))

(assert (= (and b!970361 (not res!441095)) b!970364))

(assert (= (and b!970364 (not res!441092)) b!970366))

(assert (= (or b!970357 b!970361 b!970367) bm!61546))

(assert (=> bm!61546 m!1174687))

(declare-fun m!1174695 () Bool)

(assert (=> b!970369 m!1174695))

(assert (=> b!970366 m!1174695))

(declare-fun m!1174697 () Bool)

(assert (=> b!970368 m!1174697))

(assert (=> b!970368 m!1174697))

(declare-fun m!1174699 () Bool)

(assert (=> b!970368 m!1174699))

(assert (=> d!286538 m!1174687))

(assert (=> d!286538 m!1174609))

(declare-fun m!1174701 () Bool)

(assert (=> b!970362 m!1174701))

(assert (=> b!970363 m!1174695))

(assert (=> b!970363 m!1174695))

(declare-fun m!1174703 () Bool)

(assert (=> b!970363 m!1174703))

(assert (=> b!970363 m!1174697))

(assert (=> b!970363 m!1174703))

(assert (=> b!970363 m!1174697))

(declare-fun m!1174705 () Bool)

(assert (=> b!970363 m!1174705))

(assert (=> b!970364 m!1174697))

(assert (=> b!970364 m!1174697))

(assert (=> b!970364 m!1174699))

(assert (=> b!970119 d!286538))

(declare-fun d!286540 () Bool)

(assert (=> d!286540 (= (matchR!1240 r!15766 s!10566) (matchRSpec!503 r!15766 s!10566))))

(declare-fun lt!348809 () Unit!15067)

(declare-fun choose!6135 (Regex!2704 List!9934) Unit!15067)

(assert (=> d!286540 (= lt!348809 (choose!6135 r!15766 s!10566))))

(assert (=> d!286540 (validRegex!1173 r!15766)))

(assert (=> d!286540 (= (mainMatchTheorem!503 r!15766 s!10566) lt!348809)))

(declare-fun bs!242367 () Bool)

(assert (= bs!242367 d!286540))

(assert (=> bs!242367 m!1174613))

(assert (=> bs!242367 m!1174611))

(declare-fun m!1174707 () Bool)

(assert (=> bs!242367 m!1174707))

(assert (=> bs!242367 m!1174609))

(assert (=> b!970119 d!286540))

(declare-fun b!970393 () Bool)

(declare-fun e!625617 () Bool)

(declare-fun tp!297267 () Bool)

(declare-fun tp!297271 () Bool)

(assert (=> b!970393 (= e!625617 (and tp!297267 tp!297271))))

(declare-fun b!970395 () Bool)

(declare-fun tp!297268 () Bool)

(declare-fun tp!297270 () Bool)

(assert (=> b!970395 (= e!625617 (and tp!297268 tp!297270))))

(assert (=> b!970120 (= tp!297236 e!625617)))

(declare-fun b!970394 () Bool)

(declare-fun tp!297269 () Bool)

(assert (=> b!970394 (= e!625617 tp!297269)))

(declare-fun b!970392 () Bool)

(assert (=> b!970392 (= e!625617 tp_is_empty!5051)))

(assert (= (and b!970120 (is-ElementMatch!2704 (regOne!5920 r!15766))) b!970392))

(assert (= (and b!970120 (is-Concat!4537 (regOne!5920 r!15766))) b!970393))

(assert (= (and b!970120 (is-Star!2704 (regOne!5920 r!15766))) b!970394))

(assert (= (and b!970120 (is-Union!2704 (regOne!5920 r!15766))) b!970395))

(declare-fun b!970397 () Bool)

(declare-fun e!625618 () Bool)

(declare-fun tp!297272 () Bool)

(declare-fun tp!297276 () Bool)

(assert (=> b!970397 (= e!625618 (and tp!297272 tp!297276))))

(declare-fun b!970399 () Bool)

(declare-fun tp!297273 () Bool)

(declare-fun tp!297275 () Bool)

(assert (=> b!970399 (= e!625618 (and tp!297273 tp!297275))))

(assert (=> b!970120 (= tp!297233 e!625618)))

(declare-fun b!970398 () Bool)

(declare-fun tp!297274 () Bool)

(assert (=> b!970398 (= e!625618 tp!297274)))

(declare-fun b!970396 () Bool)

(assert (=> b!970396 (= e!625618 tp_is_empty!5051)))

(assert (= (and b!970120 (is-ElementMatch!2704 (regTwo!5920 r!15766))) b!970396))

(assert (= (and b!970120 (is-Concat!4537 (regTwo!5920 r!15766))) b!970397))

(assert (= (and b!970120 (is-Star!2704 (regTwo!5920 r!15766))) b!970398))

(assert (= (and b!970120 (is-Union!2704 (regTwo!5920 r!15766))) b!970399))

(declare-fun b!970401 () Bool)

(declare-fun e!625619 () Bool)

(declare-fun tp!297277 () Bool)

(declare-fun tp!297281 () Bool)

(assert (=> b!970401 (= e!625619 (and tp!297277 tp!297281))))

(declare-fun b!970403 () Bool)

(declare-fun tp!297278 () Bool)

(declare-fun tp!297280 () Bool)

(assert (=> b!970403 (= e!625619 (and tp!297278 tp!297280))))

(assert (=> b!970117 (= tp!297235 e!625619)))

(declare-fun b!970402 () Bool)

(declare-fun tp!297279 () Bool)

(assert (=> b!970402 (= e!625619 tp!297279)))

(declare-fun b!970400 () Bool)

(assert (=> b!970400 (= e!625619 tp_is_empty!5051)))

(assert (= (and b!970117 (is-ElementMatch!2704 (regOne!5921 r!15766))) b!970400))

(assert (= (and b!970117 (is-Concat!4537 (regOne!5921 r!15766))) b!970401))

(assert (= (and b!970117 (is-Star!2704 (regOne!5921 r!15766))) b!970402))

(assert (= (and b!970117 (is-Union!2704 (regOne!5921 r!15766))) b!970403))

(declare-fun b!970405 () Bool)

(declare-fun e!625620 () Bool)

(declare-fun tp!297282 () Bool)

(declare-fun tp!297286 () Bool)

(assert (=> b!970405 (= e!625620 (and tp!297282 tp!297286))))

(declare-fun b!970407 () Bool)

(declare-fun tp!297283 () Bool)

(declare-fun tp!297285 () Bool)

(assert (=> b!970407 (= e!625620 (and tp!297283 tp!297285))))

(assert (=> b!970117 (= tp!297237 e!625620)))

(declare-fun b!970406 () Bool)

(declare-fun tp!297284 () Bool)

(assert (=> b!970406 (= e!625620 tp!297284)))

(declare-fun b!970404 () Bool)

(assert (=> b!970404 (= e!625620 tp_is_empty!5051)))

(assert (= (and b!970117 (is-ElementMatch!2704 (regTwo!5921 r!15766))) b!970404))

(assert (= (and b!970117 (is-Concat!4537 (regTwo!5921 r!15766))) b!970405))

(assert (= (and b!970117 (is-Star!2704 (regTwo!5921 r!15766))) b!970406))

(assert (= (and b!970117 (is-Union!2704 (regTwo!5921 r!15766))) b!970407))

(declare-fun b!970409 () Bool)

(declare-fun e!625621 () Bool)

(declare-fun tp!297287 () Bool)

(declare-fun tp!297291 () Bool)

(assert (=> b!970409 (= e!625621 (and tp!297287 tp!297291))))

(declare-fun b!970411 () Bool)

(declare-fun tp!297288 () Bool)

(declare-fun tp!297290 () Bool)

(assert (=> b!970411 (= e!625621 (and tp!297288 tp!297290))))

(assert (=> b!970116 (= tp!297238 e!625621)))

(declare-fun b!970410 () Bool)

(declare-fun tp!297289 () Bool)

(assert (=> b!970410 (= e!625621 tp!297289)))

(declare-fun b!970408 () Bool)

(assert (=> b!970408 (= e!625621 tp_is_empty!5051)))

(assert (= (and b!970116 (is-ElementMatch!2704 (reg!3033 r!15766))) b!970408))

(assert (= (and b!970116 (is-Concat!4537 (reg!3033 r!15766))) b!970409))

(assert (= (and b!970116 (is-Star!2704 (reg!3033 r!15766))) b!970410))

(assert (= (and b!970116 (is-Union!2704 (reg!3033 r!15766))) b!970411))

(declare-fun b!970416 () Bool)

(declare-fun e!625624 () Bool)

(declare-fun tp!297294 () Bool)

(assert (=> b!970416 (= e!625624 (and tp_is_empty!5051 tp!297294))))

(assert (=> b!970123 (= tp!297234 e!625624)))

(assert (= (and b!970123 (is-Cons!9918 (t!100980 s!10566))) b!970416))

(push 1)

(assert (not b!970322))

(assert (not b!970397))

(assert (not b!970235))

(assert (not b!970233))

(assert (not b!970398))

(assert (not d!286540))

(assert (not d!286530))

(assert (not bm!61539))

(assert (not b!970234))

(assert (not b!970240))

(assert (not b!970369))

(assert (not b!970409))

(assert (not b!970416))

(assert (not b!970403))

(assert (not b!970368))

(assert (not b!970406))

(assert (not b!970362))

(assert (not bm!61546))

(assert (not d!286524))

(assert (not b!970236))

(assert (not bm!61520))

(assert (not b!970320))

(assert (not b!970399))

(assert (not b!970405))

(assert (not b!970393))

(assert (not d!286538))

(assert (not d!286526))

(assert (not b!970191))

(assert (not b!970402))

(assert (not b!970237))

(assert (not b!970407))

(assert (not d!286532))

(assert (not bm!61522))

(assert (not b!970395))

(assert (not b!970363))

(assert (not bm!61538))

(assert (not b!970410))

(assert (not b!970366))

(assert (not bm!61519))

(assert (not b!970401))

(assert (not b!970364))

(assert tp_is_empty!5051)

(assert (not b!970394))

(assert (not bm!61523))

(assert (not b!970411))

(assert (not b!970182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

