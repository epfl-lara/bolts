; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349726 () Bool)

(assert start!349726)

(declare-fun b!3708771 () Bool)

(declare-fun res!1508435 () Bool)

(declare-fun e!2297184 () Bool)

(assert (=> b!3708771 (=> (not res!1508435) (not e!2297184))))

(declare-datatypes ((C!21828 0))(
  ( (C!21829 (val!12962 Int)) )
))
(declare-datatypes ((Regex!10821 0))(
  ( (ElementMatch!10821 (c!640641 C!21828)) (Concat!17092 (regOne!22154 Regex!10821) (regTwo!22154 Regex!10821)) (EmptyExpr!10821) (Star!10821 (reg!11150 Regex!10821)) (EmptyLang!10821) (Union!10821 (regOne!22155 Regex!10821) (regTwo!22155 Regex!10821)) )
))
(declare-fun r!25965 () Regex!10821)

(declare-fun c!13398 () C!21828)

(declare-datatypes ((List!39702 0))(
  ( (Nil!39578) (Cons!39578 (h!44998 C!21828) (t!302385 List!39702)) )
))
(declare-fun contains!7914 (List!39702 C!21828) Bool)

(declare-fun usedCharacters!1084 (Regex!10821) List!39702)

(assert (=> b!3708771 (= res!1508435 (not (contains!7914 (usedCharacters!1084 r!25965) c!13398)))))

(declare-fun b!3708772 () Bool)

(declare-fun s!14922 () List!39702)

(get-info :version)

(assert (=> b!3708772 (= e!2297184 (and (or (not ((_ is Cons!39578) s!14922)) (not (= (h!44998 s!14922) c!13398))) (or (not ((_ is Cons!39578) s!14922)) (= (h!44998 s!14922) c!13398)) ((_ is Nil!39578) s!14922)))))

(declare-fun b!3708773 () Bool)

(declare-fun e!2297186 () Bool)

(declare-fun tp_is_empty!18657 () Bool)

(assert (=> b!3708773 (= e!2297186 tp_is_empty!18657)))

(declare-fun b!3708774 () Bool)

(declare-fun e!2297185 () Bool)

(declare-fun tp!1128456 () Bool)

(assert (=> b!3708774 (= e!2297185 (and tp_is_empty!18657 tp!1128456))))

(declare-fun res!1508436 () Bool)

(assert (=> start!349726 (=> (not res!1508436) (not e!2297184))))

(declare-fun validRegex!4928 (Regex!10821) Bool)

(assert (=> start!349726 (= res!1508436 (validRegex!4928 r!25965))))

(assert (=> start!349726 e!2297184))

(assert (=> start!349726 e!2297186))

(assert (=> start!349726 e!2297185))

(assert (=> start!349726 tp_is_empty!18657))

(declare-fun b!3708775 () Bool)

(declare-fun res!1508434 () Bool)

(assert (=> b!3708775 (=> (not res!1508434) (not e!2297184))))

(assert (=> b!3708775 (= res!1508434 (contains!7914 s!14922 c!13398))))

(declare-fun b!3708776 () Bool)

(declare-fun tp!1128451 () Bool)

(assert (=> b!3708776 (= e!2297186 tp!1128451)))

(declare-fun b!3708777 () Bool)

(declare-fun tp!1128453 () Bool)

(declare-fun tp!1128455 () Bool)

(assert (=> b!3708777 (= e!2297186 (and tp!1128453 tp!1128455))))

(declare-fun b!3708778 () Bool)

(declare-fun tp!1128454 () Bool)

(declare-fun tp!1128452 () Bool)

(assert (=> b!3708778 (= e!2297186 (and tp!1128454 tp!1128452))))

(assert (= (and start!349726 res!1508436) b!3708775))

(assert (= (and b!3708775 res!1508434) b!3708771))

(assert (= (and b!3708771 res!1508435) b!3708772))

(assert (= (and start!349726 ((_ is ElementMatch!10821) r!25965)) b!3708773))

(assert (= (and start!349726 ((_ is Concat!17092) r!25965)) b!3708777))

(assert (= (and start!349726 ((_ is Star!10821) r!25965)) b!3708776))

(assert (= (and start!349726 ((_ is Union!10821) r!25965)) b!3708778))

(assert (= (and start!349726 ((_ is Cons!39578) s!14922)) b!3708774))

(declare-fun m!4217441 () Bool)

(assert (=> b!3708771 m!4217441))

(assert (=> b!3708771 m!4217441))

(declare-fun m!4217443 () Bool)

(assert (=> b!3708771 m!4217443))

(declare-fun m!4217445 () Bool)

(assert (=> start!349726 m!4217445))

(declare-fun m!4217447 () Bool)

(assert (=> b!3708775 m!4217447))

(check-sat (not b!3708776) (not start!349726) (not b!3708775) (not b!3708777) tp_is_empty!18657 (not b!3708774) (not b!3708778) (not b!3708771))
(check-sat)
(get-model)

(declare-fun d!1086842 () Bool)

(declare-fun lt!1296665 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5720 (List!39702) (InoxSet C!21828))

(assert (=> d!1086842 (= lt!1296665 (select (content!5720 (usedCharacters!1084 r!25965)) c!13398))))

(declare-fun e!2297205 () Bool)

(assert (=> d!1086842 (= lt!1296665 e!2297205)))

(declare-fun res!1508452 () Bool)

(assert (=> d!1086842 (=> (not res!1508452) (not e!2297205))))

(assert (=> d!1086842 (= res!1508452 ((_ is Cons!39578) (usedCharacters!1084 r!25965)))))

(assert (=> d!1086842 (= (contains!7914 (usedCharacters!1084 r!25965) c!13398) lt!1296665)))

(declare-fun b!3708801 () Bool)

(declare-fun e!2297206 () Bool)

(assert (=> b!3708801 (= e!2297205 e!2297206)))

(declare-fun res!1508451 () Bool)

(assert (=> b!3708801 (=> res!1508451 e!2297206)))

(assert (=> b!3708801 (= res!1508451 (= (h!44998 (usedCharacters!1084 r!25965)) c!13398))))

(declare-fun b!3708802 () Bool)

(assert (=> b!3708802 (= e!2297206 (contains!7914 (t!302385 (usedCharacters!1084 r!25965)) c!13398))))

(assert (= (and d!1086842 res!1508452) b!3708801))

(assert (= (and b!3708801 (not res!1508451)) b!3708802))

(assert (=> d!1086842 m!4217441))

(declare-fun m!4217449 () Bool)

(assert (=> d!1086842 m!4217449))

(declare-fun m!4217451 () Bool)

(assert (=> d!1086842 m!4217451))

(declare-fun m!4217453 () Bool)

(assert (=> b!3708802 m!4217453))

(assert (=> b!3708771 d!1086842))

(declare-fun b!3708836 () Bool)

(declare-fun e!2297233 () List!39702)

(declare-fun e!2297231 () List!39702)

(assert (=> b!3708836 (= e!2297233 e!2297231)))

(declare-fun c!640657 () Bool)

(assert (=> b!3708836 (= c!640657 ((_ is ElementMatch!10821) r!25965))))

(declare-fun bm!268047 () Bool)

(declare-fun call!268053 () List!39702)

(declare-fun call!268055 () List!39702)

(assert (=> bm!268047 (= call!268053 call!268055)))

(declare-fun b!3708837 () Bool)

(declare-fun e!2297232 () List!39702)

(declare-fun e!2297230 () List!39702)

(assert (=> b!3708837 (= e!2297232 e!2297230)))

(declare-fun c!640656 () Bool)

(assert (=> b!3708837 (= c!640656 ((_ is Union!10821) r!25965))))

(declare-fun b!3708838 () Bool)

(declare-fun call!268052 () List!39702)

(assert (=> b!3708838 (= e!2297230 call!268052)))

(declare-fun d!1086844 () Bool)

(declare-fun c!640658 () Bool)

(assert (=> d!1086844 (= c!640658 (or ((_ is EmptyExpr!10821) r!25965) ((_ is EmptyLang!10821) r!25965)))))

(assert (=> d!1086844 (= (usedCharacters!1084 r!25965) e!2297233)))

(declare-fun b!3708839 () Bool)

(assert (=> b!3708839 (= e!2297231 (Cons!39578 (c!640641 r!25965) Nil!39578))))

(declare-fun c!640659 () Bool)

(declare-fun bm!268048 () Bool)

(assert (=> bm!268048 (= call!268055 (usedCharacters!1084 (ite c!640659 (reg!11150 r!25965) (ite c!640656 (regTwo!22155 r!25965) (regOne!22154 r!25965)))))))

(declare-fun b!3708840 () Bool)

(assert (=> b!3708840 (= c!640659 ((_ is Star!10821) r!25965))))

(assert (=> b!3708840 (= e!2297231 e!2297232)))

(declare-fun bm!268049 () Bool)

(declare-fun call!268054 () List!39702)

(assert (=> bm!268049 (= call!268054 (usedCharacters!1084 (ite c!640656 (regOne!22155 r!25965) (regTwo!22154 r!25965))))))

(declare-fun b!3708841 () Bool)

(assert (=> b!3708841 (= e!2297233 Nil!39578)))

(declare-fun b!3708842 () Bool)

(assert (=> b!3708842 (= e!2297230 call!268052)))

(declare-fun b!3708843 () Bool)

(assert (=> b!3708843 (= e!2297232 call!268055)))

(declare-fun bm!268050 () Bool)

(declare-fun ++!9783 (List!39702 List!39702) List!39702)

(assert (=> bm!268050 (= call!268052 (++!9783 (ite c!640656 call!268054 call!268053) (ite c!640656 call!268053 call!268054)))))

(assert (= (and d!1086844 c!640658) b!3708841))

(assert (= (and d!1086844 (not c!640658)) b!3708836))

(assert (= (and b!3708836 c!640657) b!3708839))

(assert (= (and b!3708836 (not c!640657)) b!3708840))

(assert (= (and b!3708840 c!640659) b!3708843))

(assert (= (and b!3708840 (not c!640659)) b!3708837))

(assert (= (and b!3708837 c!640656) b!3708838))

(assert (= (and b!3708837 (not c!640656)) b!3708842))

(assert (= (or b!3708838 b!3708842) bm!268049))

(assert (= (or b!3708838 b!3708842) bm!268047))

(assert (= (or b!3708838 b!3708842) bm!268050))

(assert (= (or b!3708843 bm!268047) bm!268048))

(declare-fun m!4217473 () Bool)

(assert (=> bm!268048 m!4217473))

(declare-fun m!4217475 () Bool)

(assert (=> bm!268049 m!4217475))

(declare-fun m!4217477 () Bool)

(assert (=> bm!268050 m!4217477))

(assert (=> b!3708771 d!1086844))

(declare-fun b!3708890 () Bool)

(declare-fun res!1508478 () Bool)

(declare-fun e!2297267 () Bool)

(assert (=> b!3708890 (=> (not res!1508478) (not e!2297267))))

(declare-fun call!268074 () Bool)

(assert (=> b!3708890 (= res!1508478 call!268074)))

(declare-fun e!2297263 () Bool)

(assert (=> b!3708890 (= e!2297263 e!2297267)))

(declare-fun b!3708891 () Bool)

(declare-fun e!2297264 () Bool)

(declare-fun call!268075 () Bool)

(assert (=> b!3708891 (= e!2297264 call!268075)))

(declare-fun bm!268069 () Bool)

(declare-fun c!640677 () Bool)

(assert (=> bm!268069 (= call!268075 (validRegex!4928 (ite c!640677 (regTwo!22155 r!25965) (regTwo!22154 r!25965))))))

(declare-fun d!1086852 () Bool)

(declare-fun res!1508480 () Bool)

(declare-fun e!2297262 () Bool)

(assert (=> d!1086852 (=> res!1508480 e!2297262)))

(assert (=> d!1086852 (= res!1508480 ((_ is ElementMatch!10821) r!25965))))

(assert (=> d!1086852 (= (validRegex!4928 r!25965) e!2297262)))

(declare-fun b!3708892 () Bool)

(declare-fun e!2297268 () Bool)

(declare-fun e!2297265 () Bool)

(assert (=> b!3708892 (= e!2297268 e!2297265)))

(declare-fun res!1508477 () Bool)

(declare-fun nullable!3756 (Regex!10821) Bool)

(assert (=> b!3708892 (= res!1508477 (not (nullable!3756 (reg!11150 r!25965))))))

(assert (=> b!3708892 (=> (not res!1508477) (not e!2297265))))

(declare-fun b!3708893 () Bool)

(declare-fun call!268076 () Bool)

(assert (=> b!3708893 (= e!2297265 call!268076)))

(declare-fun b!3708894 () Bool)

(assert (=> b!3708894 (= e!2297267 call!268075)))

(declare-fun b!3708895 () Bool)

(assert (=> b!3708895 (= e!2297268 e!2297263)))

(assert (=> b!3708895 (= c!640677 ((_ is Union!10821) r!25965))))

(declare-fun b!3708896 () Bool)

(assert (=> b!3708896 (= e!2297262 e!2297268)))

(declare-fun c!640676 () Bool)

(assert (=> b!3708896 (= c!640676 ((_ is Star!10821) r!25965))))

(declare-fun b!3708897 () Bool)

(declare-fun res!1508479 () Bool)

(declare-fun e!2297266 () Bool)

(assert (=> b!3708897 (=> res!1508479 e!2297266)))

(assert (=> b!3708897 (= res!1508479 (not ((_ is Concat!17092) r!25965)))))

(assert (=> b!3708897 (= e!2297263 e!2297266)))

(declare-fun bm!268070 () Bool)

(assert (=> bm!268070 (= call!268074 call!268076)))

(declare-fun bm!268071 () Bool)

(assert (=> bm!268071 (= call!268076 (validRegex!4928 (ite c!640676 (reg!11150 r!25965) (ite c!640677 (regOne!22155 r!25965) (regOne!22154 r!25965)))))))

(declare-fun b!3708898 () Bool)

(assert (=> b!3708898 (= e!2297266 e!2297264)))

(declare-fun res!1508476 () Bool)

(assert (=> b!3708898 (=> (not res!1508476) (not e!2297264))))

(assert (=> b!3708898 (= res!1508476 call!268074)))

(assert (= (and d!1086852 (not res!1508480)) b!3708896))

(assert (= (and b!3708896 c!640676) b!3708892))

(assert (= (and b!3708896 (not c!640676)) b!3708895))

(assert (= (and b!3708892 res!1508477) b!3708893))

(assert (= (and b!3708895 c!640677) b!3708890))

(assert (= (and b!3708895 (not c!640677)) b!3708897))

(assert (= (and b!3708890 res!1508478) b!3708894))

(assert (= (and b!3708897 (not res!1508479)) b!3708898))

(assert (= (and b!3708898 res!1508476) b!3708891))

(assert (= (or b!3708890 b!3708898) bm!268070))

(assert (= (or b!3708894 b!3708891) bm!268069))

(assert (= (or b!3708893 bm!268070) bm!268071))

(declare-fun m!4217485 () Bool)

(assert (=> bm!268069 m!4217485))

(declare-fun m!4217487 () Bool)

(assert (=> b!3708892 m!4217487))

(declare-fun m!4217489 () Bool)

(assert (=> bm!268071 m!4217489))

(assert (=> start!349726 d!1086852))

(declare-fun d!1086854 () Bool)

(declare-fun lt!1296670 () Bool)

(assert (=> d!1086854 (= lt!1296670 (select (content!5720 s!14922) c!13398))))

(declare-fun e!2297272 () Bool)

(assert (=> d!1086854 (= lt!1296670 e!2297272)))

(declare-fun res!1508482 () Bool)

(assert (=> d!1086854 (=> (not res!1508482) (not e!2297272))))

(assert (=> d!1086854 (= res!1508482 ((_ is Cons!39578) s!14922))))

(assert (=> d!1086854 (= (contains!7914 s!14922 c!13398) lt!1296670)))

(declare-fun b!3708910 () Bool)

(declare-fun e!2297273 () Bool)

(assert (=> b!3708910 (= e!2297272 e!2297273)))

(declare-fun res!1508481 () Bool)

(assert (=> b!3708910 (=> res!1508481 e!2297273)))

(assert (=> b!3708910 (= res!1508481 (= (h!44998 s!14922) c!13398))))

(declare-fun b!3708911 () Bool)

(assert (=> b!3708911 (= e!2297273 (contains!7914 (t!302385 s!14922) c!13398))))

(assert (= (and d!1086854 res!1508482) b!3708910))

(assert (= (and b!3708910 (not res!1508481)) b!3708911))

(declare-fun m!4217491 () Bool)

(assert (=> d!1086854 m!4217491))

(declare-fun m!4217493 () Bool)

(assert (=> d!1086854 m!4217493))

(declare-fun m!4217495 () Bool)

(assert (=> b!3708911 m!4217495))

(assert (=> b!3708775 d!1086854))

(declare-fun b!3708944 () Bool)

(declare-fun e!2297281 () Bool)

(declare-fun tp!1128509 () Bool)

(assert (=> b!3708944 (= e!2297281 tp!1128509)))

(declare-fun b!3708943 () Bool)

(declare-fun tp!1128508 () Bool)

(declare-fun tp!1128505 () Bool)

(assert (=> b!3708943 (= e!2297281 (and tp!1128508 tp!1128505))))

(declare-fun b!3708942 () Bool)

(assert (=> b!3708942 (= e!2297281 tp_is_empty!18657)))

(assert (=> b!3708776 (= tp!1128451 e!2297281)))

(declare-fun b!3708945 () Bool)

(declare-fun tp!1128507 () Bool)

(declare-fun tp!1128506 () Bool)

(assert (=> b!3708945 (= e!2297281 (and tp!1128507 tp!1128506))))

(assert (= (and b!3708776 ((_ is ElementMatch!10821) (reg!11150 r!25965))) b!3708942))

(assert (= (and b!3708776 ((_ is Concat!17092) (reg!11150 r!25965))) b!3708943))

(assert (= (and b!3708776 ((_ is Star!10821) (reg!11150 r!25965))) b!3708944))

(assert (= (and b!3708776 ((_ is Union!10821) (reg!11150 r!25965))) b!3708945))

(declare-fun b!3708950 () Bool)

(declare-fun e!2297284 () Bool)

(declare-fun tp!1128512 () Bool)

(assert (=> b!3708950 (= e!2297284 (and tp_is_empty!18657 tp!1128512))))

(assert (=> b!3708774 (= tp!1128456 e!2297284)))

(assert (= (and b!3708774 ((_ is Cons!39578) (t!302385 s!14922))) b!3708950))

(declare-fun b!3708953 () Bool)

(declare-fun e!2297285 () Bool)

(declare-fun tp!1128517 () Bool)

(assert (=> b!3708953 (= e!2297285 tp!1128517)))

(declare-fun b!3708952 () Bool)

(declare-fun tp!1128516 () Bool)

(declare-fun tp!1128513 () Bool)

(assert (=> b!3708952 (= e!2297285 (and tp!1128516 tp!1128513))))

(declare-fun b!3708951 () Bool)

(assert (=> b!3708951 (= e!2297285 tp_is_empty!18657)))

(assert (=> b!3708778 (= tp!1128454 e!2297285)))

(declare-fun b!3708954 () Bool)

(declare-fun tp!1128515 () Bool)

(declare-fun tp!1128514 () Bool)

(assert (=> b!3708954 (= e!2297285 (and tp!1128515 tp!1128514))))

(assert (= (and b!3708778 ((_ is ElementMatch!10821) (regOne!22155 r!25965))) b!3708951))

(assert (= (and b!3708778 ((_ is Concat!17092) (regOne!22155 r!25965))) b!3708952))

(assert (= (and b!3708778 ((_ is Star!10821) (regOne!22155 r!25965))) b!3708953))

(assert (= (and b!3708778 ((_ is Union!10821) (regOne!22155 r!25965))) b!3708954))

(declare-fun b!3708957 () Bool)

(declare-fun e!2297286 () Bool)

(declare-fun tp!1128522 () Bool)

(assert (=> b!3708957 (= e!2297286 tp!1128522)))

(declare-fun b!3708956 () Bool)

(declare-fun tp!1128521 () Bool)

(declare-fun tp!1128518 () Bool)

(assert (=> b!3708956 (= e!2297286 (and tp!1128521 tp!1128518))))

(declare-fun b!3708955 () Bool)

(assert (=> b!3708955 (= e!2297286 tp_is_empty!18657)))

(assert (=> b!3708778 (= tp!1128452 e!2297286)))

(declare-fun b!3708958 () Bool)

(declare-fun tp!1128520 () Bool)

(declare-fun tp!1128519 () Bool)

(assert (=> b!3708958 (= e!2297286 (and tp!1128520 tp!1128519))))

(assert (= (and b!3708778 ((_ is ElementMatch!10821) (regTwo!22155 r!25965))) b!3708955))

(assert (= (and b!3708778 ((_ is Concat!17092) (regTwo!22155 r!25965))) b!3708956))

(assert (= (and b!3708778 ((_ is Star!10821) (regTwo!22155 r!25965))) b!3708957))

(assert (= (and b!3708778 ((_ is Union!10821) (regTwo!22155 r!25965))) b!3708958))

(declare-fun b!3708961 () Bool)

(declare-fun e!2297287 () Bool)

(declare-fun tp!1128527 () Bool)

(assert (=> b!3708961 (= e!2297287 tp!1128527)))

(declare-fun b!3708960 () Bool)

(declare-fun tp!1128526 () Bool)

(declare-fun tp!1128523 () Bool)

(assert (=> b!3708960 (= e!2297287 (and tp!1128526 tp!1128523))))

(declare-fun b!3708959 () Bool)

(assert (=> b!3708959 (= e!2297287 tp_is_empty!18657)))

(assert (=> b!3708777 (= tp!1128453 e!2297287)))

(declare-fun b!3708962 () Bool)

(declare-fun tp!1128525 () Bool)

(declare-fun tp!1128524 () Bool)

(assert (=> b!3708962 (= e!2297287 (and tp!1128525 tp!1128524))))

(assert (= (and b!3708777 ((_ is ElementMatch!10821) (regOne!22154 r!25965))) b!3708959))

(assert (= (and b!3708777 ((_ is Concat!17092) (regOne!22154 r!25965))) b!3708960))

(assert (= (and b!3708777 ((_ is Star!10821) (regOne!22154 r!25965))) b!3708961))

(assert (= (and b!3708777 ((_ is Union!10821) (regOne!22154 r!25965))) b!3708962))

(declare-fun b!3708965 () Bool)

(declare-fun e!2297288 () Bool)

(declare-fun tp!1128532 () Bool)

(assert (=> b!3708965 (= e!2297288 tp!1128532)))

(declare-fun b!3708964 () Bool)

(declare-fun tp!1128531 () Bool)

(declare-fun tp!1128528 () Bool)

(assert (=> b!3708964 (= e!2297288 (and tp!1128531 tp!1128528))))

(declare-fun b!3708963 () Bool)

(assert (=> b!3708963 (= e!2297288 tp_is_empty!18657)))

(assert (=> b!3708777 (= tp!1128455 e!2297288)))

(declare-fun b!3708966 () Bool)

(declare-fun tp!1128530 () Bool)

(declare-fun tp!1128529 () Bool)

(assert (=> b!3708966 (= e!2297288 (and tp!1128530 tp!1128529))))

(assert (= (and b!3708777 ((_ is ElementMatch!10821) (regTwo!22154 r!25965))) b!3708963))

(assert (= (and b!3708777 ((_ is Concat!17092) (regTwo!22154 r!25965))) b!3708964))

(assert (= (and b!3708777 ((_ is Star!10821) (regTwo!22154 r!25965))) b!3708965))

(assert (= (and b!3708777 ((_ is Union!10821) (regTwo!22154 r!25965))) b!3708966))

(check-sat (not bm!268050) (not b!3708958) (not b!3708962) (not b!3708944) (not b!3708950) (not b!3708892) tp_is_empty!18657 (not b!3708956) (not bm!268048) (not b!3708957) (not bm!268049) (not d!1086842) (not b!3708911) (not b!3708960) (not b!3708945) (not d!1086854) (not b!3708964) (not b!3708943) (not b!3708961) (not b!3708802) (not b!3708953) (not bm!268069) (not b!3708952) (not b!3708966) (not b!3708954) (not b!3708965) (not bm!268071))
(check-sat)
