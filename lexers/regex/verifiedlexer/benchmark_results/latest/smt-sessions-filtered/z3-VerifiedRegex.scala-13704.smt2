; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733228 () Bool)

(assert start!733228)

(declare-fun b!7607329 () Bool)

(declare-fun e!4524898 () Bool)

(declare-fun tp!2218869 () Bool)

(assert (=> b!7607329 (= e!4524898 tp!2218869)))

(declare-fun b!7607330 () Bool)

(declare-fun tp!2218868 () Bool)

(declare-fun tp!2218865 () Bool)

(assert (=> b!7607330 (= e!4524898 (and tp!2218868 tp!2218865))))

(declare-fun b!7607331 () Bool)

(declare-fun res!3046033 () Bool)

(declare-fun e!4524899 () Bool)

(assert (=> b!7607331 (=> (not res!3046033) (not e!4524899))))

(declare-datatypes ((C!40732 0))(
  ( (C!40733 (val!30806 Int)) )
))
(declare-datatypes ((Regex!20203 0))(
  ( (ElementMatch!20203 (c!1402914 C!40732)) (Concat!29048 (regOne!40918 Regex!20203) (regTwo!40918 Regex!20203)) (EmptyExpr!20203) (Star!20203 (reg!20532 Regex!20203)) (EmptyLang!20203) (Union!20203 (regOne!40919 Regex!20203) (regTwo!40919 Regex!20203)) )
))
(declare-fun r!19218 () Regex!20203)

(declare-fun nullable!8824 (Regex!20203) Bool)

(assert (=> b!7607331 (= res!3046033 (nullable!8824 r!19218))))

(declare-fun res!3046034 () Bool)

(assert (=> start!733228 (=> (not res!3046034) (not e!4524899))))

(declare-fun validRegex!10625 (Regex!20203) Bool)

(assert (=> start!733228 (= res!3046034 (validRegex!10625 r!19218))))

(assert (=> start!733228 e!4524899))

(assert (=> start!733228 e!4524898))

(declare-fun b!7607332 () Bool)

(declare-fun res!3046032 () Bool)

(assert (=> b!7607332 (=> (not res!3046032) (not e!4524899))))

(get-info :version)

(assert (=> b!7607332 (= res!3046032 ((_ is ElementMatch!20203) r!19218))))

(declare-fun b!7607333 () Bool)

(declare-fun lostCause!1891 (Regex!20203) Bool)

(assert (=> b!7607333 (= e!4524899 (lostCause!1891 r!19218))))

(declare-fun b!7607334 () Bool)

(declare-fun tp_is_empty!50761 () Bool)

(assert (=> b!7607334 (= e!4524898 tp_is_empty!50761)))

(declare-fun b!7607335 () Bool)

(declare-fun tp!2218867 () Bool)

(declare-fun tp!2218866 () Bool)

(assert (=> b!7607335 (= e!4524898 (and tp!2218867 tp!2218866))))

(assert (= (and start!733228 res!3046034) b!7607331))

(assert (= (and b!7607331 res!3046033) b!7607332))

(assert (= (and b!7607332 res!3046032) b!7607333))

(assert (= (and start!733228 ((_ is ElementMatch!20203) r!19218)) b!7607334))

(assert (= (and start!733228 ((_ is Concat!29048) r!19218)) b!7607330))

(assert (= (and start!733228 ((_ is Star!20203) r!19218)) b!7607329))

(assert (= (and start!733228 ((_ is Union!20203) r!19218)) b!7607335))

(declare-fun m!8147180 () Bool)

(assert (=> b!7607331 m!8147180))

(declare-fun m!8147182 () Bool)

(assert (=> start!733228 m!8147182))

(declare-fun m!8147184 () Bool)

(assert (=> b!7607333 m!8147184))

(check-sat (not b!7607329) (not start!733228) tp_is_empty!50761 (not b!7607331) (not b!7607333) (not b!7607330) (not b!7607335))
(check-sat)
(get-model)

(declare-fun b!7607381 () Bool)

(declare-fun e!4524936 () Bool)

(declare-fun e!4524935 () Bool)

(assert (=> b!7607381 (= e!4524936 e!4524935)))

(declare-fun res!3046062 () Bool)

(assert (=> b!7607381 (=> (not res!3046062) (not e!4524935))))

(declare-fun call!698480 () Bool)

(assert (=> b!7607381 (= res!3046062 call!698480)))

(declare-fun c!1402925 () Bool)

(declare-fun c!1402926 () Bool)

(declare-fun bm!698475 () Bool)

(declare-fun call!698482 () Bool)

(assert (=> bm!698475 (= call!698482 (validRegex!10625 (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218)))))))

(declare-fun b!7607382 () Bool)

(declare-fun call!698481 () Bool)

(assert (=> b!7607382 (= e!4524935 call!698481)))

(declare-fun b!7607383 () Bool)

(declare-fun e!4524937 () Bool)

(declare-fun e!4524941 () Bool)

(assert (=> b!7607383 (= e!4524937 e!4524941)))

(assert (=> b!7607383 (= c!1402925 ((_ is Star!20203) r!19218))))

(declare-fun d!2321933 () Bool)

(declare-fun res!3046061 () Bool)

(assert (=> d!2321933 (=> res!3046061 e!4524937)))

(assert (=> d!2321933 (= res!3046061 ((_ is ElementMatch!20203) r!19218))))

(assert (=> d!2321933 (= (validRegex!10625 r!19218) e!4524937)))

(declare-fun b!7607384 () Bool)

(declare-fun e!4524940 () Bool)

(assert (=> b!7607384 (= e!4524941 e!4524940)))

(declare-fun res!3046060 () Bool)

(assert (=> b!7607384 (= res!3046060 (not (nullable!8824 (reg!20532 r!19218))))))

(assert (=> b!7607384 (=> (not res!3046060) (not e!4524940))))

(declare-fun b!7607385 () Bool)

(declare-fun e!4524938 () Bool)

(assert (=> b!7607385 (= e!4524941 e!4524938)))

(assert (=> b!7607385 (= c!1402926 ((_ is Union!20203) r!19218))))

(declare-fun b!7607386 () Bool)

(declare-fun res!3046063 () Bool)

(assert (=> b!7607386 (=> res!3046063 e!4524936)))

(assert (=> b!7607386 (= res!3046063 (not ((_ is Concat!29048) r!19218)))))

(assert (=> b!7607386 (= e!4524938 e!4524936)))

(declare-fun b!7607387 () Bool)

(assert (=> b!7607387 (= e!4524940 call!698482)))

(declare-fun bm!698476 () Bool)

(assert (=> bm!698476 (= call!698481 call!698482)))

(declare-fun bm!698477 () Bool)

(assert (=> bm!698477 (= call!698480 (validRegex!10625 (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218))))))

(declare-fun b!7607388 () Bool)

(declare-fun res!3046064 () Bool)

(declare-fun e!4524939 () Bool)

(assert (=> b!7607388 (=> (not res!3046064) (not e!4524939))))

(assert (=> b!7607388 (= res!3046064 call!698480)))

(assert (=> b!7607388 (= e!4524938 e!4524939)))

(declare-fun b!7607389 () Bool)

(assert (=> b!7607389 (= e!4524939 call!698481)))

(assert (= (and d!2321933 (not res!3046061)) b!7607383))

(assert (= (and b!7607383 c!1402925) b!7607384))

(assert (= (and b!7607383 (not c!1402925)) b!7607385))

(assert (= (and b!7607384 res!3046060) b!7607387))

(assert (= (and b!7607385 c!1402926) b!7607388))

(assert (= (and b!7607385 (not c!1402926)) b!7607386))

(assert (= (and b!7607388 res!3046064) b!7607389))

(assert (= (and b!7607386 (not res!3046063)) b!7607381))

(assert (= (and b!7607381 res!3046062) b!7607382))

(assert (= (or b!7607388 b!7607381) bm!698477))

(assert (= (or b!7607389 b!7607382) bm!698476))

(assert (= (or b!7607387 bm!698476) bm!698475))

(declare-fun m!8147192 () Bool)

(assert (=> bm!698475 m!8147192))

(declare-fun m!8147194 () Bool)

(assert (=> b!7607384 m!8147194))

(declare-fun m!8147196 () Bool)

(assert (=> bm!698477 m!8147196))

(assert (=> start!733228 d!2321933))

(declare-fun d!2321939 () Bool)

(declare-fun nullableFct!3507 (Regex!20203) Bool)

(assert (=> d!2321939 (= (nullable!8824 r!19218) (nullableFct!3507 r!19218))))

(declare-fun bs!1942772 () Bool)

(assert (= bs!1942772 d!2321939))

(declare-fun m!8147200 () Bool)

(assert (=> bs!1942772 m!8147200))

(assert (=> b!7607331 d!2321939))

(declare-fun d!2321943 () Bool)

(declare-fun lostCauseFct!537 (Regex!20203) Bool)

(assert (=> d!2321943 (= (lostCause!1891 r!19218) (lostCauseFct!537 r!19218))))

(declare-fun bs!1942774 () Bool)

(assert (= bs!1942774 d!2321943))

(declare-fun m!8147204 () Bool)

(assert (=> bs!1942774 m!8147204))

(assert (=> b!7607333 d!2321943))

(declare-fun b!7607425 () Bool)

(declare-fun e!4524949 () Bool)

(declare-fun tp!2218908 () Bool)

(declare-fun tp!2218907 () Bool)

(assert (=> b!7607425 (= e!4524949 (and tp!2218908 tp!2218907))))

(declare-fun b!7607422 () Bool)

(assert (=> b!7607422 (= e!4524949 tp_is_empty!50761)))

(declare-fun b!7607424 () Bool)

(declare-fun tp!2218905 () Bool)

(assert (=> b!7607424 (= e!4524949 tp!2218905)))

(declare-fun b!7607423 () Bool)

(declare-fun tp!2218909 () Bool)

(declare-fun tp!2218906 () Bool)

(assert (=> b!7607423 (= e!4524949 (and tp!2218909 tp!2218906))))

(assert (=> b!7607330 (= tp!2218868 e!4524949)))

(assert (= (and b!7607330 ((_ is ElementMatch!20203) (regOne!40918 r!19218))) b!7607422))

(assert (= (and b!7607330 ((_ is Concat!29048) (regOne!40918 r!19218))) b!7607423))

(assert (= (and b!7607330 ((_ is Star!20203) (regOne!40918 r!19218))) b!7607424))

(assert (= (and b!7607330 ((_ is Union!20203) (regOne!40918 r!19218))) b!7607425))

(declare-fun b!7607433 () Bool)

(declare-fun e!4524951 () Bool)

(declare-fun tp!2218918 () Bool)

(declare-fun tp!2218917 () Bool)

(assert (=> b!7607433 (= e!4524951 (and tp!2218918 tp!2218917))))

(declare-fun b!7607430 () Bool)

(assert (=> b!7607430 (= e!4524951 tp_is_empty!50761)))

(declare-fun b!7607432 () Bool)

(declare-fun tp!2218915 () Bool)

(assert (=> b!7607432 (= e!4524951 tp!2218915)))

(declare-fun b!7607431 () Bool)

(declare-fun tp!2218919 () Bool)

(declare-fun tp!2218916 () Bool)

(assert (=> b!7607431 (= e!4524951 (and tp!2218919 tp!2218916))))

(assert (=> b!7607330 (= tp!2218865 e!4524951)))

(assert (= (and b!7607330 ((_ is ElementMatch!20203) (regTwo!40918 r!19218))) b!7607430))

(assert (= (and b!7607330 ((_ is Concat!29048) (regTwo!40918 r!19218))) b!7607431))

(assert (= (and b!7607330 ((_ is Star!20203) (regTwo!40918 r!19218))) b!7607432))

(assert (= (and b!7607330 ((_ is Union!20203) (regTwo!40918 r!19218))) b!7607433))

(declare-fun b!7607441 () Bool)

(declare-fun e!4524953 () Bool)

(declare-fun tp!2218928 () Bool)

(declare-fun tp!2218927 () Bool)

(assert (=> b!7607441 (= e!4524953 (and tp!2218928 tp!2218927))))

(declare-fun b!7607438 () Bool)

(assert (=> b!7607438 (= e!4524953 tp_is_empty!50761)))

(declare-fun b!7607440 () Bool)

(declare-fun tp!2218925 () Bool)

(assert (=> b!7607440 (= e!4524953 tp!2218925)))

(declare-fun b!7607439 () Bool)

(declare-fun tp!2218929 () Bool)

(declare-fun tp!2218926 () Bool)

(assert (=> b!7607439 (= e!4524953 (and tp!2218929 tp!2218926))))

(assert (=> b!7607335 (= tp!2218867 e!4524953)))

(assert (= (and b!7607335 ((_ is ElementMatch!20203) (regOne!40919 r!19218))) b!7607438))

(assert (= (and b!7607335 ((_ is Concat!29048) (regOne!40919 r!19218))) b!7607439))

(assert (= (and b!7607335 ((_ is Star!20203) (regOne!40919 r!19218))) b!7607440))

(assert (= (and b!7607335 ((_ is Union!20203) (regOne!40919 r!19218))) b!7607441))

(declare-fun b!7607445 () Bool)

(declare-fun e!4524954 () Bool)

(declare-fun tp!2218933 () Bool)

(declare-fun tp!2218932 () Bool)

(assert (=> b!7607445 (= e!4524954 (and tp!2218933 tp!2218932))))

(declare-fun b!7607442 () Bool)

(assert (=> b!7607442 (= e!4524954 tp_is_empty!50761)))

(declare-fun b!7607444 () Bool)

(declare-fun tp!2218930 () Bool)

(assert (=> b!7607444 (= e!4524954 tp!2218930)))

(declare-fun b!7607443 () Bool)

(declare-fun tp!2218934 () Bool)

(declare-fun tp!2218931 () Bool)

(assert (=> b!7607443 (= e!4524954 (and tp!2218934 tp!2218931))))

(assert (=> b!7607335 (= tp!2218866 e!4524954)))

(assert (= (and b!7607335 ((_ is ElementMatch!20203) (regTwo!40919 r!19218))) b!7607442))

(assert (= (and b!7607335 ((_ is Concat!29048) (regTwo!40919 r!19218))) b!7607443))

(assert (= (and b!7607335 ((_ is Star!20203) (regTwo!40919 r!19218))) b!7607444))

(assert (= (and b!7607335 ((_ is Union!20203) (regTwo!40919 r!19218))) b!7607445))

(declare-fun b!7607449 () Bool)

(declare-fun e!4524955 () Bool)

(declare-fun tp!2218938 () Bool)

(declare-fun tp!2218937 () Bool)

(assert (=> b!7607449 (= e!4524955 (and tp!2218938 tp!2218937))))

(declare-fun b!7607446 () Bool)

(assert (=> b!7607446 (= e!4524955 tp_is_empty!50761)))

(declare-fun b!7607448 () Bool)

(declare-fun tp!2218935 () Bool)

(assert (=> b!7607448 (= e!4524955 tp!2218935)))

(declare-fun b!7607447 () Bool)

(declare-fun tp!2218939 () Bool)

(declare-fun tp!2218936 () Bool)

(assert (=> b!7607447 (= e!4524955 (and tp!2218939 tp!2218936))))

(assert (=> b!7607329 (= tp!2218869 e!4524955)))

(assert (= (and b!7607329 ((_ is ElementMatch!20203) (reg!20532 r!19218))) b!7607446))

(assert (= (and b!7607329 ((_ is Concat!29048) (reg!20532 r!19218))) b!7607447))

(assert (= (and b!7607329 ((_ is Star!20203) (reg!20532 r!19218))) b!7607448))

(assert (= (and b!7607329 ((_ is Union!20203) (reg!20532 r!19218))) b!7607449))

(check-sat (not b!7607441) (not d!2321939) (not b!7607384) (not b!7607443) (not b!7607424) (not b!7607449) (not b!7607444) (not b!7607439) (not b!7607448) (not b!7607440) (not b!7607432) (not bm!698475) (not bm!698477) (not b!7607423) (not b!7607431) (not b!7607447) (not b!7607445) (not b!7607433) tp_is_empty!50761 (not b!7607425) (not d!2321943))
(check-sat)
(get-model)

(declare-fun b!7607450 () Bool)

(declare-fun e!4524957 () Bool)

(declare-fun e!4524956 () Bool)

(assert (=> b!7607450 (= e!4524957 e!4524956)))

(declare-fun res!3046067 () Bool)

(assert (=> b!7607450 (=> (not res!3046067) (not e!4524956))))

(declare-fun call!698483 () Bool)

(assert (=> b!7607450 (= res!3046067 call!698483)))

(declare-fun c!1402927 () Bool)

(declare-fun bm!698478 () Bool)

(declare-fun c!1402928 () Bool)

(declare-fun call!698485 () Bool)

(assert (=> bm!698478 (= call!698485 (validRegex!10625 (ite c!1402927 (reg!20532 (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218)))) (ite c!1402928 (regTwo!40919 (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218)))) (regTwo!40918 (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218))))))))))

(declare-fun b!7607451 () Bool)

(declare-fun call!698484 () Bool)

(assert (=> b!7607451 (= e!4524956 call!698484)))

(declare-fun b!7607452 () Bool)

(declare-fun e!4524958 () Bool)

(declare-fun e!4524962 () Bool)

(assert (=> b!7607452 (= e!4524958 e!4524962)))

(assert (=> b!7607452 (= c!1402927 ((_ is Star!20203) (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218)))))))

(declare-fun d!2321945 () Bool)

(declare-fun res!3046066 () Bool)

(assert (=> d!2321945 (=> res!3046066 e!4524958)))

(assert (=> d!2321945 (= res!3046066 ((_ is ElementMatch!20203) (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218)))))))

(assert (=> d!2321945 (= (validRegex!10625 (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218)))) e!4524958)))

(declare-fun b!7607453 () Bool)

(declare-fun e!4524961 () Bool)

(assert (=> b!7607453 (= e!4524962 e!4524961)))

(declare-fun res!3046065 () Bool)

(assert (=> b!7607453 (= res!3046065 (not (nullable!8824 (reg!20532 (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218)))))))))

(assert (=> b!7607453 (=> (not res!3046065) (not e!4524961))))

(declare-fun b!7607454 () Bool)

(declare-fun e!4524959 () Bool)

(assert (=> b!7607454 (= e!4524962 e!4524959)))

(assert (=> b!7607454 (= c!1402928 ((_ is Union!20203) (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218)))))))

(declare-fun b!7607455 () Bool)

(declare-fun res!3046068 () Bool)

(assert (=> b!7607455 (=> res!3046068 e!4524957)))

(assert (=> b!7607455 (= res!3046068 (not ((_ is Concat!29048) (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218))))))))

(assert (=> b!7607455 (= e!4524959 e!4524957)))

(declare-fun b!7607456 () Bool)

(assert (=> b!7607456 (= e!4524961 call!698485)))

(declare-fun bm!698479 () Bool)

(assert (=> bm!698479 (= call!698484 call!698485)))

(declare-fun bm!698480 () Bool)

(assert (=> bm!698480 (= call!698483 (validRegex!10625 (ite c!1402928 (regOne!40919 (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218)))) (regOne!40918 (ite c!1402925 (reg!20532 r!19218) (ite c!1402926 (regTwo!40919 r!19218) (regTwo!40918 r!19218)))))))))

(declare-fun b!7607457 () Bool)

(declare-fun res!3046069 () Bool)

(declare-fun e!4524960 () Bool)

(assert (=> b!7607457 (=> (not res!3046069) (not e!4524960))))

(assert (=> b!7607457 (= res!3046069 call!698483)))

(assert (=> b!7607457 (= e!4524959 e!4524960)))

(declare-fun b!7607458 () Bool)

(assert (=> b!7607458 (= e!4524960 call!698484)))

(assert (= (and d!2321945 (not res!3046066)) b!7607452))

(assert (= (and b!7607452 c!1402927) b!7607453))

(assert (= (and b!7607452 (not c!1402927)) b!7607454))

(assert (= (and b!7607453 res!3046065) b!7607456))

(assert (= (and b!7607454 c!1402928) b!7607457))

(assert (= (and b!7607454 (not c!1402928)) b!7607455))

(assert (= (and b!7607457 res!3046069) b!7607458))

(assert (= (and b!7607455 (not res!3046068)) b!7607450))

(assert (= (and b!7607450 res!3046067) b!7607451))

(assert (= (or b!7607457 b!7607450) bm!698480))

(assert (= (or b!7607458 b!7607451) bm!698479))

(assert (= (or b!7607456 bm!698479) bm!698478))

(declare-fun m!8147206 () Bool)

(assert (=> bm!698478 m!8147206))

(declare-fun m!8147208 () Bool)

(assert (=> b!7607453 m!8147208))

(declare-fun m!8147210 () Bool)

(assert (=> bm!698480 m!8147210))

(assert (=> bm!698475 d!2321945))

(declare-fun b!7607473 () Bool)

(declare-fun e!4524979 () Bool)

(declare-fun e!4524977 () Bool)

(assert (=> b!7607473 (= e!4524979 e!4524977)))

(declare-fun c!1402931 () Bool)

(assert (=> b!7607473 (= c!1402931 ((_ is Union!20203) r!19218))))

(declare-fun b!7607474 () Bool)

(declare-fun e!4524975 () Bool)

(declare-fun call!698491 () Bool)

(assert (=> b!7607474 (= e!4524975 call!698491)))

(declare-fun b!7607475 () Bool)

(declare-fun e!4524978 () Bool)

(assert (=> b!7607475 (= e!4524978 call!698491)))

(declare-fun d!2321947 () Bool)

(declare-fun lt!2654937 () Bool)

(declare-datatypes ((List!73075 0))(
  ( (Nil!72951) (Cons!72951 (h!79399 C!40732) (t!387810 List!73075)) )
))
(declare-datatypes ((Option!17323 0))(
  ( (None!17322) (Some!17322 (v!54457 List!73075)) )
))
(declare-fun isEmpty!41580 (Option!17323) Bool)

(declare-fun getLanguageWitness!1128 (Regex!20203) Option!17323)

(assert (=> d!2321947 (= lt!2654937 (isEmpty!41580 (getLanguageWitness!1128 r!19218)))))

(declare-fun e!4524976 () Bool)

(assert (=> d!2321947 (= lt!2654937 e!4524976)))

(declare-fun res!3046082 () Bool)

(assert (=> d!2321947 (=> (not res!3046082) (not e!4524976))))

(assert (=> d!2321947 (= res!3046082 (not ((_ is EmptyExpr!20203) r!19218)))))

(assert (=> d!2321947 (= (lostCauseFct!537 r!19218) lt!2654937)))

(declare-fun b!7607476 () Bool)

(declare-fun e!4524980 () Bool)

(assert (=> b!7607476 (= e!4524980 e!4524979)))

(declare-fun res!3046084 () Bool)

(assert (=> b!7607476 (=> (not res!3046084) (not e!4524979))))

(assert (=> b!7607476 (= res!3046084 (and (not ((_ is ElementMatch!20203) r!19218)) (not ((_ is Star!20203) r!19218))))))

(declare-fun b!7607477 () Bool)

(assert (=> b!7607477 (= e!4524976 e!4524980)))

(declare-fun res!3046081 () Bool)

(assert (=> b!7607477 (=> res!3046081 e!4524980)))

(assert (=> b!7607477 (= res!3046081 ((_ is EmptyLang!20203) r!19218))))

(declare-fun b!7607478 () Bool)

(assert (=> b!7607478 (= e!4524977 e!4524978)))

(declare-fun res!3046083 () Bool)

(declare-fun call!698490 () Bool)

(assert (=> b!7607478 (= res!3046083 call!698490)))

(assert (=> b!7607478 (=> (not res!3046083) (not e!4524978))))

(declare-fun bm!698485 () Bool)

(assert (=> bm!698485 (= call!698491 (lostCause!1891 (ite c!1402931 (regTwo!40919 r!19218) (regTwo!40918 r!19218))))))

(declare-fun bm!698486 () Bool)

(assert (=> bm!698486 (= call!698490 (lostCause!1891 (ite c!1402931 (regOne!40919 r!19218) (regOne!40918 r!19218))))))

(declare-fun b!7607479 () Bool)

(assert (=> b!7607479 (= e!4524977 e!4524975)))

(declare-fun res!3046080 () Bool)

(assert (=> b!7607479 (= res!3046080 call!698490)))

(assert (=> b!7607479 (=> res!3046080 e!4524975)))

(assert (= (and d!2321947 res!3046082) b!7607477))

(assert (= (and b!7607477 (not res!3046081)) b!7607476))

(assert (= (and b!7607476 res!3046084) b!7607473))

(assert (= (and b!7607473 c!1402931) b!7607478))

(assert (= (and b!7607473 (not c!1402931)) b!7607479))

(assert (= (and b!7607478 res!3046083) b!7607475))

(assert (= (and b!7607479 (not res!3046080)) b!7607474))

(assert (= (or b!7607478 b!7607479) bm!698486))

(assert (= (or b!7607475 b!7607474) bm!698485))

(declare-fun m!8147212 () Bool)

(assert (=> d!2321947 m!8147212))

(assert (=> d!2321947 m!8147212))

(declare-fun m!8147214 () Bool)

(assert (=> d!2321947 m!8147214))

(declare-fun m!8147216 () Bool)

(assert (=> bm!698485 m!8147216))

(declare-fun m!8147218 () Bool)

(assert (=> bm!698486 m!8147218))

(assert (=> d!2321943 d!2321947))

(declare-fun d!2321949 () Bool)

(assert (=> d!2321949 (= (nullable!8824 (reg!20532 r!19218)) (nullableFct!3507 (reg!20532 r!19218)))))

(declare-fun bs!1942775 () Bool)

(assert (= bs!1942775 d!2321949))

(declare-fun m!8147220 () Bool)

(assert (=> bs!1942775 m!8147220))

(assert (=> b!7607384 d!2321949))

(declare-fun b!7607480 () Bool)

(declare-fun e!4524982 () Bool)

(declare-fun e!4524981 () Bool)

(assert (=> b!7607480 (= e!4524982 e!4524981)))

(declare-fun res!3046087 () Bool)

(assert (=> b!7607480 (=> (not res!3046087) (not e!4524981))))

(declare-fun call!698492 () Bool)

(assert (=> b!7607480 (= res!3046087 call!698492)))

(declare-fun c!1402933 () Bool)

(declare-fun call!698494 () Bool)

(declare-fun bm!698487 () Bool)

(declare-fun c!1402932 () Bool)

(assert (=> bm!698487 (= call!698494 (validRegex!10625 (ite c!1402932 (reg!20532 (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218))) (ite c!1402933 (regTwo!40919 (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218))) (regTwo!40918 (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218)))))))))

(declare-fun b!7607481 () Bool)

(declare-fun call!698493 () Bool)

(assert (=> b!7607481 (= e!4524981 call!698493)))

(declare-fun b!7607482 () Bool)

(declare-fun e!4524983 () Bool)

(declare-fun e!4524987 () Bool)

(assert (=> b!7607482 (= e!4524983 e!4524987)))

(assert (=> b!7607482 (= c!1402932 ((_ is Star!20203) (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218))))))

(declare-fun d!2321951 () Bool)

(declare-fun res!3046086 () Bool)

(assert (=> d!2321951 (=> res!3046086 e!4524983)))

(assert (=> d!2321951 (= res!3046086 ((_ is ElementMatch!20203) (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218))))))

(assert (=> d!2321951 (= (validRegex!10625 (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218))) e!4524983)))

(declare-fun b!7607483 () Bool)

(declare-fun e!4524986 () Bool)

(assert (=> b!7607483 (= e!4524987 e!4524986)))

(declare-fun res!3046085 () Bool)

(assert (=> b!7607483 (= res!3046085 (not (nullable!8824 (reg!20532 (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218))))))))

(assert (=> b!7607483 (=> (not res!3046085) (not e!4524986))))

(declare-fun b!7607484 () Bool)

(declare-fun e!4524984 () Bool)

(assert (=> b!7607484 (= e!4524987 e!4524984)))

(assert (=> b!7607484 (= c!1402933 ((_ is Union!20203) (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218))))))

(declare-fun b!7607485 () Bool)

(declare-fun res!3046088 () Bool)

(assert (=> b!7607485 (=> res!3046088 e!4524982)))

(assert (=> b!7607485 (= res!3046088 (not ((_ is Concat!29048) (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218)))))))

(assert (=> b!7607485 (= e!4524984 e!4524982)))

(declare-fun b!7607486 () Bool)

(assert (=> b!7607486 (= e!4524986 call!698494)))

(declare-fun bm!698488 () Bool)

(assert (=> bm!698488 (= call!698493 call!698494)))

(declare-fun bm!698489 () Bool)

(assert (=> bm!698489 (= call!698492 (validRegex!10625 (ite c!1402933 (regOne!40919 (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218))) (regOne!40918 (ite c!1402926 (regOne!40919 r!19218) (regOne!40918 r!19218))))))))

(declare-fun b!7607487 () Bool)

(declare-fun res!3046089 () Bool)

(declare-fun e!4524985 () Bool)

(assert (=> b!7607487 (=> (not res!3046089) (not e!4524985))))

(assert (=> b!7607487 (= res!3046089 call!698492)))

(assert (=> b!7607487 (= e!4524984 e!4524985)))

(declare-fun b!7607488 () Bool)

(assert (=> b!7607488 (= e!4524985 call!698493)))

(assert (= (and d!2321951 (not res!3046086)) b!7607482))

(assert (= (and b!7607482 c!1402932) b!7607483))

(assert (= (and b!7607482 (not c!1402932)) b!7607484))

(assert (= (and b!7607483 res!3046085) b!7607486))

(assert (= (and b!7607484 c!1402933) b!7607487))

(assert (= (and b!7607484 (not c!1402933)) b!7607485))

(assert (= (and b!7607487 res!3046089) b!7607488))

(assert (= (and b!7607485 (not res!3046088)) b!7607480))

(assert (= (and b!7607480 res!3046087) b!7607481))

(assert (= (or b!7607487 b!7607480) bm!698489))

(assert (= (or b!7607488 b!7607481) bm!698488))

(assert (= (or b!7607486 bm!698488) bm!698487))

(declare-fun m!8147222 () Bool)

(assert (=> bm!698487 m!8147222))

(declare-fun m!8147224 () Bool)

(assert (=> b!7607483 m!8147224))

(declare-fun m!8147226 () Bool)

(assert (=> bm!698489 m!8147226))

(assert (=> bm!698477 d!2321951))

(declare-fun b!7607512 () Bool)

(declare-fun e!4525009 () Bool)

(declare-fun call!698502 () Bool)

(assert (=> b!7607512 (= e!4525009 call!698502)))

(declare-fun bm!698497 () Bool)

(declare-fun call!698503 () Bool)

(declare-fun c!1402938 () Bool)

(assert (=> bm!698497 (= call!698503 (nullable!8824 (ite c!1402938 (regOne!40919 r!19218) (regTwo!40918 r!19218))))))

(declare-fun b!7607513 () Bool)

(declare-fun e!4525007 () Bool)

(declare-fun e!4525012 () Bool)

(assert (=> b!7607513 (= e!4525007 e!4525012)))

(assert (=> b!7607513 (= c!1402938 ((_ is Union!20203) r!19218))))

(declare-fun b!7607514 () Bool)

(declare-fun e!4525008 () Bool)

(declare-fun e!4525011 () Bool)

(assert (=> b!7607514 (= e!4525008 e!4525011)))

(declare-fun res!3046105 () Bool)

(assert (=> b!7607514 (=> (not res!3046105) (not e!4525011))))

(assert (=> b!7607514 (= res!3046105 (and (not ((_ is EmptyLang!20203) r!19218)) (not ((_ is ElementMatch!20203) r!19218))))))

(declare-fun b!7607515 () Bool)

(assert (=> b!7607515 (= e!4525011 e!4525007)))

(declare-fun res!3046108 () Bool)

(assert (=> b!7607515 (=> res!3046108 e!4525007)))

(assert (=> b!7607515 (= res!3046108 ((_ is Star!20203) r!19218))))

(declare-fun d!2321953 () Bool)

(declare-fun res!3046107 () Bool)

(assert (=> d!2321953 (=> res!3046107 e!4525008)))

(assert (=> d!2321953 (= res!3046107 ((_ is EmptyExpr!20203) r!19218))))

(assert (=> d!2321953 (= (nullableFct!3507 r!19218) e!4525008)))

(declare-fun b!7607516 () Bool)

(declare-fun e!4525010 () Bool)

(assert (=> b!7607516 (= e!4525010 call!698503)))

(declare-fun bm!698498 () Bool)

(assert (=> bm!698498 (= call!698502 (nullable!8824 (ite c!1402938 (regTwo!40919 r!19218) (regOne!40918 r!19218))))))

(declare-fun b!7607517 () Bool)

(assert (=> b!7607517 (= e!4525012 e!4525010)))

(declare-fun res!3046106 () Bool)

(assert (=> b!7607517 (= res!3046106 call!698502)))

(assert (=> b!7607517 (=> (not res!3046106) (not e!4525010))))

(declare-fun b!7607518 () Bool)

(assert (=> b!7607518 (= e!4525012 e!4525009)))

(declare-fun res!3046109 () Bool)

(assert (=> b!7607518 (= res!3046109 call!698503)))

(assert (=> b!7607518 (=> res!3046109 e!4525009)))

(assert (= (and d!2321953 (not res!3046107)) b!7607514))

(assert (= (and b!7607514 res!3046105) b!7607515))

(assert (= (and b!7607515 (not res!3046108)) b!7607513))

(assert (= (and b!7607513 c!1402938) b!7607518))

(assert (= (and b!7607513 (not c!1402938)) b!7607517))

(assert (= (and b!7607518 (not res!3046109)) b!7607512))

(assert (= (and b!7607517 res!3046106) b!7607516))

(assert (= (or b!7607512 b!7607517) bm!698498))

(assert (= (or b!7607518 b!7607516) bm!698497))

(declare-fun m!8147236 () Bool)

(assert (=> bm!698497 m!8147236))

(declare-fun m!8147238 () Bool)

(assert (=> bm!698498 m!8147238))

(assert (=> d!2321939 d!2321953))

(declare-fun b!7607531 () Bool)

(declare-fun e!4525020 () Bool)

(declare-fun tp!2218943 () Bool)

(declare-fun tp!2218942 () Bool)

(assert (=> b!7607531 (= e!4525020 (and tp!2218943 tp!2218942))))

(declare-fun b!7607528 () Bool)

(assert (=> b!7607528 (= e!4525020 tp_is_empty!50761)))

(declare-fun b!7607530 () Bool)

(declare-fun tp!2218940 () Bool)

(assert (=> b!7607530 (= e!4525020 tp!2218940)))

(declare-fun b!7607529 () Bool)

(declare-fun tp!2218944 () Bool)

(declare-fun tp!2218941 () Bool)

(assert (=> b!7607529 (= e!4525020 (and tp!2218944 tp!2218941))))

(assert (=> b!7607447 (= tp!2218939 e!4525020)))

(assert (= (and b!7607447 ((_ is ElementMatch!20203) (regOne!40918 (reg!20532 r!19218)))) b!7607528))

(assert (= (and b!7607447 ((_ is Concat!29048) (regOne!40918 (reg!20532 r!19218)))) b!7607529))

(assert (= (and b!7607447 ((_ is Star!20203) (regOne!40918 (reg!20532 r!19218)))) b!7607530))

(assert (= (and b!7607447 ((_ is Union!20203) (regOne!40918 (reg!20532 r!19218)))) b!7607531))

(declare-fun b!7607535 () Bool)

(declare-fun e!4525021 () Bool)

(declare-fun tp!2218948 () Bool)

(declare-fun tp!2218947 () Bool)

(assert (=> b!7607535 (= e!4525021 (and tp!2218948 tp!2218947))))

(declare-fun b!7607532 () Bool)

(assert (=> b!7607532 (= e!4525021 tp_is_empty!50761)))

(declare-fun b!7607534 () Bool)

(declare-fun tp!2218945 () Bool)

(assert (=> b!7607534 (= e!4525021 tp!2218945)))

(declare-fun b!7607533 () Bool)

(declare-fun tp!2218949 () Bool)

(declare-fun tp!2218946 () Bool)

(assert (=> b!7607533 (= e!4525021 (and tp!2218949 tp!2218946))))

(assert (=> b!7607447 (= tp!2218936 e!4525021)))

(assert (= (and b!7607447 ((_ is ElementMatch!20203) (regTwo!40918 (reg!20532 r!19218)))) b!7607532))

(assert (= (and b!7607447 ((_ is Concat!29048) (regTwo!40918 (reg!20532 r!19218)))) b!7607533))

(assert (= (and b!7607447 ((_ is Star!20203) (regTwo!40918 (reg!20532 r!19218)))) b!7607534))

(assert (= (and b!7607447 ((_ is Union!20203) (regTwo!40918 (reg!20532 r!19218)))) b!7607535))

(declare-fun b!7607539 () Bool)

(declare-fun e!4525022 () Bool)

(declare-fun tp!2218953 () Bool)

(declare-fun tp!2218952 () Bool)

(assert (=> b!7607539 (= e!4525022 (and tp!2218953 tp!2218952))))

(declare-fun b!7607536 () Bool)

(assert (=> b!7607536 (= e!4525022 tp_is_empty!50761)))

(declare-fun b!7607538 () Bool)

(declare-fun tp!2218950 () Bool)

(assert (=> b!7607538 (= e!4525022 tp!2218950)))

(declare-fun b!7607537 () Bool)

(declare-fun tp!2218954 () Bool)

(declare-fun tp!2218951 () Bool)

(assert (=> b!7607537 (= e!4525022 (and tp!2218954 tp!2218951))))

(assert (=> b!7607444 (= tp!2218930 e!4525022)))

(assert (= (and b!7607444 ((_ is ElementMatch!20203) (reg!20532 (regTwo!40919 r!19218)))) b!7607536))

(assert (= (and b!7607444 ((_ is Concat!29048) (reg!20532 (regTwo!40919 r!19218)))) b!7607537))

(assert (= (and b!7607444 ((_ is Star!20203) (reg!20532 (regTwo!40919 r!19218)))) b!7607538))

(assert (= (and b!7607444 ((_ is Union!20203) (reg!20532 (regTwo!40919 r!19218)))) b!7607539))

(declare-fun b!7607543 () Bool)

(declare-fun e!4525023 () Bool)

(declare-fun tp!2218958 () Bool)

(declare-fun tp!2218957 () Bool)

(assert (=> b!7607543 (= e!4525023 (and tp!2218958 tp!2218957))))

(declare-fun b!7607540 () Bool)

(assert (=> b!7607540 (= e!4525023 tp_is_empty!50761)))

(declare-fun b!7607542 () Bool)

(declare-fun tp!2218955 () Bool)

(assert (=> b!7607542 (= e!4525023 tp!2218955)))

(declare-fun b!7607541 () Bool)

(declare-fun tp!2218959 () Bool)

(declare-fun tp!2218956 () Bool)

(assert (=> b!7607541 (= e!4525023 (and tp!2218959 tp!2218956))))

(assert (=> b!7607439 (= tp!2218929 e!4525023)))

(assert (= (and b!7607439 ((_ is ElementMatch!20203) (regOne!40918 (regOne!40919 r!19218)))) b!7607540))

(assert (= (and b!7607439 ((_ is Concat!29048) (regOne!40918 (regOne!40919 r!19218)))) b!7607541))

(assert (= (and b!7607439 ((_ is Star!20203) (regOne!40918 (regOne!40919 r!19218)))) b!7607542))

(assert (= (and b!7607439 ((_ is Union!20203) (regOne!40918 (regOne!40919 r!19218)))) b!7607543))

(declare-fun b!7607547 () Bool)

(declare-fun e!4525024 () Bool)

(declare-fun tp!2218963 () Bool)

(declare-fun tp!2218962 () Bool)

(assert (=> b!7607547 (= e!4525024 (and tp!2218963 tp!2218962))))

(declare-fun b!7607544 () Bool)

(assert (=> b!7607544 (= e!4525024 tp_is_empty!50761)))

(declare-fun b!7607546 () Bool)

(declare-fun tp!2218960 () Bool)

(assert (=> b!7607546 (= e!4525024 tp!2218960)))

(declare-fun b!7607545 () Bool)

(declare-fun tp!2218964 () Bool)

(declare-fun tp!2218961 () Bool)

(assert (=> b!7607545 (= e!4525024 (and tp!2218964 tp!2218961))))

(assert (=> b!7607439 (= tp!2218926 e!4525024)))

(assert (= (and b!7607439 ((_ is ElementMatch!20203) (regTwo!40918 (regOne!40919 r!19218)))) b!7607544))

(assert (= (and b!7607439 ((_ is Concat!29048) (regTwo!40918 (regOne!40919 r!19218)))) b!7607545))

(assert (= (and b!7607439 ((_ is Star!20203) (regTwo!40918 (regOne!40919 r!19218)))) b!7607546))

(assert (= (and b!7607439 ((_ is Union!20203) (regTwo!40918 (regOne!40919 r!19218)))) b!7607547))

(declare-fun b!7607551 () Bool)

(declare-fun e!4525025 () Bool)

(declare-fun tp!2218968 () Bool)

(declare-fun tp!2218967 () Bool)

(assert (=> b!7607551 (= e!4525025 (and tp!2218968 tp!2218967))))

(declare-fun b!7607548 () Bool)

(assert (=> b!7607548 (= e!4525025 tp_is_empty!50761)))

(declare-fun b!7607550 () Bool)

(declare-fun tp!2218965 () Bool)

(assert (=> b!7607550 (= e!4525025 tp!2218965)))

(declare-fun b!7607549 () Bool)

(declare-fun tp!2218969 () Bool)

(declare-fun tp!2218966 () Bool)

(assert (=> b!7607549 (= e!4525025 (and tp!2218969 tp!2218966))))

(assert (=> b!7607448 (= tp!2218935 e!4525025)))

(assert (= (and b!7607448 ((_ is ElementMatch!20203) (reg!20532 (reg!20532 r!19218)))) b!7607548))

(assert (= (and b!7607448 ((_ is Concat!29048) (reg!20532 (reg!20532 r!19218)))) b!7607549))

(assert (= (and b!7607448 ((_ is Star!20203) (reg!20532 (reg!20532 r!19218)))) b!7607550))

(assert (= (and b!7607448 ((_ is Union!20203) (reg!20532 (reg!20532 r!19218)))) b!7607551))

(declare-fun b!7607555 () Bool)

(declare-fun e!4525026 () Bool)

(declare-fun tp!2218973 () Bool)

(declare-fun tp!2218972 () Bool)

(assert (=> b!7607555 (= e!4525026 (and tp!2218973 tp!2218972))))

(declare-fun b!7607552 () Bool)

(assert (=> b!7607552 (= e!4525026 tp_is_empty!50761)))

(declare-fun b!7607554 () Bool)

(declare-fun tp!2218970 () Bool)

(assert (=> b!7607554 (= e!4525026 tp!2218970)))

(declare-fun b!7607553 () Bool)

(declare-fun tp!2218974 () Bool)

(declare-fun tp!2218971 () Bool)

(assert (=> b!7607553 (= e!4525026 (and tp!2218974 tp!2218971))))

(assert (=> b!7607443 (= tp!2218934 e!4525026)))

(assert (= (and b!7607443 ((_ is ElementMatch!20203) (regOne!40918 (regTwo!40919 r!19218)))) b!7607552))

(assert (= (and b!7607443 ((_ is Concat!29048) (regOne!40918 (regTwo!40919 r!19218)))) b!7607553))

(assert (= (and b!7607443 ((_ is Star!20203) (regOne!40918 (regTwo!40919 r!19218)))) b!7607554))

(assert (= (and b!7607443 ((_ is Union!20203) (regOne!40918 (regTwo!40919 r!19218)))) b!7607555))

(declare-fun b!7607559 () Bool)

(declare-fun e!4525027 () Bool)

(declare-fun tp!2218978 () Bool)

(declare-fun tp!2218977 () Bool)

(assert (=> b!7607559 (= e!4525027 (and tp!2218978 tp!2218977))))

(declare-fun b!7607556 () Bool)

(assert (=> b!7607556 (= e!4525027 tp_is_empty!50761)))

(declare-fun b!7607558 () Bool)

(declare-fun tp!2218975 () Bool)

(assert (=> b!7607558 (= e!4525027 tp!2218975)))

(declare-fun b!7607557 () Bool)

(declare-fun tp!2218979 () Bool)

(declare-fun tp!2218976 () Bool)

(assert (=> b!7607557 (= e!4525027 (and tp!2218979 tp!2218976))))

(assert (=> b!7607443 (= tp!2218931 e!4525027)))

(assert (= (and b!7607443 ((_ is ElementMatch!20203) (regTwo!40918 (regTwo!40919 r!19218)))) b!7607556))

(assert (= (and b!7607443 ((_ is Concat!29048) (regTwo!40918 (regTwo!40919 r!19218)))) b!7607557))

(assert (= (and b!7607443 ((_ is Star!20203) (regTwo!40918 (regTwo!40919 r!19218)))) b!7607558))

(assert (= (and b!7607443 ((_ is Union!20203) (regTwo!40918 (regTwo!40919 r!19218)))) b!7607559))

(declare-fun b!7607563 () Bool)

(declare-fun e!4525028 () Bool)

(declare-fun tp!2218983 () Bool)

(declare-fun tp!2218982 () Bool)

(assert (=> b!7607563 (= e!4525028 (and tp!2218983 tp!2218982))))

(declare-fun b!7607560 () Bool)

(assert (=> b!7607560 (= e!4525028 tp_is_empty!50761)))

(declare-fun b!7607562 () Bool)

(declare-fun tp!2218980 () Bool)

(assert (=> b!7607562 (= e!4525028 tp!2218980)))

(declare-fun b!7607561 () Bool)

(declare-fun tp!2218984 () Bool)

(declare-fun tp!2218981 () Bool)

(assert (=> b!7607561 (= e!4525028 (and tp!2218984 tp!2218981))))

(assert (=> b!7607431 (= tp!2218919 e!4525028)))

(assert (= (and b!7607431 ((_ is ElementMatch!20203) (regOne!40918 (regTwo!40918 r!19218)))) b!7607560))

(assert (= (and b!7607431 ((_ is Concat!29048) (regOne!40918 (regTwo!40918 r!19218)))) b!7607561))

(assert (= (and b!7607431 ((_ is Star!20203) (regOne!40918 (regTwo!40918 r!19218)))) b!7607562))

(assert (= (and b!7607431 ((_ is Union!20203) (regOne!40918 (regTwo!40918 r!19218)))) b!7607563))

(declare-fun b!7607567 () Bool)

(declare-fun e!4525029 () Bool)

(declare-fun tp!2218988 () Bool)

(declare-fun tp!2218987 () Bool)

(assert (=> b!7607567 (= e!4525029 (and tp!2218988 tp!2218987))))

(declare-fun b!7607564 () Bool)

(assert (=> b!7607564 (= e!4525029 tp_is_empty!50761)))

(declare-fun b!7607566 () Bool)

(declare-fun tp!2218985 () Bool)

(assert (=> b!7607566 (= e!4525029 tp!2218985)))

(declare-fun b!7607565 () Bool)

(declare-fun tp!2218989 () Bool)

(declare-fun tp!2218986 () Bool)

(assert (=> b!7607565 (= e!4525029 (and tp!2218989 tp!2218986))))

(assert (=> b!7607431 (= tp!2218916 e!4525029)))

(assert (= (and b!7607431 ((_ is ElementMatch!20203) (regTwo!40918 (regTwo!40918 r!19218)))) b!7607564))

(assert (= (and b!7607431 ((_ is Concat!29048) (regTwo!40918 (regTwo!40918 r!19218)))) b!7607565))

(assert (= (and b!7607431 ((_ is Star!20203) (regTwo!40918 (regTwo!40918 r!19218)))) b!7607566))

(assert (= (and b!7607431 ((_ is Union!20203) (regTwo!40918 (regTwo!40918 r!19218)))) b!7607567))

(declare-fun b!7607571 () Bool)

(declare-fun e!4525030 () Bool)

(declare-fun tp!2218993 () Bool)

(declare-fun tp!2218992 () Bool)

(assert (=> b!7607571 (= e!4525030 (and tp!2218993 tp!2218992))))

(declare-fun b!7607568 () Bool)

(assert (=> b!7607568 (= e!4525030 tp_is_empty!50761)))

(declare-fun b!7607570 () Bool)

(declare-fun tp!2218990 () Bool)

(assert (=> b!7607570 (= e!4525030 tp!2218990)))

(declare-fun b!7607569 () Bool)

(declare-fun tp!2218994 () Bool)

(declare-fun tp!2218991 () Bool)

(assert (=> b!7607569 (= e!4525030 (and tp!2218994 tp!2218991))))

(assert (=> b!7607445 (= tp!2218933 e!4525030)))

(assert (= (and b!7607445 ((_ is ElementMatch!20203) (regOne!40919 (regTwo!40919 r!19218)))) b!7607568))

(assert (= (and b!7607445 ((_ is Concat!29048) (regOne!40919 (regTwo!40919 r!19218)))) b!7607569))

(assert (= (and b!7607445 ((_ is Star!20203) (regOne!40919 (regTwo!40919 r!19218)))) b!7607570))

(assert (= (and b!7607445 ((_ is Union!20203) (regOne!40919 (regTwo!40919 r!19218)))) b!7607571))

(declare-fun b!7607577 () Bool)

(declare-fun e!4525033 () Bool)

(declare-fun tp!2218998 () Bool)

(declare-fun tp!2218997 () Bool)

(assert (=> b!7607577 (= e!4525033 (and tp!2218998 tp!2218997))))

(declare-fun b!7607574 () Bool)

(assert (=> b!7607574 (= e!4525033 tp_is_empty!50761)))

(declare-fun b!7607576 () Bool)

(declare-fun tp!2218995 () Bool)

(assert (=> b!7607576 (= e!4525033 tp!2218995)))

(declare-fun b!7607575 () Bool)

(declare-fun tp!2218999 () Bool)

(declare-fun tp!2218996 () Bool)

(assert (=> b!7607575 (= e!4525033 (and tp!2218999 tp!2218996))))

(assert (=> b!7607445 (= tp!2218932 e!4525033)))

(assert (= (and b!7607445 ((_ is ElementMatch!20203) (regTwo!40919 (regTwo!40919 r!19218)))) b!7607574))

(assert (= (and b!7607445 ((_ is Concat!29048) (regTwo!40919 (regTwo!40919 r!19218)))) b!7607575))

(assert (= (and b!7607445 ((_ is Star!20203) (regTwo!40919 (regTwo!40919 r!19218)))) b!7607576))

(assert (= (and b!7607445 ((_ is Union!20203) (regTwo!40919 (regTwo!40919 r!19218)))) b!7607577))

(declare-fun b!7607589 () Bool)

(declare-fun e!4525038 () Bool)

(declare-fun tp!2219003 () Bool)

(declare-fun tp!2219002 () Bool)

(assert (=> b!7607589 (= e!4525038 (and tp!2219003 tp!2219002))))

(declare-fun b!7607585 () Bool)

(assert (=> b!7607585 (= e!4525038 tp_is_empty!50761)))

(declare-fun b!7607588 () Bool)

(declare-fun tp!2219000 () Bool)

(assert (=> b!7607588 (= e!4525038 tp!2219000)))

(declare-fun b!7607587 () Bool)

(declare-fun tp!2219004 () Bool)

(declare-fun tp!2219001 () Bool)

(assert (=> b!7607587 (= e!4525038 (and tp!2219004 tp!2219001))))

(assert (=> b!7607440 (= tp!2218925 e!4525038)))

(assert (= (and b!7607440 ((_ is ElementMatch!20203) (reg!20532 (regOne!40919 r!19218)))) b!7607585))

(assert (= (and b!7607440 ((_ is Concat!29048) (reg!20532 (regOne!40919 r!19218)))) b!7607587))

(assert (= (and b!7607440 ((_ is Star!20203) (reg!20532 (regOne!40919 r!19218)))) b!7607588))

(assert (= (and b!7607440 ((_ is Union!20203) (reg!20532 (regOne!40919 r!19218)))) b!7607589))

(declare-fun b!7607597 () Bool)

(declare-fun e!4525045 () Bool)

(declare-fun tp!2219008 () Bool)

(declare-fun tp!2219007 () Bool)

(assert (=> b!7607597 (= e!4525045 (and tp!2219008 tp!2219007))))

(declare-fun b!7607594 () Bool)

(assert (=> b!7607594 (= e!4525045 tp_is_empty!50761)))

(declare-fun b!7607596 () Bool)

(declare-fun tp!2219005 () Bool)

(assert (=> b!7607596 (= e!4525045 tp!2219005)))

(declare-fun b!7607595 () Bool)

(declare-fun tp!2219009 () Bool)

(declare-fun tp!2219006 () Bool)

(assert (=> b!7607595 (= e!4525045 (and tp!2219009 tp!2219006))))

(assert (=> b!7607449 (= tp!2218938 e!4525045)))

(assert (= (and b!7607449 ((_ is ElementMatch!20203) (regOne!40919 (reg!20532 r!19218)))) b!7607594))

(assert (= (and b!7607449 ((_ is Concat!29048) (regOne!40919 (reg!20532 r!19218)))) b!7607595))

(assert (= (and b!7607449 ((_ is Star!20203) (regOne!40919 (reg!20532 r!19218)))) b!7607596))

(assert (= (and b!7607449 ((_ is Union!20203) (regOne!40919 (reg!20532 r!19218)))) b!7607597))

(declare-fun b!7607601 () Bool)

(declare-fun e!4525046 () Bool)

(declare-fun tp!2219013 () Bool)

(declare-fun tp!2219012 () Bool)

(assert (=> b!7607601 (= e!4525046 (and tp!2219013 tp!2219012))))

(declare-fun b!7607598 () Bool)

(assert (=> b!7607598 (= e!4525046 tp_is_empty!50761)))

(declare-fun b!7607600 () Bool)

(declare-fun tp!2219010 () Bool)

(assert (=> b!7607600 (= e!4525046 tp!2219010)))

(declare-fun b!7607599 () Bool)

(declare-fun tp!2219014 () Bool)

(declare-fun tp!2219011 () Bool)

(assert (=> b!7607599 (= e!4525046 (and tp!2219014 tp!2219011))))

(assert (=> b!7607449 (= tp!2218937 e!4525046)))

(assert (= (and b!7607449 ((_ is ElementMatch!20203) (regTwo!40919 (reg!20532 r!19218)))) b!7607598))

(assert (= (and b!7607449 ((_ is Concat!29048) (regTwo!40919 (reg!20532 r!19218)))) b!7607599))

(assert (= (and b!7607449 ((_ is Star!20203) (regTwo!40919 (reg!20532 r!19218)))) b!7607600))

(assert (= (and b!7607449 ((_ is Union!20203) (regTwo!40919 (reg!20532 r!19218)))) b!7607601))

(declare-fun b!7607605 () Bool)

(declare-fun e!4525047 () Bool)

(declare-fun tp!2219018 () Bool)

(declare-fun tp!2219017 () Bool)

(assert (=> b!7607605 (= e!4525047 (and tp!2219018 tp!2219017))))

(declare-fun b!7607602 () Bool)

(assert (=> b!7607602 (= e!4525047 tp_is_empty!50761)))

(declare-fun b!7607604 () Bool)

(declare-fun tp!2219015 () Bool)

(assert (=> b!7607604 (= e!4525047 tp!2219015)))

(declare-fun b!7607603 () Bool)

(declare-fun tp!2219019 () Bool)

(declare-fun tp!2219016 () Bool)

(assert (=> b!7607603 (= e!4525047 (and tp!2219019 tp!2219016))))

(assert (=> b!7607423 (= tp!2218909 e!4525047)))

(assert (= (and b!7607423 ((_ is ElementMatch!20203) (regOne!40918 (regOne!40918 r!19218)))) b!7607602))

(assert (= (and b!7607423 ((_ is Concat!29048) (regOne!40918 (regOne!40918 r!19218)))) b!7607603))

(assert (= (and b!7607423 ((_ is Star!20203) (regOne!40918 (regOne!40918 r!19218)))) b!7607604))

(assert (= (and b!7607423 ((_ is Union!20203) (regOne!40918 (regOne!40918 r!19218)))) b!7607605))

(declare-fun b!7607609 () Bool)

(declare-fun e!4525048 () Bool)

(declare-fun tp!2219023 () Bool)

(declare-fun tp!2219022 () Bool)

(assert (=> b!7607609 (= e!4525048 (and tp!2219023 tp!2219022))))

(declare-fun b!7607606 () Bool)

(assert (=> b!7607606 (= e!4525048 tp_is_empty!50761)))

(declare-fun b!7607608 () Bool)

(declare-fun tp!2219020 () Bool)

(assert (=> b!7607608 (= e!4525048 tp!2219020)))

(declare-fun b!7607607 () Bool)

(declare-fun tp!2219024 () Bool)

(declare-fun tp!2219021 () Bool)

(assert (=> b!7607607 (= e!4525048 (and tp!2219024 tp!2219021))))

(assert (=> b!7607423 (= tp!2218906 e!4525048)))

(assert (= (and b!7607423 ((_ is ElementMatch!20203) (regTwo!40918 (regOne!40918 r!19218)))) b!7607606))

(assert (= (and b!7607423 ((_ is Concat!29048) (regTwo!40918 (regOne!40918 r!19218)))) b!7607607))

(assert (= (and b!7607423 ((_ is Star!20203) (regTwo!40918 (regOne!40918 r!19218)))) b!7607608))

(assert (= (and b!7607423 ((_ is Union!20203) (regTwo!40918 (regOne!40918 r!19218)))) b!7607609))

(declare-fun b!7607613 () Bool)

(declare-fun e!4525049 () Bool)

(declare-fun tp!2219028 () Bool)

(declare-fun tp!2219027 () Bool)

(assert (=> b!7607613 (= e!4525049 (and tp!2219028 tp!2219027))))

(declare-fun b!7607610 () Bool)

(assert (=> b!7607610 (= e!4525049 tp_is_empty!50761)))

(declare-fun b!7607612 () Bool)

(declare-fun tp!2219025 () Bool)

(assert (=> b!7607612 (= e!4525049 tp!2219025)))

(declare-fun b!7607611 () Bool)

(declare-fun tp!2219029 () Bool)

(declare-fun tp!2219026 () Bool)

(assert (=> b!7607611 (= e!4525049 (and tp!2219029 tp!2219026))))

(assert (=> b!7607432 (= tp!2218915 e!4525049)))

(assert (= (and b!7607432 ((_ is ElementMatch!20203) (reg!20532 (regTwo!40918 r!19218)))) b!7607610))

(assert (= (and b!7607432 ((_ is Concat!29048) (reg!20532 (regTwo!40918 r!19218)))) b!7607611))

(assert (= (and b!7607432 ((_ is Star!20203) (reg!20532 (regTwo!40918 r!19218)))) b!7607612))

(assert (= (and b!7607432 ((_ is Union!20203) (reg!20532 (regTwo!40918 r!19218)))) b!7607613))

(declare-fun b!7607617 () Bool)

(declare-fun e!4525050 () Bool)

(declare-fun tp!2219033 () Bool)

(declare-fun tp!2219032 () Bool)

(assert (=> b!7607617 (= e!4525050 (and tp!2219033 tp!2219032))))

(declare-fun b!7607614 () Bool)

(assert (=> b!7607614 (= e!4525050 tp_is_empty!50761)))

(declare-fun b!7607616 () Bool)

(declare-fun tp!2219030 () Bool)

(assert (=> b!7607616 (= e!4525050 tp!2219030)))

(declare-fun b!7607615 () Bool)

(declare-fun tp!2219034 () Bool)

(declare-fun tp!2219031 () Bool)

(assert (=> b!7607615 (= e!4525050 (and tp!2219034 tp!2219031))))

(assert (=> b!7607441 (= tp!2218928 e!4525050)))

(assert (= (and b!7607441 ((_ is ElementMatch!20203) (regOne!40919 (regOne!40919 r!19218)))) b!7607614))

(assert (= (and b!7607441 ((_ is Concat!29048) (regOne!40919 (regOne!40919 r!19218)))) b!7607615))

(assert (= (and b!7607441 ((_ is Star!20203) (regOne!40919 (regOne!40919 r!19218)))) b!7607616))

(assert (= (and b!7607441 ((_ is Union!20203) (regOne!40919 (regOne!40919 r!19218)))) b!7607617))

(declare-fun b!7607621 () Bool)

(declare-fun e!4525051 () Bool)

(declare-fun tp!2219038 () Bool)

(declare-fun tp!2219037 () Bool)

(assert (=> b!7607621 (= e!4525051 (and tp!2219038 tp!2219037))))

(declare-fun b!7607618 () Bool)

(assert (=> b!7607618 (= e!4525051 tp_is_empty!50761)))

(declare-fun b!7607620 () Bool)

(declare-fun tp!2219035 () Bool)

(assert (=> b!7607620 (= e!4525051 tp!2219035)))

(declare-fun b!7607619 () Bool)

(declare-fun tp!2219039 () Bool)

(declare-fun tp!2219036 () Bool)

(assert (=> b!7607619 (= e!4525051 (and tp!2219039 tp!2219036))))

(assert (=> b!7607441 (= tp!2218927 e!4525051)))

(assert (= (and b!7607441 ((_ is ElementMatch!20203) (regTwo!40919 (regOne!40919 r!19218)))) b!7607618))

(assert (= (and b!7607441 ((_ is Concat!29048) (regTwo!40919 (regOne!40919 r!19218)))) b!7607619))

(assert (= (and b!7607441 ((_ is Star!20203) (regTwo!40919 (regOne!40919 r!19218)))) b!7607620))

(assert (= (and b!7607441 ((_ is Union!20203) (regTwo!40919 (regOne!40919 r!19218)))) b!7607621))

(declare-fun b!7607625 () Bool)

(declare-fun e!4525052 () Bool)

(declare-fun tp!2219043 () Bool)

(declare-fun tp!2219042 () Bool)

(assert (=> b!7607625 (= e!4525052 (and tp!2219043 tp!2219042))))

(declare-fun b!7607622 () Bool)

(assert (=> b!7607622 (= e!4525052 tp_is_empty!50761)))

(declare-fun b!7607624 () Bool)

(declare-fun tp!2219040 () Bool)

(assert (=> b!7607624 (= e!4525052 tp!2219040)))

(declare-fun b!7607623 () Bool)

(declare-fun tp!2219044 () Bool)

(declare-fun tp!2219041 () Bool)

(assert (=> b!7607623 (= e!4525052 (and tp!2219044 tp!2219041))))

(assert (=> b!7607424 (= tp!2218905 e!4525052)))

(assert (= (and b!7607424 ((_ is ElementMatch!20203) (reg!20532 (regOne!40918 r!19218)))) b!7607622))

(assert (= (and b!7607424 ((_ is Concat!29048) (reg!20532 (regOne!40918 r!19218)))) b!7607623))

(assert (= (and b!7607424 ((_ is Star!20203) (reg!20532 (regOne!40918 r!19218)))) b!7607624))

(assert (= (and b!7607424 ((_ is Union!20203) (reg!20532 (regOne!40918 r!19218)))) b!7607625))

(declare-fun b!7607629 () Bool)

(declare-fun e!4525053 () Bool)

(declare-fun tp!2219048 () Bool)

(declare-fun tp!2219047 () Bool)

(assert (=> b!7607629 (= e!4525053 (and tp!2219048 tp!2219047))))

(declare-fun b!7607626 () Bool)

(assert (=> b!7607626 (= e!4525053 tp_is_empty!50761)))

(declare-fun b!7607628 () Bool)

(declare-fun tp!2219045 () Bool)

(assert (=> b!7607628 (= e!4525053 tp!2219045)))

(declare-fun b!7607627 () Bool)

(declare-fun tp!2219049 () Bool)

(declare-fun tp!2219046 () Bool)

(assert (=> b!7607627 (= e!4525053 (and tp!2219049 tp!2219046))))

(assert (=> b!7607433 (= tp!2218918 e!4525053)))

(assert (= (and b!7607433 ((_ is ElementMatch!20203) (regOne!40919 (regTwo!40918 r!19218)))) b!7607626))

(assert (= (and b!7607433 ((_ is Concat!29048) (regOne!40919 (regTwo!40918 r!19218)))) b!7607627))

(assert (= (and b!7607433 ((_ is Star!20203) (regOne!40919 (regTwo!40918 r!19218)))) b!7607628))

(assert (= (and b!7607433 ((_ is Union!20203) (regOne!40919 (regTwo!40918 r!19218)))) b!7607629))

(declare-fun b!7607633 () Bool)

(declare-fun e!4525054 () Bool)

(declare-fun tp!2219053 () Bool)

(declare-fun tp!2219052 () Bool)

(assert (=> b!7607633 (= e!4525054 (and tp!2219053 tp!2219052))))

(declare-fun b!7607630 () Bool)

(assert (=> b!7607630 (= e!4525054 tp_is_empty!50761)))

(declare-fun b!7607632 () Bool)

(declare-fun tp!2219050 () Bool)

(assert (=> b!7607632 (= e!4525054 tp!2219050)))

(declare-fun b!7607631 () Bool)

(declare-fun tp!2219054 () Bool)

(declare-fun tp!2219051 () Bool)

(assert (=> b!7607631 (= e!4525054 (and tp!2219054 tp!2219051))))

(assert (=> b!7607433 (= tp!2218917 e!4525054)))

(assert (= (and b!7607433 ((_ is ElementMatch!20203) (regTwo!40919 (regTwo!40918 r!19218)))) b!7607630))

(assert (= (and b!7607433 ((_ is Concat!29048) (regTwo!40919 (regTwo!40918 r!19218)))) b!7607631))

(assert (= (and b!7607433 ((_ is Star!20203) (regTwo!40919 (regTwo!40918 r!19218)))) b!7607632))

(assert (= (and b!7607433 ((_ is Union!20203) (regTwo!40919 (regTwo!40918 r!19218)))) b!7607633))

(declare-fun b!7607637 () Bool)

(declare-fun e!4525055 () Bool)

(declare-fun tp!2219058 () Bool)

(declare-fun tp!2219057 () Bool)

(assert (=> b!7607637 (= e!4525055 (and tp!2219058 tp!2219057))))

(declare-fun b!7607634 () Bool)

(assert (=> b!7607634 (= e!4525055 tp_is_empty!50761)))

(declare-fun b!7607636 () Bool)

(declare-fun tp!2219055 () Bool)

(assert (=> b!7607636 (= e!4525055 tp!2219055)))

(declare-fun b!7607635 () Bool)

(declare-fun tp!2219059 () Bool)

(declare-fun tp!2219056 () Bool)

(assert (=> b!7607635 (= e!4525055 (and tp!2219059 tp!2219056))))

(assert (=> b!7607425 (= tp!2218908 e!4525055)))

(assert (= (and b!7607425 ((_ is ElementMatch!20203) (regOne!40919 (regOne!40918 r!19218)))) b!7607634))

(assert (= (and b!7607425 ((_ is Concat!29048) (regOne!40919 (regOne!40918 r!19218)))) b!7607635))

(assert (= (and b!7607425 ((_ is Star!20203) (regOne!40919 (regOne!40918 r!19218)))) b!7607636))

(assert (= (and b!7607425 ((_ is Union!20203) (regOne!40919 (regOne!40918 r!19218)))) b!7607637))

(declare-fun b!7607641 () Bool)

(declare-fun e!4525056 () Bool)

(declare-fun tp!2219063 () Bool)

(declare-fun tp!2219062 () Bool)

(assert (=> b!7607641 (= e!4525056 (and tp!2219063 tp!2219062))))

(declare-fun b!7607638 () Bool)

(assert (=> b!7607638 (= e!4525056 tp_is_empty!50761)))

(declare-fun b!7607640 () Bool)

(declare-fun tp!2219060 () Bool)

(assert (=> b!7607640 (= e!4525056 tp!2219060)))

(declare-fun b!7607639 () Bool)

(declare-fun tp!2219064 () Bool)

(declare-fun tp!2219061 () Bool)

(assert (=> b!7607639 (= e!4525056 (and tp!2219064 tp!2219061))))

(assert (=> b!7607425 (= tp!2218907 e!4525056)))

(assert (= (and b!7607425 ((_ is ElementMatch!20203) (regTwo!40919 (regOne!40918 r!19218)))) b!7607638))

(assert (= (and b!7607425 ((_ is Concat!29048) (regTwo!40919 (regOne!40918 r!19218)))) b!7607639))

(assert (= (and b!7607425 ((_ is Star!20203) (regTwo!40919 (regOne!40918 r!19218)))) b!7607640))

(assert (= (and b!7607425 ((_ is Union!20203) (regTwo!40919 (regOne!40918 r!19218)))) b!7607641))

(check-sat (not b!7607621) (not b!7607613) (not b!7607553) (not b!7607483) (not b!7607599) (not b!7607607) (not b!7607619) (not b!7607601) (not b!7607533) (not b!7607567) (not b!7607551) (not b!7607597) (not bm!698485) (not b!7607542) (not b!7607623) (not b!7607637) (not b!7607616) (not b!7607563) (not b!7607561) (not b!7607545) (not b!7607629) (not b!7607530) (not b!7607632) (not b!7607569) (not b!7607547) (not b!7607635) (not b!7607531) (not bm!698486) (not bm!698498) (not b!7607600) (not b!7607628) (not b!7607587) (not b!7607577) (not b!7607566) (not b!7607529) (not b!7607557) (not b!7607570) (not b!7607604) (not bm!698478) (not b!7607627) (not b!7607620) (not b!7607625) (not b!7607631) tp_is_empty!50761 (not b!7607615) (not b!7607576) (not b!7607537) (not b!7607595) (not b!7607641) (not b!7607555) (not b!7607550) (not b!7607596) (not b!7607538) (not b!7607624) (not b!7607612) (not b!7607541) (not b!7607453) (not b!7607571) (not b!7607554) (not b!7607617) (not d!2321949) (not b!7607611) (not b!7607549) (not b!7607609) (not b!7607589) (not b!7607535) (not b!7607559) (not b!7607603) (not bm!698497) (not b!7607633) (not d!2321947) (not b!7607639) (not b!7607539) (not b!7607588) (not bm!698480) (not b!7607543) (not b!7607558) (not b!7607534) (not b!7607562) (not bm!698487) (not b!7607605) (not b!7607575) (not b!7607546) (not bm!698489) (not b!7607608) (not b!7607565) (not b!7607636) (not b!7607640))
(check-sat)
