; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295868 () Bool)

(assert start!295868)

(declare-fun res!1282438 () Bool)

(declare-fun e!1958218 () Bool)

(assert (=> start!295868 (=> (not res!1282438) (not e!1958218))))

(declare-datatypes ((C!19500 0))(
  ( (C!19501 (val!11786 Int)) )
))
(declare-datatypes ((Regex!9657 0))(
  ( (ElementMatch!9657 (c!527587 C!19500)) (Concat!14978 (regOne!19826 Regex!9657) (regTwo!19826 Regex!9657)) (EmptyExpr!9657) (Star!9657 (reg!9986 Regex!9657)) (EmptyLang!9657) (Union!9657 (regOne!19827 Regex!9657) (regTwo!19827 Regex!9657)) )
))
(declare-fun r!17345 () Regex!9657)

(declare-fun validRegex!4390 (Regex!9657) Bool)

(assert (=> start!295868 (= res!1282438 (validRegex!4390 r!17345))))

(assert (=> start!295868 e!1958218))

(declare-fun e!1958219 () Bool)

(assert (=> start!295868 e!1958219))

(declare-fun b!3138861 () Bool)

(declare-fun tp!982593 () Bool)

(declare-fun tp!982591 () Bool)

(assert (=> b!3138861 (= e!1958219 (and tp!982593 tp!982591))))

(declare-fun b!3138862 () Bool)

(declare-fun tp_is_empty!16877 () Bool)

(assert (=> b!3138862 (= e!1958219 tp_is_empty!16877)))

(declare-fun b!3138863 () Bool)

(declare-fun tp!982592 () Bool)

(declare-fun tp!982594 () Bool)

(assert (=> b!3138863 (= e!1958219 (and tp!982592 tp!982594))))

(declare-fun b!3138864 () Bool)

(declare-fun res!1282437 () Bool)

(assert (=> b!3138864 (=> (not res!1282437) (not e!1958218))))

(get-info :version)

(assert (=> b!3138864 (= res!1282437 ((_ is EmptyLang!9657) r!17345))))

(declare-fun b!3138865 () Bool)

(declare-fun e!1958217 () Bool)

(assert (=> b!3138865 (= e!1958218 e!1958217)))

(declare-fun res!1282436 () Bool)

(assert (=> b!3138865 (=> res!1282436 e!1958217)))

(assert (=> b!3138865 (= res!1282436 false)))

(declare-fun b!3138866 () Bool)

(declare-fun nullable!3291 (Regex!9657) Bool)

(assert (=> b!3138866 (= e!1958217 (not (= false (nullable!3291 r!17345))))))

(declare-fun b!3138867 () Bool)

(declare-fun tp!982595 () Bool)

(assert (=> b!3138867 (= e!1958219 tp!982595)))

(assert (= (and start!295868 res!1282438) b!3138864))

(assert (= (and b!3138864 res!1282437) b!3138865))

(assert (= (and b!3138865 (not res!1282436)) b!3138866))

(assert (= (and start!295868 ((_ is ElementMatch!9657) r!17345)) b!3138862))

(assert (= (and start!295868 ((_ is Concat!14978) r!17345)) b!3138861))

(assert (= (and start!295868 ((_ is Star!9657) r!17345)) b!3138867))

(assert (= (and start!295868 ((_ is Union!9657) r!17345)) b!3138863))

(declare-fun m!3417481 () Bool)

(assert (=> start!295868 m!3417481))

(declare-fun m!3417483 () Bool)

(assert (=> b!3138866 m!3417483))

(check-sat (not b!3138867) (not start!295868) tp_is_empty!16877 (not b!3138866) (not b!3138861) (not b!3138863))
(check-sat)
(get-model)

(declare-fun d!865562 () Bool)

(declare-fun nullableFct!920 (Regex!9657) Bool)

(assert (=> d!865562 (= (nullable!3291 r!17345) (nullableFct!920 r!17345))))

(declare-fun bs!539030 () Bool)

(assert (= bs!539030 d!865562))

(declare-fun m!3417485 () Bool)

(assert (=> bs!539030 m!3417485))

(assert (=> b!3138866 d!865562))

(declare-fun b!3138913 () Bool)

(declare-fun e!1958261 () Bool)

(declare-fun e!1958255 () Bool)

(assert (=> b!3138913 (= e!1958261 e!1958255)))

(declare-fun res!1282468 () Bool)

(assert (=> b!3138913 (=> (not res!1282468) (not e!1958255))))

(declare-fun call!225244 () Bool)

(assert (=> b!3138913 (= res!1282468 call!225244)))

(declare-fun d!865564 () Bool)

(declare-fun res!1282466 () Bool)

(declare-fun e!1958259 () Bool)

(assert (=> d!865564 (=> res!1282466 e!1958259)))

(assert (=> d!865564 (= res!1282466 ((_ is ElementMatch!9657) r!17345))))

(assert (=> d!865564 (= (validRegex!4390 r!17345) e!1958259)))

(declare-fun b!3138914 () Bool)

(declare-fun e!1958257 () Bool)

(assert (=> b!3138914 (= e!1958257 call!225244)))

(declare-fun b!3138915 () Bool)

(declare-fun call!225245 () Bool)

(assert (=> b!3138915 (= e!1958255 call!225245)))

(declare-fun call!225246 () Bool)

(declare-fun c!527599 () Bool)

(declare-fun c!527598 () Bool)

(declare-fun bm!225239 () Bool)

(assert (=> bm!225239 (= call!225246 (validRegex!4390 (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345)))))))

(declare-fun b!3138916 () Bool)

(declare-fun res!1282465 () Bool)

(assert (=> b!3138916 (=> (not res!1282465) (not e!1958257))))

(assert (=> b!3138916 (= res!1282465 call!225245)))

(declare-fun e!1958260 () Bool)

(assert (=> b!3138916 (= e!1958260 e!1958257)))

(declare-fun b!3138917 () Bool)

(declare-fun e!1958258 () Bool)

(assert (=> b!3138917 (= e!1958258 e!1958260)))

(assert (=> b!3138917 (= c!527598 ((_ is Union!9657) r!17345))))

(declare-fun bm!225240 () Bool)

(assert (=> bm!225240 (= call!225244 call!225246)))

(declare-fun b!3138918 () Bool)

(declare-fun e!1958256 () Bool)

(assert (=> b!3138918 (= e!1958256 call!225246)))

(declare-fun b!3138919 () Bool)

(assert (=> b!3138919 (= e!1958258 e!1958256)))

(declare-fun res!1282467 () Bool)

(assert (=> b!3138919 (= res!1282467 (not (nullable!3291 (reg!9986 r!17345))))))

(assert (=> b!3138919 (=> (not res!1282467) (not e!1958256))))

(declare-fun b!3138920 () Bool)

(declare-fun res!1282464 () Bool)

(assert (=> b!3138920 (=> res!1282464 e!1958261)))

(assert (=> b!3138920 (= res!1282464 (not ((_ is Concat!14978) r!17345)))))

(assert (=> b!3138920 (= e!1958260 e!1958261)))

(declare-fun b!3138921 () Bool)

(assert (=> b!3138921 (= e!1958259 e!1958258)))

(assert (=> b!3138921 (= c!527599 ((_ is Star!9657) r!17345))))

(declare-fun bm!225241 () Bool)

(assert (=> bm!225241 (= call!225245 (validRegex!4390 (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345))))))

(assert (= (and d!865564 (not res!1282466)) b!3138921))

(assert (= (and b!3138921 c!527599) b!3138919))

(assert (= (and b!3138921 (not c!527599)) b!3138917))

(assert (= (and b!3138919 res!1282467) b!3138918))

(assert (= (and b!3138917 c!527598) b!3138916))

(assert (= (and b!3138917 (not c!527598)) b!3138920))

(assert (= (and b!3138916 res!1282465) b!3138914))

(assert (= (and b!3138920 (not res!1282464)) b!3138913))

(assert (= (and b!3138913 res!1282468) b!3138915))

(assert (= (or b!3138914 b!3138913) bm!225240))

(assert (= (or b!3138916 b!3138915) bm!225241))

(assert (= (or b!3138918 bm!225240) bm!225239))

(declare-fun m!3417495 () Bool)

(assert (=> bm!225239 m!3417495))

(declare-fun m!3417497 () Bool)

(assert (=> b!3138919 m!3417497))

(declare-fun m!3417499 () Bool)

(assert (=> bm!225241 m!3417499))

(assert (=> start!295868 d!865564))

(declare-fun b!3138956 () Bool)

(declare-fun e!1958269 () Bool)

(declare-fun tp!982631 () Bool)

(assert (=> b!3138956 (= e!1958269 tp!982631)))

(assert (=> b!3138861 (= tp!982593 e!1958269)))

(declare-fun b!3138957 () Bool)

(declare-fun tp!982635 () Bool)

(declare-fun tp!982630 () Bool)

(assert (=> b!3138957 (= e!1958269 (and tp!982635 tp!982630))))

(declare-fun b!3138955 () Bool)

(declare-fun tp!982634 () Bool)

(declare-fun tp!982628 () Bool)

(assert (=> b!3138955 (= e!1958269 (and tp!982634 tp!982628))))

(declare-fun b!3138953 () Bool)

(assert (=> b!3138953 (= e!1958269 tp_is_empty!16877)))

(assert (= (and b!3138861 ((_ is ElementMatch!9657) (regOne!19826 r!17345))) b!3138953))

(assert (= (and b!3138861 ((_ is Concat!14978) (regOne!19826 r!17345))) b!3138955))

(assert (= (and b!3138861 ((_ is Star!9657) (regOne!19826 r!17345))) b!3138956))

(assert (= (and b!3138861 ((_ is Union!9657) (regOne!19826 r!17345))) b!3138957))

(declare-fun b!3138964 () Bool)

(declare-fun e!1958271 () Bool)

(declare-fun tp!982643 () Bool)

(assert (=> b!3138964 (= e!1958271 tp!982643)))

(assert (=> b!3138861 (= tp!982591 e!1958271)))

(declare-fun b!3138965 () Bool)

(declare-fun tp!982645 () Bool)

(declare-fun tp!982642 () Bool)

(assert (=> b!3138965 (= e!1958271 (and tp!982645 tp!982642))))

(declare-fun b!3138963 () Bool)

(declare-fun tp!982644 () Bool)

(declare-fun tp!982641 () Bool)

(assert (=> b!3138963 (= e!1958271 (and tp!982644 tp!982641))))

(declare-fun b!3138962 () Bool)

(assert (=> b!3138962 (= e!1958271 tp_is_empty!16877)))

(assert (= (and b!3138861 ((_ is ElementMatch!9657) (regTwo!19826 r!17345))) b!3138962))

(assert (= (and b!3138861 ((_ is Concat!14978) (regTwo!19826 r!17345))) b!3138963))

(assert (= (and b!3138861 ((_ is Star!9657) (regTwo!19826 r!17345))) b!3138964))

(assert (= (and b!3138861 ((_ is Union!9657) (regTwo!19826 r!17345))) b!3138965))

(declare-fun b!3138972 () Bool)

(declare-fun e!1958273 () Bool)

(declare-fun tp!982653 () Bool)

(assert (=> b!3138972 (= e!1958273 tp!982653)))

(assert (=> b!3138863 (= tp!982592 e!1958273)))

(declare-fun b!3138973 () Bool)

(declare-fun tp!982655 () Bool)

(declare-fun tp!982652 () Bool)

(assert (=> b!3138973 (= e!1958273 (and tp!982655 tp!982652))))

(declare-fun b!3138971 () Bool)

(declare-fun tp!982654 () Bool)

(declare-fun tp!982651 () Bool)

(assert (=> b!3138971 (= e!1958273 (and tp!982654 tp!982651))))

(declare-fun b!3138970 () Bool)

(assert (=> b!3138970 (= e!1958273 tp_is_empty!16877)))

(assert (= (and b!3138863 ((_ is ElementMatch!9657) (regOne!19827 r!17345))) b!3138970))

(assert (= (and b!3138863 ((_ is Concat!14978) (regOne!19827 r!17345))) b!3138971))

(assert (= (and b!3138863 ((_ is Star!9657) (regOne!19827 r!17345))) b!3138972))

(assert (= (and b!3138863 ((_ is Union!9657) (regOne!19827 r!17345))) b!3138973))

(declare-fun b!3138976 () Bool)

(declare-fun e!1958274 () Bool)

(declare-fun tp!982658 () Bool)

(assert (=> b!3138976 (= e!1958274 tp!982658)))

(assert (=> b!3138863 (= tp!982594 e!1958274)))

(declare-fun b!3138977 () Bool)

(declare-fun tp!982660 () Bool)

(declare-fun tp!982657 () Bool)

(assert (=> b!3138977 (= e!1958274 (and tp!982660 tp!982657))))

(declare-fun b!3138975 () Bool)

(declare-fun tp!982659 () Bool)

(declare-fun tp!982656 () Bool)

(assert (=> b!3138975 (= e!1958274 (and tp!982659 tp!982656))))

(declare-fun b!3138974 () Bool)

(assert (=> b!3138974 (= e!1958274 tp_is_empty!16877)))

(assert (= (and b!3138863 ((_ is ElementMatch!9657) (regTwo!19827 r!17345))) b!3138974))

(assert (= (and b!3138863 ((_ is Concat!14978) (regTwo!19827 r!17345))) b!3138975))

(assert (= (and b!3138863 ((_ is Star!9657) (regTwo!19827 r!17345))) b!3138976))

(assert (= (and b!3138863 ((_ is Union!9657) (regTwo!19827 r!17345))) b!3138977))

(declare-fun b!3138980 () Bool)

(declare-fun e!1958275 () Bool)

(declare-fun tp!982663 () Bool)

(assert (=> b!3138980 (= e!1958275 tp!982663)))

(assert (=> b!3138867 (= tp!982595 e!1958275)))

(declare-fun b!3138981 () Bool)

(declare-fun tp!982665 () Bool)

(declare-fun tp!982662 () Bool)

(assert (=> b!3138981 (= e!1958275 (and tp!982665 tp!982662))))

(declare-fun b!3138979 () Bool)

(declare-fun tp!982664 () Bool)

(declare-fun tp!982661 () Bool)

(assert (=> b!3138979 (= e!1958275 (and tp!982664 tp!982661))))

(declare-fun b!3138978 () Bool)

(assert (=> b!3138978 (= e!1958275 tp_is_empty!16877)))

(assert (= (and b!3138867 ((_ is ElementMatch!9657) (reg!9986 r!17345))) b!3138978))

(assert (= (and b!3138867 ((_ is Concat!14978) (reg!9986 r!17345))) b!3138979))

(assert (= (and b!3138867 ((_ is Star!9657) (reg!9986 r!17345))) b!3138980))

(assert (= (and b!3138867 ((_ is Union!9657) (reg!9986 r!17345))) b!3138981))

(check-sat (not b!3138972) (not b!3138963) (not b!3138977) (not bm!225241) (not b!3138981) (not b!3138973) (not d!865562) (not b!3138971) (not b!3138980) tp_is_empty!16877 (not b!3138979) (not b!3138957) (not b!3138975) (not b!3138965) (not b!3138955) (not b!3138976) (not b!3138956) (not b!3138964) (not bm!225239) (not b!3138919))
(check-sat)
(get-model)

(declare-fun b!3139014 () Bool)

(declare-fun e!1958303 () Bool)

(declare-fun call!225258 () Bool)

(assert (=> b!3139014 (= e!1958303 call!225258)))

(declare-fun b!3139015 () Bool)

(declare-fun e!1958305 () Bool)

(declare-fun e!1958307 () Bool)

(assert (=> b!3139015 (= e!1958305 e!1958307)))

(declare-fun res!1282491 () Bool)

(assert (=> b!3139015 (= res!1282491 call!225258)))

(assert (=> b!3139015 (=> res!1282491 e!1958307)))

(declare-fun b!3139016 () Bool)

(declare-fun e!1958304 () Bool)

(declare-fun e!1958302 () Bool)

(assert (=> b!3139016 (= e!1958304 e!1958302)))

(declare-fun res!1282492 () Bool)

(assert (=> b!3139016 (=> res!1282492 e!1958302)))

(assert (=> b!3139016 (= res!1282492 ((_ is Star!9657) r!17345))))

(declare-fun b!3139017 () Bool)

(declare-fun e!1958306 () Bool)

(assert (=> b!3139017 (= e!1958306 e!1958304)))

(declare-fun res!1282493 () Bool)

(assert (=> b!3139017 (=> (not res!1282493) (not e!1958304))))

(assert (=> b!3139017 (= res!1282493 (and (not ((_ is EmptyLang!9657) r!17345)) (not ((_ is ElementMatch!9657) r!17345))))))

(declare-fun b!3139018 () Bool)

(assert (=> b!3139018 (= e!1958302 e!1958305)))

(declare-fun c!527606 () Bool)

(assert (=> b!3139018 (= c!527606 ((_ is Union!9657) r!17345))))

(declare-fun b!3139019 () Bool)

(declare-fun call!225257 () Bool)

(assert (=> b!3139019 (= e!1958307 call!225257)))

(declare-fun d!865568 () Bool)

(declare-fun res!1282490 () Bool)

(assert (=> d!865568 (=> res!1282490 e!1958306)))

(assert (=> d!865568 (= res!1282490 ((_ is EmptyExpr!9657) r!17345))))

(assert (=> d!865568 (= (nullableFct!920 r!17345) e!1958306)))

(declare-fun bm!225252 () Bool)

(assert (=> bm!225252 (= call!225257 (nullable!3291 (ite c!527606 (regTwo!19827 r!17345) (regOne!19826 r!17345))))))

(declare-fun b!3139020 () Bool)

(assert (=> b!3139020 (= e!1958305 e!1958303)))

(declare-fun res!1282489 () Bool)

(assert (=> b!3139020 (= res!1282489 call!225257)))

(assert (=> b!3139020 (=> (not res!1282489) (not e!1958303))))

(declare-fun bm!225253 () Bool)

(assert (=> bm!225253 (= call!225258 (nullable!3291 (ite c!527606 (regOne!19827 r!17345) (regTwo!19826 r!17345))))))

(assert (= (and d!865568 (not res!1282490)) b!3139017))

(assert (= (and b!3139017 res!1282493) b!3139016))

(assert (= (and b!3139016 (not res!1282492)) b!3139018))

(assert (= (and b!3139018 c!527606) b!3139015))

(assert (= (and b!3139018 (not c!527606)) b!3139020))

(assert (= (and b!3139015 (not res!1282491)) b!3139019))

(assert (= (and b!3139020 res!1282489) b!3139014))

(assert (= (or b!3139015 b!3139014) bm!225253))

(assert (= (or b!3139019 b!3139020) bm!225252))

(declare-fun m!3417515 () Bool)

(assert (=> bm!225252 m!3417515))

(declare-fun m!3417517 () Bool)

(assert (=> bm!225253 m!3417517))

(assert (=> d!865562 d!865568))

(declare-fun b!3139021 () Bool)

(declare-fun e!1958314 () Bool)

(declare-fun e!1958308 () Bool)

(assert (=> b!3139021 (= e!1958314 e!1958308)))

(declare-fun res!1282498 () Bool)

(assert (=> b!3139021 (=> (not res!1282498) (not e!1958308))))

(declare-fun call!225259 () Bool)

(assert (=> b!3139021 (= res!1282498 call!225259)))

(declare-fun d!865578 () Bool)

(declare-fun res!1282496 () Bool)

(declare-fun e!1958312 () Bool)

(assert (=> d!865578 (=> res!1282496 e!1958312)))

(assert (=> d!865578 (= res!1282496 ((_ is ElementMatch!9657) (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345)))))))

(assert (=> d!865578 (= (validRegex!4390 (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345)))) e!1958312)))

(declare-fun b!3139022 () Bool)

(declare-fun e!1958310 () Bool)

(assert (=> b!3139022 (= e!1958310 call!225259)))

(declare-fun b!3139023 () Bool)

(declare-fun call!225260 () Bool)

(assert (=> b!3139023 (= e!1958308 call!225260)))

(declare-fun c!527608 () Bool)

(declare-fun c!527607 () Bool)

(declare-fun call!225261 () Bool)

(declare-fun bm!225254 () Bool)

(assert (=> bm!225254 (= call!225261 (validRegex!4390 (ite c!527608 (reg!9986 (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345)))) (ite c!527607 (regTwo!19827 (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345)))) (regOne!19826 (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345))))))))))

(declare-fun b!3139024 () Bool)

(declare-fun res!1282495 () Bool)

(assert (=> b!3139024 (=> (not res!1282495) (not e!1958310))))

(assert (=> b!3139024 (= res!1282495 call!225260)))

(declare-fun e!1958313 () Bool)

(assert (=> b!3139024 (= e!1958313 e!1958310)))

(declare-fun b!3139025 () Bool)

(declare-fun e!1958311 () Bool)

(assert (=> b!3139025 (= e!1958311 e!1958313)))

(assert (=> b!3139025 (= c!527607 ((_ is Union!9657) (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345)))))))

(declare-fun bm!225255 () Bool)

(assert (=> bm!225255 (= call!225259 call!225261)))

(declare-fun b!3139026 () Bool)

(declare-fun e!1958309 () Bool)

(assert (=> b!3139026 (= e!1958309 call!225261)))

(declare-fun b!3139027 () Bool)

(assert (=> b!3139027 (= e!1958311 e!1958309)))

(declare-fun res!1282497 () Bool)

(assert (=> b!3139027 (= res!1282497 (not (nullable!3291 (reg!9986 (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345)))))))))

(assert (=> b!3139027 (=> (not res!1282497) (not e!1958309))))

(declare-fun b!3139028 () Bool)

(declare-fun res!1282494 () Bool)

(assert (=> b!3139028 (=> res!1282494 e!1958314)))

(assert (=> b!3139028 (= res!1282494 (not ((_ is Concat!14978) (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345))))))))

(assert (=> b!3139028 (= e!1958313 e!1958314)))

(declare-fun b!3139029 () Bool)

(assert (=> b!3139029 (= e!1958312 e!1958311)))

(assert (=> b!3139029 (= c!527608 ((_ is Star!9657) (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345)))))))

(declare-fun bm!225256 () Bool)

(assert (=> bm!225256 (= call!225260 (validRegex!4390 (ite c!527607 (regOne!19827 (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345)))) (regTwo!19826 (ite c!527599 (reg!9986 r!17345) (ite c!527598 (regTwo!19827 r!17345) (regOne!19826 r!17345)))))))))

(assert (= (and d!865578 (not res!1282496)) b!3139029))

(assert (= (and b!3139029 c!527608) b!3139027))

(assert (= (and b!3139029 (not c!527608)) b!3139025))

(assert (= (and b!3139027 res!1282497) b!3139026))

(assert (= (and b!3139025 c!527607) b!3139024))

(assert (= (and b!3139025 (not c!527607)) b!3139028))

(assert (= (and b!3139024 res!1282495) b!3139022))

(assert (= (and b!3139028 (not res!1282494)) b!3139021))

(assert (= (and b!3139021 res!1282498) b!3139023))

(assert (= (or b!3139022 b!3139021) bm!225255))

(assert (= (or b!3139024 b!3139023) bm!225256))

(assert (= (or b!3139026 bm!225255) bm!225254))

(declare-fun m!3417519 () Bool)

(assert (=> bm!225254 m!3417519))

(declare-fun m!3417521 () Bool)

(assert (=> b!3139027 m!3417521))

(declare-fun m!3417523 () Bool)

(assert (=> bm!225256 m!3417523))

(assert (=> bm!225239 d!865578))

(declare-fun d!865580 () Bool)

(assert (=> d!865580 (= (nullable!3291 (reg!9986 r!17345)) (nullableFct!920 (reg!9986 r!17345)))))

(declare-fun bs!539033 () Bool)

(assert (= bs!539033 d!865580))

(declare-fun m!3417525 () Bool)

(assert (=> bs!539033 m!3417525))

(assert (=> b!3138919 d!865580))

(declare-fun b!3139030 () Bool)

(declare-fun e!1958321 () Bool)

(declare-fun e!1958315 () Bool)

(assert (=> b!3139030 (= e!1958321 e!1958315)))

(declare-fun res!1282503 () Bool)

(assert (=> b!3139030 (=> (not res!1282503) (not e!1958315))))

(declare-fun call!225262 () Bool)

(assert (=> b!3139030 (= res!1282503 call!225262)))

(declare-fun d!865582 () Bool)

(declare-fun res!1282501 () Bool)

(declare-fun e!1958319 () Bool)

(assert (=> d!865582 (=> res!1282501 e!1958319)))

(assert (=> d!865582 (= res!1282501 ((_ is ElementMatch!9657) (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345))))))

(assert (=> d!865582 (= (validRegex!4390 (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345))) e!1958319)))

(declare-fun b!3139031 () Bool)

(declare-fun e!1958317 () Bool)

(assert (=> b!3139031 (= e!1958317 call!225262)))

(declare-fun b!3139032 () Bool)

(declare-fun call!225263 () Bool)

(assert (=> b!3139032 (= e!1958315 call!225263)))

(declare-fun c!527610 () Bool)

(declare-fun bm!225257 () Bool)

(declare-fun c!527609 () Bool)

(declare-fun call!225264 () Bool)

(assert (=> bm!225257 (= call!225264 (validRegex!4390 (ite c!527610 (reg!9986 (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345))) (ite c!527609 (regTwo!19827 (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345))) (regOne!19826 (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345)))))))))

(declare-fun b!3139033 () Bool)

(declare-fun res!1282500 () Bool)

(assert (=> b!3139033 (=> (not res!1282500) (not e!1958317))))

(assert (=> b!3139033 (= res!1282500 call!225263)))

(declare-fun e!1958320 () Bool)

(assert (=> b!3139033 (= e!1958320 e!1958317)))

(declare-fun b!3139034 () Bool)

(declare-fun e!1958318 () Bool)

(assert (=> b!3139034 (= e!1958318 e!1958320)))

(assert (=> b!3139034 (= c!527609 ((_ is Union!9657) (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345))))))

(declare-fun bm!225258 () Bool)

(assert (=> bm!225258 (= call!225262 call!225264)))

(declare-fun b!3139035 () Bool)

(declare-fun e!1958316 () Bool)

(assert (=> b!3139035 (= e!1958316 call!225264)))

(declare-fun b!3139036 () Bool)

(assert (=> b!3139036 (= e!1958318 e!1958316)))

(declare-fun res!1282502 () Bool)

(assert (=> b!3139036 (= res!1282502 (not (nullable!3291 (reg!9986 (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345))))))))

(assert (=> b!3139036 (=> (not res!1282502) (not e!1958316))))

(declare-fun b!3139037 () Bool)

(declare-fun res!1282499 () Bool)

(assert (=> b!3139037 (=> res!1282499 e!1958321)))

(assert (=> b!3139037 (= res!1282499 (not ((_ is Concat!14978) (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345)))))))

(assert (=> b!3139037 (= e!1958320 e!1958321)))

(declare-fun b!3139038 () Bool)

(assert (=> b!3139038 (= e!1958319 e!1958318)))

(assert (=> b!3139038 (= c!527610 ((_ is Star!9657) (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345))))))

(declare-fun bm!225259 () Bool)

(assert (=> bm!225259 (= call!225263 (validRegex!4390 (ite c!527609 (regOne!19827 (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345))) (regTwo!19826 (ite c!527598 (regOne!19827 r!17345) (regTwo!19826 r!17345))))))))

(assert (= (and d!865582 (not res!1282501)) b!3139038))

(assert (= (and b!3139038 c!527610) b!3139036))

(assert (= (and b!3139038 (not c!527610)) b!3139034))

(assert (= (and b!3139036 res!1282502) b!3139035))

(assert (= (and b!3139034 c!527609) b!3139033))

(assert (= (and b!3139034 (not c!527609)) b!3139037))

(assert (= (and b!3139033 res!1282500) b!3139031))

(assert (= (and b!3139037 (not res!1282499)) b!3139030))

(assert (= (and b!3139030 res!1282503) b!3139032))

(assert (= (or b!3139031 b!3139030) bm!225258))

(assert (= (or b!3139033 b!3139032) bm!225259))

(assert (= (or b!3139035 bm!225258) bm!225257))

(declare-fun m!3417527 () Bool)

(assert (=> bm!225257 m!3417527))

(declare-fun m!3417529 () Bool)

(assert (=> b!3139036 m!3417529))

(declare-fun m!3417531 () Bool)

(assert (=> bm!225259 m!3417531))

(assert (=> bm!225241 d!865582))

(declare-fun b!3139055 () Bool)

(declare-fun e!1958334 () Bool)

(declare-fun tp!982668 () Bool)

(assert (=> b!3139055 (= e!1958334 tp!982668)))

(assert (=> b!3138976 (= tp!982658 e!1958334)))

(declare-fun b!3139056 () Bool)

(declare-fun tp!982670 () Bool)

(declare-fun tp!982667 () Bool)

(assert (=> b!3139056 (= e!1958334 (and tp!982670 tp!982667))))

(declare-fun b!3139054 () Bool)

(declare-fun tp!982669 () Bool)

(declare-fun tp!982666 () Bool)

(assert (=> b!3139054 (= e!1958334 (and tp!982669 tp!982666))))

(declare-fun b!3139053 () Bool)

(assert (=> b!3139053 (= e!1958334 tp_is_empty!16877)))

(assert (= (and b!3138976 ((_ is ElementMatch!9657) (reg!9986 (regTwo!19827 r!17345)))) b!3139053))

(assert (= (and b!3138976 ((_ is Concat!14978) (reg!9986 (regTwo!19827 r!17345)))) b!3139054))

(assert (= (and b!3138976 ((_ is Star!9657) (reg!9986 (regTwo!19827 r!17345)))) b!3139055))

(assert (= (and b!3138976 ((_ is Union!9657) (reg!9986 (regTwo!19827 r!17345)))) b!3139056))

(declare-fun b!3139059 () Bool)

(declare-fun e!1958335 () Bool)

(declare-fun tp!982673 () Bool)

(assert (=> b!3139059 (= e!1958335 tp!982673)))

(assert (=> b!3138971 (= tp!982654 e!1958335)))

(declare-fun b!3139060 () Bool)

(declare-fun tp!982675 () Bool)

(declare-fun tp!982672 () Bool)

(assert (=> b!3139060 (= e!1958335 (and tp!982675 tp!982672))))

(declare-fun b!3139058 () Bool)

(declare-fun tp!982674 () Bool)

(declare-fun tp!982671 () Bool)

(assert (=> b!3139058 (= e!1958335 (and tp!982674 tp!982671))))

(declare-fun b!3139057 () Bool)

(assert (=> b!3139057 (= e!1958335 tp_is_empty!16877)))

(assert (= (and b!3138971 ((_ is ElementMatch!9657) (regOne!19826 (regOne!19827 r!17345)))) b!3139057))

(assert (= (and b!3138971 ((_ is Concat!14978) (regOne!19826 (regOne!19827 r!17345)))) b!3139058))

(assert (= (and b!3138971 ((_ is Star!9657) (regOne!19826 (regOne!19827 r!17345)))) b!3139059))

(assert (= (and b!3138971 ((_ is Union!9657) (regOne!19826 (regOne!19827 r!17345)))) b!3139060))

(declare-fun b!3139063 () Bool)

(declare-fun e!1958336 () Bool)

(declare-fun tp!982678 () Bool)

(assert (=> b!3139063 (= e!1958336 tp!982678)))

(assert (=> b!3138971 (= tp!982651 e!1958336)))

(declare-fun b!3139064 () Bool)

(declare-fun tp!982680 () Bool)

(declare-fun tp!982677 () Bool)

(assert (=> b!3139064 (= e!1958336 (and tp!982680 tp!982677))))

(declare-fun b!3139062 () Bool)

(declare-fun tp!982679 () Bool)

(declare-fun tp!982676 () Bool)

(assert (=> b!3139062 (= e!1958336 (and tp!982679 tp!982676))))

(declare-fun b!3139061 () Bool)

(assert (=> b!3139061 (= e!1958336 tp_is_empty!16877)))

(assert (= (and b!3138971 ((_ is ElementMatch!9657) (regTwo!19826 (regOne!19827 r!17345)))) b!3139061))

(assert (= (and b!3138971 ((_ is Concat!14978) (regTwo!19826 (regOne!19827 r!17345)))) b!3139062))

(assert (= (and b!3138971 ((_ is Star!9657) (regTwo!19826 (regOne!19827 r!17345)))) b!3139063))

(assert (= (and b!3138971 ((_ is Union!9657) (regTwo!19826 (regOne!19827 r!17345)))) b!3139064))

(declare-fun b!3139067 () Bool)

(declare-fun e!1958337 () Bool)

(declare-fun tp!982683 () Bool)

(assert (=> b!3139067 (= e!1958337 tp!982683)))

(assert (=> b!3138972 (= tp!982653 e!1958337)))

(declare-fun b!3139068 () Bool)

(declare-fun tp!982685 () Bool)

(declare-fun tp!982682 () Bool)

(assert (=> b!3139068 (= e!1958337 (and tp!982685 tp!982682))))

(declare-fun b!3139066 () Bool)

(declare-fun tp!982684 () Bool)

(declare-fun tp!982681 () Bool)

(assert (=> b!3139066 (= e!1958337 (and tp!982684 tp!982681))))

(declare-fun b!3139065 () Bool)

(assert (=> b!3139065 (= e!1958337 tp_is_empty!16877)))

(assert (= (and b!3138972 ((_ is ElementMatch!9657) (reg!9986 (regOne!19827 r!17345)))) b!3139065))

(assert (= (and b!3138972 ((_ is Concat!14978) (reg!9986 (regOne!19827 r!17345)))) b!3139066))

(assert (= (and b!3138972 ((_ is Star!9657) (reg!9986 (regOne!19827 r!17345)))) b!3139067))

(assert (= (and b!3138972 ((_ is Union!9657) (reg!9986 (regOne!19827 r!17345)))) b!3139068))

(declare-fun b!3139071 () Bool)

(declare-fun e!1958338 () Bool)

(declare-fun tp!982688 () Bool)

(assert (=> b!3139071 (= e!1958338 tp!982688)))

(assert (=> b!3138981 (= tp!982665 e!1958338)))

(declare-fun b!3139072 () Bool)

(declare-fun tp!982690 () Bool)

(declare-fun tp!982687 () Bool)

(assert (=> b!3139072 (= e!1958338 (and tp!982690 tp!982687))))

(declare-fun b!3139070 () Bool)

(declare-fun tp!982689 () Bool)

(declare-fun tp!982686 () Bool)

(assert (=> b!3139070 (= e!1958338 (and tp!982689 tp!982686))))

(declare-fun b!3139069 () Bool)

(assert (=> b!3139069 (= e!1958338 tp_is_empty!16877)))

(assert (= (and b!3138981 ((_ is ElementMatch!9657) (regOne!19827 (reg!9986 r!17345)))) b!3139069))

(assert (= (and b!3138981 ((_ is Concat!14978) (regOne!19827 (reg!9986 r!17345)))) b!3139070))

(assert (= (and b!3138981 ((_ is Star!9657) (regOne!19827 (reg!9986 r!17345)))) b!3139071))

(assert (= (and b!3138981 ((_ is Union!9657) (regOne!19827 (reg!9986 r!17345)))) b!3139072))

(declare-fun b!3139075 () Bool)

(declare-fun e!1958339 () Bool)

(declare-fun tp!982693 () Bool)

(assert (=> b!3139075 (= e!1958339 tp!982693)))

(assert (=> b!3138981 (= tp!982662 e!1958339)))

(declare-fun b!3139076 () Bool)

(declare-fun tp!982695 () Bool)

(declare-fun tp!982692 () Bool)

(assert (=> b!3139076 (= e!1958339 (and tp!982695 tp!982692))))

(declare-fun b!3139074 () Bool)

(declare-fun tp!982694 () Bool)

(declare-fun tp!982691 () Bool)

(assert (=> b!3139074 (= e!1958339 (and tp!982694 tp!982691))))

(declare-fun b!3139073 () Bool)

(assert (=> b!3139073 (= e!1958339 tp_is_empty!16877)))

(assert (= (and b!3138981 ((_ is ElementMatch!9657) (regTwo!19827 (reg!9986 r!17345)))) b!3139073))

(assert (= (and b!3138981 ((_ is Concat!14978) (regTwo!19827 (reg!9986 r!17345)))) b!3139074))

(assert (= (and b!3138981 ((_ is Star!9657) (regTwo!19827 (reg!9986 r!17345)))) b!3139075))

(assert (= (and b!3138981 ((_ is Union!9657) (regTwo!19827 (reg!9986 r!17345)))) b!3139076))

(declare-fun b!3139079 () Bool)

(declare-fun e!1958340 () Bool)

(declare-fun tp!982698 () Bool)

(assert (=> b!3139079 (= e!1958340 tp!982698)))

(assert (=> b!3138979 (= tp!982664 e!1958340)))

(declare-fun b!3139080 () Bool)

(declare-fun tp!982700 () Bool)

(declare-fun tp!982697 () Bool)

(assert (=> b!3139080 (= e!1958340 (and tp!982700 tp!982697))))

(declare-fun b!3139078 () Bool)

(declare-fun tp!982699 () Bool)

(declare-fun tp!982696 () Bool)

(assert (=> b!3139078 (= e!1958340 (and tp!982699 tp!982696))))

(declare-fun b!3139077 () Bool)

(assert (=> b!3139077 (= e!1958340 tp_is_empty!16877)))

(assert (= (and b!3138979 ((_ is ElementMatch!9657) (regOne!19826 (reg!9986 r!17345)))) b!3139077))

(assert (= (and b!3138979 ((_ is Concat!14978) (regOne!19826 (reg!9986 r!17345)))) b!3139078))

(assert (= (and b!3138979 ((_ is Star!9657) (regOne!19826 (reg!9986 r!17345)))) b!3139079))

(assert (= (and b!3138979 ((_ is Union!9657) (regOne!19826 (reg!9986 r!17345)))) b!3139080))

(declare-fun b!3139083 () Bool)

(declare-fun e!1958341 () Bool)

(declare-fun tp!982703 () Bool)

(assert (=> b!3139083 (= e!1958341 tp!982703)))

(assert (=> b!3138979 (= tp!982661 e!1958341)))

(declare-fun b!3139084 () Bool)

(declare-fun tp!982705 () Bool)

(declare-fun tp!982702 () Bool)

(assert (=> b!3139084 (= e!1958341 (and tp!982705 tp!982702))))

(declare-fun b!3139082 () Bool)

(declare-fun tp!982704 () Bool)

(declare-fun tp!982701 () Bool)

(assert (=> b!3139082 (= e!1958341 (and tp!982704 tp!982701))))

(declare-fun b!3139081 () Bool)

(assert (=> b!3139081 (= e!1958341 tp_is_empty!16877)))

(assert (= (and b!3138979 ((_ is ElementMatch!9657) (regTwo!19826 (reg!9986 r!17345)))) b!3139081))

(assert (= (and b!3138979 ((_ is Concat!14978) (regTwo!19826 (reg!9986 r!17345)))) b!3139082))

(assert (= (and b!3138979 ((_ is Star!9657) (regTwo!19826 (reg!9986 r!17345)))) b!3139083))

(assert (= (and b!3138979 ((_ is Union!9657) (regTwo!19826 (reg!9986 r!17345)))) b!3139084))

(declare-fun b!3139087 () Bool)

(declare-fun e!1958342 () Bool)

(declare-fun tp!982708 () Bool)

(assert (=> b!3139087 (= e!1958342 tp!982708)))

(assert (=> b!3138980 (= tp!982663 e!1958342)))

(declare-fun b!3139088 () Bool)

(declare-fun tp!982710 () Bool)

(declare-fun tp!982707 () Bool)

(assert (=> b!3139088 (= e!1958342 (and tp!982710 tp!982707))))

(declare-fun b!3139086 () Bool)

(declare-fun tp!982709 () Bool)

(declare-fun tp!982706 () Bool)

(assert (=> b!3139086 (= e!1958342 (and tp!982709 tp!982706))))

(declare-fun b!3139085 () Bool)

(assert (=> b!3139085 (= e!1958342 tp_is_empty!16877)))

(assert (= (and b!3138980 ((_ is ElementMatch!9657) (reg!9986 (reg!9986 r!17345)))) b!3139085))

(assert (= (and b!3138980 ((_ is Concat!14978) (reg!9986 (reg!9986 r!17345)))) b!3139086))

(assert (= (and b!3138980 ((_ is Star!9657) (reg!9986 (reg!9986 r!17345)))) b!3139087))

(assert (= (and b!3138980 ((_ is Union!9657) (reg!9986 (reg!9986 r!17345)))) b!3139088))

(declare-fun b!3139091 () Bool)

(declare-fun e!1958343 () Bool)

(declare-fun tp!982713 () Bool)

(assert (=> b!3139091 (= e!1958343 tp!982713)))

(assert (=> b!3138975 (= tp!982659 e!1958343)))

(declare-fun b!3139092 () Bool)

(declare-fun tp!982715 () Bool)

(declare-fun tp!982712 () Bool)

(assert (=> b!3139092 (= e!1958343 (and tp!982715 tp!982712))))

(declare-fun b!3139090 () Bool)

(declare-fun tp!982714 () Bool)

(declare-fun tp!982711 () Bool)

(assert (=> b!3139090 (= e!1958343 (and tp!982714 tp!982711))))

(declare-fun b!3139089 () Bool)

(assert (=> b!3139089 (= e!1958343 tp_is_empty!16877)))

(assert (= (and b!3138975 ((_ is ElementMatch!9657) (regOne!19826 (regTwo!19827 r!17345)))) b!3139089))

(assert (= (and b!3138975 ((_ is Concat!14978) (regOne!19826 (regTwo!19827 r!17345)))) b!3139090))

(assert (= (and b!3138975 ((_ is Star!9657) (regOne!19826 (regTwo!19827 r!17345)))) b!3139091))

(assert (= (and b!3138975 ((_ is Union!9657) (regOne!19826 (regTwo!19827 r!17345)))) b!3139092))

(declare-fun b!3139095 () Bool)

(declare-fun e!1958344 () Bool)

(declare-fun tp!982718 () Bool)

(assert (=> b!3139095 (= e!1958344 tp!982718)))

(assert (=> b!3138975 (= tp!982656 e!1958344)))

(declare-fun b!3139096 () Bool)

(declare-fun tp!982720 () Bool)

(declare-fun tp!982717 () Bool)

(assert (=> b!3139096 (= e!1958344 (and tp!982720 tp!982717))))

(declare-fun b!3139094 () Bool)

(declare-fun tp!982719 () Bool)

(declare-fun tp!982716 () Bool)

(assert (=> b!3139094 (= e!1958344 (and tp!982719 tp!982716))))

(declare-fun b!3139093 () Bool)

(assert (=> b!3139093 (= e!1958344 tp_is_empty!16877)))

(assert (= (and b!3138975 ((_ is ElementMatch!9657) (regTwo!19826 (regTwo!19827 r!17345)))) b!3139093))

(assert (= (and b!3138975 ((_ is Concat!14978) (regTwo!19826 (regTwo!19827 r!17345)))) b!3139094))

(assert (= (and b!3138975 ((_ is Star!9657) (regTwo!19826 (regTwo!19827 r!17345)))) b!3139095))

(assert (= (and b!3138975 ((_ is Union!9657) (regTwo!19826 (regTwo!19827 r!17345)))) b!3139096))

(declare-fun b!3139099 () Bool)

(declare-fun e!1958345 () Bool)

(declare-fun tp!982723 () Bool)

(assert (=> b!3139099 (= e!1958345 tp!982723)))

(assert (=> b!3138955 (= tp!982634 e!1958345)))

(declare-fun b!3139100 () Bool)

(declare-fun tp!982725 () Bool)

(declare-fun tp!982722 () Bool)

(assert (=> b!3139100 (= e!1958345 (and tp!982725 tp!982722))))

(declare-fun b!3139098 () Bool)

(declare-fun tp!982724 () Bool)

(declare-fun tp!982721 () Bool)

(assert (=> b!3139098 (= e!1958345 (and tp!982724 tp!982721))))

(declare-fun b!3139097 () Bool)

(assert (=> b!3139097 (= e!1958345 tp_is_empty!16877)))

(assert (= (and b!3138955 ((_ is ElementMatch!9657) (regOne!19826 (regOne!19826 r!17345)))) b!3139097))

(assert (= (and b!3138955 ((_ is Concat!14978) (regOne!19826 (regOne!19826 r!17345)))) b!3139098))

(assert (= (and b!3138955 ((_ is Star!9657) (regOne!19826 (regOne!19826 r!17345)))) b!3139099))

(assert (= (and b!3138955 ((_ is Union!9657) (regOne!19826 (regOne!19826 r!17345)))) b!3139100))

(declare-fun b!3139103 () Bool)

(declare-fun e!1958346 () Bool)

(declare-fun tp!982728 () Bool)

(assert (=> b!3139103 (= e!1958346 tp!982728)))

(assert (=> b!3138955 (= tp!982628 e!1958346)))

(declare-fun b!3139104 () Bool)

(declare-fun tp!982730 () Bool)

(declare-fun tp!982727 () Bool)

(assert (=> b!3139104 (= e!1958346 (and tp!982730 tp!982727))))

(declare-fun b!3139102 () Bool)

(declare-fun tp!982729 () Bool)

(declare-fun tp!982726 () Bool)

(assert (=> b!3139102 (= e!1958346 (and tp!982729 tp!982726))))

(declare-fun b!3139101 () Bool)

(assert (=> b!3139101 (= e!1958346 tp_is_empty!16877)))

(assert (= (and b!3138955 ((_ is ElementMatch!9657) (regTwo!19826 (regOne!19826 r!17345)))) b!3139101))

(assert (= (and b!3138955 ((_ is Concat!14978) (regTwo!19826 (regOne!19826 r!17345)))) b!3139102))

(assert (= (and b!3138955 ((_ is Star!9657) (regTwo!19826 (regOne!19826 r!17345)))) b!3139103))

(assert (= (and b!3138955 ((_ is Union!9657) (regTwo!19826 (regOne!19826 r!17345)))) b!3139104))

(declare-fun b!3139107 () Bool)

(declare-fun e!1958347 () Bool)

(declare-fun tp!982733 () Bool)

(assert (=> b!3139107 (= e!1958347 tp!982733)))

(assert (=> b!3138956 (= tp!982631 e!1958347)))

(declare-fun b!3139108 () Bool)

(declare-fun tp!982735 () Bool)

(declare-fun tp!982732 () Bool)

(assert (=> b!3139108 (= e!1958347 (and tp!982735 tp!982732))))

(declare-fun b!3139106 () Bool)

(declare-fun tp!982734 () Bool)

(declare-fun tp!982731 () Bool)

(assert (=> b!3139106 (= e!1958347 (and tp!982734 tp!982731))))

(declare-fun b!3139105 () Bool)

(assert (=> b!3139105 (= e!1958347 tp_is_empty!16877)))

(assert (= (and b!3138956 ((_ is ElementMatch!9657) (reg!9986 (regOne!19826 r!17345)))) b!3139105))

(assert (= (and b!3138956 ((_ is Concat!14978) (reg!9986 (regOne!19826 r!17345)))) b!3139106))

(assert (= (and b!3138956 ((_ is Star!9657) (reg!9986 (regOne!19826 r!17345)))) b!3139107))

(assert (= (and b!3138956 ((_ is Union!9657) (reg!9986 (regOne!19826 r!17345)))) b!3139108))

(declare-fun b!3139118 () Bool)

(declare-fun e!1958354 () Bool)

(declare-fun tp!982738 () Bool)

(assert (=> b!3139118 (= e!1958354 tp!982738)))

(assert (=> b!3138965 (= tp!982645 e!1958354)))

(declare-fun b!3139119 () Bool)

(declare-fun tp!982740 () Bool)

(declare-fun tp!982737 () Bool)

(assert (=> b!3139119 (= e!1958354 (and tp!982740 tp!982737))))

(declare-fun b!3139117 () Bool)

(declare-fun tp!982739 () Bool)

(declare-fun tp!982736 () Bool)

(assert (=> b!3139117 (= e!1958354 (and tp!982739 tp!982736))))

(declare-fun b!3139116 () Bool)

(assert (=> b!3139116 (= e!1958354 tp_is_empty!16877)))

(assert (= (and b!3138965 ((_ is ElementMatch!9657) (regOne!19827 (regTwo!19826 r!17345)))) b!3139116))

(assert (= (and b!3138965 ((_ is Concat!14978) (regOne!19827 (regTwo!19826 r!17345)))) b!3139117))

(assert (= (and b!3138965 ((_ is Star!9657) (regOne!19827 (regTwo!19826 r!17345)))) b!3139118))

(assert (= (and b!3138965 ((_ is Union!9657) (regOne!19827 (regTwo!19826 r!17345)))) b!3139119))

(declare-fun b!3139122 () Bool)

(declare-fun e!1958355 () Bool)

(declare-fun tp!982743 () Bool)

(assert (=> b!3139122 (= e!1958355 tp!982743)))

(assert (=> b!3138965 (= tp!982642 e!1958355)))

(declare-fun b!3139123 () Bool)

(declare-fun tp!982745 () Bool)

(declare-fun tp!982742 () Bool)

(assert (=> b!3139123 (= e!1958355 (and tp!982745 tp!982742))))

(declare-fun b!3139121 () Bool)

(declare-fun tp!982744 () Bool)

(declare-fun tp!982741 () Bool)

(assert (=> b!3139121 (= e!1958355 (and tp!982744 tp!982741))))

(declare-fun b!3139120 () Bool)

(assert (=> b!3139120 (= e!1958355 tp_is_empty!16877)))

(assert (= (and b!3138965 ((_ is ElementMatch!9657) (regTwo!19827 (regTwo!19826 r!17345)))) b!3139120))

(assert (= (and b!3138965 ((_ is Concat!14978) (regTwo!19827 (regTwo!19826 r!17345)))) b!3139121))

(assert (= (and b!3138965 ((_ is Star!9657) (regTwo!19827 (regTwo!19826 r!17345)))) b!3139122))

(assert (= (and b!3138965 ((_ is Union!9657) (regTwo!19827 (regTwo!19826 r!17345)))) b!3139123))

(declare-fun b!3139126 () Bool)

(declare-fun e!1958356 () Bool)

(declare-fun tp!982748 () Bool)

(assert (=> b!3139126 (= e!1958356 tp!982748)))

(assert (=> b!3138977 (= tp!982660 e!1958356)))

(declare-fun b!3139127 () Bool)

(declare-fun tp!982750 () Bool)

(declare-fun tp!982747 () Bool)

(assert (=> b!3139127 (= e!1958356 (and tp!982750 tp!982747))))

(declare-fun b!3139125 () Bool)

(declare-fun tp!982749 () Bool)

(declare-fun tp!982746 () Bool)

(assert (=> b!3139125 (= e!1958356 (and tp!982749 tp!982746))))

(declare-fun b!3139124 () Bool)

(assert (=> b!3139124 (= e!1958356 tp_is_empty!16877)))

(assert (= (and b!3138977 ((_ is ElementMatch!9657) (regOne!19827 (regTwo!19827 r!17345)))) b!3139124))

(assert (= (and b!3138977 ((_ is Concat!14978) (regOne!19827 (regTwo!19827 r!17345)))) b!3139125))

(assert (= (and b!3138977 ((_ is Star!9657) (regOne!19827 (regTwo!19827 r!17345)))) b!3139126))

(assert (= (and b!3138977 ((_ is Union!9657) (regOne!19827 (regTwo!19827 r!17345)))) b!3139127))

(declare-fun b!3139130 () Bool)

(declare-fun e!1958357 () Bool)

(declare-fun tp!982753 () Bool)

(assert (=> b!3139130 (= e!1958357 tp!982753)))

(assert (=> b!3138977 (= tp!982657 e!1958357)))

(declare-fun b!3139131 () Bool)

(declare-fun tp!982755 () Bool)

(declare-fun tp!982752 () Bool)

(assert (=> b!3139131 (= e!1958357 (and tp!982755 tp!982752))))

(declare-fun b!3139129 () Bool)

(declare-fun tp!982754 () Bool)

(declare-fun tp!982751 () Bool)

(assert (=> b!3139129 (= e!1958357 (and tp!982754 tp!982751))))

(declare-fun b!3139128 () Bool)

(assert (=> b!3139128 (= e!1958357 tp_is_empty!16877)))

(assert (= (and b!3138977 ((_ is ElementMatch!9657) (regTwo!19827 (regTwo!19827 r!17345)))) b!3139128))

(assert (= (and b!3138977 ((_ is Concat!14978) (regTwo!19827 (regTwo!19827 r!17345)))) b!3139129))

(assert (= (and b!3138977 ((_ is Star!9657) (regTwo!19827 (regTwo!19827 r!17345)))) b!3139130))

(assert (= (and b!3138977 ((_ is Union!9657) (regTwo!19827 (regTwo!19827 r!17345)))) b!3139131))

(declare-fun b!3139138 () Bool)

(declare-fun e!1958359 () Bool)

(declare-fun tp!982763 () Bool)

(assert (=> b!3139138 (= e!1958359 tp!982763)))

(assert (=> b!3138963 (= tp!982644 e!1958359)))

(declare-fun b!3139139 () Bool)

(declare-fun tp!982765 () Bool)

(declare-fun tp!982762 () Bool)

(assert (=> b!3139139 (= e!1958359 (and tp!982765 tp!982762))))

(declare-fun b!3139137 () Bool)

(declare-fun tp!982764 () Bool)

(declare-fun tp!982761 () Bool)

(assert (=> b!3139137 (= e!1958359 (and tp!982764 tp!982761))))

(declare-fun b!3139136 () Bool)

(assert (=> b!3139136 (= e!1958359 tp_is_empty!16877)))

(assert (= (and b!3138963 ((_ is ElementMatch!9657) (regOne!19826 (regTwo!19826 r!17345)))) b!3139136))

(assert (= (and b!3138963 ((_ is Concat!14978) (regOne!19826 (regTwo!19826 r!17345)))) b!3139137))

(assert (= (and b!3138963 ((_ is Star!9657) (regOne!19826 (regTwo!19826 r!17345)))) b!3139138))

(assert (= (and b!3138963 ((_ is Union!9657) (regOne!19826 (regTwo!19826 r!17345)))) b!3139139))

(declare-fun b!3139146 () Bool)

(declare-fun e!1958361 () Bool)

(declare-fun tp!982773 () Bool)

(assert (=> b!3139146 (= e!1958361 tp!982773)))

(assert (=> b!3138963 (= tp!982641 e!1958361)))

(declare-fun b!3139147 () Bool)

(declare-fun tp!982775 () Bool)

(declare-fun tp!982772 () Bool)

(assert (=> b!3139147 (= e!1958361 (and tp!982775 tp!982772))))

(declare-fun b!3139145 () Bool)

(declare-fun tp!982774 () Bool)

(declare-fun tp!982771 () Bool)

(assert (=> b!3139145 (= e!1958361 (and tp!982774 tp!982771))))

(declare-fun b!3139144 () Bool)

(assert (=> b!3139144 (= e!1958361 tp_is_empty!16877)))

(assert (= (and b!3138963 ((_ is ElementMatch!9657) (regTwo!19826 (regTwo!19826 r!17345)))) b!3139144))

(assert (= (and b!3138963 ((_ is Concat!14978) (regTwo!19826 (regTwo!19826 r!17345)))) b!3139145))

(assert (= (and b!3138963 ((_ is Star!9657) (regTwo!19826 (regTwo!19826 r!17345)))) b!3139146))

(assert (= (and b!3138963 ((_ is Union!9657) (regTwo!19826 (regTwo!19826 r!17345)))) b!3139147))

(declare-fun b!3139154 () Bool)

(declare-fun e!1958363 () Bool)

(declare-fun tp!982783 () Bool)

(assert (=> b!3139154 (= e!1958363 tp!982783)))

(assert (=> b!3138964 (= tp!982643 e!1958363)))

(declare-fun b!3139155 () Bool)

(declare-fun tp!982785 () Bool)

(declare-fun tp!982782 () Bool)

(assert (=> b!3139155 (= e!1958363 (and tp!982785 tp!982782))))

(declare-fun b!3139153 () Bool)

(declare-fun tp!982784 () Bool)

(declare-fun tp!982781 () Bool)

(assert (=> b!3139153 (= e!1958363 (and tp!982784 tp!982781))))

(declare-fun b!3139152 () Bool)

(assert (=> b!3139152 (= e!1958363 tp_is_empty!16877)))

(assert (= (and b!3138964 ((_ is ElementMatch!9657) (reg!9986 (regTwo!19826 r!17345)))) b!3139152))

(assert (= (and b!3138964 ((_ is Concat!14978) (reg!9986 (regTwo!19826 r!17345)))) b!3139153))

(assert (= (and b!3138964 ((_ is Star!9657) (reg!9986 (regTwo!19826 r!17345)))) b!3139154))

(assert (= (and b!3138964 ((_ is Union!9657) (reg!9986 (regTwo!19826 r!17345)))) b!3139155))

(declare-fun b!3139162 () Bool)

(declare-fun e!1958365 () Bool)

(declare-fun tp!982793 () Bool)

(assert (=> b!3139162 (= e!1958365 tp!982793)))

(assert (=> b!3138973 (= tp!982655 e!1958365)))

(declare-fun b!3139163 () Bool)

(declare-fun tp!982795 () Bool)

(declare-fun tp!982792 () Bool)

(assert (=> b!3139163 (= e!1958365 (and tp!982795 tp!982792))))

(declare-fun b!3139161 () Bool)

(declare-fun tp!982794 () Bool)

(declare-fun tp!982791 () Bool)

(assert (=> b!3139161 (= e!1958365 (and tp!982794 tp!982791))))

(declare-fun b!3139160 () Bool)

(assert (=> b!3139160 (= e!1958365 tp_is_empty!16877)))

(assert (= (and b!3138973 ((_ is ElementMatch!9657) (regOne!19827 (regOne!19827 r!17345)))) b!3139160))

(assert (= (and b!3138973 ((_ is Concat!14978) (regOne!19827 (regOne!19827 r!17345)))) b!3139161))

(assert (= (and b!3138973 ((_ is Star!9657) (regOne!19827 (regOne!19827 r!17345)))) b!3139162))

(assert (= (and b!3138973 ((_ is Union!9657) (regOne!19827 (regOne!19827 r!17345)))) b!3139163))

(declare-fun b!3139170 () Bool)

(declare-fun e!1958367 () Bool)

(declare-fun tp!982803 () Bool)

(assert (=> b!3139170 (= e!1958367 tp!982803)))

(assert (=> b!3138973 (= tp!982652 e!1958367)))

(declare-fun b!3139171 () Bool)

(declare-fun tp!982805 () Bool)

(declare-fun tp!982802 () Bool)

(assert (=> b!3139171 (= e!1958367 (and tp!982805 tp!982802))))

(declare-fun b!3139169 () Bool)

(declare-fun tp!982804 () Bool)

(declare-fun tp!982801 () Bool)

(assert (=> b!3139169 (= e!1958367 (and tp!982804 tp!982801))))

(declare-fun b!3139168 () Bool)

(assert (=> b!3139168 (= e!1958367 tp_is_empty!16877)))

(assert (= (and b!3138973 ((_ is ElementMatch!9657) (regTwo!19827 (regOne!19827 r!17345)))) b!3139168))

(assert (= (and b!3138973 ((_ is Concat!14978) (regTwo!19827 (regOne!19827 r!17345)))) b!3139169))

(assert (= (and b!3138973 ((_ is Star!9657) (regTwo!19827 (regOne!19827 r!17345)))) b!3139170))

(assert (= (and b!3138973 ((_ is Union!9657) (regTwo!19827 (regOne!19827 r!17345)))) b!3139171))

(declare-fun b!3139178 () Bool)

(declare-fun e!1958369 () Bool)

(declare-fun tp!982813 () Bool)

(assert (=> b!3139178 (= e!1958369 tp!982813)))

(assert (=> b!3138957 (= tp!982635 e!1958369)))

(declare-fun b!3139179 () Bool)

(declare-fun tp!982815 () Bool)

(declare-fun tp!982812 () Bool)

(assert (=> b!3139179 (= e!1958369 (and tp!982815 tp!982812))))

(declare-fun b!3139177 () Bool)

(declare-fun tp!982814 () Bool)

(declare-fun tp!982811 () Bool)

(assert (=> b!3139177 (= e!1958369 (and tp!982814 tp!982811))))

(declare-fun b!3139176 () Bool)

(assert (=> b!3139176 (= e!1958369 tp_is_empty!16877)))

(assert (= (and b!3138957 ((_ is ElementMatch!9657) (regOne!19827 (regOne!19826 r!17345)))) b!3139176))

(assert (= (and b!3138957 ((_ is Concat!14978) (regOne!19827 (regOne!19826 r!17345)))) b!3139177))

(assert (= (and b!3138957 ((_ is Star!9657) (regOne!19827 (regOne!19826 r!17345)))) b!3139178))

(assert (= (and b!3138957 ((_ is Union!9657) (regOne!19827 (regOne!19826 r!17345)))) b!3139179))

(declare-fun b!3139184 () Bool)

(declare-fun e!1958370 () Bool)

(declare-fun tp!982820 () Bool)

(assert (=> b!3139184 (= e!1958370 tp!982820)))

(assert (=> b!3138957 (= tp!982630 e!1958370)))

(declare-fun b!3139186 () Bool)

(declare-fun tp!982824 () Bool)

(declare-fun tp!982818 () Bool)

(assert (=> b!3139186 (= e!1958370 (and tp!982824 tp!982818))))

(declare-fun b!3139182 () Bool)

(declare-fun tp!982822 () Bool)

(declare-fun tp!982816 () Bool)

(assert (=> b!3139182 (= e!1958370 (and tp!982822 tp!982816))))

(declare-fun b!3139180 () Bool)

(assert (=> b!3139180 (= e!1958370 tp_is_empty!16877)))

(assert (= (and b!3138957 ((_ is ElementMatch!9657) (regTwo!19827 (regOne!19826 r!17345)))) b!3139180))

(assert (= (and b!3138957 ((_ is Concat!14978) (regTwo!19827 (regOne!19826 r!17345)))) b!3139182))

(assert (= (and b!3138957 ((_ is Star!9657) (regTwo!19827 (regOne!19826 r!17345)))) b!3139184))

(assert (= (and b!3138957 ((_ is Union!9657) (regTwo!19827 (regOne!19826 r!17345)))) b!3139186))

(check-sat (not b!3139103) (not b!3139122) (not b!3139063) tp_is_empty!16877 (not b!3139145) (not b!3139059) (not b!3139117) (not b!3139078) (not b!3139092) (not b!3139178) (not b!3139131) (not b!3139169) (not b!3139064) (not b!3139170) (not b!3139154) (not b!3139123) (not bm!225252) (not b!3139107) (not b!3139139) (not b!3139118) (not b!3139171) (not b!3139184) (not bm!225257) (not b!3139155) (not b!3139095) (not b!3139147) (not b!3139094) (not b!3139079) (not b!3139036) (not b!3139129) (not bm!225259) (not b!3139182) (not b!3139058) (not b!3139075) (not b!3139121) (not b!3139100) (not b!3139137) (not bm!225254) (not b!3139099) (not b!3139086) (not b!3139096) (not b!3139056) (not b!3139127) (not b!3139146) (not b!3139104) (not b!3139083) (not b!3139177) (not b!3139161) (not b!3139076) (not bm!225256) (not b!3139126) (not b!3139091) (not b!3139162) (not b!3139163) (not b!3139130) (not b!3139102) (not b!3139027) (not b!3139068) (not b!3139066) (not b!3139055) (not b!3139072) (not b!3139082) (not b!3139179) (not b!3139125) (not b!3139087) (not b!3139119) (not b!3139084) (not b!3139186) (not b!3139153) (not b!3139098) (not b!3139070) (not b!3139074) (not b!3139054) (not b!3139090) (not b!3139108) (not b!3139060) (not b!3139071) (not b!3139106) (not d!865580) (not b!3139138) (not b!3139080) (not bm!225253) (not b!3139062) (not b!3139088) (not b!3139067))
(check-sat)
