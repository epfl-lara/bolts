; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739200 () Bool)

(assert start!739200)

(declare-fun b!7756963 () Bool)

(declare-fun e!4597817 () Bool)

(declare-fun tp_is_empty!51649 () Bool)

(declare-fun tp!2276679 () Bool)

(assert (=> b!7756963 (= e!4597817 (and tp_is_empty!51649 tp!2276679))))

(declare-fun b!7756964 () Bool)

(declare-fun e!4597815 () Bool)

(declare-fun tp!2276678 () Bool)

(assert (=> b!7756964 (= e!4597815 tp!2276678)))

(declare-fun b!7756965 () Bool)

(declare-fun e!4597814 () Bool)

(declare-fun tp!2276676 () Bool)

(declare-fun tp!2276682 () Bool)

(assert (=> b!7756965 (= e!4597814 (and tp!2276676 tp!2276682))))

(declare-fun b!7756966 () Bool)

(declare-fun e!4597816 () Bool)

(declare-datatypes ((C!41620 0))(
  ( (C!41621 (val!31250 Int)) )
))
(declare-datatypes ((List!73490 0))(
  ( (Nil!73366) (Cons!73366 (h!79814 C!41620) (t!388225 List!73490)) )
))
(declare-fun s!10216 () List!73490)

(declare-fun ++!17826 (List!73490 List!73490) List!73490)

(assert (=> b!7756966 (= e!4597816 (not (= (++!17826 Nil!73366 s!10216) s!10216)))))

(declare-fun b!7756967 () Bool)

(assert (=> b!7756967 (= e!4597815 tp_is_empty!51649)))

(declare-fun b!7756968 () Bool)

(declare-fun res!3092598 () Bool)

(assert (=> b!7756968 (=> (not res!3092598) (not e!4597816))))

(declare-datatypes ((Regex!20647 0))(
  ( (ElementMatch!20647 (c!1430486 C!41620)) (Concat!29492 (regOne!41806 Regex!20647) (regTwo!41806 Regex!20647)) (EmptyExpr!20647) (Star!20647 (reg!20976 Regex!20647)) (EmptyLang!20647) (Union!20647 (regOne!41807 Regex!20647) (regTwo!41807 Regex!20647)) )
))
(declare-fun r2!3230 () Regex!20647)

(declare-fun validRegex!11063 (Regex!20647) Bool)

(assert (=> b!7756968 (= res!3092598 (validRegex!11063 r2!3230))))

(declare-fun b!7756969 () Bool)

(declare-fun tp!2276685 () Bool)

(declare-fun tp!2276677 () Bool)

(assert (=> b!7756969 (= e!4597815 (and tp!2276685 tp!2276677))))

(declare-fun res!3092597 () Bool)

(assert (=> start!739200 (=> (not res!3092597) (not e!4597816))))

(declare-fun r1!3330 () Regex!20647)

(assert (=> start!739200 (= res!3092597 (validRegex!11063 r1!3330))))

(assert (=> start!739200 e!4597816))

(assert (=> start!739200 e!4597815))

(assert (=> start!739200 e!4597814))

(assert (=> start!739200 e!4597817))

(declare-fun b!7756970 () Bool)

(declare-fun tp!2276681 () Bool)

(declare-fun tp!2276680 () Bool)

(assert (=> b!7756970 (= e!4597815 (and tp!2276681 tp!2276680))))

(declare-fun b!7756971 () Bool)

(assert (=> b!7756971 (= e!4597814 tp_is_empty!51649)))

(declare-fun b!7756972 () Bool)

(declare-fun tp!2276684 () Bool)

(declare-fun tp!2276683 () Bool)

(assert (=> b!7756972 (= e!4597814 (and tp!2276684 tp!2276683))))

(declare-fun b!7756973 () Bool)

(declare-fun tp!2276675 () Bool)

(assert (=> b!7756973 (= e!4597814 tp!2276675)))

(assert (= (and start!739200 res!3092597) b!7756968))

(assert (= (and b!7756968 res!3092598) b!7756966))

(get-info :version)

(assert (= (and start!739200 ((_ is ElementMatch!20647) r1!3330)) b!7756967))

(assert (= (and start!739200 ((_ is Concat!29492) r1!3330)) b!7756970))

(assert (= (and start!739200 ((_ is Star!20647) r1!3330)) b!7756964))

(assert (= (and start!739200 ((_ is Union!20647) r1!3330)) b!7756969))

(assert (= (and start!739200 ((_ is ElementMatch!20647) r2!3230)) b!7756971))

(assert (= (and start!739200 ((_ is Concat!29492) r2!3230)) b!7756972))

(assert (= (and start!739200 ((_ is Star!20647) r2!3230)) b!7756973))

(assert (= (and start!739200 ((_ is Union!20647) r2!3230)) b!7756965))

(assert (= (and start!739200 ((_ is Cons!73366) s!10216)) b!7756963))

(declare-fun m!8219300 () Bool)

(assert (=> b!7756966 m!8219300))

(declare-fun m!8219302 () Bool)

(assert (=> b!7756968 m!8219302))

(declare-fun m!8219304 () Bool)

(assert (=> start!739200 m!8219304))

(check-sat (not b!7756969) (not b!7756965) (not start!739200) (not b!7756968) (not b!7756972) (not b!7756970) tp_is_empty!51649 (not b!7756966) (not b!7756963) (not b!7756973) (not b!7756964))
(check-sat)
(get-model)

(declare-fun c!1430495 () Bool)

(declare-fun bm!719008 () Bool)

(declare-fun c!1430496 () Bool)

(declare-fun call!719014 () Bool)

(assert (=> bm!719008 (= call!719014 (validRegex!11063 (ite c!1430496 (reg!20976 r1!3330) (ite c!1430495 (regTwo!41807 r1!3330) (regTwo!41806 r1!3330)))))))

(declare-fun b!7757010 () Bool)

(declare-fun res!3092623 () Bool)

(declare-fun e!4597851 () Bool)

(assert (=> b!7757010 (=> res!3092623 e!4597851)))

(assert (=> b!7757010 (= res!3092623 (not ((_ is Concat!29492) r1!3330)))))

(declare-fun e!4597848 () Bool)

(assert (=> b!7757010 (= e!4597848 e!4597851)))

(declare-fun b!7757011 () Bool)

(declare-fun e!4597847 () Bool)

(assert (=> b!7757011 (= e!4597847 e!4597848)))

(assert (=> b!7757011 (= c!1430495 ((_ is Union!20647) r1!3330))))

(declare-fun b!7757012 () Bool)

(declare-fun res!3092619 () Bool)

(declare-fun e!4597852 () Bool)

(assert (=> b!7757012 (=> (not res!3092619) (not e!4597852))))

(declare-fun call!719013 () Bool)

(assert (=> b!7757012 (= res!3092619 call!719013)))

(assert (=> b!7757012 (= e!4597848 e!4597852)))

(declare-fun b!7757013 () Bool)

(declare-fun e!4597846 () Bool)

(assert (=> b!7757013 (= e!4597851 e!4597846)))

(declare-fun res!3092621 () Bool)

(assert (=> b!7757013 (=> (not res!3092621) (not e!4597846))))

(assert (=> b!7757013 (= res!3092621 call!719013)))

(declare-fun b!7757014 () Bool)

(declare-fun e!4597850 () Bool)

(assert (=> b!7757014 (= e!4597850 e!4597847)))

(assert (=> b!7757014 (= c!1430496 ((_ is Star!20647) r1!3330))))

(declare-fun bm!719009 () Bool)

(assert (=> bm!719009 (= call!719013 (validRegex!11063 (ite c!1430495 (regOne!41807 r1!3330) (regOne!41806 r1!3330))))))

(declare-fun b!7757015 () Bool)

(declare-fun e!4597849 () Bool)

(assert (=> b!7757015 (= e!4597849 call!719014)))

(declare-fun b!7757016 () Bool)

(assert (=> b!7757016 (= e!4597847 e!4597849)))

(declare-fun res!3092620 () Bool)

(declare-fun nullable!9097 (Regex!20647) Bool)

(assert (=> b!7757016 (= res!3092620 (not (nullable!9097 (reg!20976 r1!3330))))))

(assert (=> b!7757016 (=> (not res!3092620) (not e!4597849))))

(declare-fun bm!719010 () Bool)

(declare-fun call!719015 () Bool)

(assert (=> bm!719010 (= call!719015 call!719014)))

(declare-fun d!2343387 () Bool)

(declare-fun res!3092622 () Bool)

(assert (=> d!2343387 (=> res!3092622 e!4597850)))

(assert (=> d!2343387 (= res!3092622 ((_ is ElementMatch!20647) r1!3330))))

(assert (=> d!2343387 (= (validRegex!11063 r1!3330) e!4597850)))

(declare-fun b!7757017 () Bool)

(assert (=> b!7757017 (= e!4597846 call!719015)))

(declare-fun b!7757018 () Bool)

(assert (=> b!7757018 (= e!4597852 call!719015)))

(assert (= (and d!2343387 (not res!3092622)) b!7757014))

(assert (= (and b!7757014 c!1430496) b!7757016))

(assert (= (and b!7757014 (not c!1430496)) b!7757011))

(assert (= (and b!7757016 res!3092620) b!7757015))

(assert (= (and b!7757011 c!1430495) b!7757012))

(assert (= (and b!7757011 (not c!1430495)) b!7757010))

(assert (= (and b!7757012 res!3092619) b!7757018))

(assert (= (and b!7757010 (not res!3092623)) b!7757013))

(assert (= (and b!7757013 res!3092621) b!7757017))

(assert (= (or b!7757012 b!7757013) bm!719009))

(assert (= (or b!7757018 b!7757017) bm!719010))

(assert (= (or b!7757015 bm!719010) bm!719008))

(declare-fun m!8219306 () Bool)

(assert (=> bm!719008 m!8219306))

(declare-fun m!8219308 () Bool)

(assert (=> bm!719009 m!8219308))

(declare-fun m!8219310 () Bool)

(assert (=> b!7757016 m!8219310))

(assert (=> start!739200 d!2343387))

(declare-fun call!719017 () Bool)

(declare-fun c!1430498 () Bool)

(declare-fun bm!719011 () Bool)

(declare-fun c!1430497 () Bool)

(assert (=> bm!719011 (= call!719017 (validRegex!11063 (ite c!1430498 (reg!20976 r2!3230) (ite c!1430497 (regTwo!41807 r2!3230) (regTwo!41806 r2!3230)))))))

(declare-fun b!7757019 () Bool)

(declare-fun res!3092628 () Bool)

(declare-fun e!4597858 () Bool)

(assert (=> b!7757019 (=> res!3092628 e!4597858)))

(assert (=> b!7757019 (= res!3092628 (not ((_ is Concat!29492) r2!3230)))))

(declare-fun e!4597855 () Bool)

(assert (=> b!7757019 (= e!4597855 e!4597858)))

(declare-fun b!7757020 () Bool)

(declare-fun e!4597854 () Bool)

(assert (=> b!7757020 (= e!4597854 e!4597855)))

(assert (=> b!7757020 (= c!1430497 ((_ is Union!20647) r2!3230))))

(declare-fun b!7757021 () Bool)

(declare-fun res!3092624 () Bool)

(declare-fun e!4597859 () Bool)

(assert (=> b!7757021 (=> (not res!3092624) (not e!4597859))))

(declare-fun call!719016 () Bool)

(assert (=> b!7757021 (= res!3092624 call!719016)))

(assert (=> b!7757021 (= e!4597855 e!4597859)))

(declare-fun b!7757022 () Bool)

(declare-fun e!4597853 () Bool)

(assert (=> b!7757022 (= e!4597858 e!4597853)))

(declare-fun res!3092626 () Bool)

(assert (=> b!7757022 (=> (not res!3092626) (not e!4597853))))

(assert (=> b!7757022 (= res!3092626 call!719016)))

(declare-fun b!7757023 () Bool)

(declare-fun e!4597857 () Bool)

(assert (=> b!7757023 (= e!4597857 e!4597854)))

(assert (=> b!7757023 (= c!1430498 ((_ is Star!20647) r2!3230))))

(declare-fun bm!719012 () Bool)

(assert (=> bm!719012 (= call!719016 (validRegex!11063 (ite c!1430497 (regOne!41807 r2!3230) (regOne!41806 r2!3230))))))

(declare-fun b!7757024 () Bool)

(declare-fun e!4597856 () Bool)

(assert (=> b!7757024 (= e!4597856 call!719017)))

(declare-fun b!7757025 () Bool)

(assert (=> b!7757025 (= e!4597854 e!4597856)))

(declare-fun res!3092625 () Bool)

(assert (=> b!7757025 (= res!3092625 (not (nullable!9097 (reg!20976 r2!3230))))))

(assert (=> b!7757025 (=> (not res!3092625) (not e!4597856))))

(declare-fun bm!719013 () Bool)

(declare-fun call!719018 () Bool)

(assert (=> bm!719013 (= call!719018 call!719017)))

(declare-fun d!2343391 () Bool)

(declare-fun res!3092627 () Bool)

(assert (=> d!2343391 (=> res!3092627 e!4597857)))

(assert (=> d!2343391 (= res!3092627 ((_ is ElementMatch!20647) r2!3230))))

(assert (=> d!2343391 (= (validRegex!11063 r2!3230) e!4597857)))

(declare-fun b!7757026 () Bool)

(assert (=> b!7757026 (= e!4597853 call!719018)))

(declare-fun b!7757027 () Bool)

(assert (=> b!7757027 (= e!4597859 call!719018)))

(assert (= (and d!2343391 (not res!3092627)) b!7757023))

(assert (= (and b!7757023 c!1430498) b!7757025))

(assert (= (and b!7757023 (not c!1430498)) b!7757020))

(assert (= (and b!7757025 res!3092625) b!7757024))

(assert (= (and b!7757020 c!1430497) b!7757021))

(assert (= (and b!7757020 (not c!1430497)) b!7757019))

(assert (= (and b!7757021 res!3092624) b!7757027))

(assert (= (and b!7757019 (not res!3092628)) b!7757022))

(assert (= (and b!7757022 res!3092626) b!7757026))

(assert (= (or b!7757021 b!7757022) bm!719012))

(assert (= (or b!7757027 b!7757026) bm!719013))

(assert (= (or b!7757024 bm!719013) bm!719011))

(declare-fun m!8219312 () Bool)

(assert (=> bm!719011 m!8219312))

(declare-fun m!8219314 () Bool)

(assert (=> bm!719012 m!8219314))

(declare-fun m!8219316 () Bool)

(assert (=> b!7757025 m!8219316))

(assert (=> b!7756968 d!2343391))

(declare-fun d!2343393 () Bool)

(declare-fun e!4597879 () Bool)

(assert (=> d!2343393 e!4597879))

(declare-fun res!3092643 () Bool)

(assert (=> d!2343393 (=> (not res!3092643) (not e!4597879))))

(declare-fun lt!2669871 () List!73490)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15565 (List!73490) (InoxSet C!41620))

(assert (=> d!2343393 (= res!3092643 (= (content!15565 lt!2669871) ((_ map or) (content!15565 Nil!73366) (content!15565 s!10216))))))

(declare-fun e!4597878 () List!73490)

(assert (=> d!2343393 (= lt!2669871 e!4597878)))

(declare-fun c!1430505 () Bool)

(assert (=> d!2343393 (= c!1430505 ((_ is Nil!73366) Nil!73366))))

(assert (=> d!2343393 (= (++!17826 Nil!73366 s!10216) lt!2669871)))

(declare-fun b!7757054 () Bool)

(assert (=> b!7757054 (= e!4597878 s!10216)))

(declare-fun b!7757056 () Bool)

(declare-fun res!3092644 () Bool)

(assert (=> b!7757056 (=> (not res!3092644) (not e!4597879))))

(declare-fun size!42668 (List!73490) Int)

(assert (=> b!7757056 (= res!3092644 (= (size!42668 lt!2669871) (+ (size!42668 Nil!73366) (size!42668 s!10216))))))

(declare-fun b!7757057 () Bool)

(assert (=> b!7757057 (= e!4597879 (or (not (= s!10216 Nil!73366)) (= lt!2669871 Nil!73366)))))

(declare-fun b!7757055 () Bool)

(assert (=> b!7757055 (= e!4597878 (Cons!73366 (h!79814 Nil!73366) (++!17826 (t!388225 Nil!73366) s!10216)))))

(assert (= (and d!2343393 c!1430505) b!7757054))

(assert (= (and d!2343393 (not c!1430505)) b!7757055))

(assert (= (and d!2343393 res!3092643) b!7757056))

(assert (= (and b!7757056 res!3092644) b!7757057))

(declare-fun m!8219330 () Bool)

(assert (=> d!2343393 m!8219330))

(declare-fun m!8219332 () Bool)

(assert (=> d!2343393 m!8219332))

(declare-fun m!8219334 () Bool)

(assert (=> d!2343393 m!8219334))

(declare-fun m!8219336 () Bool)

(assert (=> b!7757056 m!8219336))

(declare-fun m!8219338 () Bool)

(assert (=> b!7757056 m!8219338))

(declare-fun m!8219340 () Bool)

(assert (=> b!7757056 m!8219340))

(declare-fun m!8219342 () Bool)

(assert (=> b!7757055 m!8219342))

(assert (=> b!7756966 d!2343393))

(declare-fun b!7757076 () Bool)

(declare-fun e!4597886 () Bool)

(assert (=> b!7757076 (= e!4597886 tp_is_empty!51649)))

(declare-fun b!7757078 () Bool)

(declare-fun tp!2276699 () Bool)

(assert (=> b!7757078 (= e!4597886 tp!2276699)))

(assert (=> b!7756972 (= tp!2276684 e!4597886)))

(declare-fun b!7757077 () Bool)

(declare-fun tp!2276700 () Bool)

(declare-fun tp!2276696 () Bool)

(assert (=> b!7757077 (= e!4597886 (and tp!2276700 tp!2276696))))

(declare-fun b!7757079 () Bool)

(declare-fun tp!2276698 () Bool)

(declare-fun tp!2276697 () Bool)

(assert (=> b!7757079 (= e!4597886 (and tp!2276698 tp!2276697))))

(assert (= (and b!7756972 ((_ is ElementMatch!20647) (regOne!41806 r2!3230))) b!7757076))

(assert (= (and b!7756972 ((_ is Concat!29492) (regOne!41806 r2!3230))) b!7757077))

(assert (= (and b!7756972 ((_ is Star!20647) (regOne!41806 r2!3230))) b!7757078))

(assert (= (and b!7756972 ((_ is Union!20647) (regOne!41806 r2!3230))) b!7757079))

(declare-fun b!7757080 () Bool)

(declare-fun e!4597887 () Bool)

(assert (=> b!7757080 (= e!4597887 tp_is_empty!51649)))

(declare-fun b!7757082 () Bool)

(declare-fun tp!2276704 () Bool)

(assert (=> b!7757082 (= e!4597887 tp!2276704)))

(assert (=> b!7756972 (= tp!2276683 e!4597887)))

(declare-fun b!7757081 () Bool)

(declare-fun tp!2276705 () Bool)

(declare-fun tp!2276701 () Bool)

(assert (=> b!7757081 (= e!4597887 (and tp!2276705 tp!2276701))))

(declare-fun b!7757083 () Bool)

(declare-fun tp!2276703 () Bool)

(declare-fun tp!2276702 () Bool)

(assert (=> b!7757083 (= e!4597887 (and tp!2276703 tp!2276702))))

(assert (= (and b!7756972 ((_ is ElementMatch!20647) (regTwo!41806 r2!3230))) b!7757080))

(assert (= (and b!7756972 ((_ is Concat!29492) (regTwo!41806 r2!3230))) b!7757081))

(assert (= (and b!7756972 ((_ is Star!20647) (regTwo!41806 r2!3230))) b!7757082))

(assert (= (and b!7756972 ((_ is Union!20647) (regTwo!41806 r2!3230))) b!7757083))

(declare-fun b!7757092 () Bool)

(declare-fun e!4597892 () Bool)

(declare-fun tp!2276708 () Bool)

(assert (=> b!7757092 (= e!4597892 (and tp_is_empty!51649 tp!2276708))))

(assert (=> b!7756963 (= tp!2276679 e!4597892)))

(assert (= (and b!7756963 ((_ is Cons!73366) (t!388225 s!10216))) b!7757092))

(declare-fun b!7757093 () Bool)

(declare-fun e!4597893 () Bool)

(assert (=> b!7757093 (= e!4597893 tp_is_empty!51649)))

(declare-fun b!7757095 () Bool)

(declare-fun tp!2276712 () Bool)

(assert (=> b!7757095 (= e!4597893 tp!2276712)))

(assert (=> b!7756973 (= tp!2276675 e!4597893)))

(declare-fun b!7757094 () Bool)

(declare-fun tp!2276713 () Bool)

(declare-fun tp!2276709 () Bool)

(assert (=> b!7757094 (= e!4597893 (and tp!2276713 tp!2276709))))

(declare-fun b!7757096 () Bool)

(declare-fun tp!2276711 () Bool)

(declare-fun tp!2276710 () Bool)

(assert (=> b!7757096 (= e!4597893 (and tp!2276711 tp!2276710))))

(assert (= (and b!7756973 ((_ is ElementMatch!20647) (reg!20976 r2!3230))) b!7757093))

(assert (= (and b!7756973 ((_ is Concat!29492) (reg!20976 r2!3230))) b!7757094))

(assert (= (and b!7756973 ((_ is Star!20647) (reg!20976 r2!3230))) b!7757095))

(assert (= (and b!7756973 ((_ is Union!20647) (reg!20976 r2!3230))) b!7757096))

(declare-fun b!7757097 () Bool)

(declare-fun e!4597894 () Bool)

(assert (=> b!7757097 (= e!4597894 tp_is_empty!51649)))

(declare-fun b!7757099 () Bool)

(declare-fun tp!2276717 () Bool)

(assert (=> b!7757099 (= e!4597894 tp!2276717)))

(assert (=> b!7756970 (= tp!2276681 e!4597894)))

(declare-fun b!7757098 () Bool)

(declare-fun tp!2276718 () Bool)

(declare-fun tp!2276714 () Bool)

(assert (=> b!7757098 (= e!4597894 (and tp!2276718 tp!2276714))))

(declare-fun b!7757100 () Bool)

(declare-fun tp!2276716 () Bool)

(declare-fun tp!2276715 () Bool)

(assert (=> b!7757100 (= e!4597894 (and tp!2276716 tp!2276715))))

(assert (= (and b!7756970 ((_ is ElementMatch!20647) (regOne!41806 r1!3330))) b!7757097))

(assert (= (and b!7756970 ((_ is Concat!29492) (regOne!41806 r1!3330))) b!7757098))

(assert (= (and b!7756970 ((_ is Star!20647) (regOne!41806 r1!3330))) b!7757099))

(assert (= (and b!7756970 ((_ is Union!20647) (regOne!41806 r1!3330))) b!7757100))

(declare-fun b!7757105 () Bool)

(declare-fun e!4597897 () Bool)

(assert (=> b!7757105 (= e!4597897 tp_is_empty!51649)))

(declare-fun b!7757107 () Bool)

(declare-fun tp!2276722 () Bool)

(assert (=> b!7757107 (= e!4597897 tp!2276722)))

(assert (=> b!7756970 (= tp!2276680 e!4597897)))

(declare-fun b!7757106 () Bool)

(declare-fun tp!2276723 () Bool)

(declare-fun tp!2276719 () Bool)

(assert (=> b!7757106 (= e!4597897 (and tp!2276723 tp!2276719))))

(declare-fun b!7757108 () Bool)

(declare-fun tp!2276721 () Bool)

(declare-fun tp!2276720 () Bool)

(assert (=> b!7757108 (= e!4597897 (and tp!2276721 tp!2276720))))

(assert (= (and b!7756970 ((_ is ElementMatch!20647) (regTwo!41806 r1!3330))) b!7757105))

(assert (= (and b!7756970 ((_ is Concat!29492) (regTwo!41806 r1!3330))) b!7757106))

(assert (= (and b!7756970 ((_ is Star!20647) (regTwo!41806 r1!3330))) b!7757107))

(assert (= (and b!7756970 ((_ is Union!20647) (regTwo!41806 r1!3330))) b!7757108))

(declare-fun b!7757113 () Bool)

(declare-fun e!4597898 () Bool)

(assert (=> b!7757113 (= e!4597898 tp_is_empty!51649)))

(declare-fun b!7757115 () Bool)

(declare-fun tp!2276731 () Bool)

(assert (=> b!7757115 (= e!4597898 tp!2276731)))

(assert (=> b!7756969 (= tp!2276685 e!4597898)))

(declare-fun b!7757114 () Bool)

(declare-fun tp!2276732 () Bool)

(declare-fun tp!2276728 () Bool)

(assert (=> b!7757114 (= e!4597898 (and tp!2276732 tp!2276728))))

(declare-fun b!7757116 () Bool)

(declare-fun tp!2276730 () Bool)

(declare-fun tp!2276729 () Bool)

(assert (=> b!7757116 (= e!4597898 (and tp!2276730 tp!2276729))))

(assert (= (and b!7756969 ((_ is ElementMatch!20647) (regOne!41807 r1!3330))) b!7757113))

(assert (= (and b!7756969 ((_ is Concat!29492) (regOne!41807 r1!3330))) b!7757114))

(assert (= (and b!7756969 ((_ is Star!20647) (regOne!41807 r1!3330))) b!7757115))

(assert (= (and b!7756969 ((_ is Union!20647) (regOne!41807 r1!3330))) b!7757116))

(declare-fun b!7757119 () Bool)

(declare-fun e!4597899 () Bool)

(assert (=> b!7757119 (= e!4597899 tp_is_empty!51649)))

(declare-fun b!7757121 () Bool)

(declare-fun tp!2276742 () Bool)

(assert (=> b!7757121 (= e!4597899 tp!2276742)))

(assert (=> b!7756969 (= tp!2276677 e!4597899)))

(declare-fun b!7757120 () Bool)

(declare-fun tp!2276743 () Bool)

(declare-fun tp!2276739 () Bool)

(assert (=> b!7757120 (= e!4597899 (and tp!2276743 tp!2276739))))

(declare-fun b!7757122 () Bool)

(declare-fun tp!2276741 () Bool)

(declare-fun tp!2276740 () Bool)

(assert (=> b!7757122 (= e!4597899 (and tp!2276741 tp!2276740))))

(assert (= (and b!7756969 ((_ is ElementMatch!20647) (regTwo!41807 r1!3330))) b!7757119))

(assert (= (and b!7756969 ((_ is Concat!29492) (regTwo!41807 r1!3330))) b!7757120))

(assert (= (and b!7756969 ((_ is Star!20647) (regTwo!41807 r1!3330))) b!7757121))

(assert (= (and b!7756969 ((_ is Union!20647) (regTwo!41807 r1!3330))) b!7757122))

(declare-fun b!7757123 () Bool)

(declare-fun e!4597900 () Bool)

(assert (=> b!7757123 (= e!4597900 tp_is_empty!51649)))

(declare-fun b!7757125 () Bool)

(declare-fun tp!2276747 () Bool)

(assert (=> b!7757125 (= e!4597900 tp!2276747)))

(assert (=> b!7756964 (= tp!2276678 e!4597900)))

(declare-fun b!7757124 () Bool)

(declare-fun tp!2276748 () Bool)

(declare-fun tp!2276744 () Bool)

(assert (=> b!7757124 (= e!4597900 (and tp!2276748 tp!2276744))))

(declare-fun b!7757126 () Bool)

(declare-fun tp!2276746 () Bool)

(declare-fun tp!2276745 () Bool)

(assert (=> b!7757126 (= e!4597900 (and tp!2276746 tp!2276745))))

(assert (= (and b!7756964 ((_ is ElementMatch!20647) (reg!20976 r1!3330))) b!7757123))

(assert (= (and b!7756964 ((_ is Concat!29492) (reg!20976 r1!3330))) b!7757124))

(assert (= (and b!7756964 ((_ is Star!20647) (reg!20976 r1!3330))) b!7757125))

(assert (= (and b!7756964 ((_ is Union!20647) (reg!20976 r1!3330))) b!7757126))

(declare-fun b!7757127 () Bool)

(declare-fun e!4597901 () Bool)

(assert (=> b!7757127 (= e!4597901 tp_is_empty!51649)))

(declare-fun b!7757129 () Bool)

(declare-fun tp!2276752 () Bool)

(assert (=> b!7757129 (= e!4597901 tp!2276752)))

(assert (=> b!7756965 (= tp!2276676 e!4597901)))

(declare-fun b!7757128 () Bool)

(declare-fun tp!2276753 () Bool)

(declare-fun tp!2276749 () Bool)

(assert (=> b!7757128 (= e!4597901 (and tp!2276753 tp!2276749))))

(declare-fun b!7757130 () Bool)

(declare-fun tp!2276751 () Bool)

(declare-fun tp!2276750 () Bool)

(assert (=> b!7757130 (= e!4597901 (and tp!2276751 tp!2276750))))

(assert (= (and b!7756965 ((_ is ElementMatch!20647) (regOne!41807 r2!3230))) b!7757127))

(assert (= (and b!7756965 ((_ is Concat!29492) (regOne!41807 r2!3230))) b!7757128))

(assert (= (and b!7756965 ((_ is Star!20647) (regOne!41807 r2!3230))) b!7757129))

(assert (= (and b!7756965 ((_ is Union!20647) (regOne!41807 r2!3230))) b!7757130))

(declare-fun b!7757131 () Bool)

(declare-fun e!4597902 () Bool)

(assert (=> b!7757131 (= e!4597902 tp_is_empty!51649)))

(declare-fun b!7757133 () Bool)

(declare-fun tp!2276757 () Bool)

(assert (=> b!7757133 (= e!4597902 tp!2276757)))

(assert (=> b!7756965 (= tp!2276682 e!4597902)))

(declare-fun b!7757132 () Bool)

(declare-fun tp!2276758 () Bool)

(declare-fun tp!2276754 () Bool)

(assert (=> b!7757132 (= e!4597902 (and tp!2276758 tp!2276754))))

(declare-fun b!7757134 () Bool)

(declare-fun tp!2276756 () Bool)

(declare-fun tp!2276755 () Bool)

(assert (=> b!7757134 (= e!4597902 (and tp!2276756 tp!2276755))))

(assert (= (and b!7756965 ((_ is ElementMatch!20647) (regTwo!41807 r2!3230))) b!7757131))

(assert (= (and b!7756965 ((_ is Concat!29492) (regTwo!41807 r2!3230))) b!7757132))

(assert (= (and b!7756965 ((_ is Star!20647) (regTwo!41807 r2!3230))) b!7757133))

(assert (= (and b!7756965 ((_ is Union!20647) (regTwo!41807 r2!3230))) b!7757134))

(check-sat (not b!7757095) (not b!7757125) (not b!7757096) (not b!7757133) (not b!7757055) (not b!7757100) (not b!7757083) (not b!7757082) (not bm!719008) (not bm!719011) (not b!7757124) (not b!7757078) (not b!7757115) (not b!7757132) (not b!7757077) (not b!7757107) (not b!7757025) (not b!7757098) tp_is_empty!51649 (not b!7757129) (not b!7757126) (not b!7757106) (not b!7757116) (not b!7757108) (not b!7757092) (not b!7757121) (not b!7757128) (not b!7757114) (not b!7757122) (not b!7757134) (not b!7757016) (not d!2343393) (not b!7757079) (not b!7757120) (not bm!719012) (not b!7757094) (not b!7757099) (not b!7757056) (not b!7757081) (not bm!719009) (not b!7757130))
(check-sat)
