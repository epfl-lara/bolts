; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350902 () Bool)

(assert start!350902)

(declare-fun b!3728743 () Bool)

(declare-fun res!1514180 () Bool)

(declare-fun e!2307251 () Bool)

(assert (=> b!3728743 (=> (not res!1514180) (not e!2307251))))

(declare-datatypes ((C!22024 0))(
  ( (C!22025 (val!13060 Int)) )
))
(declare-datatypes ((Regex!10919 0))(
  ( (ElementMatch!10919 (c!645345 C!22024)) (Concat!17190 (regOne!22350 Regex!10919) (regTwo!22350 Regex!10919)) (EmptyExpr!10919) (Star!10919 (reg!11248 Regex!10919)) (EmptyLang!10919) (Union!10919 (regOne!22351 Regex!10919) (regTwo!22351 Regex!10919)) )
))
(declare-fun r!26968 () Regex!10919)

(declare-fun cNot!42 () C!22024)

(declare-datatypes ((List!39800 0))(
  ( (Nil!39676) (Cons!39676 (h!45096 C!22024) (t!302483 List!39800)) )
))
(declare-fun contains!8012 (List!39800 C!22024) Bool)

(declare-fun usedCharacters!1182 (Regex!10919) List!39800)

(assert (=> b!3728743 (= res!1514180 (not (contains!8012 (usedCharacters!1182 r!26968) cNot!42)))))

(declare-fun b!3728744 () Bool)

(declare-fun res!1514177 () Bool)

(assert (=> b!3728744 (=> (not res!1514177) (not e!2307251))))

(get-info :version)

(assert (=> b!3728744 (= res!1514177 (and (not ((_ is EmptyExpr!10919) r!26968)) (not ((_ is EmptyLang!10919) r!26968)) (not ((_ is ElementMatch!10919) r!26968)) (not ((_ is Union!10919) r!26968)) ((_ is Star!10919) r!26968)))))

(declare-fun b!3728746 () Bool)

(declare-fun e!2307252 () Bool)

(declare-fun tp!1134583 () Bool)

(declare-fun tp!1134580 () Bool)

(assert (=> b!3728746 (= e!2307252 (and tp!1134583 tp!1134580))))

(declare-fun b!3728747 () Bool)

(declare-fun tp!1134582 () Bool)

(assert (=> b!3728747 (= e!2307252 tp!1134582)))

(declare-fun b!3728748 () Bool)

(declare-fun tp!1134584 () Bool)

(declare-fun tp!1134581 () Bool)

(assert (=> b!3728748 (= e!2307252 (and tp!1134584 tp!1134581))))

(declare-fun b!3728749 () Bool)

(declare-fun tp_is_empty!18853 () Bool)

(assert (=> b!3728749 (= e!2307252 tp_is_empty!18853)))

(declare-fun b!3728750 () Bool)

(assert (=> b!3728750 (= e!2307251 (contains!8012 (usedCharacters!1182 (reg!11248 r!26968)) cNot!42))))

(declare-fun res!1514178 () Bool)

(assert (=> start!350902 (=> (not res!1514178) (not e!2307251))))

(declare-fun validRegex!5026 (Regex!10919) Bool)

(assert (=> start!350902 (= res!1514178 (validRegex!5026 r!26968))))

(assert (=> start!350902 e!2307251))

(assert (=> start!350902 e!2307252))

(assert (=> start!350902 tp_is_empty!18853))

(declare-fun b!3728745 () Bool)

(declare-fun res!1514179 () Bool)

(assert (=> b!3728745 (=> (not res!1514179) (not e!2307251))))

(assert (=> b!3728745 (= res!1514179 (validRegex!5026 (reg!11248 r!26968)))))

(assert (= (and start!350902 res!1514178) b!3728743))

(assert (= (and b!3728743 res!1514180) b!3728744))

(assert (= (and b!3728744 res!1514177) b!3728745))

(assert (= (and b!3728745 res!1514179) b!3728750))

(assert (= (and start!350902 ((_ is ElementMatch!10919) r!26968)) b!3728749))

(assert (= (and start!350902 ((_ is Concat!17190) r!26968)) b!3728746))

(assert (= (and start!350902 ((_ is Star!10919) r!26968)) b!3728747))

(assert (= (and start!350902 ((_ is Union!10919) r!26968)) b!3728748))

(declare-fun m!4229201 () Bool)

(assert (=> b!3728743 m!4229201))

(assert (=> b!3728743 m!4229201))

(declare-fun m!4229203 () Bool)

(assert (=> b!3728743 m!4229203))

(declare-fun m!4229205 () Bool)

(assert (=> b!3728750 m!4229205))

(assert (=> b!3728750 m!4229205))

(declare-fun m!4229207 () Bool)

(assert (=> b!3728750 m!4229207))

(declare-fun m!4229209 () Bool)

(assert (=> start!350902 m!4229209))

(declare-fun m!4229211 () Bool)

(assert (=> b!3728745 m!4229211))

(check-sat (not b!3728747) (not b!3728746) (not b!3728745) (not b!3728750) (not b!3728743) (not b!3728748) (not start!350902) tp_is_empty!18853)
(check-sat)
(get-model)

(declare-fun d!1090307 () Bool)

(declare-fun lt!1298578 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5776 (List!39800) (InoxSet C!22024))

(assert (=> d!1090307 (= lt!1298578 (select (content!5776 (usedCharacters!1182 r!26968)) cNot!42))))

(declare-fun e!2307263 () Bool)

(assert (=> d!1090307 (= lt!1298578 e!2307263)))

(declare-fun res!1514192 () Bool)

(assert (=> d!1090307 (=> (not res!1514192) (not e!2307263))))

(assert (=> d!1090307 (= res!1514192 ((_ is Cons!39676) (usedCharacters!1182 r!26968)))))

(assert (=> d!1090307 (= (contains!8012 (usedCharacters!1182 r!26968) cNot!42) lt!1298578)))

(declare-fun b!3728763 () Bool)

(declare-fun e!2307264 () Bool)

(assert (=> b!3728763 (= e!2307263 e!2307264)))

(declare-fun res!1514191 () Bool)

(assert (=> b!3728763 (=> res!1514191 e!2307264)))

(assert (=> b!3728763 (= res!1514191 (= (h!45096 (usedCharacters!1182 r!26968)) cNot!42))))

(declare-fun b!3728764 () Bool)

(assert (=> b!3728764 (= e!2307264 (contains!8012 (t!302483 (usedCharacters!1182 r!26968)) cNot!42))))

(assert (= (and d!1090307 res!1514192) b!3728763))

(assert (= (and b!3728763 (not res!1514191)) b!3728764))

(assert (=> d!1090307 m!4229201))

(declare-fun m!4229219 () Bool)

(assert (=> d!1090307 m!4229219))

(declare-fun m!4229221 () Bool)

(assert (=> d!1090307 m!4229221))

(declare-fun m!4229223 () Bool)

(assert (=> b!3728764 m!4229223))

(assert (=> b!3728743 d!1090307))

(declare-fun b!3728803 () Bool)

(declare-fun e!2307285 () List!39800)

(declare-fun call!272037 () List!39800)

(assert (=> b!3728803 (= e!2307285 call!272037)))

(declare-fun d!1090311 () Bool)

(declare-fun c!645367 () Bool)

(assert (=> d!1090311 (= c!645367 (or ((_ is EmptyExpr!10919) r!26968) ((_ is EmptyLang!10919) r!26968)))))

(declare-fun e!2307286 () List!39800)

(assert (=> d!1090311 (= (usedCharacters!1182 r!26968) e!2307286)))

(declare-fun c!645366 () Bool)

(declare-fun c!645369 () Bool)

(declare-fun call!272039 () List!39800)

(declare-fun bm!272032 () Bool)

(assert (=> bm!272032 (= call!272039 (usedCharacters!1182 (ite c!645369 (reg!11248 r!26968) (ite c!645366 (regTwo!22351 r!26968) (regOne!22350 r!26968)))))))

(declare-fun b!3728804 () Bool)

(declare-fun e!2307288 () List!39800)

(assert (=> b!3728804 (= e!2307286 e!2307288)))

(declare-fun c!645368 () Bool)

(assert (=> b!3728804 (= c!645368 ((_ is ElementMatch!10919) r!26968))))

(declare-fun b!3728805 () Bool)

(assert (=> b!3728805 (= c!645369 ((_ is Star!10919) r!26968))))

(declare-fun e!2307287 () List!39800)

(assert (=> b!3728805 (= e!2307288 e!2307287)))

(declare-fun b!3728806 () Bool)

(assert (=> b!3728806 (= e!2307288 (Cons!39676 (c!645345 r!26968) Nil!39676))))

(declare-fun b!3728807 () Bool)

(assert (=> b!3728807 (= e!2307285 call!272037)))

(declare-fun bm!272033 () Bool)

(declare-fun call!272038 () List!39800)

(assert (=> bm!272033 (= call!272038 (usedCharacters!1182 (ite c!645366 (regOne!22351 r!26968) (regTwo!22350 r!26968))))))

(declare-fun bm!272034 () Bool)

(declare-fun call!272040 () List!39800)

(declare-fun ++!9843 (List!39800 List!39800) List!39800)

(assert (=> bm!272034 (= call!272037 (++!9843 (ite c!645366 call!272038 call!272040) (ite c!645366 call!272040 call!272038)))))

(declare-fun b!3728808 () Bool)

(assert (=> b!3728808 (= e!2307287 call!272039)))

(declare-fun b!3728809 () Bool)

(assert (=> b!3728809 (= e!2307286 Nil!39676)))

(declare-fun b!3728810 () Bool)

(assert (=> b!3728810 (= e!2307287 e!2307285)))

(assert (=> b!3728810 (= c!645366 ((_ is Union!10919) r!26968))))

(declare-fun bm!272035 () Bool)

(assert (=> bm!272035 (= call!272040 call!272039)))

(assert (= (and d!1090311 c!645367) b!3728809))

(assert (= (and d!1090311 (not c!645367)) b!3728804))

(assert (= (and b!3728804 c!645368) b!3728806))

(assert (= (and b!3728804 (not c!645368)) b!3728805))

(assert (= (and b!3728805 c!645369) b!3728808))

(assert (= (and b!3728805 (not c!645369)) b!3728810))

(assert (= (and b!3728810 c!645366) b!3728803))

(assert (= (and b!3728810 (not c!645366)) b!3728807))

(assert (= (or b!3728803 b!3728807) bm!272033))

(assert (= (or b!3728803 b!3728807) bm!272035))

(assert (= (or b!3728803 b!3728807) bm!272034))

(assert (= (or b!3728808 bm!272035) bm!272032))

(declare-fun m!4229231 () Bool)

(assert (=> bm!272032 m!4229231))

(declare-fun m!4229233 () Bool)

(assert (=> bm!272033 m!4229233))

(declare-fun m!4229235 () Bool)

(assert (=> bm!272034 m!4229235))

(assert (=> b!3728743 d!1090311))

(declare-fun d!1090315 () Bool)

(declare-fun lt!1298579 () Bool)

(assert (=> d!1090315 (= lt!1298579 (select (content!5776 (usedCharacters!1182 (reg!11248 r!26968))) cNot!42))))

(declare-fun e!2307303 () Bool)

(assert (=> d!1090315 (= lt!1298579 e!2307303)))

(declare-fun res!1514204 () Bool)

(assert (=> d!1090315 (=> (not res!1514204) (not e!2307303))))

(assert (=> d!1090315 (= res!1514204 ((_ is Cons!39676) (usedCharacters!1182 (reg!11248 r!26968))))))

(assert (=> d!1090315 (= (contains!8012 (usedCharacters!1182 (reg!11248 r!26968)) cNot!42) lt!1298579)))

(declare-fun b!3728829 () Bool)

(declare-fun e!2307304 () Bool)

(assert (=> b!3728829 (= e!2307303 e!2307304)))

(declare-fun res!1514203 () Bool)

(assert (=> b!3728829 (=> res!1514203 e!2307304)))

(assert (=> b!3728829 (= res!1514203 (= (h!45096 (usedCharacters!1182 (reg!11248 r!26968))) cNot!42))))

(declare-fun b!3728830 () Bool)

(assert (=> b!3728830 (= e!2307304 (contains!8012 (t!302483 (usedCharacters!1182 (reg!11248 r!26968))) cNot!42))))

(assert (= (and d!1090315 res!1514204) b!3728829))

(assert (= (and b!3728829 (not res!1514203)) b!3728830))

(assert (=> d!1090315 m!4229205))

(declare-fun m!4229237 () Bool)

(assert (=> d!1090315 m!4229237))

(declare-fun m!4229239 () Bool)

(assert (=> d!1090315 m!4229239))

(declare-fun m!4229241 () Bool)

(assert (=> b!3728830 m!4229241))

(assert (=> b!3728750 d!1090315))

(declare-fun b!3728831 () Bool)

(declare-fun e!2307305 () List!39800)

(declare-fun call!272045 () List!39800)

(assert (=> b!3728831 (= e!2307305 call!272045)))

(declare-fun d!1090317 () Bool)

(declare-fun c!645375 () Bool)

(assert (=> d!1090317 (= c!645375 (or ((_ is EmptyExpr!10919) (reg!11248 r!26968)) ((_ is EmptyLang!10919) (reg!11248 r!26968))))))

(declare-fun e!2307306 () List!39800)

(assert (=> d!1090317 (= (usedCharacters!1182 (reg!11248 r!26968)) e!2307306)))

(declare-fun c!645377 () Bool)

(declare-fun call!272047 () List!39800)

(declare-fun c!645374 () Bool)

(declare-fun bm!272038 () Bool)

(assert (=> bm!272038 (= call!272047 (usedCharacters!1182 (ite c!645377 (reg!11248 (reg!11248 r!26968)) (ite c!645374 (regTwo!22351 (reg!11248 r!26968)) (regOne!22350 (reg!11248 r!26968))))))))

(declare-fun b!3728832 () Bool)

(declare-fun e!2307308 () List!39800)

(assert (=> b!3728832 (= e!2307306 e!2307308)))

(declare-fun c!645376 () Bool)

(assert (=> b!3728832 (= c!645376 ((_ is ElementMatch!10919) (reg!11248 r!26968)))))

(declare-fun b!3728833 () Bool)

(assert (=> b!3728833 (= c!645377 ((_ is Star!10919) (reg!11248 r!26968)))))

(declare-fun e!2307307 () List!39800)

(assert (=> b!3728833 (= e!2307308 e!2307307)))

(declare-fun b!3728834 () Bool)

(assert (=> b!3728834 (= e!2307308 (Cons!39676 (c!645345 (reg!11248 r!26968)) Nil!39676))))

(declare-fun b!3728835 () Bool)

(assert (=> b!3728835 (= e!2307305 call!272045)))

(declare-fun bm!272039 () Bool)

(declare-fun call!272046 () List!39800)

(assert (=> bm!272039 (= call!272046 (usedCharacters!1182 (ite c!645374 (regOne!22351 (reg!11248 r!26968)) (regTwo!22350 (reg!11248 r!26968)))))))

(declare-fun call!272048 () List!39800)

(declare-fun bm!272040 () Bool)

(assert (=> bm!272040 (= call!272045 (++!9843 (ite c!645374 call!272046 call!272048) (ite c!645374 call!272048 call!272046)))))

(declare-fun b!3728836 () Bool)

(assert (=> b!3728836 (= e!2307307 call!272047)))

(declare-fun b!3728837 () Bool)

(assert (=> b!3728837 (= e!2307306 Nil!39676)))

(declare-fun b!3728838 () Bool)

(assert (=> b!3728838 (= e!2307307 e!2307305)))

(assert (=> b!3728838 (= c!645374 ((_ is Union!10919) (reg!11248 r!26968)))))

(declare-fun bm!272041 () Bool)

(assert (=> bm!272041 (= call!272048 call!272047)))

(assert (= (and d!1090317 c!645375) b!3728837))

(assert (= (and d!1090317 (not c!645375)) b!3728832))

(assert (= (and b!3728832 c!645376) b!3728834))

(assert (= (and b!3728832 (not c!645376)) b!3728833))

(assert (= (and b!3728833 c!645377) b!3728836))

(assert (= (and b!3728833 (not c!645377)) b!3728838))

(assert (= (and b!3728838 c!645374) b!3728831))

(assert (= (and b!3728838 (not c!645374)) b!3728835))

(assert (= (or b!3728831 b!3728835) bm!272039))

(assert (= (or b!3728831 b!3728835) bm!272041))

(assert (= (or b!3728831 b!3728835) bm!272040))

(assert (= (or b!3728836 bm!272041) bm!272038))

(declare-fun m!4229243 () Bool)

(assert (=> bm!272038 m!4229243))

(declare-fun m!4229245 () Bool)

(assert (=> bm!272039 m!4229245))

(declare-fun m!4229247 () Bool)

(assert (=> bm!272040 m!4229247))

(assert (=> b!3728750 d!1090317))

(declare-fun b!3728895 () Bool)

(declare-fun e!2307345 () Bool)

(declare-fun call!272067 () Bool)

(assert (=> b!3728895 (= e!2307345 call!272067)))

(declare-fun bm!272062 () Bool)

(declare-fun call!272068 () Bool)

(declare-fun c!645390 () Bool)

(assert (=> bm!272062 (= call!272068 (validRegex!5026 (ite c!645390 (regOne!22351 r!26968) (regOne!22350 r!26968))))))

(declare-fun d!1090319 () Bool)

(declare-fun res!1514230 () Bool)

(declare-fun e!2307350 () Bool)

(assert (=> d!1090319 (=> res!1514230 e!2307350)))

(assert (=> d!1090319 (= res!1514230 ((_ is ElementMatch!10919) r!26968))))

(assert (=> d!1090319 (= (validRegex!5026 r!26968) e!2307350)))

(declare-fun b!3728896 () Bool)

(declare-fun res!1514228 () Bool)

(declare-fun e!2307349 () Bool)

(assert (=> b!3728896 (=> res!1514228 e!2307349)))

(assert (=> b!3728896 (= res!1514228 (not ((_ is Concat!17190) r!26968)))))

(declare-fun e!2307346 () Bool)

(assert (=> b!3728896 (= e!2307346 e!2307349)))

(declare-fun b!3728897 () Bool)

(declare-fun e!2307347 () Bool)

(declare-fun call!272069 () Bool)

(assert (=> b!3728897 (= e!2307347 call!272069)))

(declare-fun b!3728898 () Bool)

(assert (=> b!3728898 (= e!2307349 e!2307347)))

(declare-fun res!1514231 () Bool)

(assert (=> b!3728898 (=> (not res!1514231) (not e!2307347))))

(assert (=> b!3728898 (= res!1514231 call!272068)))

(declare-fun b!3728899 () Bool)

(declare-fun e!2307348 () Bool)

(assert (=> b!3728899 (= e!2307348 e!2307345)))

(declare-fun res!1514227 () Bool)

(declare-fun nullable!3827 (Regex!10919) Bool)

(assert (=> b!3728899 (= res!1514227 (not (nullable!3827 (reg!11248 r!26968))))))

(assert (=> b!3728899 (=> (not res!1514227) (not e!2307345))))

(declare-fun b!3728900 () Bool)

(assert (=> b!3728900 (= e!2307350 e!2307348)))

(declare-fun c!645391 () Bool)

(assert (=> b!3728900 (= c!645391 ((_ is Star!10919) r!26968))))

(declare-fun bm!272063 () Bool)

(assert (=> bm!272063 (= call!272069 call!272067)))

(declare-fun bm!272064 () Bool)

(assert (=> bm!272064 (= call!272067 (validRegex!5026 (ite c!645391 (reg!11248 r!26968) (ite c!645390 (regTwo!22351 r!26968) (regTwo!22350 r!26968)))))))

(declare-fun b!3728901 () Bool)

(declare-fun res!1514229 () Bool)

(declare-fun e!2307351 () Bool)

(assert (=> b!3728901 (=> (not res!1514229) (not e!2307351))))

(assert (=> b!3728901 (= res!1514229 call!272068)))

(assert (=> b!3728901 (= e!2307346 e!2307351)))

(declare-fun b!3728902 () Bool)

(assert (=> b!3728902 (= e!2307348 e!2307346)))

(assert (=> b!3728902 (= c!645390 ((_ is Union!10919) r!26968))))

(declare-fun b!3728903 () Bool)

(assert (=> b!3728903 (= e!2307351 call!272069)))

(assert (= (and d!1090319 (not res!1514230)) b!3728900))

(assert (= (and b!3728900 c!645391) b!3728899))

(assert (= (and b!3728900 (not c!645391)) b!3728902))

(assert (= (and b!3728899 res!1514227) b!3728895))

(assert (= (and b!3728902 c!645390) b!3728901))

(assert (= (and b!3728902 (not c!645390)) b!3728896))

(assert (= (and b!3728901 res!1514229) b!3728903))

(assert (= (and b!3728896 (not res!1514228)) b!3728898))

(assert (= (and b!3728898 res!1514231) b!3728897))

(assert (= (or b!3728903 b!3728897) bm!272063))

(assert (= (or b!3728901 b!3728898) bm!272062))

(assert (= (or b!3728895 bm!272063) bm!272064))

(declare-fun m!4229273 () Bool)

(assert (=> bm!272062 m!4229273))

(declare-fun m!4229275 () Bool)

(assert (=> b!3728899 m!4229275))

(declare-fun m!4229277 () Bool)

(assert (=> bm!272064 m!4229277))

(assert (=> start!350902 d!1090319))

(declare-fun b!3728920 () Bool)

(declare-fun e!2307356 () Bool)

(declare-fun call!272070 () Bool)

(assert (=> b!3728920 (= e!2307356 call!272070)))

(declare-fun bm!272065 () Bool)

(declare-fun call!272071 () Bool)

(declare-fun c!645392 () Bool)

(assert (=> bm!272065 (= call!272071 (validRegex!5026 (ite c!645392 (regOne!22351 (reg!11248 r!26968)) (regOne!22350 (reg!11248 r!26968)))))))

(declare-fun d!1090327 () Bool)

(declare-fun res!1514235 () Bool)

(declare-fun e!2307361 () Bool)

(assert (=> d!1090327 (=> res!1514235 e!2307361)))

(assert (=> d!1090327 (= res!1514235 ((_ is ElementMatch!10919) (reg!11248 r!26968)))))

(assert (=> d!1090327 (= (validRegex!5026 (reg!11248 r!26968)) e!2307361)))

(declare-fun b!3728921 () Bool)

(declare-fun res!1514233 () Bool)

(declare-fun e!2307360 () Bool)

(assert (=> b!3728921 (=> res!1514233 e!2307360)))

(assert (=> b!3728921 (= res!1514233 (not ((_ is Concat!17190) (reg!11248 r!26968))))))

(declare-fun e!2307357 () Bool)

(assert (=> b!3728921 (= e!2307357 e!2307360)))

(declare-fun b!3728922 () Bool)

(declare-fun e!2307358 () Bool)

(declare-fun call!272072 () Bool)

(assert (=> b!3728922 (= e!2307358 call!272072)))

(declare-fun b!3728923 () Bool)

(assert (=> b!3728923 (= e!2307360 e!2307358)))

(declare-fun res!1514236 () Bool)

(assert (=> b!3728923 (=> (not res!1514236) (not e!2307358))))

(assert (=> b!3728923 (= res!1514236 call!272071)))

(declare-fun b!3728924 () Bool)

(declare-fun e!2307359 () Bool)

(assert (=> b!3728924 (= e!2307359 e!2307356)))

(declare-fun res!1514232 () Bool)

(assert (=> b!3728924 (= res!1514232 (not (nullable!3827 (reg!11248 (reg!11248 r!26968)))))))

(assert (=> b!3728924 (=> (not res!1514232) (not e!2307356))))

(declare-fun b!3728925 () Bool)

(assert (=> b!3728925 (= e!2307361 e!2307359)))

(declare-fun c!645393 () Bool)

(assert (=> b!3728925 (= c!645393 ((_ is Star!10919) (reg!11248 r!26968)))))

(declare-fun bm!272066 () Bool)

(assert (=> bm!272066 (= call!272072 call!272070)))

(declare-fun bm!272067 () Bool)

(assert (=> bm!272067 (= call!272070 (validRegex!5026 (ite c!645393 (reg!11248 (reg!11248 r!26968)) (ite c!645392 (regTwo!22351 (reg!11248 r!26968)) (regTwo!22350 (reg!11248 r!26968))))))))

(declare-fun b!3728926 () Bool)

(declare-fun res!1514234 () Bool)

(declare-fun e!2307362 () Bool)

(assert (=> b!3728926 (=> (not res!1514234) (not e!2307362))))

(assert (=> b!3728926 (= res!1514234 call!272071)))

(assert (=> b!3728926 (= e!2307357 e!2307362)))

(declare-fun b!3728927 () Bool)

(assert (=> b!3728927 (= e!2307359 e!2307357)))

(assert (=> b!3728927 (= c!645392 ((_ is Union!10919) (reg!11248 r!26968)))))

(declare-fun b!3728928 () Bool)

(assert (=> b!3728928 (= e!2307362 call!272072)))

(assert (= (and d!1090327 (not res!1514235)) b!3728925))

(assert (= (and b!3728925 c!645393) b!3728924))

(assert (= (and b!3728925 (not c!645393)) b!3728927))

(assert (= (and b!3728924 res!1514232) b!3728920))

(assert (= (and b!3728927 c!645392) b!3728926))

(assert (= (and b!3728927 (not c!645392)) b!3728921))

(assert (= (and b!3728926 res!1514234) b!3728928))

(assert (= (and b!3728921 (not res!1514233)) b!3728923))

(assert (= (and b!3728923 res!1514236) b!3728922))

(assert (= (or b!3728928 b!3728922) bm!272066))

(assert (= (or b!3728926 b!3728923) bm!272065))

(assert (= (or b!3728920 bm!272066) bm!272067))

(declare-fun m!4229279 () Bool)

(assert (=> bm!272065 m!4229279))

(declare-fun m!4229281 () Bool)

(assert (=> b!3728924 m!4229281))

(declare-fun m!4229283 () Bool)

(assert (=> bm!272067 m!4229283))

(assert (=> b!3728745 d!1090327))

(declare-fun b!3728945 () Bool)

(declare-fun e!2307366 () Bool)

(declare-fun tp!1134631 () Bool)

(assert (=> b!3728945 (= e!2307366 tp!1134631)))

(declare-fun b!3728943 () Bool)

(assert (=> b!3728943 (= e!2307366 tp_is_empty!18853)))

(declare-fun b!3728946 () Bool)

(declare-fun tp!1134632 () Bool)

(declare-fun tp!1134630 () Bool)

(assert (=> b!3728946 (= e!2307366 (and tp!1134632 tp!1134630))))

(declare-fun b!3728944 () Bool)

(declare-fun tp!1134634 () Bool)

(declare-fun tp!1134633 () Bool)

(assert (=> b!3728944 (= e!2307366 (and tp!1134634 tp!1134633))))

(assert (=> b!3728746 (= tp!1134583 e!2307366)))

(assert (= (and b!3728746 ((_ is ElementMatch!10919) (regOne!22350 r!26968))) b!3728943))

(assert (= (and b!3728746 ((_ is Concat!17190) (regOne!22350 r!26968))) b!3728944))

(assert (= (and b!3728746 ((_ is Star!10919) (regOne!22350 r!26968))) b!3728945))

(assert (= (and b!3728746 ((_ is Union!10919) (regOne!22350 r!26968))) b!3728946))

(declare-fun b!3728949 () Bool)

(declare-fun e!2307367 () Bool)

(declare-fun tp!1134636 () Bool)

(assert (=> b!3728949 (= e!2307367 tp!1134636)))

(declare-fun b!3728947 () Bool)

(assert (=> b!3728947 (= e!2307367 tp_is_empty!18853)))

(declare-fun b!3728950 () Bool)

(declare-fun tp!1134637 () Bool)

(declare-fun tp!1134635 () Bool)

(assert (=> b!3728950 (= e!2307367 (and tp!1134637 tp!1134635))))

(declare-fun b!3728948 () Bool)

(declare-fun tp!1134639 () Bool)

(declare-fun tp!1134638 () Bool)

(assert (=> b!3728948 (= e!2307367 (and tp!1134639 tp!1134638))))

(assert (=> b!3728746 (= tp!1134580 e!2307367)))

(assert (= (and b!3728746 ((_ is ElementMatch!10919) (regTwo!22350 r!26968))) b!3728947))

(assert (= (and b!3728746 ((_ is Concat!17190) (regTwo!22350 r!26968))) b!3728948))

(assert (= (and b!3728746 ((_ is Star!10919) (regTwo!22350 r!26968))) b!3728949))

(assert (= (and b!3728746 ((_ is Union!10919) (regTwo!22350 r!26968))) b!3728950))

(declare-fun b!3728953 () Bool)

(declare-fun e!2307368 () Bool)

(declare-fun tp!1134641 () Bool)

(assert (=> b!3728953 (= e!2307368 tp!1134641)))

(declare-fun b!3728951 () Bool)

(assert (=> b!3728951 (= e!2307368 tp_is_empty!18853)))

(declare-fun b!3728954 () Bool)

(declare-fun tp!1134642 () Bool)

(declare-fun tp!1134640 () Bool)

(assert (=> b!3728954 (= e!2307368 (and tp!1134642 tp!1134640))))

(declare-fun b!3728952 () Bool)

(declare-fun tp!1134644 () Bool)

(declare-fun tp!1134643 () Bool)

(assert (=> b!3728952 (= e!2307368 (and tp!1134644 tp!1134643))))

(assert (=> b!3728747 (= tp!1134582 e!2307368)))

(assert (= (and b!3728747 ((_ is ElementMatch!10919) (reg!11248 r!26968))) b!3728951))

(assert (= (and b!3728747 ((_ is Concat!17190) (reg!11248 r!26968))) b!3728952))

(assert (= (and b!3728747 ((_ is Star!10919) (reg!11248 r!26968))) b!3728953))

(assert (= (and b!3728747 ((_ is Union!10919) (reg!11248 r!26968))) b!3728954))

(declare-fun b!3728957 () Bool)

(declare-fun e!2307369 () Bool)

(declare-fun tp!1134646 () Bool)

(assert (=> b!3728957 (= e!2307369 tp!1134646)))

(declare-fun b!3728955 () Bool)

(assert (=> b!3728955 (= e!2307369 tp_is_empty!18853)))

(declare-fun b!3728958 () Bool)

(declare-fun tp!1134647 () Bool)

(declare-fun tp!1134645 () Bool)

(assert (=> b!3728958 (= e!2307369 (and tp!1134647 tp!1134645))))

(declare-fun b!3728956 () Bool)

(declare-fun tp!1134649 () Bool)

(declare-fun tp!1134648 () Bool)

(assert (=> b!3728956 (= e!2307369 (and tp!1134649 tp!1134648))))

(assert (=> b!3728748 (= tp!1134584 e!2307369)))

(assert (= (and b!3728748 ((_ is ElementMatch!10919) (regOne!22351 r!26968))) b!3728955))

(assert (= (and b!3728748 ((_ is Concat!17190) (regOne!22351 r!26968))) b!3728956))

(assert (= (and b!3728748 ((_ is Star!10919) (regOne!22351 r!26968))) b!3728957))

(assert (= (and b!3728748 ((_ is Union!10919) (regOne!22351 r!26968))) b!3728958))

(declare-fun b!3728961 () Bool)

(declare-fun e!2307370 () Bool)

(declare-fun tp!1134651 () Bool)

(assert (=> b!3728961 (= e!2307370 tp!1134651)))

(declare-fun b!3728959 () Bool)

(assert (=> b!3728959 (= e!2307370 tp_is_empty!18853)))

(declare-fun b!3728962 () Bool)

(declare-fun tp!1134652 () Bool)

(declare-fun tp!1134650 () Bool)

(assert (=> b!3728962 (= e!2307370 (and tp!1134652 tp!1134650))))

(declare-fun b!3728960 () Bool)

(declare-fun tp!1134654 () Bool)

(declare-fun tp!1134653 () Bool)

(assert (=> b!3728960 (= e!2307370 (and tp!1134654 tp!1134653))))

(assert (=> b!3728748 (= tp!1134581 e!2307370)))

(assert (= (and b!3728748 ((_ is ElementMatch!10919) (regTwo!22351 r!26968))) b!3728959))

(assert (= (and b!3728748 ((_ is Concat!17190) (regTwo!22351 r!26968))) b!3728960))

(assert (= (and b!3728748 ((_ is Star!10919) (regTwo!22351 r!26968))) b!3728961))

(assert (= (and b!3728748 ((_ is Union!10919) (regTwo!22351 r!26968))) b!3728962))

(check-sat (not b!3728962) (not b!3728764) (not b!3728945) (not b!3728957) (not b!3728946) (not b!3728954) (not b!3728830) (not b!3728952) (not d!1090315) (not b!3728961) (not d!1090307) (not b!3728948) (not b!3728956) (not bm!272040) (not b!3728944) (not bm!272062) (not b!3728949) (not bm!272034) (not b!3728960) (not b!3728950) (not bm!272032) (not b!3728924) (not bm!272067) (not bm!272038) (not bm!272064) (not bm!272039) (not b!3728953) (not b!3728958) (not b!3728899) (not bm!272033) (not bm!272065) tp_is_empty!18853)
(check-sat)
