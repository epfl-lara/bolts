; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230344 () Bool)

(assert start!230344)

(declare-fun b!2331231 () Bool)

(declare-fun res!995170 () Bool)

(declare-fun e!1493489 () Bool)

(assert (=> b!2331231 (=> (not res!995170) (not e!1493489))))

(declare-datatypes ((C!13820 0))(
  ( (C!13821 (val!8070 Int)) )
))
(declare-datatypes ((Regex!6831 0))(
  ( (ElementMatch!6831 (c!370359 C!13820)) (Concat!11453 (regOne!14174 Regex!6831) (regTwo!14174 Regex!6831)) (EmptyExpr!6831) (Star!6831 (reg!7160 Regex!6831)) (EmptyLang!6831) (Union!6831 (regOne!14175 Regex!6831) (regTwo!14175 Regex!6831)) )
))
(declare-fun r!26197 () Regex!6831)

(declare-fun nullable!1910 (Regex!6831) Bool)

(assert (=> b!2331231 (= res!995170 (not (nullable!1910 r!26197)))))

(declare-fun b!2331232 () Bool)

(declare-fun e!1493490 () Bool)

(declare-fun tp!738769 () Bool)

(declare-fun tp!738770 () Bool)

(assert (=> b!2331232 (= e!1493490 (and tp!738769 tp!738770))))

(declare-fun res!995171 () Bool)

(assert (=> start!230344 (=> (not res!995171) (not e!1493489))))

(declare-fun validRegex!2576 (Regex!6831) Bool)

(assert (=> start!230344 (= res!995171 (validRegex!2576 r!26197))))

(assert (=> start!230344 e!1493489))

(assert (=> start!230344 e!1493490))

(declare-fun tp_is_empty!10973 () Bool)

(assert (=> start!230344 tp_is_empty!10973))

(declare-fun b!2331233 () Bool)

(assert (=> b!2331233 (= e!1493489 (not (validRegex!2576 (regTwo!14174 r!26197))))))

(declare-fun b!2331234 () Bool)

(declare-fun res!995172 () Bool)

(assert (=> b!2331234 (=> (not res!995172) (not e!1493489))))

(declare-fun c!13498 () C!13820)

(declare-fun derivativeStep!1570 (Regex!6831 C!13820) Regex!6831)

(assert (=> b!2331234 (= res!995172 (not (nullable!1910 (Concat!11453 (derivativeStep!1570 (regOne!14174 r!26197) c!13498) (regTwo!14174 r!26197)))))))

(declare-fun b!2331235 () Bool)

(declare-fun res!995169 () Bool)

(assert (=> b!2331235 (=> (not res!995169) (not e!1493489))))

(assert (=> b!2331235 (= res!995169 (nullable!1910 (regOne!14174 r!26197)))))

(declare-fun b!2331236 () Bool)

(declare-fun res!995173 () Bool)

(assert (=> b!2331236 (=> (not res!995173) (not e!1493489))))

(get-info :version)

(assert (=> b!2331236 (= res!995173 (and (not ((_ is EmptyExpr!6831) r!26197)) (not ((_ is EmptyLang!6831) r!26197)) (not ((_ is ElementMatch!6831) r!26197)) (not ((_ is Union!6831) r!26197)) (not ((_ is Star!6831) r!26197))))))

(declare-fun b!2331237 () Bool)

(declare-fun tp!738771 () Bool)

(declare-fun tp!738768 () Bool)

(assert (=> b!2331237 (= e!1493490 (and tp!738771 tp!738768))))

(declare-fun b!2331238 () Bool)

(assert (=> b!2331238 (= e!1493490 tp_is_empty!10973)))

(declare-fun b!2331239 () Bool)

(declare-fun res!995168 () Bool)

(assert (=> b!2331239 (=> (not res!995168) (not e!1493489))))

(assert (=> b!2331239 (= res!995168 (nullable!1910 (derivativeStep!1570 r!26197 c!13498)))))

(declare-fun b!2331240 () Bool)

(declare-fun tp!738767 () Bool)

(assert (=> b!2331240 (= e!1493490 tp!738767)))

(assert (= (and start!230344 res!995171) b!2331231))

(assert (= (and b!2331231 res!995170) b!2331239))

(assert (= (and b!2331239 res!995168) b!2331236))

(assert (= (and b!2331236 res!995173) b!2331235))

(assert (= (and b!2331235 res!995169) b!2331234))

(assert (= (and b!2331234 res!995172) b!2331233))

(assert (= (and start!230344 ((_ is ElementMatch!6831) r!26197)) b!2331238))

(assert (= (and start!230344 ((_ is Concat!11453) r!26197)) b!2331237))

(assert (= (and start!230344 ((_ is Star!6831) r!26197)) b!2331240))

(assert (= (and start!230344 ((_ is Union!6831) r!26197)) b!2331232))

(declare-fun m!2760895 () Bool)

(assert (=> b!2331233 m!2760895))

(declare-fun m!2760897 () Bool)

(assert (=> b!2331235 m!2760897))

(declare-fun m!2760899 () Bool)

(assert (=> start!230344 m!2760899))

(declare-fun m!2760901 () Bool)

(assert (=> b!2331239 m!2760901))

(assert (=> b!2331239 m!2760901))

(declare-fun m!2760903 () Bool)

(assert (=> b!2331239 m!2760903))

(declare-fun m!2760905 () Bool)

(assert (=> b!2331231 m!2760905))

(declare-fun m!2760907 () Bool)

(assert (=> b!2331234 m!2760907))

(declare-fun m!2760909 () Bool)

(assert (=> b!2331234 m!2760909))

(check-sat (not b!2331232) (not b!2331234) (not b!2331239) (not b!2331231) (not b!2331237) (not b!2331240) (not b!2331235) (not start!230344) (not b!2331233) tp_is_empty!10973)
(check-sat)
(get-model)

(declare-fun b!2331286 () Bool)

(declare-fun res!995201 () Bool)

(declare-fun e!1493528 () Bool)

(assert (=> b!2331286 (=> res!995201 e!1493528)))

(assert (=> b!2331286 (= res!995201 (not ((_ is Concat!11453) r!26197)))))

(declare-fun e!1493530 () Bool)

(assert (=> b!2331286 (= e!1493530 e!1493528)))

(declare-fun b!2331287 () Bool)

(declare-fun e!1493529 () Bool)

(declare-fun call!139161 () Bool)

(assert (=> b!2331287 (= e!1493529 call!139161)))

(declare-fun b!2331288 () Bool)

(declare-fun e!1493526 () Bool)

(assert (=> b!2331288 (= e!1493528 e!1493526)))

(declare-fun res!995199 () Bool)

(assert (=> b!2331288 (=> (not res!995199) (not e!1493526))))

(declare-fun call!139160 () Bool)

(assert (=> b!2331288 (= res!995199 call!139160)))

(declare-fun b!2331289 () Bool)

(declare-fun e!1493532 () Bool)

(assert (=> b!2331289 (= e!1493532 e!1493529)))

(declare-fun res!995200 () Bool)

(assert (=> b!2331289 (= res!995200 (not (nullable!1910 (reg!7160 r!26197))))))

(assert (=> b!2331289 (=> (not res!995200) (not e!1493529))))

(declare-fun d!689949 () Bool)

(declare-fun res!995203 () Bool)

(declare-fun e!1493527 () Bool)

(assert (=> d!689949 (=> res!995203 e!1493527)))

(assert (=> d!689949 (= res!995203 ((_ is ElementMatch!6831) r!26197))))

(assert (=> d!689949 (= (validRegex!2576 r!26197) e!1493527)))

(declare-fun bm!139155 () Bool)

(assert (=> bm!139155 (= call!139160 call!139161)))

(declare-fun b!2331290 () Bool)

(assert (=> b!2331290 (= e!1493532 e!1493530)))

(declare-fun c!370371 () Bool)

(assert (=> b!2331290 (= c!370371 ((_ is Union!6831) r!26197))))

(declare-fun bm!139156 () Bool)

(declare-fun call!139162 () Bool)

(assert (=> bm!139156 (= call!139162 (validRegex!2576 (ite c!370371 (regTwo!14175 r!26197) (regTwo!14174 r!26197))))))

(declare-fun c!370370 () Bool)

(declare-fun bm!139157 () Bool)

(assert (=> bm!139157 (= call!139161 (validRegex!2576 (ite c!370370 (reg!7160 r!26197) (ite c!370371 (regOne!14175 r!26197) (regOne!14174 r!26197)))))))

(declare-fun b!2331291 () Bool)

(assert (=> b!2331291 (= e!1493526 call!139162)))

(declare-fun b!2331292 () Bool)

(declare-fun e!1493531 () Bool)

(assert (=> b!2331292 (= e!1493531 call!139162)))

(declare-fun b!2331293 () Bool)

(assert (=> b!2331293 (= e!1493527 e!1493532)))

(assert (=> b!2331293 (= c!370370 ((_ is Star!6831) r!26197))))

(declare-fun b!2331294 () Bool)

(declare-fun res!995202 () Bool)

(assert (=> b!2331294 (=> (not res!995202) (not e!1493531))))

(assert (=> b!2331294 (= res!995202 call!139160)))

(assert (=> b!2331294 (= e!1493530 e!1493531)))

(assert (= (and d!689949 (not res!995203)) b!2331293))

(assert (= (and b!2331293 c!370370) b!2331289))

(assert (= (and b!2331293 (not c!370370)) b!2331290))

(assert (= (and b!2331289 res!995200) b!2331287))

(assert (= (and b!2331290 c!370371) b!2331294))

(assert (= (and b!2331290 (not c!370371)) b!2331286))

(assert (= (and b!2331294 res!995202) b!2331292))

(assert (= (and b!2331286 (not res!995201)) b!2331288))

(assert (= (and b!2331288 res!995199) b!2331291))

(assert (= (or b!2331292 b!2331291) bm!139156))

(assert (= (or b!2331294 b!2331288) bm!139155))

(assert (= (or b!2331287 bm!139155) bm!139157))

(declare-fun m!2760917 () Bool)

(assert (=> b!2331289 m!2760917))

(declare-fun m!2760921 () Bool)

(assert (=> bm!139156 m!2760921))

(declare-fun m!2760923 () Bool)

(assert (=> bm!139157 m!2760923))

(assert (=> start!230344 d!689949))

(declare-fun b!2331295 () Bool)

(declare-fun res!995206 () Bool)

(declare-fun e!1493535 () Bool)

(assert (=> b!2331295 (=> res!995206 e!1493535)))

(assert (=> b!2331295 (= res!995206 (not ((_ is Concat!11453) (regTwo!14174 r!26197))))))

(declare-fun e!1493537 () Bool)

(assert (=> b!2331295 (= e!1493537 e!1493535)))

(declare-fun b!2331296 () Bool)

(declare-fun e!1493536 () Bool)

(declare-fun call!139164 () Bool)

(assert (=> b!2331296 (= e!1493536 call!139164)))

(declare-fun b!2331297 () Bool)

(declare-fun e!1493533 () Bool)

(assert (=> b!2331297 (= e!1493535 e!1493533)))

(declare-fun res!995204 () Bool)

(assert (=> b!2331297 (=> (not res!995204) (not e!1493533))))

(declare-fun call!139163 () Bool)

(assert (=> b!2331297 (= res!995204 call!139163)))

(declare-fun b!2331298 () Bool)

(declare-fun e!1493539 () Bool)

(assert (=> b!2331298 (= e!1493539 e!1493536)))

(declare-fun res!995205 () Bool)

(assert (=> b!2331298 (= res!995205 (not (nullable!1910 (reg!7160 (regTwo!14174 r!26197)))))))

(assert (=> b!2331298 (=> (not res!995205) (not e!1493536))))

(declare-fun d!689955 () Bool)

(declare-fun res!995208 () Bool)

(declare-fun e!1493534 () Bool)

(assert (=> d!689955 (=> res!995208 e!1493534)))

(assert (=> d!689955 (= res!995208 ((_ is ElementMatch!6831) (regTwo!14174 r!26197)))))

(assert (=> d!689955 (= (validRegex!2576 (regTwo!14174 r!26197)) e!1493534)))

(declare-fun bm!139158 () Bool)

(assert (=> bm!139158 (= call!139163 call!139164)))

(declare-fun b!2331299 () Bool)

(assert (=> b!2331299 (= e!1493539 e!1493537)))

(declare-fun c!370373 () Bool)

(assert (=> b!2331299 (= c!370373 ((_ is Union!6831) (regTwo!14174 r!26197)))))

(declare-fun bm!139159 () Bool)

(declare-fun call!139165 () Bool)

(assert (=> bm!139159 (= call!139165 (validRegex!2576 (ite c!370373 (regTwo!14175 (regTwo!14174 r!26197)) (regTwo!14174 (regTwo!14174 r!26197)))))))

(declare-fun bm!139160 () Bool)

(declare-fun c!370372 () Bool)

(assert (=> bm!139160 (= call!139164 (validRegex!2576 (ite c!370372 (reg!7160 (regTwo!14174 r!26197)) (ite c!370373 (regOne!14175 (regTwo!14174 r!26197)) (regOne!14174 (regTwo!14174 r!26197))))))))

(declare-fun b!2331300 () Bool)

(assert (=> b!2331300 (= e!1493533 call!139165)))

(declare-fun b!2331301 () Bool)

(declare-fun e!1493538 () Bool)

(assert (=> b!2331301 (= e!1493538 call!139165)))

(declare-fun b!2331302 () Bool)

(assert (=> b!2331302 (= e!1493534 e!1493539)))

(assert (=> b!2331302 (= c!370372 ((_ is Star!6831) (regTwo!14174 r!26197)))))

(declare-fun b!2331303 () Bool)

(declare-fun res!995207 () Bool)

(assert (=> b!2331303 (=> (not res!995207) (not e!1493538))))

(assert (=> b!2331303 (= res!995207 call!139163)))

(assert (=> b!2331303 (= e!1493537 e!1493538)))

(assert (= (and d!689955 (not res!995208)) b!2331302))

(assert (= (and b!2331302 c!370372) b!2331298))

(assert (= (and b!2331302 (not c!370372)) b!2331299))

(assert (= (and b!2331298 res!995205) b!2331296))

(assert (= (and b!2331299 c!370373) b!2331303))

(assert (= (and b!2331299 (not c!370373)) b!2331295))

(assert (= (and b!2331303 res!995207) b!2331301))

(assert (= (and b!2331295 (not res!995206)) b!2331297))

(assert (= (and b!2331297 res!995204) b!2331300))

(assert (= (or b!2331301 b!2331300) bm!139159))

(assert (= (or b!2331303 b!2331297) bm!139158))

(assert (= (or b!2331296 bm!139158) bm!139160))

(declare-fun m!2760927 () Bool)

(assert (=> b!2331298 m!2760927))

(declare-fun m!2760929 () Bool)

(assert (=> bm!139159 m!2760929))

(declare-fun m!2760931 () Bool)

(assert (=> bm!139160 m!2760931))

(assert (=> b!2331233 d!689955))

(declare-fun d!689959 () Bool)

(declare-fun nullableFct!473 (Regex!6831) Bool)

(assert (=> d!689959 (= (nullable!1910 (Concat!11453 (derivativeStep!1570 (regOne!14174 r!26197) c!13498) (regTwo!14174 r!26197))) (nullableFct!473 (Concat!11453 (derivativeStep!1570 (regOne!14174 r!26197) c!13498) (regTwo!14174 r!26197))))))

(declare-fun bs!459815 () Bool)

(assert (= bs!459815 d!689959))

(declare-fun m!2760933 () Bool)

(assert (=> bs!459815 m!2760933))

(assert (=> b!2331234 d!689959))

(declare-fun b!2331363 () Bool)

(declare-fun e!1493576 () Regex!6831)

(assert (=> b!2331363 (= e!1493576 (ite (= c!13498 (c!370359 (regOne!14174 r!26197))) EmptyExpr!6831 EmptyLang!6831))))

(declare-fun b!2331364 () Bool)

(declare-fun e!1493574 () Regex!6831)

(assert (=> b!2331364 (= e!1493574 e!1493576)))

(declare-fun c!370403 () Bool)

(assert (=> b!2331364 (= c!370403 ((_ is ElementMatch!6831) (regOne!14174 r!26197)))))

(declare-fun d!689961 () Bool)

(declare-fun lt!862287 () Regex!6831)

(assert (=> d!689961 (validRegex!2576 lt!862287)))

(assert (=> d!689961 (= lt!862287 e!1493574)))

(declare-fun c!370404 () Bool)

(assert (=> d!689961 (= c!370404 (or ((_ is EmptyExpr!6831) (regOne!14174 r!26197)) ((_ is EmptyLang!6831) (regOne!14174 r!26197))))))

(assert (=> d!689961 (validRegex!2576 (regOne!14174 r!26197))))

(assert (=> d!689961 (= (derivativeStep!1570 (regOne!14174 r!26197) c!13498) lt!862287)))

(declare-fun b!2331365 () Bool)

(declare-fun e!1493572 () Regex!6831)

(declare-fun call!139190 () Regex!6831)

(assert (=> b!2331365 (= e!1493572 (Concat!11453 call!139190 (regOne!14174 r!26197)))))

(declare-fun b!2331366 () Bool)

(declare-fun e!1493575 () Regex!6831)

(declare-fun call!139189 () Regex!6831)

(declare-fun call!139192 () Regex!6831)

(assert (=> b!2331366 (= e!1493575 (Union!6831 call!139189 call!139192))))

(declare-fun b!2331367 () Bool)

(assert (=> b!2331367 (= e!1493574 EmptyLang!6831)))

(declare-fun b!2331368 () Bool)

(declare-fun e!1493573 () Regex!6831)

(declare-fun call!139191 () Regex!6831)

(assert (=> b!2331368 (= e!1493573 (Union!6831 (Concat!11453 call!139191 (regTwo!14174 (regOne!14174 r!26197))) EmptyLang!6831))))

(declare-fun bm!139184 () Bool)

(assert (=> bm!139184 (= call!139191 call!139190)))

(declare-fun bm!139185 () Bool)

(declare-fun c!370402 () Bool)

(assert (=> bm!139185 (= call!139189 (derivativeStep!1570 (ite c!370402 (regOne!14175 (regOne!14174 r!26197)) (regTwo!14174 (regOne!14174 r!26197))) c!13498))))

(declare-fun bm!139186 () Bool)

(assert (=> bm!139186 (= call!139190 call!139192)))

(declare-fun b!2331369 () Bool)

(assert (=> b!2331369 (= e!1493573 (Union!6831 (Concat!11453 call!139191 (regTwo!14174 (regOne!14174 r!26197))) call!139189))))

(declare-fun b!2331370 () Bool)

(assert (=> b!2331370 (= c!370402 ((_ is Union!6831) (regOne!14174 r!26197)))))

(assert (=> b!2331370 (= e!1493576 e!1493575)))

(declare-fun b!2331371 () Bool)

(assert (=> b!2331371 (= e!1493575 e!1493572)))

(declare-fun c!370401 () Bool)

(assert (=> b!2331371 (= c!370401 ((_ is Star!6831) (regOne!14174 r!26197)))))

(declare-fun bm!139187 () Bool)

(assert (=> bm!139187 (= call!139192 (derivativeStep!1570 (ite c!370402 (regTwo!14175 (regOne!14174 r!26197)) (ite c!370401 (reg!7160 (regOne!14174 r!26197)) (regOne!14174 (regOne!14174 r!26197)))) c!13498))))

(declare-fun b!2331372 () Bool)

(declare-fun c!370405 () Bool)

(assert (=> b!2331372 (= c!370405 (nullable!1910 (regOne!14174 (regOne!14174 r!26197))))))

(assert (=> b!2331372 (= e!1493572 e!1493573)))

(assert (= (and d!689961 c!370404) b!2331367))

(assert (= (and d!689961 (not c!370404)) b!2331364))

(assert (= (and b!2331364 c!370403) b!2331363))

(assert (= (and b!2331364 (not c!370403)) b!2331370))

(assert (= (and b!2331370 c!370402) b!2331366))

(assert (= (and b!2331370 (not c!370402)) b!2331371))

(assert (= (and b!2331371 c!370401) b!2331365))

(assert (= (and b!2331371 (not c!370401)) b!2331372))

(assert (= (and b!2331372 c!370405) b!2331369))

(assert (= (and b!2331372 (not c!370405)) b!2331368))

(assert (= (or b!2331369 b!2331368) bm!139184))

(assert (= (or b!2331365 bm!139184) bm!139186))

(assert (= (or b!2331366 bm!139186) bm!139187))

(assert (= (or b!2331366 b!2331369) bm!139185))

(declare-fun m!2760951 () Bool)

(assert (=> d!689961 m!2760951))

(declare-fun m!2760953 () Bool)

(assert (=> d!689961 m!2760953))

(declare-fun m!2760955 () Bool)

(assert (=> bm!139185 m!2760955))

(declare-fun m!2760957 () Bool)

(assert (=> bm!139187 m!2760957))

(declare-fun m!2760959 () Bool)

(assert (=> b!2331372 m!2760959))

(assert (=> b!2331234 d!689961))

(declare-fun d!689971 () Bool)

(assert (=> d!689971 (= (nullable!1910 (derivativeStep!1570 r!26197 c!13498)) (nullableFct!473 (derivativeStep!1570 r!26197 c!13498)))))

(declare-fun bs!459818 () Bool)

(assert (= bs!459818 d!689971))

(assert (=> bs!459818 m!2760901))

(declare-fun m!2760961 () Bool)

(assert (=> bs!459818 m!2760961))

(assert (=> b!2331239 d!689971))

(declare-fun b!2331383 () Bool)

(declare-fun e!1493586 () Regex!6831)

(assert (=> b!2331383 (= e!1493586 (ite (= c!13498 (c!370359 r!26197)) EmptyExpr!6831 EmptyLang!6831))))

(declare-fun b!2331384 () Bool)

(declare-fun e!1493584 () Regex!6831)

(assert (=> b!2331384 (= e!1493584 e!1493586)))

(declare-fun c!370413 () Bool)

(assert (=> b!2331384 (= c!370413 ((_ is ElementMatch!6831) r!26197))))

(declare-fun d!689973 () Bool)

(declare-fun lt!862289 () Regex!6831)

(assert (=> d!689973 (validRegex!2576 lt!862289)))

(assert (=> d!689973 (= lt!862289 e!1493584)))

(declare-fun c!370414 () Bool)

(assert (=> d!689973 (= c!370414 (or ((_ is EmptyExpr!6831) r!26197) ((_ is EmptyLang!6831) r!26197)))))

(assert (=> d!689973 (validRegex!2576 r!26197)))

(assert (=> d!689973 (= (derivativeStep!1570 r!26197 c!13498) lt!862289)))

(declare-fun b!2331385 () Bool)

(declare-fun e!1493582 () Regex!6831)

(declare-fun call!139198 () Regex!6831)

(assert (=> b!2331385 (= e!1493582 (Concat!11453 call!139198 r!26197))))

(declare-fun b!2331386 () Bool)

(declare-fun e!1493585 () Regex!6831)

(declare-fun call!139197 () Regex!6831)

(declare-fun call!139200 () Regex!6831)

(assert (=> b!2331386 (= e!1493585 (Union!6831 call!139197 call!139200))))

(declare-fun b!2331387 () Bool)

(assert (=> b!2331387 (= e!1493584 EmptyLang!6831)))

(declare-fun b!2331388 () Bool)

(declare-fun e!1493583 () Regex!6831)

(declare-fun call!139199 () Regex!6831)

(assert (=> b!2331388 (= e!1493583 (Union!6831 (Concat!11453 call!139199 (regTwo!14174 r!26197)) EmptyLang!6831))))

(declare-fun bm!139192 () Bool)

(assert (=> bm!139192 (= call!139199 call!139198)))

(declare-fun bm!139193 () Bool)

(declare-fun c!370412 () Bool)

(assert (=> bm!139193 (= call!139197 (derivativeStep!1570 (ite c!370412 (regOne!14175 r!26197) (regTwo!14174 r!26197)) c!13498))))

(declare-fun bm!139194 () Bool)

(assert (=> bm!139194 (= call!139198 call!139200)))

(declare-fun b!2331389 () Bool)

(assert (=> b!2331389 (= e!1493583 (Union!6831 (Concat!11453 call!139199 (regTwo!14174 r!26197)) call!139197))))

(declare-fun b!2331390 () Bool)

(assert (=> b!2331390 (= c!370412 ((_ is Union!6831) r!26197))))

(assert (=> b!2331390 (= e!1493586 e!1493585)))

(declare-fun b!2331391 () Bool)

(assert (=> b!2331391 (= e!1493585 e!1493582)))

(declare-fun c!370411 () Bool)

(assert (=> b!2331391 (= c!370411 ((_ is Star!6831) r!26197))))

(declare-fun bm!139195 () Bool)

(assert (=> bm!139195 (= call!139200 (derivativeStep!1570 (ite c!370412 (regTwo!14175 r!26197) (ite c!370411 (reg!7160 r!26197) (regOne!14174 r!26197))) c!13498))))

(declare-fun b!2331392 () Bool)

(declare-fun c!370415 () Bool)

(assert (=> b!2331392 (= c!370415 (nullable!1910 (regOne!14174 r!26197)))))

(assert (=> b!2331392 (= e!1493582 e!1493583)))

(assert (= (and d!689973 c!370414) b!2331387))

(assert (= (and d!689973 (not c!370414)) b!2331384))

(assert (= (and b!2331384 c!370413) b!2331383))

(assert (= (and b!2331384 (not c!370413)) b!2331390))

(assert (= (and b!2331390 c!370412) b!2331386))

(assert (= (and b!2331390 (not c!370412)) b!2331391))

(assert (= (and b!2331391 c!370411) b!2331385))

(assert (= (and b!2331391 (not c!370411)) b!2331392))

(assert (= (and b!2331392 c!370415) b!2331389))

(assert (= (and b!2331392 (not c!370415)) b!2331388))

(assert (= (or b!2331389 b!2331388) bm!139192))

(assert (= (or b!2331385 bm!139192) bm!139194))

(assert (= (or b!2331386 bm!139194) bm!139195))

(assert (= (or b!2331386 b!2331389) bm!139193))

(declare-fun m!2760973 () Bool)

(assert (=> d!689973 m!2760973))

(assert (=> d!689973 m!2760899))

(declare-fun m!2760975 () Bool)

(assert (=> bm!139193 m!2760975))

(declare-fun m!2760977 () Bool)

(assert (=> bm!139195 m!2760977))

(assert (=> b!2331392 m!2760897))

(assert (=> b!2331239 d!689973))

(declare-fun d!689975 () Bool)

(assert (=> d!689975 (= (nullable!1910 r!26197) (nullableFct!473 r!26197))))

(declare-fun bs!459819 () Bool)

(assert (= bs!459819 d!689975))

(declare-fun m!2760979 () Bool)

(assert (=> bs!459819 m!2760979))

(assert (=> b!2331231 d!689975))

(declare-fun d!689977 () Bool)

(assert (=> d!689977 (= (nullable!1910 (regOne!14174 r!26197)) (nullableFct!473 (regOne!14174 r!26197)))))

(declare-fun bs!459820 () Bool)

(assert (= bs!459820 d!689977))

(declare-fun m!2760981 () Bool)

(assert (=> bs!459820 m!2760981))

(assert (=> b!2331235 d!689977))

(declare-fun b!2331435 () Bool)

(declare-fun e!1493596 () Bool)

(declare-fun tp!738819 () Bool)

(assert (=> b!2331435 (= e!1493596 tp!738819)))

(assert (=> b!2331232 (= tp!738769 e!1493596)))

(declare-fun b!2331436 () Bool)

(declare-fun tp!738821 () Bool)

(declare-fun tp!738820 () Bool)

(assert (=> b!2331436 (= e!1493596 (and tp!738821 tp!738820))))

(declare-fun b!2331433 () Bool)

(assert (=> b!2331433 (= e!1493596 tp_is_empty!10973)))

(declare-fun b!2331434 () Bool)

(declare-fun tp!738818 () Bool)

(declare-fun tp!738817 () Bool)

(assert (=> b!2331434 (= e!1493596 (and tp!738818 tp!738817))))

(assert (= (and b!2331232 ((_ is ElementMatch!6831) (regOne!14175 r!26197))) b!2331433))

(assert (= (and b!2331232 ((_ is Concat!11453) (regOne!14175 r!26197))) b!2331434))

(assert (= (and b!2331232 ((_ is Star!6831) (regOne!14175 r!26197))) b!2331435))

(assert (= (and b!2331232 ((_ is Union!6831) (regOne!14175 r!26197))) b!2331436))

(declare-fun b!2331439 () Bool)

(declare-fun e!1493597 () Bool)

(declare-fun tp!738824 () Bool)

(assert (=> b!2331439 (= e!1493597 tp!738824)))

(assert (=> b!2331232 (= tp!738770 e!1493597)))

(declare-fun b!2331440 () Bool)

(declare-fun tp!738826 () Bool)

(declare-fun tp!738825 () Bool)

(assert (=> b!2331440 (= e!1493597 (and tp!738826 tp!738825))))

(declare-fun b!2331437 () Bool)

(assert (=> b!2331437 (= e!1493597 tp_is_empty!10973)))

(declare-fun b!2331438 () Bool)

(declare-fun tp!738823 () Bool)

(declare-fun tp!738822 () Bool)

(assert (=> b!2331438 (= e!1493597 (and tp!738823 tp!738822))))

(assert (= (and b!2331232 ((_ is ElementMatch!6831) (regTwo!14175 r!26197))) b!2331437))

(assert (= (and b!2331232 ((_ is Concat!11453) (regTwo!14175 r!26197))) b!2331438))

(assert (= (and b!2331232 ((_ is Star!6831) (regTwo!14175 r!26197))) b!2331439))

(assert (= (and b!2331232 ((_ is Union!6831) (regTwo!14175 r!26197))) b!2331440))

(declare-fun b!2331443 () Bool)

(declare-fun e!1493598 () Bool)

(declare-fun tp!738829 () Bool)

(assert (=> b!2331443 (= e!1493598 tp!738829)))

(assert (=> b!2331237 (= tp!738771 e!1493598)))

(declare-fun b!2331444 () Bool)

(declare-fun tp!738831 () Bool)

(declare-fun tp!738830 () Bool)

(assert (=> b!2331444 (= e!1493598 (and tp!738831 tp!738830))))

(declare-fun b!2331441 () Bool)

(assert (=> b!2331441 (= e!1493598 tp_is_empty!10973)))

(declare-fun b!2331442 () Bool)

(declare-fun tp!738828 () Bool)

(declare-fun tp!738827 () Bool)

(assert (=> b!2331442 (= e!1493598 (and tp!738828 tp!738827))))

(assert (= (and b!2331237 ((_ is ElementMatch!6831) (regOne!14174 r!26197))) b!2331441))

(assert (= (and b!2331237 ((_ is Concat!11453) (regOne!14174 r!26197))) b!2331442))

(assert (= (and b!2331237 ((_ is Star!6831) (regOne!14174 r!26197))) b!2331443))

(assert (= (and b!2331237 ((_ is Union!6831) (regOne!14174 r!26197))) b!2331444))

(declare-fun b!2331447 () Bool)

(declare-fun e!1493599 () Bool)

(declare-fun tp!738834 () Bool)

(assert (=> b!2331447 (= e!1493599 tp!738834)))

(assert (=> b!2331237 (= tp!738768 e!1493599)))

(declare-fun b!2331448 () Bool)

(declare-fun tp!738836 () Bool)

(declare-fun tp!738835 () Bool)

(assert (=> b!2331448 (= e!1493599 (and tp!738836 tp!738835))))

(declare-fun b!2331445 () Bool)

(assert (=> b!2331445 (= e!1493599 tp_is_empty!10973)))

(declare-fun b!2331446 () Bool)

(declare-fun tp!738833 () Bool)

(declare-fun tp!738832 () Bool)

(assert (=> b!2331446 (= e!1493599 (and tp!738833 tp!738832))))

(assert (= (and b!2331237 ((_ is ElementMatch!6831) (regTwo!14174 r!26197))) b!2331445))

(assert (= (and b!2331237 ((_ is Concat!11453) (regTwo!14174 r!26197))) b!2331446))

(assert (= (and b!2331237 ((_ is Star!6831) (regTwo!14174 r!26197))) b!2331447))

(assert (= (and b!2331237 ((_ is Union!6831) (regTwo!14174 r!26197))) b!2331448))

(declare-fun b!2331451 () Bool)

(declare-fun e!1493600 () Bool)

(declare-fun tp!738839 () Bool)

(assert (=> b!2331451 (= e!1493600 tp!738839)))

(assert (=> b!2331240 (= tp!738767 e!1493600)))

(declare-fun b!2331452 () Bool)

(declare-fun tp!738841 () Bool)

(declare-fun tp!738840 () Bool)

(assert (=> b!2331452 (= e!1493600 (and tp!738841 tp!738840))))

(declare-fun b!2331449 () Bool)

(assert (=> b!2331449 (= e!1493600 tp_is_empty!10973)))

(declare-fun b!2331450 () Bool)

(declare-fun tp!738838 () Bool)

(declare-fun tp!738837 () Bool)

(assert (=> b!2331450 (= e!1493600 (and tp!738838 tp!738837))))

(assert (= (and b!2331240 ((_ is ElementMatch!6831) (reg!7160 r!26197))) b!2331449))

(assert (= (and b!2331240 ((_ is Concat!11453) (reg!7160 r!26197))) b!2331450))

(assert (= (and b!2331240 ((_ is Star!6831) (reg!7160 r!26197))) b!2331451))

(assert (= (and b!2331240 ((_ is Union!6831) (reg!7160 r!26197))) b!2331452))

(check-sat (not b!2331447) (not b!2331434) (not d!689959) (not b!2331450) (not b!2331440) (not bm!139160) (not bm!139195) tp_is_empty!10973 (not b!2331443) (not b!2331451) (not d!689961) (not bm!139157) (not d!689971) (not bm!139187) (not bm!139156) (not bm!139185) (not b!2331298) (not b!2331452) (not b!2331392) (not b!2331442) (not bm!139159) (not b!2331448) (not bm!139193) (not b!2331436) (not b!2331439) (not d!689973) (not b!2331446) (not b!2331435) (not b!2331444) (not d!689977) (not b!2331289) (not b!2331372) (not b!2331438) (not d!689975))
(check-sat)
