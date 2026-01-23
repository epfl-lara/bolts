; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739414 () Bool)

(assert start!739414)

(declare-fun b!7761144 () Bool)

(declare-fun e!4599635 () Bool)

(declare-fun tp_is_empty!51751 () Bool)

(assert (=> b!7761144 (= e!4599635 tp_is_empty!51751)))

(declare-fun b!7761145 () Bool)

(declare-fun tp!2279243 () Bool)

(declare-fun tp!2279236 () Bool)

(assert (=> b!7761145 (= e!4599635 (and tp!2279243 tp!2279236))))

(declare-fun b!7761147 () Bool)

(declare-fun tp!2279240 () Bool)

(declare-fun tp!2279241 () Bool)

(assert (=> b!7761147 (= e!4599635 (and tp!2279240 tp!2279241))))

(declare-fun b!7761148 () Bool)

(declare-fun e!4599633 () Bool)

(declare-fun tp!2279234 () Bool)

(assert (=> b!7761148 (= e!4599633 (and tp_is_empty!51751 tp!2279234))))

(declare-fun b!7761149 () Bool)

(declare-fun e!4599634 () Bool)

(declare-fun tp!2279238 () Bool)

(declare-fun tp!2279244 () Bool)

(assert (=> b!7761149 (= e!4599634 (and tp!2279238 tp!2279244))))

(declare-fun b!7761150 () Bool)

(declare-fun e!4599630 () Bool)

(declare-fun e!4599632 () Bool)

(assert (=> b!7761150 (= e!4599630 e!4599632)))

(declare-fun res!3094075 () Bool)

(assert (=> b!7761150 (=> (not res!3094075) (not e!4599632))))

(declare-datatypes ((C!41722 0))(
  ( (C!41723 (val!31301 Int)) )
))
(declare-datatypes ((List!73541 0))(
  ( (Nil!73417) (Cons!73417 (h!79865 C!41722) (t!388276 List!73541)) )
))
(declare-datatypes ((tuple2!69782 0))(
  ( (tuple2!69783 (_1!38194 List!73541) (_2!38194 List!73541)) )
))
(declare-datatypes ((Option!17685 0))(
  ( (None!17684) (Some!17684 (v!54819 tuple2!69782)) )
))
(declare-fun lt!2670364 () Option!17685)

(declare-fun isDefined!14297 (Option!17685) Bool)

(assert (=> b!7761150 (= res!3094075 (isDefined!14297 lt!2670364))))

(declare-datatypes ((Regex!20698 0))(
  ( (ElementMatch!20698 (c!1430755 C!41722)) (Concat!29543 (regOne!41908 Regex!20698) (regTwo!41908 Regex!20698)) (EmptyExpr!20698) (Star!20698 (reg!21027 Regex!20698)) (EmptyLang!20698) (Union!20698 (regOne!41909 Regex!20698) (regTwo!41909 Regex!20698)) )
))
(declare-fun r1!3330 () Regex!20698)

(declare-fun r2!3230 () Regex!20698)

(declare-fun s!10216 () List!73541)

(declare-fun findConcatSeparation!3715 (Regex!20698 Regex!20698 List!73541 List!73541 List!73541) Option!17685)

(assert (=> b!7761150 (= lt!2670364 (findConcatSeparation!3715 r1!3330 r2!3230 Nil!73417 s!10216 s!10216))))

(declare-fun b!7761151 () Bool)

(declare-fun tp!2279239 () Bool)

(assert (=> b!7761151 (= e!4599634 tp!2279239)))

(declare-fun b!7761152 () Bool)

(declare-fun e!4599631 () Bool)

(declare-fun lt!2670363 () tuple2!69782)

(declare-fun matchR!10164 (Regex!20698 List!73541) Bool)

(assert (=> b!7761152 (= e!4599631 (not (matchR!10164 r1!3330 (_1!38194 lt!2670363))))))

(declare-fun res!3094076 () Bool)

(assert (=> start!739414 (=> (not res!3094076) (not e!4599630))))

(declare-fun validRegex!11114 (Regex!20698) Bool)

(assert (=> start!739414 (= res!3094076 (validRegex!11114 r1!3330))))

(assert (=> start!739414 e!4599630))

(assert (=> start!739414 e!4599635))

(assert (=> start!739414 e!4599634))

(assert (=> start!739414 e!4599633))

(declare-fun b!7761146 () Bool)

(assert (=> b!7761146 (= e!4599632 e!4599631)))

(declare-fun res!3094073 () Bool)

(assert (=> b!7761146 (=> (not res!3094073) (not e!4599631))))

(declare-fun ++!17873 (List!73541 List!73541) List!73541)

(assert (=> b!7761146 (= res!3094073 (= (++!17873 (_1!38194 lt!2670363) (_2!38194 lt!2670363)) s!10216))))

(declare-fun get!26178 (Option!17685) tuple2!69782)

(assert (=> b!7761146 (= lt!2670363 (get!26178 lt!2670364))))

(declare-fun b!7761153 () Bool)

(declare-fun res!3094074 () Bool)

(assert (=> b!7761153 (=> (not res!3094074) (not e!4599630))))

(assert (=> b!7761153 (= res!3094074 (validRegex!11114 r2!3230))))

(declare-fun b!7761154 () Bool)

(declare-fun tp!2279237 () Bool)

(declare-fun tp!2279235 () Bool)

(assert (=> b!7761154 (= e!4599634 (and tp!2279237 tp!2279235))))

(declare-fun b!7761155 () Bool)

(declare-fun tp!2279242 () Bool)

(assert (=> b!7761155 (= e!4599635 tp!2279242)))

(declare-fun b!7761156 () Bool)

(assert (=> b!7761156 (= e!4599634 tp_is_empty!51751)))

(assert (= (and start!739414 res!3094076) b!7761153))

(assert (= (and b!7761153 res!3094074) b!7761150))

(assert (= (and b!7761150 res!3094075) b!7761146))

(assert (= (and b!7761146 res!3094073) b!7761152))

(assert (= (and start!739414 (is-ElementMatch!20698 r1!3330)) b!7761144))

(assert (= (and start!739414 (is-Concat!29543 r1!3330)) b!7761145))

(assert (= (and start!739414 (is-Star!20698 r1!3330)) b!7761155))

(assert (= (and start!739414 (is-Union!20698 r1!3330)) b!7761147))

(assert (= (and start!739414 (is-ElementMatch!20698 r2!3230)) b!7761156))

(assert (= (and start!739414 (is-Concat!29543 r2!3230)) b!7761154))

(assert (= (and start!739414 (is-Star!20698 r2!3230)) b!7761151))

(assert (= (and start!739414 (is-Union!20698 r2!3230)) b!7761149))

(assert (= (and start!739414 (is-Cons!73417 s!10216)) b!7761148))

(declare-fun m!8220746 () Bool)

(assert (=> b!7761146 m!8220746))

(declare-fun m!8220748 () Bool)

(assert (=> b!7761146 m!8220748))

(declare-fun m!8220750 () Bool)

(assert (=> b!7761150 m!8220750))

(declare-fun m!8220752 () Bool)

(assert (=> b!7761150 m!8220752))

(declare-fun m!8220754 () Bool)

(assert (=> b!7761153 m!8220754))

(declare-fun m!8220756 () Bool)

(assert (=> b!7761152 m!8220756))

(declare-fun m!8220758 () Bool)

(assert (=> start!739414 m!8220758))

(push 1)

(assert (not b!7761152))

(assert (not b!7761150))

(assert (not b!7761146))

(assert tp_is_empty!51751)

(assert (not b!7761151))

(assert (not b!7761149))

(assert (not b!7761154))

(assert (not start!739414))

(assert (not b!7761153))

(assert (not b!7761148))

(assert (not b!7761155))

(assert (not b!7761147))

(assert (not b!7761145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!719158 () Bool)

(declare-fun call!719165 () Bool)

(declare-fun call!719163 () Bool)

(assert (=> bm!719158 (= call!719165 call!719163)))

(declare-fun b!7761232 () Bool)

(declare-fun res!3094111 () Bool)

(declare-fun e!4599687 () Bool)

(assert (=> b!7761232 (=> (not res!3094111) (not e!4599687))))

(declare-fun call!719164 () Bool)

(assert (=> b!7761232 (= res!3094111 call!719164)))

(declare-fun e!4599684 () Bool)

(assert (=> b!7761232 (= e!4599684 e!4599687)))

(declare-fun d!2343561 () Bool)

(declare-fun res!3094112 () Bool)

(declare-fun e!4599686 () Bool)

(assert (=> d!2343561 (=> res!3094112 e!4599686)))

(assert (=> d!2343561 (= res!3094112 (is-ElementMatch!20698 r2!3230))))

(assert (=> d!2343561 (= (validRegex!11114 r2!3230) e!4599686)))

(declare-fun b!7761233 () Bool)

(declare-fun e!4599685 () Bool)

(assert (=> b!7761233 (= e!4599685 call!719165)))

(declare-fun b!7761234 () Bool)

(declare-fun e!4599683 () Bool)

(declare-fun e!4599688 () Bool)

(assert (=> b!7761234 (= e!4599683 e!4599688)))

(declare-fun res!3094113 () Bool)

(declare-fun nullable!9108 (Regex!20698) Bool)

(assert (=> b!7761234 (= res!3094113 (not (nullable!9108 (reg!21027 r2!3230))))))

(assert (=> b!7761234 (=> (not res!3094113) (not e!4599688))))

(declare-fun b!7761235 () Bool)

(assert (=> b!7761235 (= e!4599687 call!719165)))

(declare-fun b!7761236 () Bool)

(assert (=> b!7761236 (= e!4599683 e!4599684)))

(declare-fun c!1430766 () Bool)

(assert (=> b!7761236 (= c!1430766 (is-Union!20698 r2!3230))))

(declare-fun bm!719159 () Bool)

(declare-fun c!1430765 () Bool)

(assert (=> bm!719159 (= call!719163 (validRegex!11114 (ite c!1430765 (reg!21027 r2!3230) (ite c!1430766 (regTwo!41909 r2!3230) (regTwo!41908 r2!3230)))))))

(declare-fun b!7761237 () Bool)

(assert (=> b!7761237 (= e!4599688 call!719163)))

(declare-fun b!7761238 () Bool)

(assert (=> b!7761238 (= e!4599686 e!4599683)))

(assert (=> b!7761238 (= c!1430765 (is-Star!20698 r2!3230))))

(declare-fun bm!719160 () Bool)

(assert (=> bm!719160 (= call!719164 (validRegex!11114 (ite c!1430766 (regOne!41909 r2!3230) (regOne!41908 r2!3230))))))

(declare-fun b!7761239 () Bool)

(declare-fun res!3094110 () Bool)

(declare-fun e!4599682 () Bool)

(assert (=> b!7761239 (=> res!3094110 e!4599682)))

(assert (=> b!7761239 (= res!3094110 (not (is-Concat!29543 r2!3230)))))

(assert (=> b!7761239 (= e!4599684 e!4599682)))

(declare-fun b!7761240 () Bool)

(assert (=> b!7761240 (= e!4599682 e!4599685)))

(declare-fun res!3094109 () Bool)

(assert (=> b!7761240 (=> (not res!3094109) (not e!4599685))))

(assert (=> b!7761240 (= res!3094109 call!719164)))

(assert (= (and d!2343561 (not res!3094112)) b!7761238))

(assert (= (and b!7761238 c!1430765) b!7761234))

(assert (= (and b!7761238 (not c!1430765)) b!7761236))

(assert (= (and b!7761234 res!3094113) b!7761237))

(assert (= (and b!7761236 c!1430766) b!7761232))

(assert (= (and b!7761236 (not c!1430766)) b!7761239))

(assert (= (and b!7761232 res!3094111) b!7761235))

(assert (= (and b!7761239 (not res!3094110)) b!7761240))

(assert (= (and b!7761240 res!3094109) b!7761233))

(assert (= (or b!7761232 b!7761240) bm!719160))

(assert (= (or b!7761235 b!7761233) bm!719158))

(assert (= (or b!7761237 bm!719158) bm!719159))

(declare-fun m!8220774 () Bool)

(assert (=> b!7761234 m!8220774))

(declare-fun m!8220776 () Bool)

(assert (=> bm!719159 m!8220776))

(declare-fun m!8220778 () Bool)

(assert (=> bm!719160 m!8220778))

(assert (=> b!7761153 d!2343561))

(declare-fun d!2343565 () Bool)

(declare-fun isEmpty!42081 (Option!17685) Bool)

(assert (=> d!2343565 (= (isDefined!14297 lt!2670364) (not (isEmpty!42081 lt!2670364)))))

(declare-fun bs!1965955 () Bool)

(assert (= bs!1965955 d!2343565))

(declare-fun m!8220780 () Bool)

(assert (=> bs!1965955 m!8220780))

(assert (=> b!7761150 d!2343565))

(declare-fun b!7761280 () Bool)

(declare-fun e!4599712 () Option!17685)

(declare-fun e!4599715 () Option!17685)

(assert (=> b!7761280 (= e!4599712 e!4599715)))

(declare-fun c!1430777 () Bool)

(assert (=> b!7761280 (= c!1430777 (is-Nil!73417 s!10216))))

(declare-fun b!7761281 () Bool)

(declare-fun e!4599713 () Bool)

(declare-fun lt!2670382 () Option!17685)

(assert (=> b!7761281 (= e!4599713 (not (isDefined!14297 lt!2670382)))))

(declare-fun d!2343567 () Bool)

(assert (=> d!2343567 e!4599713))

(declare-fun res!3094137 () Bool)

(assert (=> d!2343567 (=> res!3094137 e!4599713)))

(declare-fun e!4599714 () Bool)

(assert (=> d!2343567 (= res!3094137 e!4599714)))

(declare-fun res!3094136 () Bool)

(assert (=> d!2343567 (=> (not res!3094136) (not e!4599714))))

(assert (=> d!2343567 (= res!3094136 (isDefined!14297 lt!2670382))))

(assert (=> d!2343567 (= lt!2670382 e!4599712)))

(declare-fun c!1430776 () Bool)

(declare-fun e!4599716 () Bool)

(assert (=> d!2343567 (= c!1430776 e!4599716)))

(declare-fun res!3094139 () Bool)

(assert (=> d!2343567 (=> (not res!3094139) (not e!4599716))))

(assert (=> d!2343567 (= res!3094139 (matchR!10164 r1!3330 Nil!73417))))

(assert (=> d!2343567 (validRegex!11114 r1!3330)))

(assert (=> d!2343567 (= (findConcatSeparation!3715 r1!3330 r2!3230 Nil!73417 s!10216 s!10216) lt!2670382)))

(declare-fun b!7761282 () Bool)

(assert (=> b!7761282 (= e!4599715 None!17684)))

(declare-fun b!7761283 () Bool)

(assert (=> b!7761283 (= e!4599714 (= (++!17873 (_1!38194 (get!26178 lt!2670382)) (_2!38194 (get!26178 lt!2670382))) s!10216))))

(declare-fun b!7761284 () Bool)

(declare-fun res!3094138 () Bool)

(assert (=> b!7761284 (=> (not res!3094138) (not e!4599714))))

(assert (=> b!7761284 (= res!3094138 (matchR!10164 r1!3330 (_1!38194 (get!26178 lt!2670382))))))

(declare-fun b!7761285 () Bool)

(declare-fun res!3094135 () Bool)

(assert (=> b!7761285 (=> (not res!3094135) (not e!4599714))))

(assert (=> b!7761285 (= res!3094135 (matchR!10164 r2!3230 (_2!38194 (get!26178 lt!2670382))))))

(declare-fun b!7761286 () Bool)

(assert (=> b!7761286 (= e!4599716 (matchR!10164 r2!3230 s!10216))))

(declare-fun b!7761287 () Bool)

(declare-datatypes ((Unit!168386 0))(
  ( (Unit!168387) )
))
(declare-fun lt!2670380 () Unit!168386)

(declare-fun lt!2670381 () Unit!168386)

(assert (=> b!7761287 (= lt!2670380 lt!2670381)))

(assert (=> b!7761287 (= (++!17873 (++!17873 Nil!73417 (Cons!73417 (h!79865 s!10216) Nil!73417)) (t!388276 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3359 (List!73541 C!41722 List!73541 List!73541) Unit!168386)

(assert (=> b!7761287 (= lt!2670381 (lemmaMoveElementToOtherListKeepsConcatEq!3359 Nil!73417 (h!79865 s!10216) (t!388276 s!10216) s!10216))))

(assert (=> b!7761287 (= e!4599715 (findConcatSeparation!3715 r1!3330 r2!3230 (++!17873 Nil!73417 (Cons!73417 (h!79865 s!10216) Nil!73417)) (t!388276 s!10216) s!10216))))

(declare-fun b!7761288 () Bool)

(assert (=> b!7761288 (= e!4599712 (Some!17684 (tuple2!69783 Nil!73417 s!10216)))))

(assert (= (and d!2343567 res!3094139) b!7761286))

(assert (= (and d!2343567 c!1430776) b!7761288))

(assert (= (and d!2343567 (not c!1430776)) b!7761280))

(assert (= (and b!7761280 c!1430777) b!7761282))

(assert (= (and b!7761280 (not c!1430777)) b!7761287))

(assert (= (and d!2343567 res!3094136) b!7761284))

(assert (= (and b!7761284 res!3094138) b!7761285))

(assert (= (and b!7761285 res!3094135) b!7761283))

(assert (= (and d!2343567 (not res!3094137)) b!7761281))

(declare-fun m!8220804 () Bool)

(assert (=> b!7761287 m!8220804))

(assert (=> b!7761287 m!8220804))

(declare-fun m!8220806 () Bool)

(assert (=> b!7761287 m!8220806))

(declare-fun m!8220808 () Bool)

(assert (=> b!7761287 m!8220808))

(assert (=> b!7761287 m!8220804))

(declare-fun m!8220810 () Bool)

(assert (=> b!7761287 m!8220810))

(declare-fun m!8220812 () Bool)

(assert (=> b!7761285 m!8220812))

(declare-fun m!8220814 () Bool)

(assert (=> b!7761285 m!8220814))

(assert (=> b!7761284 m!8220812))

(declare-fun m!8220816 () Bool)

(assert (=> b!7761284 m!8220816))

(declare-fun m!8220818 () Bool)

(assert (=> b!7761281 m!8220818))

(assert (=> b!7761283 m!8220812))

(declare-fun m!8220820 () Bool)

(assert (=> b!7761283 m!8220820))

(declare-fun m!8220822 () Bool)

(assert (=> b!7761286 m!8220822))

(assert (=> d!2343567 m!8220818))

(declare-fun m!8220824 () Bool)

(assert (=> d!2343567 m!8220824))

(assert (=> d!2343567 m!8220758))

(assert (=> b!7761150 d!2343567))

(declare-fun b!7761297 () Bool)

(declare-fun e!4599721 () List!73541)

(assert (=> b!7761297 (= e!4599721 (_2!38194 lt!2670363))))

(declare-fun b!7761298 () Bool)

(assert (=> b!7761298 (= e!4599721 (Cons!73417 (h!79865 (_1!38194 lt!2670363)) (++!17873 (t!388276 (_1!38194 lt!2670363)) (_2!38194 lt!2670363))))))

(declare-fun b!7761299 () Bool)

(declare-fun res!3094145 () Bool)

(declare-fun e!4599722 () Bool)

(assert (=> b!7761299 (=> (not res!3094145) (not e!4599722))))

(declare-fun lt!2670385 () List!73541)

(declare-fun size!42679 (List!73541) Int)

(assert (=> b!7761299 (= res!3094145 (= (size!42679 lt!2670385) (+ (size!42679 (_1!38194 lt!2670363)) (size!42679 (_2!38194 lt!2670363)))))))

(declare-fun d!2343577 () Bool)

(assert (=> d!2343577 e!4599722))

(declare-fun res!3094144 () Bool)

(assert (=> d!2343577 (=> (not res!3094144) (not e!4599722))))

(declare-fun content!15576 (List!73541) (Set C!41722))

(assert (=> d!2343577 (= res!3094144 (= (content!15576 lt!2670385) (set.union (content!15576 (_1!38194 lt!2670363)) (content!15576 (_2!38194 lt!2670363)))))))

(assert (=> d!2343577 (= lt!2670385 e!4599721)))

(declare-fun c!1430780 () Bool)

(assert (=> d!2343577 (= c!1430780 (is-Nil!73417 (_1!38194 lt!2670363)))))

(assert (=> d!2343577 (= (++!17873 (_1!38194 lt!2670363) (_2!38194 lt!2670363)) lt!2670385)))

(declare-fun b!7761300 () Bool)

(assert (=> b!7761300 (= e!4599722 (or (not (= (_2!38194 lt!2670363) Nil!73417)) (= lt!2670385 (_1!38194 lt!2670363))))))

(assert (= (and d!2343577 c!1430780) b!7761297))

(assert (= (and d!2343577 (not c!1430780)) b!7761298))

(assert (= (and d!2343577 res!3094144) b!7761299))

(assert (= (and b!7761299 res!3094145) b!7761300))

(declare-fun m!8220826 () Bool)

(assert (=> b!7761298 m!8220826))

(declare-fun m!8220828 () Bool)

(assert (=> b!7761299 m!8220828))

(declare-fun m!8220830 () Bool)

(assert (=> b!7761299 m!8220830))

(declare-fun m!8220832 () Bool)

(assert (=> b!7761299 m!8220832))

(declare-fun m!8220834 () Bool)

(assert (=> d!2343577 m!8220834))

(declare-fun m!8220836 () Bool)

(assert (=> d!2343577 m!8220836))

(declare-fun m!8220838 () Bool)

(assert (=> d!2343577 m!8220838))

(assert (=> b!7761146 d!2343577))

(declare-fun d!2343579 () Bool)

(assert (=> d!2343579 (= (get!26178 lt!2670364) (v!54819 lt!2670364))))

(assert (=> b!7761146 d!2343579))

(declare-fun b!7761347 () Bool)

(declare-fun e!4599752 () Bool)

(assert (=> b!7761347 (= e!4599752 (nullable!9108 r1!3330))))

(declare-fun bm!719168 () Bool)

(declare-fun call!719173 () Bool)

(declare-fun isEmpty!42082 (List!73541) Bool)

(assert (=> bm!719168 (= call!719173 (isEmpty!42082 (_1!38194 lt!2670363)))))

(declare-fun b!7761348 () Bool)

(declare-fun e!4599747 () Bool)

(declare-fun head!15851 (List!73541) C!41722)

(assert (=> b!7761348 (= e!4599747 (= (head!15851 (_1!38194 lt!2670363)) (c!1430755 r1!3330)))))

(declare-fun b!7761349 () Bool)

(declare-fun e!4599749 () Bool)

(declare-fun e!4599750 () Bool)

(assert (=> b!7761349 (= e!4599749 e!4599750)))

(declare-fun res!3094176 () Bool)

(assert (=> b!7761349 (=> res!3094176 e!4599750)))

(assert (=> b!7761349 (= res!3094176 call!719173)))

(declare-fun b!7761350 () Bool)

(declare-fun res!3094174 () Bool)

(assert (=> b!7761350 (=> (not res!3094174) (not e!4599747))))

(assert (=> b!7761350 (= res!3094174 (not call!719173))))

(declare-fun b!7761351 () Bool)

(declare-fun res!3094178 () Bool)

(assert (=> b!7761351 (=> (not res!3094178) (not e!4599747))))

(declare-fun tail!15391 (List!73541) List!73541)

(assert (=> b!7761351 (= res!3094178 (isEmpty!42082 (tail!15391 (_1!38194 lt!2670363))))))

(declare-fun b!7761352 () Bool)

(declare-fun e!4599753 () Bool)

(declare-fun lt!2670394 () Bool)

(assert (=> b!7761352 (= e!4599753 (not lt!2670394))))

(declare-fun b!7761353 () Bool)

(declare-fun e!4599751 () Bool)

(assert (=> b!7761353 (= e!4599751 (= lt!2670394 call!719173))))

(declare-fun d!2343581 () Bool)

(assert (=> d!2343581 e!4599751))

(declare-fun c!1430792 () Bool)

(assert (=> d!2343581 (= c!1430792 (is-EmptyExpr!20698 r1!3330))))

(assert (=> d!2343581 (= lt!2670394 e!4599752)))

(declare-fun c!1430793 () Bool)

(assert (=> d!2343581 (= c!1430793 (isEmpty!42082 (_1!38194 lt!2670363)))))

(assert (=> d!2343581 (validRegex!11114 r1!3330)))

(assert (=> d!2343581 (= (matchR!10164 r1!3330 (_1!38194 lt!2670363)) lt!2670394)))

(declare-fun b!7761354 () Bool)

(declare-fun derivativeStep!6055 (Regex!20698 C!41722) Regex!20698)

(assert (=> b!7761354 (= e!4599752 (matchR!10164 (derivativeStep!6055 r1!3330 (head!15851 (_1!38194 lt!2670363))) (tail!15391 (_1!38194 lt!2670363))))))

(declare-fun b!7761355 () Bool)

(declare-fun res!3094177 () Bool)

(assert (=> b!7761355 (=> res!3094177 e!4599750)))

(assert (=> b!7761355 (= res!3094177 (not (isEmpty!42082 (tail!15391 (_1!38194 lt!2670363)))))))

(declare-fun b!7761356 () Bool)

(assert (=> b!7761356 (= e!4599750 (not (= (head!15851 (_1!38194 lt!2670363)) (c!1430755 r1!3330))))))

(declare-fun b!7761357 () Bool)

(declare-fun res!3094179 () Bool)

(declare-fun e!4599748 () Bool)

(assert (=> b!7761357 (=> res!3094179 e!4599748)))

(assert (=> b!7761357 (= res!3094179 (not (is-ElementMatch!20698 r1!3330)))))

(assert (=> b!7761357 (= e!4599753 e!4599748)))

(declare-fun b!7761358 () Bool)

(declare-fun res!3094172 () Bool)

(assert (=> b!7761358 (=> res!3094172 e!4599748)))

(assert (=> b!7761358 (= res!3094172 e!4599747)))

(declare-fun res!3094173 () Bool)

(assert (=> b!7761358 (=> (not res!3094173) (not e!4599747))))

(assert (=> b!7761358 (= res!3094173 lt!2670394)))

(declare-fun b!7761359 () Bool)

(assert (=> b!7761359 (= e!4599748 e!4599749)))

(declare-fun res!3094175 () Bool)

(assert (=> b!7761359 (=> (not res!3094175) (not e!4599749))))

(assert (=> b!7761359 (= res!3094175 (not lt!2670394))))

(declare-fun b!7761360 () Bool)

(assert (=> b!7761360 (= e!4599751 e!4599753)))

(declare-fun c!1430791 () Bool)

(assert (=> b!7761360 (= c!1430791 (is-EmptyLang!20698 r1!3330))))

(assert (= (and d!2343581 c!1430793) b!7761347))

(assert (= (and d!2343581 (not c!1430793)) b!7761354))

(assert (= (and d!2343581 c!1430792) b!7761353))

(assert (= (and d!2343581 (not c!1430792)) b!7761360))

(assert (= (and b!7761360 c!1430791) b!7761352))

(assert (= (and b!7761360 (not c!1430791)) b!7761357))

(assert (= (and b!7761357 (not res!3094179)) b!7761358))

(assert (= (and b!7761358 res!3094173) b!7761350))

(assert (= (and b!7761350 res!3094174) b!7761351))

(assert (= (and b!7761351 res!3094178) b!7761348))

(assert (= (and b!7761358 (not res!3094172)) b!7761359))

(assert (= (and b!7761359 res!3094175) b!7761349))

(assert (= (and b!7761349 (not res!3094176)) b!7761355))

(assert (= (and b!7761355 (not res!3094177)) b!7761356))

(assert (= (or b!7761353 b!7761349 b!7761350) bm!719168))

(declare-fun m!8220840 () Bool)

(assert (=> b!7761348 m!8220840))

(declare-fun m!8220842 () Bool)

(assert (=> bm!719168 m!8220842))

(declare-fun m!8220844 () Bool)

(assert (=> b!7761351 m!8220844))

(assert (=> b!7761351 m!8220844))

(declare-fun m!8220846 () Bool)

(assert (=> b!7761351 m!8220846))

(assert (=> b!7761356 m!8220840))

(assert (=> b!7761355 m!8220844))

(assert (=> b!7761355 m!8220844))

(assert (=> b!7761355 m!8220846))

(declare-fun m!8220848 () Bool)

(assert (=> b!7761347 m!8220848))

(assert (=> b!7761354 m!8220840))

(assert (=> b!7761354 m!8220840))

(declare-fun m!8220850 () Bool)

(assert (=> b!7761354 m!8220850))

(assert (=> b!7761354 m!8220844))

(assert (=> b!7761354 m!8220850))

(assert (=> b!7761354 m!8220844))

(declare-fun m!8220852 () Bool)

(assert (=> b!7761354 m!8220852))

(assert (=> d!2343581 m!8220842))

(assert (=> d!2343581 m!8220758))

(assert (=> b!7761152 d!2343581))

(declare-fun bm!719169 () Bool)

(declare-fun call!719176 () Bool)

(declare-fun call!719174 () Bool)

(assert (=> bm!719169 (= call!719176 call!719174)))

(declare-fun b!7761361 () Bool)

(declare-fun res!3094182 () Bool)

(declare-fun e!4599759 () Bool)

(assert (=> b!7761361 (=> (not res!3094182) (not e!4599759))))

(declare-fun call!719175 () Bool)

(assert (=> b!7761361 (= res!3094182 call!719175)))

(declare-fun e!4599756 () Bool)

(assert (=> b!7761361 (= e!4599756 e!4599759)))

(declare-fun d!2343583 () Bool)

(declare-fun res!3094183 () Bool)

(declare-fun e!4599758 () Bool)

(assert (=> d!2343583 (=> res!3094183 e!4599758)))

(assert (=> d!2343583 (= res!3094183 (is-ElementMatch!20698 r1!3330))))

(assert (=> d!2343583 (= (validRegex!11114 r1!3330) e!4599758)))

(declare-fun b!7761362 () Bool)

(declare-fun e!4599757 () Bool)

(assert (=> b!7761362 (= e!4599757 call!719176)))

(declare-fun b!7761363 () Bool)

(declare-fun e!4599755 () Bool)

(declare-fun e!4599760 () Bool)

(assert (=> b!7761363 (= e!4599755 e!4599760)))

(declare-fun res!3094184 () Bool)

(assert (=> b!7761363 (= res!3094184 (not (nullable!9108 (reg!21027 r1!3330))))))

(assert (=> b!7761363 (=> (not res!3094184) (not e!4599760))))

(declare-fun b!7761364 () Bool)

(assert (=> b!7761364 (= e!4599759 call!719176)))

(declare-fun b!7761365 () Bool)

(assert (=> b!7761365 (= e!4599755 e!4599756)))

(declare-fun c!1430795 () Bool)

(assert (=> b!7761365 (= c!1430795 (is-Union!20698 r1!3330))))

(declare-fun c!1430794 () Bool)

(declare-fun bm!719170 () Bool)

(assert (=> bm!719170 (= call!719174 (validRegex!11114 (ite c!1430794 (reg!21027 r1!3330) (ite c!1430795 (regTwo!41909 r1!3330) (regTwo!41908 r1!3330)))))))

(declare-fun b!7761366 () Bool)

(assert (=> b!7761366 (= e!4599760 call!719174)))

(declare-fun b!7761367 () Bool)

(assert (=> b!7761367 (= e!4599758 e!4599755)))

(assert (=> b!7761367 (= c!1430794 (is-Star!20698 r1!3330))))

(declare-fun bm!719171 () Bool)

(assert (=> bm!719171 (= call!719175 (validRegex!11114 (ite c!1430795 (regOne!41909 r1!3330) (regOne!41908 r1!3330))))))

(declare-fun b!7761368 () Bool)

(declare-fun res!3094181 () Bool)

(declare-fun e!4599754 () Bool)

(assert (=> b!7761368 (=> res!3094181 e!4599754)))

(assert (=> b!7761368 (= res!3094181 (not (is-Concat!29543 r1!3330)))))

(assert (=> b!7761368 (= e!4599756 e!4599754)))

(declare-fun b!7761369 () Bool)

(assert (=> b!7761369 (= e!4599754 e!4599757)))

(declare-fun res!3094180 () Bool)

(assert (=> b!7761369 (=> (not res!3094180) (not e!4599757))))

(assert (=> b!7761369 (= res!3094180 call!719175)))

(assert (= (and d!2343583 (not res!3094183)) b!7761367))

(assert (= (and b!7761367 c!1430794) b!7761363))

(assert (= (and b!7761367 (not c!1430794)) b!7761365))

(assert (= (and b!7761363 res!3094184) b!7761366))

(assert (= (and b!7761365 c!1430795) b!7761361))

(assert (= (and b!7761365 (not c!1430795)) b!7761368))

(assert (= (and b!7761361 res!3094182) b!7761364))

(assert (= (and b!7761368 (not res!3094181)) b!7761369))

(assert (= (and b!7761369 res!3094180) b!7761362))

(assert (= (or b!7761361 b!7761369) bm!719171))

(assert (= (or b!7761364 b!7761362) bm!719169))

(assert (= (or b!7761366 bm!719169) bm!719170))

(declare-fun m!8220854 () Bool)

(assert (=> b!7761363 m!8220854))

(declare-fun m!8220856 () Bool)

(assert (=> bm!719170 m!8220856))

(declare-fun m!8220858 () Bool)

(assert (=> bm!719171 m!8220858))

(assert (=> start!739414 d!2343583))

(declare-fun b!7761374 () Bool)

(declare-fun e!4599763 () Bool)

(declare-fun tp!2279280 () Bool)

(assert (=> b!7761374 (= e!4599763 (and tp_is_empty!51751 tp!2279280))))

(assert (=> b!7761148 (= tp!2279234 e!4599763)))

(assert (= (and b!7761148 (is-Cons!73417 (t!388276 s!10216))) b!7761374))

(declare-fun b!7761387 () Bool)

(declare-fun e!4599766 () Bool)

(declare-fun tp!2279294 () Bool)

(assert (=> b!7761387 (= e!4599766 tp!2279294)))

(assert (=> b!7761154 (= tp!2279237 e!4599766)))

(declare-fun b!7761386 () Bool)

(declare-fun tp!2279291 () Bool)

(declare-fun tp!2279295 () Bool)

(assert (=> b!7761386 (= e!4599766 (and tp!2279291 tp!2279295))))

(declare-fun b!7761385 () Bool)

(assert (=> b!7761385 (= e!4599766 tp_is_empty!51751)))

(declare-fun b!7761388 () Bool)

(declare-fun tp!2279293 () Bool)

(declare-fun tp!2279292 () Bool)

(assert (=> b!7761388 (= e!4599766 (and tp!2279293 tp!2279292))))

(assert (= (and b!7761154 (is-ElementMatch!20698 (regOne!41908 r2!3230))) b!7761385))

(assert (= (and b!7761154 (is-Concat!29543 (regOne!41908 r2!3230))) b!7761386))

(assert (= (and b!7761154 (is-Star!20698 (regOne!41908 r2!3230))) b!7761387))

(assert (= (and b!7761154 (is-Union!20698 (regOne!41908 r2!3230))) b!7761388))

(declare-fun b!7761400 () Bool)

(declare-fun e!4599772 () Bool)

(declare-fun tp!2279299 () Bool)

(assert (=> b!7761400 (= e!4599772 tp!2279299)))

(assert (=> b!7761154 (= tp!2279235 e!4599772)))

(declare-fun b!7761399 () Bool)

(declare-fun tp!2279296 () Bool)

(declare-fun tp!2279300 () Bool)

(assert (=> b!7761399 (= e!4599772 (and tp!2279296 tp!2279300))))

(declare-fun b!7761398 () Bool)

(assert (=> b!7761398 (= e!4599772 tp_is_empty!51751)))

(declare-fun b!7761401 () Bool)

(declare-fun tp!2279298 () Bool)

(declare-fun tp!2279297 () Bool)

(assert (=> b!7761401 (= e!4599772 (and tp!2279298 tp!2279297))))

(assert (= (and b!7761154 (is-ElementMatch!20698 (regTwo!41908 r2!3230))) b!7761398))

(assert (= (and b!7761154 (is-Concat!29543 (regTwo!41908 r2!3230))) b!7761399))

(assert (= (and b!7761154 (is-Star!20698 (regTwo!41908 r2!3230))) b!7761400))

(assert (= (and b!7761154 (is-Union!20698 (regTwo!41908 r2!3230))) b!7761401))

(declare-fun b!7761404 () Bool)

(declare-fun e!4599773 () Bool)

(declare-fun tp!2279304 () Bool)

(assert (=> b!7761404 (= e!4599773 tp!2279304)))

(assert (=> b!7761149 (= tp!2279238 e!4599773)))

(declare-fun b!7761403 () Bool)

(declare-fun tp!2279301 () Bool)

(declare-fun tp!2279305 () Bool)

(assert (=> b!7761403 (= e!4599773 (and tp!2279301 tp!2279305))))

(declare-fun b!7761402 () Bool)

(assert (=> b!7761402 (= e!4599773 tp_is_empty!51751)))

(declare-fun b!7761405 () Bool)

(declare-fun tp!2279303 () Bool)

(declare-fun tp!2279302 () Bool)

(assert (=> b!7761405 (= e!4599773 (and tp!2279303 tp!2279302))))

(assert (= (and b!7761149 (is-ElementMatch!20698 (regOne!41909 r2!3230))) b!7761402))

(assert (= (and b!7761149 (is-Concat!29543 (regOne!41909 r2!3230))) b!7761403))

(assert (= (and b!7761149 (is-Star!20698 (regOne!41909 r2!3230))) b!7761404))

(assert (= (and b!7761149 (is-Union!20698 (regOne!41909 r2!3230))) b!7761405))

(declare-fun b!7761408 () Bool)

(declare-fun e!4599774 () Bool)

(declare-fun tp!2279309 () Bool)

(assert (=> b!7761408 (= e!4599774 tp!2279309)))

(assert (=> b!7761149 (= tp!2279244 e!4599774)))

(declare-fun b!7761407 () Bool)

(declare-fun tp!2279306 () Bool)

(declare-fun tp!2279310 () Bool)

(assert (=> b!7761407 (= e!4599774 (and tp!2279306 tp!2279310))))

(declare-fun b!7761406 () Bool)

(assert (=> b!7761406 (= e!4599774 tp_is_empty!51751)))

(declare-fun b!7761409 () Bool)

(declare-fun tp!2279308 () Bool)

(declare-fun tp!2279307 () Bool)

(assert (=> b!7761409 (= e!4599774 (and tp!2279308 tp!2279307))))

(assert (= (and b!7761149 (is-ElementMatch!20698 (regTwo!41909 r2!3230))) b!7761406))

(assert (= (and b!7761149 (is-Concat!29543 (regTwo!41909 r2!3230))) b!7761407))

(assert (= (and b!7761149 (is-Star!20698 (regTwo!41909 r2!3230))) b!7761408))

(assert (= (and b!7761149 (is-Union!20698 (regTwo!41909 r2!3230))) b!7761409))

(declare-fun b!7761412 () Bool)

(declare-fun e!4599775 () Bool)

(declare-fun tp!2279314 () Bool)

(assert (=> b!7761412 (= e!4599775 tp!2279314)))

(assert (=> b!7761155 (= tp!2279242 e!4599775)))

(declare-fun b!7761411 () Bool)

(declare-fun tp!2279311 () Bool)

(declare-fun tp!2279315 () Bool)

(assert (=> b!7761411 (= e!4599775 (and tp!2279311 tp!2279315))))

(declare-fun b!7761410 () Bool)

(assert (=> b!7761410 (= e!4599775 tp_is_empty!51751)))

(declare-fun b!7761413 () Bool)

(declare-fun tp!2279313 () Bool)

(declare-fun tp!2279312 () Bool)

(assert (=> b!7761413 (= e!4599775 (and tp!2279313 tp!2279312))))

(assert (= (and b!7761155 (is-ElementMatch!20698 (reg!21027 r1!3330))) b!7761410))

(assert (= (and b!7761155 (is-Concat!29543 (reg!21027 r1!3330))) b!7761411))

(assert (= (and b!7761155 (is-Star!20698 (reg!21027 r1!3330))) b!7761412))

(assert (= (and b!7761155 (is-Union!20698 (reg!21027 r1!3330))) b!7761413))

(declare-fun b!7761416 () Bool)

(declare-fun e!4599776 () Bool)

(declare-fun tp!2279319 () Bool)

(assert (=> b!7761416 (= e!4599776 tp!2279319)))

(assert (=> b!7761145 (= tp!2279243 e!4599776)))

(declare-fun b!7761415 () Bool)

(declare-fun tp!2279316 () Bool)

(declare-fun tp!2279320 () Bool)

(assert (=> b!7761415 (= e!4599776 (and tp!2279316 tp!2279320))))

(declare-fun b!7761414 () Bool)

(assert (=> b!7761414 (= e!4599776 tp_is_empty!51751)))

(declare-fun b!7761417 () Bool)

(declare-fun tp!2279318 () Bool)

(declare-fun tp!2279317 () Bool)

(assert (=> b!7761417 (= e!4599776 (and tp!2279318 tp!2279317))))

(assert (= (and b!7761145 (is-ElementMatch!20698 (regOne!41908 r1!3330))) b!7761414))

(assert (= (and b!7761145 (is-Concat!29543 (regOne!41908 r1!3330))) b!7761415))

(assert (= (and b!7761145 (is-Star!20698 (regOne!41908 r1!3330))) b!7761416))

(assert (= (and b!7761145 (is-Union!20698 (regOne!41908 r1!3330))) b!7761417))

(declare-fun b!7761420 () Bool)

(declare-fun e!4599777 () Bool)

(declare-fun tp!2279324 () Bool)

(assert (=> b!7761420 (= e!4599777 tp!2279324)))

(assert (=> b!7761145 (= tp!2279236 e!4599777)))

(declare-fun b!7761419 () Bool)

(declare-fun tp!2279321 () Bool)

(declare-fun tp!2279325 () Bool)

(assert (=> b!7761419 (= e!4599777 (and tp!2279321 tp!2279325))))

(declare-fun b!7761418 () Bool)

(assert (=> b!7761418 (= e!4599777 tp_is_empty!51751)))

(declare-fun b!7761421 () Bool)

(declare-fun tp!2279323 () Bool)

(declare-fun tp!2279322 () Bool)

(assert (=> b!7761421 (= e!4599777 (and tp!2279323 tp!2279322))))

(assert (= (and b!7761145 (is-ElementMatch!20698 (regTwo!41908 r1!3330))) b!7761418))

(assert (= (and b!7761145 (is-Concat!29543 (regTwo!41908 r1!3330))) b!7761419))

(assert (= (and b!7761145 (is-Star!20698 (regTwo!41908 r1!3330))) b!7761420))

(assert (= (and b!7761145 (is-Union!20698 (regTwo!41908 r1!3330))) b!7761421))

(declare-fun b!7761424 () Bool)

(declare-fun e!4599778 () Bool)

(declare-fun tp!2279329 () Bool)

(assert (=> b!7761424 (= e!4599778 tp!2279329)))

(assert (=> b!7761151 (= tp!2279239 e!4599778)))

(declare-fun b!7761423 () Bool)

(declare-fun tp!2279326 () Bool)

(declare-fun tp!2279330 () Bool)

(assert (=> b!7761423 (= e!4599778 (and tp!2279326 tp!2279330))))

(declare-fun b!7761422 () Bool)

(assert (=> b!7761422 (= e!4599778 tp_is_empty!51751)))

(declare-fun b!7761425 () Bool)

(declare-fun tp!2279328 () Bool)

(declare-fun tp!2279327 () Bool)

(assert (=> b!7761425 (= e!4599778 (and tp!2279328 tp!2279327))))

(assert (= (and b!7761151 (is-ElementMatch!20698 (reg!21027 r2!3230))) b!7761422))

(assert (= (and b!7761151 (is-Concat!29543 (reg!21027 r2!3230))) b!7761423))

(assert (= (and b!7761151 (is-Star!20698 (reg!21027 r2!3230))) b!7761424))

(assert (= (and b!7761151 (is-Union!20698 (reg!21027 r2!3230))) b!7761425))

(declare-fun b!7761428 () Bool)

(declare-fun e!4599779 () Bool)

(declare-fun tp!2279334 () Bool)

(assert (=> b!7761428 (= e!4599779 tp!2279334)))

(assert (=> b!7761147 (= tp!2279240 e!4599779)))

(declare-fun b!7761427 () Bool)

(declare-fun tp!2279331 () Bool)

(declare-fun tp!2279335 () Bool)

(assert (=> b!7761427 (= e!4599779 (and tp!2279331 tp!2279335))))

(declare-fun b!7761426 () Bool)

(assert (=> b!7761426 (= e!4599779 tp_is_empty!51751)))

(declare-fun b!7761429 () Bool)

(declare-fun tp!2279333 () Bool)

(declare-fun tp!2279332 () Bool)

(assert (=> b!7761429 (= e!4599779 (and tp!2279333 tp!2279332))))

(assert (= (and b!7761147 (is-ElementMatch!20698 (regOne!41909 r1!3330))) b!7761426))

(assert (= (and b!7761147 (is-Concat!29543 (regOne!41909 r1!3330))) b!7761427))

(assert (= (and b!7761147 (is-Star!20698 (regOne!41909 r1!3330))) b!7761428))

(assert (= (and b!7761147 (is-Union!20698 (regOne!41909 r1!3330))) b!7761429))

(declare-fun b!7761432 () Bool)

(declare-fun e!4599780 () Bool)

(declare-fun tp!2279339 () Bool)

(assert (=> b!7761432 (= e!4599780 tp!2279339)))

(assert (=> b!7761147 (= tp!2279241 e!4599780)))

(declare-fun b!7761431 () Bool)

(declare-fun tp!2279336 () Bool)

(declare-fun tp!2279340 () Bool)

(assert (=> b!7761431 (= e!4599780 (and tp!2279336 tp!2279340))))

(declare-fun b!7761430 () Bool)

(assert (=> b!7761430 (= e!4599780 tp_is_empty!51751)))

(declare-fun b!7761433 () Bool)

(declare-fun tp!2279338 () Bool)

(declare-fun tp!2279337 () Bool)

(assert (=> b!7761433 (= e!4599780 (and tp!2279338 tp!2279337))))

(assert (= (and b!7761147 (is-ElementMatch!20698 (regTwo!41909 r1!3330))) b!7761430))

(assert (= (and b!7761147 (is-Concat!29543 (regTwo!41909 r1!3330))) b!7761431))

(assert (= (and b!7761147 (is-Star!20698 (regTwo!41909 r1!3330))) b!7761432))

(assert (= (and b!7761147 (is-Union!20698 (regTwo!41909 r1!3330))) b!7761433))

(push 1)

(assert (not b!7761351))

(assert (not b!7761432))

(assert (not b!7761413))

(assert (not b!7761355))

(assert (not b!7761386))

(assert (not b!7761428))

(assert tp_is_empty!51751)

(assert (not b!7761412))

(assert (not b!7761408))

(assert (not b!7761404))

(assert (not b!7761399))

(assert (not b!7761356))

(assert (not d!2343565))

(assert (not b!7761416))

(assert (not bm!719160))

(assert (not b!7761400))

(assert (not b!7761354))

(assert (not b!7761415))

(assert (not bm!719170))

(assert (not b!7761401))

(assert (not b!7761417))

(assert (not b!7761347))

(assert (not b!7761419))

(assert (not b!7761374))

(assert (not b!7761281))

(assert (not b!7761409))

(assert (not bm!719171))

(assert (not b!7761299))

(assert (not bm!719168))

(assert (not b!7761283))

(assert (not b!7761286))

(assert (not b!7761348))

(assert (not d!2343577))

(assert (not b!7761421))

(assert (not b!7761363))

(assert (not b!7761387))

(assert (not d!2343581))

(assert (not b!7761431))

(assert (not b!7761284))

(assert (not b!7761403))

(assert (not b!7761407))

(assert (not b!7761423))

(assert (not b!7761285))

(assert (not b!7761287))

(assert (not b!7761388))

(assert (not b!7761298))

(assert (not b!7761420))

(assert (not b!7761405))

(assert (not b!7761424))

(assert (not b!7761425))

(assert (not b!7761234))

(assert (not b!7761427))

(assert (not b!7761429))

(assert (not b!7761433))

(assert (not bm!719159))

(assert (not b!7761411))

(assert (not d!2343567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

