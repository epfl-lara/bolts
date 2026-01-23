; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752788 () Bool)

(assert start!752788)

(declare-fun b!8000370 () Bool)

(declare-fun e!4713025 () Bool)

(declare-fun tp_is_empty!53713 () Bool)

(assert (=> b!8000370 (= e!4713025 tp_is_empty!53713)))

(declare-fun b!8000371 () Bool)

(declare-fun tp!2393006 () Bool)

(declare-fun tp!2393008 () Bool)

(assert (=> b!8000371 (= e!4713025 (and tp!2393006 tp!2393008))))

(declare-fun b!8000372 () Bool)

(declare-fun tp!2393007 () Bool)

(assert (=> b!8000372 (= e!4713025 tp!2393007)))

(declare-fun b!8000373 () Bool)

(declare-fun e!4713024 () Bool)

(declare-datatypes ((C!43508 0))(
  ( (C!43509 (val!32302 Int)) )
))
(declare-datatypes ((Regex!21585 0))(
  ( (ElementMatch!21585 (c!1468876 C!43508)) (Concat!30584 (regOne!43682 Regex!21585) (regTwo!43682 Regex!21585)) (EmptyExpr!21585) (Star!21585 (reg!21914 Regex!21585)) (EmptyLang!21585) (Union!21585 (regOne!43683 Regex!21585) (regTwo!43683 Regex!21585)) )
))
(declare-fun r!24748 () Regex!21585)

(declare-datatypes ((List!74814 0))(
  ( (Nil!74690) (Cons!74690 (h!81138 C!43508) (t!390557 List!74814)) )
))
(declare-fun input!8006 () List!74814)

(declare-fun validRegex!11889 (Regex!21585) Bool)

(declare-fun derivative!769 (Regex!21585 List!74814) Regex!21585)

(assert (=> b!8000373 (= e!4713024 (not (validRegex!11889 (derivative!769 r!24748 input!8006))))))

(declare-fun b!8000374 () Bool)

(declare-fun res!3163932 () Bool)

(assert (=> b!8000374 (=> (not res!3163932) (not e!4713024))))

(get-info :version)

(assert (=> b!8000374 (= res!3163932 (not ((_ is Cons!74690) input!8006)))))

(declare-fun res!3163931 () Bool)

(assert (=> start!752788 (=> (not res!3163931) (not e!4713024))))

(assert (=> start!752788 (= res!3163931 (validRegex!11889 r!24748))))

(assert (=> start!752788 e!4713024))

(assert (=> start!752788 e!4713025))

(declare-fun e!4713023 () Bool)

(assert (=> start!752788 e!4713023))

(declare-fun b!8000375 () Bool)

(declare-fun tp!2393009 () Bool)

(declare-fun tp!2393005 () Bool)

(assert (=> b!8000375 (= e!4713025 (and tp!2393009 tp!2393005))))

(declare-fun b!8000376 () Bool)

(declare-fun tp!2393010 () Bool)

(assert (=> b!8000376 (= e!4713023 (and tp_is_empty!53713 tp!2393010))))

(assert (= (and start!752788 res!3163931) b!8000374))

(assert (= (and b!8000374 res!3163932) b!8000373))

(assert (= (and start!752788 ((_ is ElementMatch!21585) r!24748)) b!8000370))

(assert (= (and start!752788 ((_ is Concat!30584) r!24748)) b!8000375))

(assert (= (and start!752788 ((_ is Star!21585) r!24748)) b!8000372))

(assert (= (and start!752788 ((_ is Union!21585) r!24748)) b!8000371))

(assert (= (and start!752788 ((_ is Cons!74690) input!8006)) b!8000376))

(declare-fun m!8368352 () Bool)

(assert (=> b!8000373 m!8368352))

(assert (=> b!8000373 m!8368352))

(declare-fun m!8368354 () Bool)

(assert (=> b!8000373 m!8368354))

(declare-fun m!8368356 () Bool)

(assert (=> start!752788 m!8368356))

(check-sat (not b!8000376) tp_is_empty!53713 (not b!8000371) (not b!8000375) (not b!8000372) (not start!752788) (not b!8000373))
(check-sat)
(get-model)

(declare-fun b!8000422 () Bool)

(declare-fun e!4713064 () Bool)

(declare-fun call!743226 () Bool)

(assert (=> b!8000422 (= e!4713064 call!743226)))

(declare-fun b!8000423 () Bool)

(declare-fun e!4713063 () Bool)

(declare-fun e!4713066 () Bool)

(assert (=> b!8000423 (= e!4713063 e!4713066)))

(declare-fun res!3163960 () Bool)

(declare-fun nullable!9665 (Regex!21585) Bool)

(assert (=> b!8000423 (= res!3163960 (not (nullable!9665 (reg!21914 (derivative!769 r!24748 input!8006)))))))

(assert (=> b!8000423 (=> (not res!3163960) (not e!4713066))))

(declare-fun b!8000424 () Bool)

(declare-fun e!4713067 () Bool)

(declare-fun call!743227 () Bool)

(assert (=> b!8000424 (= e!4713067 call!743227)))

(declare-fun b!8000425 () Bool)

(declare-fun res!3163961 () Bool)

(assert (=> b!8000425 (=> (not res!3163961) (not e!4713064))))

(assert (=> b!8000425 (= res!3163961 call!743227)))

(declare-fun e!4713065 () Bool)

(assert (=> b!8000425 (= e!4713065 e!4713064)))

(declare-fun bm!743221 () Bool)

(declare-fun call!743228 () Bool)

(declare-fun c!1468887 () Bool)

(declare-fun c!1468888 () Bool)

(assert (=> bm!743221 (= call!743228 (validRegex!11889 (ite c!1468888 (reg!21914 (derivative!769 r!24748 input!8006)) (ite c!1468887 (regOne!43683 (derivative!769 r!24748 input!8006)) (regTwo!43682 (derivative!769 r!24748 input!8006))))))))

(declare-fun d!2386643 () Bool)

(declare-fun res!3163958 () Bool)

(declare-fun e!4713061 () Bool)

(assert (=> d!2386643 (=> res!3163958 e!4713061)))

(assert (=> d!2386643 (= res!3163958 ((_ is ElementMatch!21585) (derivative!769 r!24748 input!8006)))))

(assert (=> d!2386643 (= (validRegex!11889 (derivative!769 r!24748 input!8006)) e!4713061)))

(declare-fun b!8000426 () Bool)

(assert (=> b!8000426 (= e!4713063 e!4713065)))

(assert (=> b!8000426 (= c!1468887 ((_ is Union!21585) (derivative!769 r!24748 input!8006)))))

(declare-fun b!8000427 () Bool)

(declare-fun e!4713062 () Bool)

(assert (=> b!8000427 (= e!4713062 e!4713067)))

(declare-fun res!3163959 () Bool)

(assert (=> b!8000427 (=> (not res!3163959) (not e!4713067))))

(assert (=> b!8000427 (= res!3163959 call!743226)))

(declare-fun b!8000428 () Bool)

(assert (=> b!8000428 (= e!4713061 e!4713063)))

(assert (=> b!8000428 (= c!1468888 ((_ is Star!21585) (derivative!769 r!24748 input!8006)))))

(declare-fun b!8000429 () Bool)

(declare-fun res!3163962 () Bool)

(assert (=> b!8000429 (=> res!3163962 e!4713062)))

(assert (=> b!8000429 (= res!3163962 (not ((_ is Concat!30584) (derivative!769 r!24748 input!8006))))))

(assert (=> b!8000429 (= e!4713065 e!4713062)))

(declare-fun bm!743222 () Bool)

(assert (=> bm!743222 (= call!743226 (validRegex!11889 (ite c!1468887 (regTwo!43683 (derivative!769 r!24748 input!8006)) (regOne!43682 (derivative!769 r!24748 input!8006)))))))

(declare-fun b!8000430 () Bool)

(assert (=> b!8000430 (= e!4713066 call!743228)))

(declare-fun bm!743223 () Bool)

(assert (=> bm!743223 (= call!743227 call!743228)))

(assert (= (and d!2386643 (not res!3163958)) b!8000428))

(assert (= (and b!8000428 c!1468888) b!8000423))

(assert (= (and b!8000428 (not c!1468888)) b!8000426))

(assert (= (and b!8000423 res!3163960) b!8000430))

(assert (= (and b!8000426 c!1468887) b!8000425))

(assert (= (and b!8000426 (not c!1468887)) b!8000429))

(assert (= (and b!8000425 res!3163961) b!8000422))

(assert (= (and b!8000429 (not res!3163962)) b!8000427))

(assert (= (and b!8000427 res!3163959) b!8000424))

(assert (= (or b!8000422 b!8000427) bm!743222))

(assert (= (or b!8000425 b!8000424) bm!743223))

(assert (= (or b!8000430 bm!743223) bm!743221))

(declare-fun m!8368364 () Bool)

(assert (=> b!8000423 m!8368364))

(declare-fun m!8368368 () Bool)

(assert (=> bm!743221 m!8368368))

(declare-fun m!8368372 () Bool)

(assert (=> bm!743222 m!8368372))

(assert (=> b!8000373 d!2386643))

(declare-fun d!2386647 () Bool)

(declare-fun lt!2713693 () Regex!21585)

(assert (=> d!2386647 (validRegex!11889 lt!2713693)))

(declare-fun e!4713080 () Regex!21585)

(assert (=> d!2386647 (= lt!2713693 e!4713080)))

(declare-fun c!1468896 () Bool)

(assert (=> d!2386647 (= c!1468896 ((_ is Cons!74690) input!8006))))

(assert (=> d!2386647 (validRegex!11889 r!24748)))

(assert (=> d!2386647 (= (derivative!769 r!24748 input!8006) lt!2713693)))

(declare-fun b!8000449 () Bool)

(declare-fun derivativeStep!6599 (Regex!21585 C!43508) Regex!21585)

(assert (=> b!8000449 (= e!4713080 (derivative!769 (derivativeStep!6599 r!24748 (h!81138 input!8006)) (t!390557 input!8006)))))

(declare-fun b!8000451 () Bool)

(assert (=> b!8000451 (= e!4713080 r!24748)))

(assert (= (and d!2386647 c!1468896) b!8000449))

(assert (= (and d!2386647 (not c!1468896)) b!8000451))

(declare-fun m!8368378 () Bool)

(assert (=> d!2386647 m!8368378))

(assert (=> d!2386647 m!8368356))

(declare-fun m!8368382 () Bool)

(assert (=> b!8000449 m!8368382))

(assert (=> b!8000449 m!8368382))

(declare-fun m!8368386 () Bool)

(assert (=> b!8000449 m!8368386))

(assert (=> b!8000373 d!2386647))

(declare-fun b!8000454 () Bool)

(declare-fun e!4713084 () Bool)

(declare-fun call!743232 () Bool)

(assert (=> b!8000454 (= e!4713084 call!743232)))

(declare-fun b!8000455 () Bool)

(declare-fun e!4713083 () Bool)

(declare-fun e!4713086 () Bool)

(assert (=> b!8000455 (= e!4713083 e!4713086)))

(declare-fun res!3163970 () Bool)

(assert (=> b!8000455 (= res!3163970 (not (nullable!9665 (reg!21914 r!24748))))))

(assert (=> b!8000455 (=> (not res!3163970) (not e!4713086))))

(declare-fun b!8000456 () Bool)

(declare-fun e!4713087 () Bool)

(declare-fun call!743233 () Bool)

(assert (=> b!8000456 (= e!4713087 call!743233)))

(declare-fun b!8000457 () Bool)

(declare-fun res!3163971 () Bool)

(assert (=> b!8000457 (=> (not res!3163971) (not e!4713084))))

(assert (=> b!8000457 (= res!3163971 call!743233)))

(declare-fun e!4713085 () Bool)

(assert (=> b!8000457 (= e!4713085 e!4713084)))

(declare-fun bm!743227 () Bool)

(declare-fun c!1468898 () Bool)

(declare-fun c!1468897 () Bool)

(declare-fun call!743234 () Bool)

(assert (=> bm!743227 (= call!743234 (validRegex!11889 (ite c!1468898 (reg!21914 r!24748) (ite c!1468897 (regOne!43683 r!24748) (regTwo!43682 r!24748)))))))

(declare-fun d!2386651 () Bool)

(declare-fun res!3163968 () Bool)

(declare-fun e!4713081 () Bool)

(assert (=> d!2386651 (=> res!3163968 e!4713081)))

(assert (=> d!2386651 (= res!3163968 ((_ is ElementMatch!21585) r!24748))))

(assert (=> d!2386651 (= (validRegex!11889 r!24748) e!4713081)))

(declare-fun b!8000459 () Bool)

(assert (=> b!8000459 (= e!4713083 e!4713085)))

(assert (=> b!8000459 (= c!1468897 ((_ is Union!21585) r!24748))))

(declare-fun b!8000461 () Bool)

(declare-fun e!4713082 () Bool)

(assert (=> b!8000461 (= e!4713082 e!4713087)))

(declare-fun res!3163969 () Bool)

(assert (=> b!8000461 (=> (not res!3163969) (not e!4713087))))

(assert (=> b!8000461 (= res!3163969 call!743232)))

(declare-fun b!8000462 () Bool)

(assert (=> b!8000462 (= e!4713081 e!4713083)))

(assert (=> b!8000462 (= c!1468898 ((_ is Star!21585) r!24748))))

(declare-fun b!8000463 () Bool)

(declare-fun res!3163972 () Bool)

(assert (=> b!8000463 (=> res!3163972 e!4713082)))

(assert (=> b!8000463 (= res!3163972 (not ((_ is Concat!30584) r!24748)))))

(assert (=> b!8000463 (= e!4713085 e!4713082)))

(declare-fun bm!743228 () Bool)

(assert (=> bm!743228 (= call!743232 (validRegex!11889 (ite c!1468897 (regTwo!43683 r!24748) (regOne!43682 r!24748))))))

(declare-fun b!8000464 () Bool)

(assert (=> b!8000464 (= e!4713086 call!743234)))

(declare-fun bm!743229 () Bool)

(assert (=> bm!743229 (= call!743233 call!743234)))

(assert (= (and d!2386651 (not res!3163968)) b!8000462))

(assert (= (and b!8000462 c!1468898) b!8000455))

(assert (= (and b!8000462 (not c!1468898)) b!8000459))

(assert (= (and b!8000455 res!3163970) b!8000464))

(assert (= (and b!8000459 c!1468897) b!8000457))

(assert (= (and b!8000459 (not c!1468897)) b!8000463))

(assert (= (and b!8000457 res!3163971) b!8000454))

(assert (= (and b!8000463 (not res!3163972)) b!8000461))

(assert (= (and b!8000461 res!3163969) b!8000456))

(assert (= (or b!8000454 b!8000461) bm!743228))

(assert (= (or b!8000457 b!8000456) bm!743229))

(assert (= (or b!8000464 bm!743229) bm!743227))

(declare-fun m!8368388 () Bool)

(assert (=> b!8000455 m!8368388))

(declare-fun m!8368390 () Bool)

(assert (=> bm!743227 m!8368390))

(declare-fun m!8368392 () Bool)

(assert (=> bm!743228 m!8368392))

(assert (=> start!752788 d!2386651))

(declare-fun b!8000496 () Bool)

(declare-fun e!4713097 () Bool)

(declare-fun tp!2393046 () Bool)

(assert (=> b!8000496 (= e!4713097 tp!2393046)))

(declare-fun b!8000494 () Bool)

(assert (=> b!8000494 (= e!4713097 tp_is_empty!53713)))

(assert (=> b!8000371 (= tp!2393006 e!4713097)))

(declare-fun b!8000497 () Bool)

(declare-fun tp!2393048 () Bool)

(declare-fun tp!2393045 () Bool)

(assert (=> b!8000497 (= e!4713097 (and tp!2393048 tp!2393045))))

(declare-fun b!8000495 () Bool)

(declare-fun tp!2393047 () Bool)

(declare-fun tp!2393044 () Bool)

(assert (=> b!8000495 (= e!4713097 (and tp!2393047 tp!2393044))))

(assert (= (and b!8000371 ((_ is ElementMatch!21585) (regOne!43683 r!24748))) b!8000494))

(assert (= (and b!8000371 ((_ is Concat!30584) (regOne!43683 r!24748))) b!8000495))

(assert (= (and b!8000371 ((_ is Star!21585) (regOne!43683 r!24748))) b!8000496))

(assert (= (and b!8000371 ((_ is Union!21585) (regOne!43683 r!24748))) b!8000497))

(declare-fun b!8000504 () Bool)

(declare-fun e!4713099 () Bool)

(declare-fun tp!2393056 () Bool)

(assert (=> b!8000504 (= e!4713099 tp!2393056)))

(declare-fun b!8000502 () Bool)

(assert (=> b!8000502 (= e!4713099 tp_is_empty!53713)))

(assert (=> b!8000371 (= tp!2393008 e!4713099)))

(declare-fun b!8000505 () Bool)

(declare-fun tp!2393060 () Bool)

(declare-fun tp!2393055 () Bool)

(assert (=> b!8000505 (= e!4713099 (and tp!2393060 tp!2393055))))

(declare-fun b!8000503 () Bool)

(declare-fun tp!2393058 () Bool)

(declare-fun tp!2393054 () Bool)

(assert (=> b!8000503 (= e!4713099 (and tp!2393058 tp!2393054))))

(assert (= (and b!8000371 ((_ is ElementMatch!21585) (regTwo!43683 r!24748))) b!8000502))

(assert (= (and b!8000371 ((_ is Concat!30584) (regTwo!43683 r!24748))) b!8000503))

(assert (= (and b!8000371 ((_ is Star!21585) (regTwo!43683 r!24748))) b!8000504))

(assert (= (and b!8000371 ((_ is Union!21585) (regTwo!43683 r!24748))) b!8000505))

(declare-fun b!8000518 () Bool)

(declare-fun e!4713104 () Bool)

(declare-fun tp!2393071 () Bool)

(assert (=> b!8000518 (= e!4713104 (and tp_is_empty!53713 tp!2393071))))

(assert (=> b!8000376 (= tp!2393010 e!4713104)))

(assert (= (and b!8000376 ((_ is Cons!74690) (t!390557 input!8006))) b!8000518))

(declare-fun b!8000521 () Bool)

(declare-fun e!4713105 () Bool)

(declare-fun tp!2393074 () Bool)

(assert (=> b!8000521 (= e!4713105 tp!2393074)))

(declare-fun b!8000519 () Bool)

(assert (=> b!8000519 (= e!4713105 tp_is_empty!53713)))

(assert (=> b!8000372 (= tp!2393007 e!4713105)))

(declare-fun b!8000522 () Bool)

(declare-fun tp!2393076 () Bool)

(declare-fun tp!2393073 () Bool)

(assert (=> b!8000522 (= e!4713105 (and tp!2393076 tp!2393073))))

(declare-fun b!8000520 () Bool)

(declare-fun tp!2393075 () Bool)

(declare-fun tp!2393072 () Bool)

(assert (=> b!8000520 (= e!4713105 (and tp!2393075 tp!2393072))))

(assert (= (and b!8000372 ((_ is ElementMatch!21585) (reg!21914 r!24748))) b!8000519))

(assert (= (and b!8000372 ((_ is Concat!30584) (reg!21914 r!24748))) b!8000520))

(assert (= (and b!8000372 ((_ is Star!21585) (reg!21914 r!24748))) b!8000521))

(assert (= (and b!8000372 ((_ is Union!21585) (reg!21914 r!24748))) b!8000522))

(declare-fun b!8000525 () Bool)

(declare-fun e!4713106 () Bool)

(declare-fun tp!2393079 () Bool)

(assert (=> b!8000525 (= e!4713106 tp!2393079)))

(declare-fun b!8000523 () Bool)

(assert (=> b!8000523 (= e!4713106 tp_is_empty!53713)))

(assert (=> b!8000375 (= tp!2393009 e!4713106)))

(declare-fun b!8000526 () Bool)

(declare-fun tp!2393081 () Bool)

(declare-fun tp!2393078 () Bool)

(assert (=> b!8000526 (= e!4713106 (and tp!2393081 tp!2393078))))

(declare-fun b!8000524 () Bool)

(declare-fun tp!2393080 () Bool)

(declare-fun tp!2393077 () Bool)

(assert (=> b!8000524 (= e!4713106 (and tp!2393080 tp!2393077))))

(assert (= (and b!8000375 ((_ is ElementMatch!21585) (regOne!43682 r!24748))) b!8000523))

(assert (= (and b!8000375 ((_ is Concat!30584) (regOne!43682 r!24748))) b!8000524))

(assert (= (and b!8000375 ((_ is Star!21585) (regOne!43682 r!24748))) b!8000525))

(assert (= (and b!8000375 ((_ is Union!21585) (regOne!43682 r!24748))) b!8000526))

(declare-fun b!8000529 () Bool)

(declare-fun e!4713107 () Bool)

(declare-fun tp!2393084 () Bool)

(assert (=> b!8000529 (= e!4713107 tp!2393084)))

(declare-fun b!8000527 () Bool)

(assert (=> b!8000527 (= e!4713107 tp_is_empty!53713)))

(assert (=> b!8000375 (= tp!2393005 e!4713107)))

(declare-fun b!8000530 () Bool)

(declare-fun tp!2393086 () Bool)

(declare-fun tp!2393083 () Bool)

(assert (=> b!8000530 (= e!4713107 (and tp!2393086 tp!2393083))))

(declare-fun b!8000528 () Bool)

(declare-fun tp!2393085 () Bool)

(declare-fun tp!2393082 () Bool)

(assert (=> b!8000528 (= e!4713107 (and tp!2393085 tp!2393082))))

(assert (= (and b!8000375 ((_ is ElementMatch!21585) (regTwo!43682 r!24748))) b!8000527))

(assert (= (and b!8000375 ((_ is Concat!30584) (regTwo!43682 r!24748))) b!8000528))

(assert (= (and b!8000375 ((_ is Star!21585) (regTwo!43682 r!24748))) b!8000529))

(assert (= (and b!8000375 ((_ is Union!21585) (regTwo!43682 r!24748))) b!8000530))

(check-sat (not b!8000497) (not b!8000528) (not b!8000530) (not b!8000529) (not b!8000525) (not b!8000495) (not b!8000505) (not b!8000449) (not b!8000423) (not b!8000521) (not b!8000504) tp_is_empty!53713 (not b!8000526) (not b!8000524) (not b!8000518) (not b!8000496) (not bm!743228) (not bm!743222) (not b!8000522) (not d!2386647) (not b!8000503) (not bm!743221) (not b!8000520) (not b!8000455) (not bm!743227))
(check-sat)
