; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110258 () Bool)

(assert start!110258)

(declare-fun b!1233178 () Bool)

(declare-fun e!789936 () Bool)

(declare-fun tp!351975 () Bool)

(declare-fun tp!351976 () Bool)

(assert (=> b!1233178 (= e!789936 (and tp!351975 tp!351976))))

(declare-fun b!1233179 () Bool)

(declare-fun tp!351977 () Bool)

(declare-fun tp!351979 () Bool)

(assert (=> b!1233179 (= e!789936 (and tp!351977 tp!351979))))

(declare-fun res!552627 () Bool)

(declare-fun e!789935 () Bool)

(assert (=> start!110258 (=> (not res!552627) (not e!789935))))

(declare-datatypes ((C!7184 0))(
  ( (C!7185 (val!4122 Int)) )
))
(declare-datatypes ((Regex!3433 0))(
  ( (ElementMatch!3433 (c!206270 C!7184)) (Concat!5663 (regOne!7378 Regex!3433) (regTwo!7378 Regex!3433)) (EmptyExpr!3433) (Star!3433 (reg!3762 Regex!3433)) (EmptyLang!3433) (Union!3433 (regOne!7379 Regex!3433) (regTwo!7379 Regex!3433)) )
))
(declare-fun r!15719 () Regex!3433)

(declare-fun validRegex!1469 (Regex!3433) Bool)

(assert (=> start!110258 (= res!552627 (validRegex!1469 r!15719))))

(assert (=> start!110258 e!789935))

(assert (=> start!110258 e!789936))

(declare-fun b!1233180 () Bool)

(assert (=> b!1233180 (= e!789935 (not (validRegex!1469 (regTwo!7378 r!15719))))))

(declare-fun b!1233181 () Bool)

(declare-fun tp_is_empty!6387 () Bool)

(assert (=> b!1233181 (= e!789936 tp_is_empty!6387)))

(declare-fun b!1233182 () Bool)

(declare-fun tp!351978 () Bool)

(assert (=> b!1233182 (= e!789936 tp!351978)))

(declare-fun b!1233183 () Bool)

(declare-fun res!552628 () Bool)

(assert (=> b!1233183 (=> (not res!552628) (not e!789935))))

(get-info :version)

(assert (=> b!1233183 (= res!552628 (and ((_ is Concat!5663) r!15719) ((_ is EmptyExpr!3433) (regOne!7378 r!15719))))))

(assert (= (and start!110258 res!552627) b!1233183))

(assert (= (and b!1233183 res!552628) b!1233180))

(assert (= (and start!110258 ((_ is ElementMatch!3433) r!15719)) b!1233181))

(assert (= (and start!110258 ((_ is Concat!5663) r!15719)) b!1233179))

(assert (= (and start!110258 ((_ is Star!3433) r!15719)) b!1233182))

(assert (= (and start!110258 ((_ is Union!3433) r!15719)) b!1233178))

(declare-fun m!1408911 () Bool)

(assert (=> start!110258 m!1408911))

(declare-fun m!1408913 () Bool)

(assert (=> b!1233180 m!1408913))

(check-sat (not b!1233178) tp_is_empty!6387 (not b!1233180) (not b!1233182) (not start!110258) (not b!1233179))
(check-sat)
(get-model)

(declare-fun c!206281 () Bool)

(declare-fun c!206282 () Bool)

(declare-fun bm!85442 () Bool)

(declare-fun call!85449 () Bool)

(assert (=> bm!85442 (= call!85449 (validRegex!1469 (ite c!206282 (reg!3762 (regTwo!7378 r!15719)) (ite c!206281 (regOne!7379 (regTwo!7378 r!15719)) (regOne!7378 (regTwo!7378 r!15719))))))))

(declare-fun b!1233229 () Bool)

(declare-fun e!789972 () Bool)

(assert (=> b!1233229 (= e!789972 call!85449)))

(declare-fun b!1233230 () Bool)

(declare-fun res!552657 () Bool)

(declare-fun e!789975 () Bool)

(assert (=> b!1233230 (=> res!552657 e!789975)))

(assert (=> b!1233230 (= res!552657 (not ((_ is Concat!5663) (regTwo!7378 r!15719))))))

(declare-fun e!789978 () Bool)

(assert (=> b!1233230 (= e!789978 e!789975)))

(declare-fun b!1233231 () Bool)

(declare-fun res!552656 () Bool)

(declare-fun e!789976 () Bool)

(assert (=> b!1233231 (=> (not res!552656) (not e!789976))))

(declare-fun call!85448 () Bool)

(assert (=> b!1233231 (= res!552656 call!85448)))

(assert (=> b!1233231 (= e!789978 e!789976)))

(declare-fun b!1233232 () Bool)

(declare-fun e!789977 () Bool)

(assert (=> b!1233232 (= e!789977 e!789978)))

(assert (=> b!1233232 (= c!206281 ((_ is Union!3433) (regTwo!7378 r!15719)))))

(declare-fun b!1233233 () Bool)

(declare-fun e!789974 () Bool)

(assert (=> b!1233233 (= e!789974 e!789977)))

(assert (=> b!1233233 (= c!206282 ((_ is Star!3433) (regTwo!7378 r!15719)))))

(declare-fun bm!85443 () Bool)

(declare-fun call!85447 () Bool)

(assert (=> bm!85443 (= call!85447 (validRegex!1469 (ite c!206281 (regTwo!7379 (regTwo!7378 r!15719)) (regTwo!7378 (regTwo!7378 r!15719)))))))

(declare-fun b!1233234 () Bool)

(assert (=> b!1233234 (= e!789976 call!85447)))

(declare-fun b!1233235 () Bool)

(declare-fun e!789973 () Bool)

(assert (=> b!1233235 (= e!789975 e!789973)))

(declare-fun res!552658 () Bool)

(assert (=> b!1233235 (=> (not res!552658) (not e!789973))))

(assert (=> b!1233235 (= res!552658 call!85448)))

(declare-fun b!1233236 () Bool)

(assert (=> b!1233236 (= e!789977 e!789972)))

(declare-fun res!552655 () Bool)

(declare-fun nullable!1072 (Regex!3433) Bool)

(assert (=> b!1233236 (= res!552655 (not (nullable!1072 (reg!3762 (regTwo!7378 r!15719)))))))

(assert (=> b!1233236 (=> (not res!552655) (not e!789972))))

(declare-fun bm!85444 () Bool)

(assert (=> bm!85444 (= call!85448 call!85449)))

(declare-fun d!353122 () Bool)

(declare-fun res!552654 () Bool)

(assert (=> d!353122 (=> res!552654 e!789974)))

(assert (=> d!353122 (= res!552654 ((_ is ElementMatch!3433) (regTwo!7378 r!15719)))))

(assert (=> d!353122 (= (validRegex!1469 (regTwo!7378 r!15719)) e!789974)))

(declare-fun b!1233237 () Bool)

(assert (=> b!1233237 (= e!789973 call!85447)))

(assert (= (and d!353122 (not res!552654)) b!1233233))

(assert (= (and b!1233233 c!206282) b!1233236))

(assert (= (and b!1233233 (not c!206282)) b!1233232))

(assert (= (and b!1233236 res!552655) b!1233229))

(assert (= (and b!1233232 c!206281) b!1233231))

(assert (= (and b!1233232 (not c!206281)) b!1233230))

(assert (= (and b!1233231 res!552656) b!1233234))

(assert (= (and b!1233230 (not res!552657)) b!1233235))

(assert (= (and b!1233235 res!552658) b!1233237))

(assert (= (or b!1233234 b!1233237) bm!85443))

(assert (= (or b!1233231 b!1233235) bm!85444))

(assert (= (or b!1233229 bm!85444) bm!85442))

(declare-fun m!1408921 () Bool)

(assert (=> bm!85442 m!1408921))

(declare-fun m!1408923 () Bool)

(assert (=> bm!85443 m!1408923))

(declare-fun m!1408925 () Bool)

(assert (=> b!1233236 m!1408925))

(assert (=> b!1233180 d!353122))

(declare-fun c!206286 () Bool)

(declare-fun c!206285 () Bool)

(declare-fun call!85455 () Bool)

(declare-fun bm!85448 () Bool)

(assert (=> bm!85448 (= call!85455 (validRegex!1469 (ite c!206286 (reg!3762 r!15719) (ite c!206285 (regOne!7379 r!15719) (regOne!7378 r!15719)))))))

(declare-fun b!1233247 () Bool)

(declare-fun e!789986 () Bool)

(assert (=> b!1233247 (= e!789986 call!85455)))

(declare-fun b!1233248 () Bool)

(declare-fun res!552667 () Bool)

(declare-fun e!789989 () Bool)

(assert (=> b!1233248 (=> res!552667 e!789989)))

(assert (=> b!1233248 (= res!552667 (not ((_ is Concat!5663) r!15719)))))

(declare-fun e!789992 () Bool)

(assert (=> b!1233248 (= e!789992 e!789989)))

(declare-fun b!1233249 () Bool)

(declare-fun res!552666 () Bool)

(declare-fun e!789990 () Bool)

(assert (=> b!1233249 (=> (not res!552666) (not e!789990))))

(declare-fun call!85454 () Bool)

(assert (=> b!1233249 (= res!552666 call!85454)))

(assert (=> b!1233249 (= e!789992 e!789990)))

(declare-fun b!1233250 () Bool)

(declare-fun e!789991 () Bool)

(assert (=> b!1233250 (= e!789991 e!789992)))

(assert (=> b!1233250 (= c!206285 ((_ is Union!3433) r!15719))))

(declare-fun b!1233251 () Bool)

(declare-fun e!789988 () Bool)

(assert (=> b!1233251 (= e!789988 e!789991)))

(assert (=> b!1233251 (= c!206286 ((_ is Star!3433) r!15719))))

(declare-fun bm!85449 () Bool)

(declare-fun call!85453 () Bool)

(assert (=> bm!85449 (= call!85453 (validRegex!1469 (ite c!206285 (regTwo!7379 r!15719) (regTwo!7378 r!15719))))))

(declare-fun b!1233252 () Bool)

(assert (=> b!1233252 (= e!789990 call!85453)))

(declare-fun b!1233253 () Bool)

(declare-fun e!789987 () Bool)

(assert (=> b!1233253 (= e!789989 e!789987)))

(declare-fun res!552668 () Bool)

(assert (=> b!1233253 (=> (not res!552668) (not e!789987))))

(assert (=> b!1233253 (= res!552668 call!85454)))

(declare-fun b!1233254 () Bool)

(assert (=> b!1233254 (= e!789991 e!789986)))

(declare-fun res!552665 () Bool)

(assert (=> b!1233254 (= res!552665 (not (nullable!1072 (reg!3762 r!15719))))))

(assert (=> b!1233254 (=> (not res!552665) (not e!789986))))

(declare-fun bm!85450 () Bool)

(assert (=> bm!85450 (= call!85454 call!85455)))

(declare-fun d!353126 () Bool)

(declare-fun res!552664 () Bool)

(assert (=> d!353126 (=> res!552664 e!789988)))

(assert (=> d!353126 (= res!552664 ((_ is ElementMatch!3433) r!15719))))

(assert (=> d!353126 (= (validRegex!1469 r!15719) e!789988)))

(declare-fun b!1233255 () Bool)

(assert (=> b!1233255 (= e!789987 call!85453)))

(assert (= (and d!353126 (not res!552664)) b!1233251))

(assert (= (and b!1233251 c!206286) b!1233254))

(assert (= (and b!1233251 (not c!206286)) b!1233250))

(assert (= (and b!1233254 res!552665) b!1233247))

(assert (= (and b!1233250 c!206285) b!1233249))

(assert (= (and b!1233250 (not c!206285)) b!1233248))

(assert (= (and b!1233249 res!552666) b!1233252))

(assert (= (and b!1233248 (not res!552667)) b!1233253))

(assert (= (and b!1233253 res!552668) b!1233255))

(assert (= (or b!1233252 b!1233255) bm!85449))

(assert (= (or b!1233249 b!1233253) bm!85450))

(assert (= (or b!1233247 bm!85450) bm!85448))

(declare-fun m!1408933 () Bool)

(assert (=> bm!85448 m!1408933))

(declare-fun m!1408935 () Bool)

(assert (=> bm!85449 m!1408935))

(declare-fun m!1408937 () Bool)

(assert (=> b!1233254 m!1408937))

(assert (=> start!110258 d!353126))

(declare-fun b!1233291 () Bool)

(declare-fun e!790000 () Bool)

(declare-fun tp!352015 () Bool)

(declare-fun tp!352016 () Bool)

(assert (=> b!1233291 (= e!790000 (and tp!352015 tp!352016))))

(declare-fun b!1233289 () Bool)

(declare-fun tp!352018 () Bool)

(declare-fun tp!352017 () Bool)

(assert (=> b!1233289 (= e!790000 (and tp!352018 tp!352017))))

(declare-fun b!1233290 () Bool)

(declare-fun tp!352019 () Bool)

(assert (=> b!1233290 (= e!790000 tp!352019)))

(assert (=> b!1233182 (= tp!351978 e!790000)))

(declare-fun b!1233288 () Bool)

(assert (=> b!1233288 (= e!790000 tp_is_empty!6387)))

(assert (= (and b!1233182 ((_ is ElementMatch!3433) (reg!3762 r!15719))) b!1233288))

(assert (= (and b!1233182 ((_ is Concat!5663) (reg!3762 r!15719))) b!1233289))

(assert (= (and b!1233182 ((_ is Star!3433) (reg!3762 r!15719))) b!1233290))

(assert (= (and b!1233182 ((_ is Union!3433) (reg!3762 r!15719))) b!1233291))

(declare-fun b!1233299 () Bool)

(declare-fun e!790002 () Bool)

(declare-fun tp!352025 () Bool)

(declare-fun tp!352026 () Bool)

(assert (=> b!1233299 (= e!790002 (and tp!352025 tp!352026))))

(declare-fun b!1233297 () Bool)

(declare-fun tp!352028 () Bool)

(declare-fun tp!352027 () Bool)

(assert (=> b!1233297 (= e!790002 (and tp!352028 tp!352027))))

(declare-fun b!1233298 () Bool)

(declare-fun tp!352029 () Bool)

(assert (=> b!1233298 (= e!790002 tp!352029)))

(assert (=> b!1233179 (= tp!351977 e!790002)))

(declare-fun b!1233296 () Bool)

(assert (=> b!1233296 (= e!790002 tp_is_empty!6387)))

(assert (= (and b!1233179 ((_ is ElementMatch!3433) (regOne!7378 r!15719))) b!1233296))

(assert (= (and b!1233179 ((_ is Concat!5663) (regOne!7378 r!15719))) b!1233297))

(assert (= (and b!1233179 ((_ is Star!3433) (regOne!7378 r!15719))) b!1233298))

(assert (= (and b!1233179 ((_ is Union!3433) (regOne!7378 r!15719))) b!1233299))

(declare-fun b!1233307 () Bool)

(declare-fun e!790004 () Bool)

(declare-fun tp!352035 () Bool)

(declare-fun tp!352036 () Bool)

(assert (=> b!1233307 (= e!790004 (and tp!352035 tp!352036))))

(declare-fun b!1233305 () Bool)

(declare-fun tp!352038 () Bool)

(declare-fun tp!352037 () Bool)

(assert (=> b!1233305 (= e!790004 (and tp!352038 tp!352037))))

(declare-fun b!1233306 () Bool)

(declare-fun tp!352039 () Bool)

(assert (=> b!1233306 (= e!790004 tp!352039)))

(assert (=> b!1233179 (= tp!351979 e!790004)))

(declare-fun b!1233304 () Bool)

(assert (=> b!1233304 (= e!790004 tp_is_empty!6387)))

(assert (= (and b!1233179 ((_ is ElementMatch!3433) (regTwo!7378 r!15719))) b!1233304))

(assert (= (and b!1233179 ((_ is Concat!5663) (regTwo!7378 r!15719))) b!1233305))

(assert (= (and b!1233179 ((_ is Star!3433) (regTwo!7378 r!15719))) b!1233306))

(assert (= (and b!1233179 ((_ is Union!3433) (regTwo!7378 r!15719))) b!1233307))

(declare-fun b!1233311 () Bool)

(declare-fun e!790005 () Bool)

(declare-fun tp!352040 () Bool)

(declare-fun tp!352041 () Bool)

(assert (=> b!1233311 (= e!790005 (and tp!352040 tp!352041))))

(declare-fun b!1233309 () Bool)

(declare-fun tp!352043 () Bool)

(declare-fun tp!352042 () Bool)

(assert (=> b!1233309 (= e!790005 (and tp!352043 tp!352042))))

(declare-fun b!1233310 () Bool)

(declare-fun tp!352044 () Bool)

(assert (=> b!1233310 (= e!790005 tp!352044)))

(assert (=> b!1233178 (= tp!351975 e!790005)))

(declare-fun b!1233308 () Bool)

(assert (=> b!1233308 (= e!790005 tp_is_empty!6387)))

(assert (= (and b!1233178 ((_ is ElementMatch!3433) (regOne!7379 r!15719))) b!1233308))

(assert (= (and b!1233178 ((_ is Concat!5663) (regOne!7379 r!15719))) b!1233309))

(assert (= (and b!1233178 ((_ is Star!3433) (regOne!7379 r!15719))) b!1233310))

(assert (= (and b!1233178 ((_ is Union!3433) (regOne!7379 r!15719))) b!1233311))

(declare-fun b!1233315 () Bool)

(declare-fun e!790006 () Bool)

(declare-fun tp!352045 () Bool)

(declare-fun tp!352046 () Bool)

(assert (=> b!1233315 (= e!790006 (and tp!352045 tp!352046))))

(declare-fun b!1233313 () Bool)

(declare-fun tp!352048 () Bool)

(declare-fun tp!352047 () Bool)

(assert (=> b!1233313 (= e!790006 (and tp!352048 tp!352047))))

(declare-fun b!1233314 () Bool)

(declare-fun tp!352049 () Bool)

(assert (=> b!1233314 (= e!790006 tp!352049)))

(assert (=> b!1233178 (= tp!351976 e!790006)))

(declare-fun b!1233312 () Bool)

(assert (=> b!1233312 (= e!790006 tp_is_empty!6387)))

(assert (= (and b!1233178 ((_ is ElementMatch!3433) (regTwo!7379 r!15719))) b!1233312))

(assert (= (and b!1233178 ((_ is Concat!5663) (regTwo!7379 r!15719))) b!1233313))

(assert (= (and b!1233178 ((_ is Star!3433) (regTwo!7379 r!15719))) b!1233314))

(assert (= (and b!1233178 ((_ is Union!3433) (regTwo!7379 r!15719))) b!1233315))

(check-sat (not b!1233310) (not b!1233298) (not bm!85442) (not b!1233290) (not b!1233305) (not b!1233309) tp_is_empty!6387 (not b!1233297) (not b!1233314) (not b!1233299) (not b!1233289) (not b!1233307) (not b!1233315) (not b!1233291) (not b!1233311) (not bm!85443) (not bm!85449) (not b!1233313) (not bm!85448) (not b!1233254) (not b!1233236) (not b!1233306))
(check-sat)
