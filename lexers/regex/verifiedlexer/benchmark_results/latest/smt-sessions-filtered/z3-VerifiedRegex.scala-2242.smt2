; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110410 () Bool)

(assert start!110410)

(declare-fun res!555119 () Bool)

(declare-fun e!797101 () Bool)

(assert (=> start!110410 (=> (not res!555119) (not e!797101))))

(declare-datatypes ((C!7236 0))(
  ( (C!7237 (val!4148 Int)) )
))
(declare-datatypes ((Regex!3459 0))(
  ( (ElementMatch!3459 (c!207682 C!7236)) (Concat!5689 (regOne!7430 Regex!3459) (regTwo!7430 Regex!3459)) (EmptyExpr!3459) (Star!3459 (reg!3788 Regex!3459)) (EmptyLang!3459) (Union!3459 (regOne!7431 Regex!3459) (regTwo!7431 Regex!3459)) )
))
(declare-fun r!15719 () Regex!3459)

(declare-fun validRegex!1495 (Regex!3459) Bool)

(assert (=> start!110410 (= res!555119 (validRegex!1495 r!15719))))

(assert (=> start!110410 e!797101))

(declare-fun e!797102 () Bool)

(assert (=> start!110410 e!797102))

(declare-fun b!1251934 () Bool)

(declare-fun tp!368777 () Bool)

(declare-fun tp!368776 () Bool)

(assert (=> b!1251934 (= e!797102 (and tp!368777 tp!368776))))

(declare-fun b!1251935 () Bool)

(declare-fun regexDepth!56 (Regex!3459) Int)

(assert (=> b!1251935 (= e!797101 (>= (regexDepth!56 (regTwo!7430 r!15719)) (regexDepth!56 r!15719)))))

(declare-fun lt!420217 () Regex!3459)

(declare-fun removeUselessConcat!512 (Regex!3459) Regex!3459)

(assert (=> b!1251935 (= lt!420217 (removeUselessConcat!512 (regOne!7430 r!15719)))))

(declare-fun b!1251936 () Bool)

(declare-fun tp_is_empty!6439 () Bool)

(assert (=> b!1251936 (= e!797102 tp_is_empty!6439)))

(declare-fun b!1251937 () Bool)

(declare-fun tp!368778 () Bool)

(assert (=> b!1251937 (= e!797102 tp!368778)))

(declare-fun b!1251938 () Bool)

(declare-fun res!555120 () Bool)

(assert (=> b!1251938 (=> (not res!555120) (not e!797101))))

(get-info :version)

(assert (=> b!1251938 (= res!555120 (and (or (not ((_ is Concat!5689) r!15719)) (not ((_ is EmptyExpr!3459) (regOne!7430 r!15719)))) (or (not ((_ is Concat!5689) r!15719)) (not ((_ is EmptyExpr!3459) (regTwo!7430 r!15719)))) ((_ is Concat!5689) r!15719)))))

(declare-fun b!1251939 () Bool)

(declare-fun tp!368775 () Bool)

(declare-fun tp!368779 () Bool)

(assert (=> b!1251939 (= e!797102 (and tp!368775 tp!368779))))

(assert (= (and start!110410 res!555119) b!1251938))

(assert (= (and b!1251938 res!555120) b!1251935))

(assert (= (and start!110410 ((_ is ElementMatch!3459) r!15719)) b!1251936))

(assert (= (and start!110410 ((_ is Concat!5689) r!15719)) b!1251939))

(assert (= (and start!110410 ((_ is Star!3459) r!15719)) b!1251937))

(assert (= (and start!110410 ((_ is Union!3459) r!15719)) b!1251934))

(declare-fun m!1412459 () Bool)

(assert (=> start!110410 m!1412459))

(declare-fun m!1412461 () Bool)

(assert (=> b!1251935 m!1412461))

(declare-fun m!1412463 () Bool)

(assert (=> b!1251935 m!1412463))

(declare-fun m!1412465 () Bool)

(assert (=> b!1251935 m!1412465))

(check-sat (not b!1251935) (not start!110410) (not b!1251934) tp_is_empty!6439 (not b!1251937) (not b!1251939))
(check-sat)
(get-model)

(declare-fun b!1252042 () Bool)

(declare-fun e!797168 () Int)

(declare-fun call!87293 () Int)

(assert (=> b!1252042 (= e!797168 (+ 1 call!87293))))

(declare-fun b!1252043 () Bool)

(declare-fun e!797166 () Int)

(assert (=> b!1252043 (= e!797166 1)))

(declare-fun b!1252044 () Bool)

(declare-fun c!207725 () Bool)

(assert (=> b!1252044 (= c!207725 ((_ is Star!3459) (regTwo!7430 r!15719)))))

(declare-fun e!797164 () Bool)

(declare-fun e!797172 () Bool)

(assert (=> b!1252044 (= e!797164 e!797172)))

(declare-fun bm!87287 () Bool)

(declare-fun call!87298 () Int)

(declare-fun c!207727 () Bool)

(assert (=> bm!87287 (= call!87298 (regexDepth!56 (ite c!207727 (regOne!7431 (regTwo!7430 r!15719)) (regTwo!7430 (regTwo!7430 r!15719)))))))

(declare-fun b!1252045 () Bool)

(declare-fun e!797163 () Bool)

(declare-fun lt!420224 () Int)

(declare-fun call!87292 () Int)

(assert (=> b!1252045 (= e!797163 (> lt!420224 call!87292))))

(declare-fun b!1252046 () Bool)

(declare-fun e!797167 () Int)

(declare-fun call!87294 () Int)

(assert (=> b!1252046 (= e!797167 (+ 1 call!87294))))

(declare-fun b!1252047 () Bool)

(declare-fun c!207729 () Bool)

(assert (=> b!1252047 (= c!207729 ((_ is Union!3459) (regTwo!7430 r!15719)))))

(assert (=> b!1252047 (= e!797168 e!797167)))

(declare-fun bm!87288 () Bool)

(declare-fun call!87297 () Int)

(assert (=> bm!87288 (= call!87297 (regexDepth!56 (ite c!207729 (regTwo!7431 (regTwo!7430 r!15719)) (regTwo!7430 (regTwo!7430 r!15719)))))))

(declare-fun d!354451 () Bool)

(declare-fun e!797169 () Bool)

(assert (=> d!354451 e!797169))

(declare-fun res!555141 () Bool)

(assert (=> d!354451 (=> (not res!555141) (not e!797169))))

(assert (=> d!354451 (= res!555141 (> lt!420224 0))))

(declare-fun e!797171 () Int)

(assert (=> d!354451 (= lt!420224 e!797171)))

(declare-fun c!207728 () Bool)

(assert (=> d!354451 (= c!207728 ((_ is ElementMatch!3459) (regTwo!7430 r!15719)))))

(assert (=> d!354451 (= (regexDepth!56 (regTwo!7430 r!15719)) lt!420224)))

(declare-fun c!207730 () Bool)

(declare-fun bm!87289 () Bool)

(assert (=> bm!87289 (= call!87293 (regexDepth!56 (ite c!207730 (reg!3788 (regTwo!7430 r!15719)) (ite c!207729 (regOne!7431 (regTwo!7430 r!15719)) (regOne!7430 (regTwo!7430 r!15719))))))))

(declare-fun b!1252048 () Bool)

(declare-fun e!797165 () Bool)

(assert (=> b!1252048 (= e!797165 e!797164)))

(declare-fun c!207731 () Bool)

(assert (=> b!1252048 (= c!207731 ((_ is Concat!5689) (regTwo!7430 r!15719)))))

(declare-fun b!1252049 () Bool)

(declare-fun e!797170 () Bool)

(assert (=> b!1252049 (= e!797170 (> lt!420224 call!87298))))

(declare-fun b!1252050 () Bool)

(declare-fun call!87295 () Int)

(assert (=> b!1252050 (= e!797172 (> lt!420224 call!87295))))

(declare-fun b!1252051 () Bool)

(assert (=> b!1252051 (= e!797166 (+ 1 call!87294))))

(declare-fun b!1252052 () Bool)

(assert (=> b!1252052 (= e!797167 e!797166)))

(declare-fun c!207726 () Bool)

(assert (=> b!1252052 (= c!207726 ((_ is Concat!5689) (regTwo!7430 r!15719)))))

(declare-fun b!1252053 () Bool)

(assert (=> b!1252053 (= e!797171 1)))

(declare-fun b!1252054 () Bool)

(declare-fun res!555140 () Bool)

(assert (=> b!1252054 (=> (not res!555140) (not e!797170))))

(assert (=> b!1252054 (= res!555140 (> lt!420224 call!87295))))

(assert (=> b!1252054 (= e!797164 e!797170)))

(declare-fun b!1252055 () Bool)

(assert (=> b!1252055 (= e!797171 e!797168)))

(assert (=> b!1252055 (= c!207730 ((_ is Star!3459) (regTwo!7430 r!15719)))))

(declare-fun bm!87290 () Bool)

(assert (=> bm!87290 (= call!87295 call!87292)))

(declare-fun b!1252056 () Bool)

(assert (=> b!1252056 (= e!797165 e!797163)))

(declare-fun res!555139 () Bool)

(assert (=> b!1252056 (= res!555139 (> lt!420224 call!87298))))

(assert (=> b!1252056 (=> (not res!555139) (not e!797163))))

(declare-fun bm!87291 () Bool)

(assert (=> bm!87291 (= call!87292 (regexDepth!56 (ite c!207727 (regTwo!7431 (regTwo!7430 r!15719)) (ite c!207731 (regOne!7430 (regTwo!7430 r!15719)) (reg!3788 (regTwo!7430 r!15719))))))))

(declare-fun bm!87292 () Bool)

(declare-fun call!87296 () Int)

(assert (=> bm!87292 (= call!87296 call!87293)))

(declare-fun b!1252057 () Bool)

(assert (=> b!1252057 (= e!797172 (= lt!420224 1))))

(declare-fun bm!87293 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!87293 (= call!87294 (maxBigInt!0 call!87296 call!87297))))

(declare-fun b!1252058 () Bool)

(assert (=> b!1252058 (= e!797169 e!797165)))

(assert (=> b!1252058 (= c!207727 ((_ is Union!3459) (regTwo!7430 r!15719)))))

(assert (= (and d!354451 c!207728) b!1252053))

(assert (= (and d!354451 (not c!207728)) b!1252055))

(assert (= (and b!1252055 c!207730) b!1252042))

(assert (= (and b!1252055 (not c!207730)) b!1252047))

(assert (= (and b!1252047 c!207729) b!1252046))

(assert (= (and b!1252047 (not c!207729)) b!1252052))

(assert (= (and b!1252052 c!207726) b!1252051))

(assert (= (and b!1252052 (not c!207726)) b!1252043))

(assert (= (or b!1252046 b!1252051) bm!87292))

(assert (= (or b!1252046 b!1252051) bm!87288))

(assert (= (or b!1252046 b!1252051) bm!87293))

(assert (= (or b!1252042 bm!87292) bm!87289))

(assert (= (and d!354451 res!555141) b!1252058))

(assert (= (and b!1252058 c!207727) b!1252056))

(assert (= (and b!1252058 (not c!207727)) b!1252048))

(assert (= (and b!1252056 res!555139) b!1252045))

(assert (= (and b!1252048 c!207731) b!1252054))

(assert (= (and b!1252048 (not c!207731)) b!1252044))

(assert (= (and b!1252054 res!555140) b!1252049))

(assert (= (and b!1252044 c!207725) b!1252050))

(assert (= (and b!1252044 (not c!207725)) b!1252057))

(assert (= (or b!1252054 b!1252050) bm!87290))

(assert (= (or b!1252056 b!1252049) bm!87287))

(assert (= (or b!1252045 bm!87290) bm!87291))

(declare-fun m!1412487 () Bool)

(assert (=> bm!87293 m!1412487))

(declare-fun m!1412489 () Bool)

(assert (=> bm!87287 m!1412489))

(declare-fun m!1412491 () Bool)

(assert (=> bm!87289 m!1412491))

(declare-fun m!1412493 () Bool)

(assert (=> bm!87291 m!1412493))

(declare-fun m!1412495 () Bool)

(assert (=> bm!87288 m!1412495))

(assert (=> b!1251935 d!354451))

(declare-fun b!1252059 () Bool)

(declare-fun e!797178 () Int)

(declare-fun call!87300 () Int)

(assert (=> b!1252059 (= e!797178 (+ 1 call!87300))))

(declare-fun b!1252060 () Bool)

(declare-fun e!797176 () Int)

(assert (=> b!1252060 (= e!797176 1)))

(declare-fun b!1252061 () Bool)

(declare-fun c!207732 () Bool)

(assert (=> b!1252061 (= c!207732 ((_ is Star!3459) r!15719))))

(declare-fun e!797174 () Bool)

(declare-fun e!797182 () Bool)

(assert (=> b!1252061 (= e!797174 e!797182)))

(declare-fun bm!87294 () Bool)

(declare-fun call!87305 () Int)

(declare-fun c!207734 () Bool)

(assert (=> bm!87294 (= call!87305 (regexDepth!56 (ite c!207734 (regOne!7431 r!15719) (regTwo!7430 r!15719))))))

(declare-fun b!1252062 () Bool)

(declare-fun e!797173 () Bool)

(declare-fun lt!420225 () Int)

(declare-fun call!87299 () Int)

(assert (=> b!1252062 (= e!797173 (> lt!420225 call!87299))))

(declare-fun b!1252063 () Bool)

(declare-fun e!797177 () Int)

(declare-fun call!87301 () Int)

(assert (=> b!1252063 (= e!797177 (+ 1 call!87301))))

(declare-fun b!1252064 () Bool)

(declare-fun c!207736 () Bool)

(assert (=> b!1252064 (= c!207736 ((_ is Union!3459) r!15719))))

(assert (=> b!1252064 (= e!797178 e!797177)))

(declare-fun bm!87295 () Bool)

(declare-fun call!87304 () Int)

(assert (=> bm!87295 (= call!87304 (regexDepth!56 (ite c!207736 (regTwo!7431 r!15719) (regTwo!7430 r!15719))))))

(declare-fun d!354457 () Bool)

(declare-fun e!797179 () Bool)

(assert (=> d!354457 e!797179))

(declare-fun res!555144 () Bool)

(assert (=> d!354457 (=> (not res!555144) (not e!797179))))

(assert (=> d!354457 (= res!555144 (> lt!420225 0))))

(declare-fun e!797181 () Int)

(assert (=> d!354457 (= lt!420225 e!797181)))

(declare-fun c!207735 () Bool)

(assert (=> d!354457 (= c!207735 ((_ is ElementMatch!3459) r!15719))))

(assert (=> d!354457 (= (regexDepth!56 r!15719) lt!420225)))

(declare-fun c!207737 () Bool)

(declare-fun bm!87296 () Bool)

(assert (=> bm!87296 (= call!87300 (regexDepth!56 (ite c!207737 (reg!3788 r!15719) (ite c!207736 (regOne!7431 r!15719) (regOne!7430 r!15719)))))))

(declare-fun b!1252065 () Bool)

(declare-fun e!797175 () Bool)

(assert (=> b!1252065 (= e!797175 e!797174)))

(declare-fun c!207738 () Bool)

(assert (=> b!1252065 (= c!207738 ((_ is Concat!5689) r!15719))))

(declare-fun b!1252066 () Bool)

(declare-fun e!797180 () Bool)

(assert (=> b!1252066 (= e!797180 (> lt!420225 call!87305))))

(declare-fun b!1252067 () Bool)

(declare-fun call!87302 () Int)

(assert (=> b!1252067 (= e!797182 (> lt!420225 call!87302))))

(declare-fun b!1252068 () Bool)

(assert (=> b!1252068 (= e!797176 (+ 1 call!87301))))

(declare-fun b!1252069 () Bool)

(assert (=> b!1252069 (= e!797177 e!797176)))

(declare-fun c!207733 () Bool)

(assert (=> b!1252069 (= c!207733 ((_ is Concat!5689) r!15719))))

(declare-fun b!1252070 () Bool)

(assert (=> b!1252070 (= e!797181 1)))

(declare-fun b!1252071 () Bool)

(declare-fun res!555143 () Bool)

(assert (=> b!1252071 (=> (not res!555143) (not e!797180))))

(assert (=> b!1252071 (= res!555143 (> lt!420225 call!87302))))

(assert (=> b!1252071 (= e!797174 e!797180)))

(declare-fun b!1252072 () Bool)

(assert (=> b!1252072 (= e!797181 e!797178)))

(assert (=> b!1252072 (= c!207737 ((_ is Star!3459) r!15719))))

(declare-fun bm!87297 () Bool)

(assert (=> bm!87297 (= call!87302 call!87299)))

(declare-fun b!1252073 () Bool)

(assert (=> b!1252073 (= e!797175 e!797173)))

(declare-fun res!555142 () Bool)

(assert (=> b!1252073 (= res!555142 (> lt!420225 call!87305))))

(assert (=> b!1252073 (=> (not res!555142) (not e!797173))))

(declare-fun bm!87298 () Bool)

(assert (=> bm!87298 (= call!87299 (regexDepth!56 (ite c!207734 (regTwo!7431 r!15719) (ite c!207738 (regOne!7430 r!15719) (reg!3788 r!15719)))))))

(declare-fun bm!87299 () Bool)

(declare-fun call!87303 () Int)

(assert (=> bm!87299 (= call!87303 call!87300)))

(declare-fun b!1252074 () Bool)

(assert (=> b!1252074 (= e!797182 (= lt!420225 1))))

(declare-fun bm!87300 () Bool)

(assert (=> bm!87300 (= call!87301 (maxBigInt!0 call!87303 call!87304))))

(declare-fun b!1252075 () Bool)

(assert (=> b!1252075 (= e!797179 e!797175)))

(assert (=> b!1252075 (= c!207734 ((_ is Union!3459) r!15719))))

(assert (= (and d!354457 c!207735) b!1252070))

(assert (= (and d!354457 (not c!207735)) b!1252072))

(assert (= (and b!1252072 c!207737) b!1252059))

(assert (= (and b!1252072 (not c!207737)) b!1252064))

(assert (= (and b!1252064 c!207736) b!1252063))

(assert (= (and b!1252064 (not c!207736)) b!1252069))

(assert (= (and b!1252069 c!207733) b!1252068))

(assert (= (and b!1252069 (not c!207733)) b!1252060))

(assert (= (or b!1252063 b!1252068) bm!87299))

(assert (= (or b!1252063 b!1252068) bm!87295))

(assert (= (or b!1252063 b!1252068) bm!87300))

(assert (= (or b!1252059 bm!87299) bm!87296))

(assert (= (and d!354457 res!555144) b!1252075))

(assert (= (and b!1252075 c!207734) b!1252073))

(assert (= (and b!1252075 (not c!207734)) b!1252065))

(assert (= (and b!1252073 res!555142) b!1252062))

(assert (= (and b!1252065 c!207738) b!1252071))

(assert (= (and b!1252065 (not c!207738)) b!1252061))

(assert (= (and b!1252071 res!555143) b!1252066))

(assert (= (and b!1252061 c!207732) b!1252067))

(assert (= (and b!1252061 (not c!207732)) b!1252074))

(assert (= (or b!1252071 b!1252067) bm!87297))

(assert (= (or b!1252073 b!1252066) bm!87294))

(assert (= (or b!1252062 bm!87297) bm!87298))

(declare-fun m!1412497 () Bool)

(assert (=> bm!87300 m!1412497))

(declare-fun m!1412499 () Bool)

(assert (=> bm!87294 m!1412499))

(declare-fun m!1412501 () Bool)

(assert (=> bm!87296 m!1412501))

(declare-fun m!1412503 () Bool)

(assert (=> bm!87298 m!1412503))

(declare-fun m!1412505 () Bool)

(assert (=> bm!87295 m!1412505))

(assert (=> b!1251935 d!354457))

(declare-fun d!354459 () Bool)

(declare-fun e!797218 () Bool)

(assert (=> d!354459 e!797218))

(declare-fun res!555150 () Bool)

(assert (=> d!354459 (=> (not res!555150) (not e!797218))))

(declare-fun lt!420231 () Regex!3459)

(assert (=> d!354459 (= res!555150 (validRegex!1495 lt!420231))))

(declare-fun e!797216 () Regex!3459)

(assert (=> d!354459 (= lt!420231 e!797216)))

(declare-fun c!207768 () Bool)

(assert (=> d!354459 (= c!207768 (and ((_ is Concat!5689) (regOne!7430 r!15719)) ((_ is EmptyExpr!3459) (regOne!7430 (regOne!7430 r!15719)))))))

(assert (=> d!354459 (validRegex!1495 (regOne!7430 r!15719))))

(assert (=> d!354459 (= (removeUselessConcat!512 (regOne!7430 r!15719)) lt!420231)))

(declare-fun bm!87326 () Bool)

(declare-fun call!87332 () Regex!3459)

(declare-fun call!87333 () Regex!3459)

(assert (=> bm!87326 (= call!87332 call!87333)))

(declare-fun b!1252131 () Bool)

(assert (=> b!1252131 (= e!797216 call!87333)))

(declare-fun b!1252132 () Bool)

(declare-fun e!797215 () Regex!3459)

(declare-fun call!87334 () Regex!3459)

(assert (=> b!1252132 (= e!797215 (Star!3459 call!87334))))

(declare-fun b!1252133 () Bool)

(declare-fun e!797217 () Regex!3459)

(declare-fun call!87335 () Regex!3459)

(assert (=> b!1252133 (= e!797217 (Union!3459 call!87334 call!87335))))

(declare-fun b!1252134 () Bool)

(declare-fun e!797213 () Regex!3459)

(assert (=> b!1252134 (= e!797213 e!797217)))

(declare-fun c!207765 () Bool)

(assert (=> b!1252134 (= c!207765 ((_ is Union!3459) (regOne!7430 r!15719)))))

(declare-fun b!1252135 () Bool)

(assert (=> b!1252135 (= e!797215 (regOne!7430 r!15719))))

(declare-fun b!1252136 () Bool)

(declare-fun nullable!1096 (Regex!3459) Bool)

(assert (=> b!1252136 (= e!797218 (= (nullable!1096 lt!420231) (nullable!1096 (regOne!7430 r!15719))))))

(declare-fun b!1252137 () Bool)

(declare-fun c!207764 () Bool)

(assert (=> b!1252137 (= c!207764 ((_ is Star!3459) (regOne!7430 r!15719)))))

(assert (=> b!1252137 (= e!797217 e!797215)))

(declare-fun b!1252138 () Bool)

(declare-fun e!797214 () Regex!3459)

(assert (=> b!1252138 (= e!797214 call!87332)))

(declare-fun c!207767 () Bool)

(declare-fun bm!87327 () Bool)

(declare-fun c!207766 () Bool)

(assert (=> bm!87327 (= call!87333 (removeUselessConcat!512 (ite c!207768 (regTwo!7430 (regOne!7430 r!15719)) (ite c!207767 (regOne!7430 (regOne!7430 r!15719)) (ite c!207766 (regTwo!7430 (regOne!7430 r!15719)) (regTwo!7431 (regOne!7430 r!15719)))))))))

(declare-fun b!1252139 () Bool)

(assert (=> b!1252139 (= c!207766 ((_ is Concat!5689) (regOne!7430 r!15719)))))

(assert (=> b!1252139 (= e!797214 e!797213)))

(declare-fun bm!87328 () Bool)

(assert (=> bm!87328 (= call!87335 call!87332)))

(declare-fun b!1252140 () Bool)

(declare-fun call!87331 () Regex!3459)

(assert (=> b!1252140 (= e!797213 (Concat!5689 call!87331 call!87335))))

(declare-fun b!1252141 () Bool)

(assert (=> b!1252141 (= e!797216 e!797214)))

(assert (=> b!1252141 (= c!207767 (and ((_ is Concat!5689) (regOne!7430 r!15719)) ((_ is EmptyExpr!3459) (regTwo!7430 (regOne!7430 r!15719)))))))

(declare-fun bm!87329 () Bool)

(assert (=> bm!87329 (= call!87331 (removeUselessConcat!512 (ite c!207766 (regOne!7430 (regOne!7430 r!15719)) (ite c!207765 (regOne!7431 (regOne!7430 r!15719)) (reg!3788 (regOne!7430 r!15719))))))))

(declare-fun bm!87330 () Bool)

(assert (=> bm!87330 (= call!87334 call!87331)))

(assert (= (and d!354459 c!207768) b!1252131))

(assert (= (and d!354459 (not c!207768)) b!1252141))

(assert (= (and b!1252141 c!207767) b!1252138))

(assert (= (and b!1252141 (not c!207767)) b!1252139))

(assert (= (and b!1252139 c!207766) b!1252140))

(assert (= (and b!1252139 (not c!207766)) b!1252134))

(assert (= (and b!1252134 c!207765) b!1252133))

(assert (= (and b!1252134 (not c!207765)) b!1252137))

(assert (= (and b!1252137 c!207764) b!1252132))

(assert (= (and b!1252137 (not c!207764)) b!1252135))

(assert (= (or b!1252133 b!1252132) bm!87330))

(assert (= (or b!1252140 bm!87330) bm!87329))

(assert (= (or b!1252140 b!1252133) bm!87328))

(assert (= (or b!1252138 bm!87328) bm!87326))

(assert (= (or b!1252131 bm!87326) bm!87327))

(assert (= (and d!354459 res!555150) b!1252136))

(declare-fun m!1412519 () Bool)

(assert (=> d!354459 m!1412519))

(declare-fun m!1412521 () Bool)

(assert (=> d!354459 m!1412521))

(declare-fun m!1412523 () Bool)

(assert (=> b!1252136 m!1412523))

(declare-fun m!1412525 () Bool)

(assert (=> b!1252136 m!1412525))

(declare-fun m!1412527 () Bool)

(assert (=> bm!87327 m!1412527))

(declare-fun m!1412529 () Bool)

(assert (=> bm!87329 m!1412529))

(assert (=> b!1251935 d!354459))

(declare-fun b!1252201 () Bool)

(declare-fun e!797258 () Bool)

(declare-fun call!87351 () Bool)

(assert (=> b!1252201 (= e!797258 call!87351)))

(declare-fun bm!87346 () Bool)

(declare-fun call!87353 () Bool)

(declare-fun c!207780 () Bool)

(assert (=> bm!87346 (= call!87353 (validRegex!1495 (ite c!207780 (regOne!7431 r!15719) (regOne!7430 r!15719))))))

(declare-fun call!87352 () Bool)

(declare-fun bm!87347 () Bool)

(declare-fun c!207779 () Bool)

(assert (=> bm!87347 (= call!87352 (validRegex!1495 (ite c!207779 (reg!3788 r!15719) (ite c!207780 (regTwo!7431 r!15719) (regTwo!7430 r!15719)))))))

(declare-fun bm!87348 () Bool)

(assert (=> bm!87348 (= call!87351 call!87352)))

(declare-fun b!1252202 () Bool)

(declare-fun e!797261 () Bool)

(declare-fun e!797260 () Bool)

(assert (=> b!1252202 (= e!797261 e!797260)))

(assert (=> b!1252202 (= c!207780 ((_ is Union!3459) r!15719))))

(declare-fun b!1252203 () Bool)

(declare-fun res!555179 () Bool)

(declare-fun e!797262 () Bool)

(assert (=> b!1252203 (=> res!555179 e!797262)))

(assert (=> b!1252203 (= res!555179 (not ((_ is Concat!5689) r!15719)))))

(assert (=> b!1252203 (= e!797260 e!797262)))

(declare-fun b!1252204 () Bool)

(declare-fun res!555180 () Bool)

(assert (=> b!1252204 (=> (not res!555180) (not e!797258))))

(assert (=> b!1252204 (= res!555180 call!87353)))

(assert (=> b!1252204 (= e!797260 e!797258)))

(declare-fun b!1252205 () Bool)

(declare-fun e!797257 () Bool)

(assert (=> b!1252205 (= e!797257 call!87351)))

(declare-fun b!1252206 () Bool)

(declare-fun e!797259 () Bool)

(assert (=> b!1252206 (= e!797259 call!87352)))

(declare-fun b!1252208 () Bool)

(assert (=> b!1252208 (= e!797262 e!797257)))

(declare-fun res!555176 () Bool)

(assert (=> b!1252208 (=> (not res!555176) (not e!797257))))

(assert (=> b!1252208 (= res!555176 call!87353)))

(declare-fun b!1252209 () Bool)

(assert (=> b!1252209 (= e!797261 e!797259)))

(declare-fun res!555178 () Bool)

(assert (=> b!1252209 (= res!555178 (not (nullable!1096 (reg!3788 r!15719))))))

(assert (=> b!1252209 (=> (not res!555178) (not e!797259))))

(declare-fun b!1252207 () Bool)

(declare-fun e!797263 () Bool)

(assert (=> b!1252207 (= e!797263 e!797261)))

(assert (=> b!1252207 (= c!207779 ((_ is Star!3459) r!15719))))

(declare-fun d!354463 () Bool)

(declare-fun res!555177 () Bool)

(assert (=> d!354463 (=> res!555177 e!797263)))

(assert (=> d!354463 (= res!555177 ((_ is ElementMatch!3459) r!15719))))

(assert (=> d!354463 (= (validRegex!1495 r!15719) e!797263)))

(assert (= (and d!354463 (not res!555177)) b!1252207))

(assert (= (and b!1252207 c!207779) b!1252209))

(assert (= (and b!1252207 (not c!207779)) b!1252202))

(assert (= (and b!1252209 res!555178) b!1252206))

(assert (= (and b!1252202 c!207780) b!1252204))

(assert (= (and b!1252202 (not c!207780)) b!1252203))

(assert (= (and b!1252204 res!555180) b!1252201))

(assert (= (and b!1252203 (not res!555179)) b!1252208))

(assert (= (and b!1252208 res!555176) b!1252205))

(assert (= (or b!1252201 b!1252205) bm!87348))

(assert (= (or b!1252204 b!1252208) bm!87346))

(assert (= (or b!1252206 bm!87348) bm!87347))

(declare-fun m!1412537 () Bool)

(assert (=> bm!87346 m!1412537))

(declare-fun m!1412539 () Bool)

(assert (=> bm!87347 m!1412539))

(declare-fun m!1412541 () Bool)

(assert (=> b!1252209 m!1412541))

(assert (=> start!110410 d!354463))

(declare-fun e!797270 () Bool)

(assert (=> b!1251939 (= tp!368775 e!797270)))

(declare-fun b!1252237 () Bool)

(declare-fun tp!368827 () Bool)

(declare-fun tp!368826 () Bool)

(assert (=> b!1252237 (= e!797270 (and tp!368827 tp!368826))))

(declare-fun b!1252236 () Bool)

(assert (=> b!1252236 (= e!797270 tp_is_empty!6439)))

(declare-fun b!1252238 () Bool)

(declare-fun tp!368825 () Bool)

(assert (=> b!1252238 (= e!797270 tp!368825)))

(declare-fun b!1252239 () Bool)

(declare-fun tp!368828 () Bool)

(declare-fun tp!368829 () Bool)

(assert (=> b!1252239 (= e!797270 (and tp!368828 tp!368829))))

(assert (= (and b!1251939 ((_ is ElementMatch!3459) (regOne!7430 r!15719))) b!1252236))

(assert (= (and b!1251939 ((_ is Concat!5689) (regOne!7430 r!15719))) b!1252237))

(assert (= (and b!1251939 ((_ is Star!3459) (regOne!7430 r!15719))) b!1252238))

(assert (= (and b!1251939 ((_ is Union!3459) (regOne!7430 r!15719))) b!1252239))

(declare-fun e!797271 () Bool)

(assert (=> b!1251939 (= tp!368779 e!797271)))

(declare-fun b!1252241 () Bool)

(declare-fun tp!368832 () Bool)

(declare-fun tp!368831 () Bool)

(assert (=> b!1252241 (= e!797271 (and tp!368832 tp!368831))))

(declare-fun b!1252240 () Bool)

(assert (=> b!1252240 (= e!797271 tp_is_empty!6439)))

(declare-fun b!1252242 () Bool)

(declare-fun tp!368830 () Bool)

(assert (=> b!1252242 (= e!797271 tp!368830)))

(declare-fun b!1252243 () Bool)

(declare-fun tp!368833 () Bool)

(declare-fun tp!368834 () Bool)

(assert (=> b!1252243 (= e!797271 (and tp!368833 tp!368834))))

(assert (= (and b!1251939 ((_ is ElementMatch!3459) (regTwo!7430 r!15719))) b!1252240))

(assert (= (and b!1251939 ((_ is Concat!5689) (regTwo!7430 r!15719))) b!1252241))

(assert (= (and b!1251939 ((_ is Star!3459) (regTwo!7430 r!15719))) b!1252242))

(assert (= (and b!1251939 ((_ is Union!3459) (regTwo!7430 r!15719))) b!1252243))

(declare-fun e!797272 () Bool)

(assert (=> b!1251934 (= tp!368777 e!797272)))

(declare-fun b!1252245 () Bool)

(declare-fun tp!368837 () Bool)

(declare-fun tp!368836 () Bool)

(assert (=> b!1252245 (= e!797272 (and tp!368837 tp!368836))))

(declare-fun b!1252244 () Bool)

(assert (=> b!1252244 (= e!797272 tp_is_empty!6439)))

(declare-fun b!1252246 () Bool)

(declare-fun tp!368835 () Bool)

(assert (=> b!1252246 (= e!797272 tp!368835)))

(declare-fun b!1252247 () Bool)

(declare-fun tp!368838 () Bool)

(declare-fun tp!368839 () Bool)

(assert (=> b!1252247 (= e!797272 (and tp!368838 tp!368839))))

(assert (= (and b!1251934 ((_ is ElementMatch!3459) (regOne!7431 r!15719))) b!1252244))

(assert (= (and b!1251934 ((_ is Concat!5689) (regOne!7431 r!15719))) b!1252245))

(assert (= (and b!1251934 ((_ is Star!3459) (regOne!7431 r!15719))) b!1252246))

(assert (= (and b!1251934 ((_ is Union!3459) (regOne!7431 r!15719))) b!1252247))

(declare-fun e!797273 () Bool)

(assert (=> b!1251934 (= tp!368776 e!797273)))

(declare-fun b!1252249 () Bool)

(declare-fun tp!368842 () Bool)

(declare-fun tp!368841 () Bool)

(assert (=> b!1252249 (= e!797273 (and tp!368842 tp!368841))))

(declare-fun b!1252248 () Bool)

(assert (=> b!1252248 (= e!797273 tp_is_empty!6439)))

(declare-fun b!1252250 () Bool)

(declare-fun tp!368840 () Bool)

(assert (=> b!1252250 (= e!797273 tp!368840)))

(declare-fun b!1252251 () Bool)

(declare-fun tp!368843 () Bool)

(declare-fun tp!368844 () Bool)

(assert (=> b!1252251 (= e!797273 (and tp!368843 tp!368844))))

(assert (= (and b!1251934 ((_ is ElementMatch!3459) (regTwo!7431 r!15719))) b!1252248))

(assert (= (and b!1251934 ((_ is Concat!5689) (regTwo!7431 r!15719))) b!1252249))

(assert (= (and b!1251934 ((_ is Star!3459) (regTwo!7431 r!15719))) b!1252250))

(assert (= (and b!1251934 ((_ is Union!3459) (regTwo!7431 r!15719))) b!1252251))

(declare-fun e!797274 () Bool)

(assert (=> b!1251937 (= tp!368778 e!797274)))

(declare-fun b!1252253 () Bool)

(declare-fun tp!368847 () Bool)

(declare-fun tp!368846 () Bool)

(assert (=> b!1252253 (= e!797274 (and tp!368847 tp!368846))))

(declare-fun b!1252252 () Bool)

(assert (=> b!1252252 (= e!797274 tp_is_empty!6439)))

(declare-fun b!1252254 () Bool)

(declare-fun tp!368845 () Bool)

(assert (=> b!1252254 (= e!797274 tp!368845)))

(declare-fun b!1252255 () Bool)

(declare-fun tp!368848 () Bool)

(declare-fun tp!368849 () Bool)

(assert (=> b!1252255 (= e!797274 (and tp!368848 tp!368849))))

(assert (= (and b!1251937 ((_ is ElementMatch!3459) (reg!3788 r!15719))) b!1252252))

(assert (= (and b!1251937 ((_ is Concat!5689) (reg!3788 r!15719))) b!1252253))

(assert (= (and b!1251937 ((_ is Star!3459) (reg!3788 r!15719))) b!1252254))

(assert (= (and b!1251937 ((_ is Union!3459) (reg!3788 r!15719))) b!1252255))

(check-sat (not b!1252251) (not b!1252246) (not b!1252242) (not bm!87298) (not b!1252254) (not bm!87291) (not bm!87296) (not b!1252249) tp_is_empty!6439 (not bm!87346) (not b!1252237) (not b!1252136) (not b!1252238) (not b!1252253) (not bm!87287) (not b!1252250) (not bm!87293) (not bm!87300) (not d!354459) (not bm!87294) (not b!1252241) (not bm!87289) (not bm!87295) (not b!1252243) (not b!1252209) (not b!1252239) (not bm!87288) (not bm!87347) (not bm!87329) (not b!1252255) (not b!1252247) (not b!1252245) (not bm!87327))
(check-sat)
