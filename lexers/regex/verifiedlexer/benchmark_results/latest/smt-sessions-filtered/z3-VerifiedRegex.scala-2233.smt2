; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110294 () Bool)

(assert start!110294)

(declare-fun b!1233916 () Bool)

(declare-fun e!790299 () Bool)

(declare-fun tp!352378 () Bool)

(declare-fun tp!352379 () Bool)

(assert (=> b!1233916 (= e!790299 (and tp!352378 tp!352379))))

(declare-fun b!1233917 () Bool)

(declare-fun e!790300 () Bool)

(declare-datatypes ((C!7200 0))(
  ( (C!7201 (val!4130 Int)) )
))
(declare-datatypes ((Regex!3441 0))(
  ( (ElementMatch!3441 (c!206372 C!7200)) (Concat!5671 (regOne!7394 Regex!3441) (regTwo!7394 Regex!3441)) (EmptyExpr!3441) (Star!3441 (reg!3770 Regex!3441)) (EmptyLang!3441) (Union!3441 (regOne!7395 Regex!3441) (regTwo!7395 Regex!3441)) )
))
(declare-fun r!15719 () Regex!3441)

(declare-fun validRegex!1477 (Regex!3441) Bool)

(assert (=> b!1233917 (= e!790300 (not (validRegex!1477 (regOne!7395 r!15719))))))

(declare-fun b!1233918 () Bool)

(declare-fun tp_is_empty!6403 () Bool)

(assert (=> b!1233918 (= e!790299 tp_is_empty!6403)))

(declare-fun b!1233919 () Bool)

(declare-fun tp!352375 () Bool)

(declare-fun tp!352377 () Bool)

(assert (=> b!1233919 (= e!790299 (and tp!352375 tp!352377))))

(declare-fun b!1233920 () Bool)

(declare-fun tp!352376 () Bool)

(assert (=> b!1233920 (= e!790299 tp!352376)))

(declare-fun b!1233921 () Bool)

(declare-fun res!552842 () Bool)

(assert (=> b!1233921 (=> (not res!552842) (not e!790300))))

(get-info :version)

(assert (=> b!1233921 (= res!552842 (and (or (not ((_ is Concat!5671) r!15719)) (not ((_ is EmptyExpr!3441) (regOne!7394 r!15719)))) (or (not ((_ is Concat!5671) r!15719)) (not ((_ is EmptyExpr!3441) (regTwo!7394 r!15719)))) (not ((_ is Concat!5671) r!15719)) ((_ is Union!3441) r!15719)))))

(declare-fun res!552841 () Bool)

(assert (=> start!110294 (=> (not res!552841) (not e!790300))))

(assert (=> start!110294 (= res!552841 (validRegex!1477 r!15719))))

(assert (=> start!110294 e!790300))

(assert (=> start!110294 e!790299))

(assert (= (and start!110294 res!552841) b!1233921))

(assert (= (and b!1233921 res!552842) b!1233917))

(assert (= (and start!110294 ((_ is ElementMatch!3441) r!15719)) b!1233918))

(assert (= (and start!110294 ((_ is Concat!5671) r!15719)) b!1233919))

(assert (= (and start!110294 ((_ is Star!3441) r!15719)) b!1233920))

(assert (= (and start!110294 ((_ is Union!3441) r!15719)) b!1233916))

(declare-fun m!1409067 () Bool)

(assert (=> b!1233917 m!1409067))

(declare-fun m!1409069 () Bool)

(assert (=> start!110294 m!1409069))

(check-sat (not b!1233919) (not b!1233917) tp_is_empty!6403 (not b!1233920) (not b!1233916) (not start!110294))
(check-sat)
(get-model)

(declare-fun b!1233958 () Bool)

(declare-fun res!552864 () Bool)

(declare-fun e!790331 () Bool)

(assert (=> b!1233958 (=> res!552864 e!790331)))

(assert (=> b!1233958 (= res!552864 (not ((_ is Concat!5671) r!15719)))))

(declare-fun e!790332 () Bool)

(assert (=> b!1233958 (= e!790332 e!790331)))

(declare-fun b!1233959 () Bool)

(declare-fun e!790333 () Bool)

(declare-fun call!85571 () Bool)

(assert (=> b!1233959 (= e!790333 call!85571)))

(declare-fun b!1233960 () Bool)

(declare-fun e!790330 () Bool)

(declare-fun e!790329 () Bool)

(assert (=> b!1233960 (= e!790330 e!790329)))

(declare-fun res!552863 () Bool)

(declare-fun nullable!1078 (Regex!3441) Bool)

(assert (=> b!1233960 (= res!552863 (not (nullable!1078 (reg!3770 r!15719))))))

(assert (=> b!1233960 (=> (not res!552863) (not e!790329))))

(declare-fun bm!85565 () Bool)

(declare-fun call!85570 () Bool)

(declare-fun call!85572 () Bool)

(assert (=> bm!85565 (= call!85570 call!85572)))

(declare-fun b!1233961 () Bool)

(declare-fun e!790334 () Bool)

(assert (=> b!1233961 (= e!790334 call!85571)))

(declare-fun b!1233962 () Bool)

(assert (=> b!1233962 (= e!790329 call!85572)))

(declare-fun d!353160 () Bool)

(declare-fun res!552866 () Bool)

(declare-fun e!790335 () Bool)

(assert (=> d!353160 (=> res!552866 e!790335)))

(assert (=> d!353160 (= res!552866 ((_ is ElementMatch!3441) r!15719))))

(assert (=> d!353160 (= (validRegex!1477 r!15719) e!790335)))

(declare-fun bm!85566 () Bool)

(declare-fun c!206381 () Bool)

(declare-fun c!206382 () Bool)

(assert (=> bm!85566 (= call!85572 (validRegex!1477 (ite c!206381 (reg!3770 r!15719) (ite c!206382 (regOne!7395 r!15719) (regOne!7394 r!15719)))))))

(declare-fun b!1233963 () Bool)

(assert (=> b!1233963 (= e!790335 e!790330)))

(assert (=> b!1233963 (= c!206381 ((_ is Star!3441) r!15719))))

(declare-fun b!1233964 () Bool)

(declare-fun res!552865 () Bool)

(assert (=> b!1233964 (=> (not res!552865) (not e!790333))))

(assert (=> b!1233964 (= res!552865 call!85570)))

(assert (=> b!1233964 (= e!790332 e!790333)))

(declare-fun b!1233965 () Bool)

(assert (=> b!1233965 (= e!790330 e!790332)))

(assert (=> b!1233965 (= c!206382 ((_ is Union!3441) r!15719))))

(declare-fun bm!85567 () Bool)

(assert (=> bm!85567 (= call!85571 (validRegex!1477 (ite c!206382 (regTwo!7395 r!15719) (regTwo!7394 r!15719))))))

(declare-fun b!1233966 () Bool)

(assert (=> b!1233966 (= e!790331 e!790334)))

(declare-fun res!552867 () Bool)

(assert (=> b!1233966 (=> (not res!552867) (not e!790334))))

(assert (=> b!1233966 (= res!552867 call!85570)))

(assert (= (and d!353160 (not res!552866)) b!1233963))

(assert (= (and b!1233963 c!206381) b!1233960))

(assert (= (and b!1233963 (not c!206381)) b!1233965))

(assert (= (and b!1233960 res!552863) b!1233962))

(assert (= (and b!1233965 c!206382) b!1233964))

(assert (= (and b!1233965 (not c!206382)) b!1233958))

(assert (= (and b!1233964 res!552865) b!1233959))

(assert (= (and b!1233958 (not res!552864)) b!1233966))

(assert (= (and b!1233966 res!552867) b!1233961))

(assert (= (or b!1233959 b!1233961) bm!85567))

(assert (= (or b!1233964 b!1233966) bm!85565))

(assert (= (or b!1233962 bm!85565) bm!85566))

(declare-fun m!1409071 () Bool)

(assert (=> b!1233960 m!1409071))

(declare-fun m!1409075 () Bool)

(assert (=> bm!85566 m!1409075))

(declare-fun m!1409079 () Bool)

(assert (=> bm!85567 m!1409079))

(assert (=> start!110294 d!353160))

(declare-fun b!1233976 () Bool)

(declare-fun res!552874 () Bool)

(declare-fun e!790345 () Bool)

(assert (=> b!1233976 (=> res!552874 e!790345)))

(assert (=> b!1233976 (= res!552874 (not ((_ is Concat!5671) (regOne!7395 r!15719))))))

(declare-fun e!790346 () Bool)

(assert (=> b!1233976 (= e!790346 e!790345)))

(declare-fun b!1233977 () Bool)

(declare-fun e!790347 () Bool)

(declare-fun call!85577 () Bool)

(assert (=> b!1233977 (= e!790347 call!85577)))

(declare-fun b!1233978 () Bool)

(declare-fun e!790344 () Bool)

(declare-fun e!790343 () Bool)

(assert (=> b!1233978 (= e!790344 e!790343)))

(declare-fun res!552873 () Bool)

(assert (=> b!1233978 (= res!552873 (not (nullable!1078 (reg!3770 (regOne!7395 r!15719)))))))

(assert (=> b!1233978 (=> (not res!552873) (not e!790343))))

(declare-fun bm!85571 () Bool)

(declare-fun call!85576 () Bool)

(declare-fun call!85578 () Bool)

(assert (=> bm!85571 (= call!85576 call!85578)))

(declare-fun b!1233979 () Bool)

(declare-fun e!790348 () Bool)

(assert (=> b!1233979 (= e!790348 call!85577)))

(declare-fun b!1233980 () Bool)

(assert (=> b!1233980 (= e!790343 call!85578)))

(declare-fun d!353164 () Bool)

(declare-fun res!552876 () Bool)

(declare-fun e!790349 () Bool)

(assert (=> d!353164 (=> res!552876 e!790349)))

(assert (=> d!353164 (= res!552876 ((_ is ElementMatch!3441) (regOne!7395 r!15719)))))

(assert (=> d!353164 (= (validRegex!1477 (regOne!7395 r!15719)) e!790349)))

(declare-fun bm!85572 () Bool)

(declare-fun c!206385 () Bool)

(declare-fun c!206386 () Bool)

(assert (=> bm!85572 (= call!85578 (validRegex!1477 (ite c!206385 (reg!3770 (regOne!7395 r!15719)) (ite c!206386 (regOne!7395 (regOne!7395 r!15719)) (regOne!7394 (regOne!7395 r!15719))))))))

(declare-fun b!1233981 () Bool)

(assert (=> b!1233981 (= e!790349 e!790344)))

(assert (=> b!1233981 (= c!206385 ((_ is Star!3441) (regOne!7395 r!15719)))))

(declare-fun b!1233982 () Bool)

(declare-fun res!552875 () Bool)

(assert (=> b!1233982 (=> (not res!552875) (not e!790347))))

(assert (=> b!1233982 (= res!552875 call!85576)))

(assert (=> b!1233982 (= e!790346 e!790347)))

(declare-fun b!1233983 () Bool)

(assert (=> b!1233983 (= e!790344 e!790346)))

(assert (=> b!1233983 (= c!206386 ((_ is Union!3441) (regOne!7395 r!15719)))))

(declare-fun bm!85573 () Bool)

(assert (=> bm!85573 (= call!85577 (validRegex!1477 (ite c!206386 (regTwo!7395 (regOne!7395 r!15719)) (regTwo!7394 (regOne!7395 r!15719)))))))

(declare-fun b!1233984 () Bool)

(assert (=> b!1233984 (= e!790345 e!790348)))

(declare-fun res!552877 () Bool)

(assert (=> b!1233984 (=> (not res!552877) (not e!790348))))

(assert (=> b!1233984 (= res!552877 call!85576)))

(assert (= (and d!353164 (not res!552876)) b!1233981))

(assert (= (and b!1233981 c!206385) b!1233978))

(assert (= (and b!1233981 (not c!206385)) b!1233983))

(assert (= (and b!1233978 res!552873) b!1233980))

(assert (= (and b!1233983 c!206386) b!1233982))

(assert (= (and b!1233983 (not c!206386)) b!1233976))

(assert (= (and b!1233982 res!552875) b!1233977))

(assert (= (and b!1233976 (not res!552874)) b!1233984))

(assert (= (and b!1233984 res!552877) b!1233979))

(assert (= (or b!1233977 b!1233979) bm!85573))

(assert (= (or b!1233982 b!1233984) bm!85571))

(assert (= (or b!1233980 bm!85571) bm!85572))

(declare-fun m!1409083 () Bool)

(assert (=> b!1233978 m!1409083))

(declare-fun m!1409089 () Bool)

(assert (=> bm!85572 m!1409089))

(declare-fun m!1409091 () Bool)

(assert (=> bm!85573 m!1409091))

(assert (=> b!1233917 d!353164))

(declare-fun e!790361 () Bool)

(assert (=> b!1233916 (= tp!352378 e!790361)))

(declare-fun b!1234016 () Bool)

(declare-fun tp!352401 () Bool)

(assert (=> b!1234016 (= e!790361 tp!352401)))

(declare-fun b!1234017 () Bool)

(declare-fun tp!352400 () Bool)

(declare-fun tp!352404 () Bool)

(assert (=> b!1234017 (= e!790361 (and tp!352400 tp!352404))))

(declare-fun b!1234014 () Bool)

(assert (=> b!1234014 (= e!790361 tp_is_empty!6403)))

(declare-fun b!1234015 () Bool)

(declare-fun tp!352402 () Bool)

(declare-fun tp!352403 () Bool)

(assert (=> b!1234015 (= e!790361 (and tp!352402 tp!352403))))

(assert (= (and b!1233916 ((_ is ElementMatch!3441) (regOne!7395 r!15719))) b!1234014))

(assert (= (and b!1233916 ((_ is Concat!5671) (regOne!7395 r!15719))) b!1234015))

(assert (= (and b!1233916 ((_ is Star!3441) (regOne!7395 r!15719))) b!1234016))

(assert (= (and b!1233916 ((_ is Union!3441) (regOne!7395 r!15719))) b!1234017))

(declare-fun e!790363 () Bool)

(assert (=> b!1233916 (= tp!352379 e!790363)))

(declare-fun b!1234024 () Bool)

(declare-fun tp!352411 () Bool)

(assert (=> b!1234024 (= e!790363 tp!352411)))

(declare-fun b!1234025 () Bool)

(declare-fun tp!352410 () Bool)

(declare-fun tp!352414 () Bool)

(assert (=> b!1234025 (= e!790363 (and tp!352410 tp!352414))))

(declare-fun b!1234022 () Bool)

(assert (=> b!1234022 (= e!790363 tp_is_empty!6403)))

(declare-fun b!1234023 () Bool)

(declare-fun tp!352412 () Bool)

(declare-fun tp!352413 () Bool)

(assert (=> b!1234023 (= e!790363 (and tp!352412 tp!352413))))

(assert (= (and b!1233916 ((_ is ElementMatch!3441) (regTwo!7395 r!15719))) b!1234022))

(assert (= (and b!1233916 ((_ is Concat!5671) (regTwo!7395 r!15719))) b!1234023))

(assert (= (and b!1233916 ((_ is Star!3441) (regTwo!7395 r!15719))) b!1234024))

(assert (= (and b!1233916 ((_ is Union!3441) (regTwo!7395 r!15719))) b!1234025))

(declare-fun e!790365 () Bool)

(assert (=> b!1233919 (= tp!352375 e!790365)))

(declare-fun b!1234032 () Bool)

(declare-fun tp!352421 () Bool)

(assert (=> b!1234032 (= e!790365 tp!352421)))

(declare-fun b!1234033 () Bool)

(declare-fun tp!352420 () Bool)

(declare-fun tp!352424 () Bool)

(assert (=> b!1234033 (= e!790365 (and tp!352420 tp!352424))))

(declare-fun b!1234030 () Bool)

(assert (=> b!1234030 (= e!790365 tp_is_empty!6403)))

(declare-fun b!1234031 () Bool)

(declare-fun tp!352422 () Bool)

(declare-fun tp!352423 () Bool)

(assert (=> b!1234031 (= e!790365 (and tp!352422 tp!352423))))

(assert (= (and b!1233919 ((_ is ElementMatch!3441) (regOne!7394 r!15719))) b!1234030))

(assert (= (and b!1233919 ((_ is Concat!5671) (regOne!7394 r!15719))) b!1234031))

(assert (= (and b!1233919 ((_ is Star!3441) (regOne!7394 r!15719))) b!1234032))

(assert (= (and b!1233919 ((_ is Union!3441) (regOne!7394 r!15719))) b!1234033))

(declare-fun e!790367 () Bool)

(assert (=> b!1233919 (= tp!352377 e!790367)))

(declare-fun b!1234040 () Bool)

(declare-fun tp!352431 () Bool)

(assert (=> b!1234040 (= e!790367 tp!352431)))

(declare-fun b!1234041 () Bool)

(declare-fun tp!352430 () Bool)

(declare-fun tp!352434 () Bool)

(assert (=> b!1234041 (= e!790367 (and tp!352430 tp!352434))))

(declare-fun b!1234038 () Bool)

(assert (=> b!1234038 (= e!790367 tp_is_empty!6403)))

(declare-fun b!1234039 () Bool)

(declare-fun tp!352432 () Bool)

(declare-fun tp!352433 () Bool)

(assert (=> b!1234039 (= e!790367 (and tp!352432 tp!352433))))

(assert (= (and b!1233919 ((_ is ElementMatch!3441) (regTwo!7394 r!15719))) b!1234038))

(assert (= (and b!1233919 ((_ is Concat!5671) (regTwo!7394 r!15719))) b!1234039))

(assert (= (and b!1233919 ((_ is Star!3441) (regTwo!7394 r!15719))) b!1234040))

(assert (= (and b!1233919 ((_ is Union!3441) (regTwo!7394 r!15719))) b!1234041))

(declare-fun e!790369 () Bool)

(assert (=> b!1233920 (= tp!352376 e!790369)))

(declare-fun b!1234048 () Bool)

(declare-fun tp!352441 () Bool)

(assert (=> b!1234048 (= e!790369 tp!352441)))

(declare-fun b!1234049 () Bool)

(declare-fun tp!352440 () Bool)

(declare-fun tp!352444 () Bool)

(assert (=> b!1234049 (= e!790369 (and tp!352440 tp!352444))))

(declare-fun b!1234046 () Bool)

(assert (=> b!1234046 (= e!790369 tp_is_empty!6403)))

(declare-fun b!1234047 () Bool)

(declare-fun tp!352442 () Bool)

(declare-fun tp!352443 () Bool)

(assert (=> b!1234047 (= e!790369 (and tp!352442 tp!352443))))

(assert (= (and b!1233920 ((_ is ElementMatch!3441) (reg!3770 r!15719))) b!1234046))

(assert (= (and b!1233920 ((_ is Concat!5671) (reg!3770 r!15719))) b!1234047))

(assert (= (and b!1233920 ((_ is Star!3441) (reg!3770 r!15719))) b!1234048))

(assert (= (and b!1233920 ((_ is Union!3441) (reg!3770 r!15719))) b!1234049))

(check-sat (not b!1233978) (not b!1234049) (not b!1234033) (not b!1234031) tp_is_empty!6403 (not b!1234041) (not b!1234032) (not b!1234040) (not b!1234048) (not b!1234025) (not bm!85573) (not b!1234015) (not b!1234039) (not b!1234016) (not b!1234024) (not bm!85567) (not b!1234047) (not b!1233960) (not b!1234017) (not bm!85572) (not bm!85566) (not b!1234023))
(check-sat)
