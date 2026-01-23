; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243930 () Bool)

(assert start!243930)

(declare-fun b!2498029 () Bool)

(declare-fun e!1584827 () Bool)

(declare-fun tp!799891 () Bool)

(assert (=> b!2498029 (= e!1584827 tp!799891)))

(declare-fun b!2498030 () Bool)

(declare-fun res!1056490 () Bool)

(declare-fun e!1584826 () Bool)

(assert (=> b!2498030 (=> res!1056490 e!1584826)))

(declare-datatypes ((C!14934 0))(
  ( (C!14935 (val!9119 Int)) )
))
(declare-datatypes ((Regex!7388 0))(
  ( (ElementMatch!7388 (c!397334 C!14934)) (Concat!12084 (regOne!15288 Regex!7388) (regTwo!15288 Regex!7388)) (EmptyExpr!7388) (Star!7388 (reg!7717 Regex!7388)) (EmptyLang!7388) (Union!7388 (regOne!15289 Regex!7388) (regTwo!15289 Regex!7388)) )
))
(declare-fun lt!895174 () Regex!7388)

(declare-datatypes ((List!29453 0))(
  ( (Nil!29353) (Cons!29353 (h!34773 C!14934) (t!211152 List!29453)) )
))
(declare-datatypes ((tuple2!29394 0))(
  ( (tuple2!29395 (_1!17239 List!29453) (_2!17239 List!29453)) )
))
(declare-fun lt!895177 () tuple2!29394)

(declare-fun matchR!3397 (Regex!7388 List!29453) Bool)

(assert (=> b!2498030 (= res!1056490 (not (matchR!3397 lt!895174 (_1!17239 lt!895177))))))

(declare-fun b!2498031 () Bool)

(declare-fun res!1056493 () Bool)

(assert (=> b!2498031 (=> res!1056493 e!1584826)))

(declare-fun r!27340 () Regex!7388)

(declare-fun c!14016 () C!14934)

(assert (=> b!2498031 (= res!1056493 (not (matchR!3397 (reg!7717 r!27340) (Cons!29353 c!14016 (_1!17239 lt!895177)))))))

(declare-fun b!2498032 () Bool)

(declare-fun tp!799889 () Bool)

(declare-fun tp!799892 () Bool)

(assert (=> b!2498032 (= e!1584827 (and tp!799889 tp!799892))))

(declare-fun b!2498033 () Bool)

(declare-fun tp!799888 () Bool)

(declare-fun tp!799887 () Bool)

(assert (=> b!2498033 (= e!1584827 (and tp!799888 tp!799887))))

(declare-fun b!2498034 () Bool)

(declare-fun res!1056496 () Bool)

(declare-fun e!1584829 () Bool)

(assert (=> b!2498034 (=> (not res!1056496) (not e!1584829))))

(assert (=> b!2498034 (= res!1056496 (and (not (is-EmptyExpr!7388 r!27340)) (not (is-EmptyLang!7388 r!27340)) (not (is-ElementMatch!7388 r!27340)) (not (is-Union!7388 r!27340)) (is-Star!7388 r!27340)))))

(declare-fun b!2498035 () Bool)

(declare-fun e!1584828 () Bool)

(declare-fun tp_is_empty!12631 () Bool)

(declare-fun tp!799890 () Bool)

(assert (=> b!2498035 (= e!1584828 (and tp_is_empty!12631 tp!799890))))

(declare-fun b!2498037 () Bool)

(assert (=> b!2498037 (= e!1584827 tp_is_empty!12631)))

(declare-fun b!2498038 () Bool)

(declare-fun res!1056492 () Bool)

(declare-fun e!1584823 () Bool)

(assert (=> b!2498038 (=> (not res!1056492) (not e!1584823))))

(declare-fun tl!4068 () List!29453)

(declare-fun nullable!2305 (Regex!7388) Bool)

(declare-fun derivative!83 (Regex!7388 List!29453) Regex!7388)

(assert (=> b!2498038 (= res!1056492 (not (nullable!2305 (derivative!83 lt!895174 tl!4068))))))

(declare-fun b!2498039 () Bool)

(declare-fun res!1056491 () Bool)

(assert (=> b!2498039 (=> res!1056491 e!1584826)))

(declare-fun lt!895176 () Regex!7388)

(assert (=> b!2498039 (= res!1056491 (not (matchR!3397 lt!895176 (_2!17239 lt!895177))))))

(declare-fun b!2498040 () Bool)

(assert (=> b!2498040 (= e!1584829 e!1584823)))

(declare-fun res!1056494 () Bool)

(assert (=> b!2498040 (=> (not res!1056494) (not e!1584823))))

(declare-fun lt!895172 () Regex!7388)

(assert (=> b!2498040 (= res!1056494 (= lt!895172 (Concat!12084 lt!895174 lt!895176)))))

(assert (=> b!2498040 (= lt!895176 (Star!7388 (reg!7717 r!27340)))))

(declare-fun derivativeStep!1957 (Regex!7388 C!14934) Regex!7388)

(assert (=> b!2498040 (= lt!895174 (derivativeStep!1957 (reg!7717 r!27340) c!14016))))

(declare-fun b!2498041 () Bool)

(declare-fun validRegex!3014 (Regex!7388) Bool)

(assert (=> b!2498041 (= e!1584826 (validRegex!3014 (reg!7717 r!27340)))))

(declare-fun b!2498036 () Bool)

(declare-fun e!1584824 () Bool)

(assert (=> b!2498036 (= e!1584823 (not e!1584824))))

(declare-fun res!1056497 () Bool)

(assert (=> b!2498036 (=> res!1056497 e!1584824)))

(declare-fun lt!895169 () Bool)

(assert (=> b!2498036 (= res!1056497 (not lt!895169))))

(declare-fun lt!895175 () Regex!7388)

(assert (=> b!2498036 (= lt!895169 (matchR!3397 lt!895175 Nil!29353))))

(assert (=> b!2498036 (= lt!895169 (matchR!3397 lt!895172 tl!4068))))

(declare-datatypes ((Unit!43045 0))(
  ( (Unit!43046) )
))
(declare-fun lt!895171 () Unit!43045)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!43 (Regex!7388 List!29453) Unit!43045)

(assert (=> b!2498036 (= lt!895171 (lemmaMatchRIsSameAsWholeDerivativeAndNil!43 lt!895172 tl!4068))))

(declare-fun res!1056498 () Bool)

(declare-fun e!1584825 () Bool)

(assert (=> start!243930 (=> (not res!1056498) (not e!1584825))))

(assert (=> start!243930 (= res!1056498 (validRegex!3014 r!27340))))

(assert (=> start!243930 e!1584825))

(assert (=> start!243930 e!1584827))

(assert (=> start!243930 tp_is_empty!12631))

(assert (=> start!243930 e!1584828))

(declare-fun b!2498042 () Bool)

(assert (=> b!2498042 (= e!1584824 e!1584826)))

(declare-fun res!1056489 () Bool)

(assert (=> b!2498042 (=> res!1056489 e!1584826)))

(declare-fun ++!7170 (List!29453 List!29453) List!29453)

(assert (=> b!2498042 (= res!1056489 (not (= (++!7170 (_1!17239 lt!895177) (_2!17239 lt!895177)) tl!4068)))))

(declare-datatypes ((Option!5817 0))(
  ( (None!5816) (Some!5816 (v!31747 tuple2!29394)) )
))
(declare-fun lt!895170 () Option!5817)

(declare-fun get!9094 (Option!5817) tuple2!29394)

(assert (=> b!2498042 (= lt!895177 (get!9094 lt!895170))))

(declare-fun isDefined!4639 (Option!5817) Bool)

(assert (=> b!2498042 (isDefined!4639 lt!895170)))

(declare-fun findConcatSeparation!839 (Regex!7388 Regex!7388 List!29453 List!29453 List!29453) Option!5817)

(assert (=> b!2498042 (= lt!895170 (findConcatSeparation!839 lt!895174 lt!895176 Nil!29353 tl!4068 tl!4068))))

(declare-fun lt!895173 () Unit!43045)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!121 (Regex!7388 Regex!7388 List!29453) Unit!43045)

(assert (=> b!2498042 (= lt!895173 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!121 lt!895174 lt!895176 tl!4068))))

(declare-fun b!2498043 () Bool)

(assert (=> b!2498043 (= e!1584825 e!1584829)))

(declare-fun res!1056495 () Bool)

(assert (=> b!2498043 (=> (not res!1056495) (not e!1584829))))

(assert (=> b!2498043 (= res!1056495 (nullable!2305 lt!895175))))

(assert (=> b!2498043 (= lt!895175 (derivative!83 lt!895172 tl!4068))))

(assert (=> b!2498043 (= lt!895172 (derivativeStep!1957 r!27340 c!14016))))

(assert (= (and start!243930 res!1056498) b!2498043))

(assert (= (and b!2498043 res!1056495) b!2498034))

(assert (= (and b!2498034 res!1056496) b!2498040))

(assert (= (and b!2498040 res!1056494) b!2498038))

(assert (= (and b!2498038 res!1056492) b!2498036))

(assert (= (and b!2498036 (not res!1056497)) b!2498042))

(assert (= (and b!2498042 (not res!1056489)) b!2498039))

(assert (= (and b!2498039 (not res!1056491)) b!2498031))

(assert (= (and b!2498031 (not res!1056493)) b!2498030))

(assert (= (and b!2498030 (not res!1056490)) b!2498041))

(assert (= (and start!243930 (is-ElementMatch!7388 r!27340)) b!2498037))

(assert (= (and start!243930 (is-Concat!12084 r!27340)) b!2498033))

(assert (= (and start!243930 (is-Star!7388 r!27340)) b!2498029))

(assert (= (and start!243930 (is-Union!7388 r!27340)) b!2498032))

(assert (= (and start!243930 (is-Cons!29353 tl!4068)) b!2498035))

(declare-fun m!2861825 () Bool)

(assert (=> start!243930 m!2861825))

(declare-fun m!2861827 () Bool)

(assert (=> b!2498039 m!2861827))

(declare-fun m!2861829 () Bool)

(assert (=> b!2498038 m!2861829))

(assert (=> b!2498038 m!2861829))

(declare-fun m!2861831 () Bool)

(assert (=> b!2498038 m!2861831))

(declare-fun m!2861833 () Bool)

(assert (=> b!2498031 m!2861833))

(declare-fun m!2861835 () Bool)

(assert (=> b!2498043 m!2861835))

(declare-fun m!2861837 () Bool)

(assert (=> b!2498043 m!2861837))

(declare-fun m!2861839 () Bool)

(assert (=> b!2498043 m!2861839))

(declare-fun m!2861841 () Bool)

(assert (=> b!2498041 m!2861841))

(declare-fun m!2861843 () Bool)

(assert (=> b!2498036 m!2861843))

(declare-fun m!2861845 () Bool)

(assert (=> b!2498036 m!2861845))

(declare-fun m!2861847 () Bool)

(assert (=> b!2498036 m!2861847))

(declare-fun m!2861849 () Bool)

(assert (=> b!2498042 m!2861849))

(declare-fun m!2861851 () Bool)

(assert (=> b!2498042 m!2861851))

(declare-fun m!2861853 () Bool)

(assert (=> b!2498042 m!2861853))

(declare-fun m!2861855 () Bool)

(assert (=> b!2498042 m!2861855))

(declare-fun m!2861857 () Bool)

(assert (=> b!2498042 m!2861857))

(declare-fun m!2861859 () Bool)

(assert (=> b!2498040 m!2861859))

(declare-fun m!2861861 () Bool)

(assert (=> b!2498030 m!2861861))

(push 1)

(assert (not b!2498043))

(assert (not b!2498032))

(assert (not b!2498040))

(assert (not b!2498030))

(assert (not b!2498035))

(assert (not b!2498041))

(assert (not b!2498033))

(assert (not b!2498031))

(assert (not b!2498039))

(assert (not b!2498042))

(assert (not b!2498036))

(assert tp_is_empty!12631)

(assert (not b!2498029))

(assert (not start!243930))

(assert (not b!2498038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2498136 () Bool)

(declare-fun e!1584886 () Regex!7388)

(assert (=> b!2498136 (= e!1584886 (ite (= c!14016 (c!397334 (reg!7717 r!27340))) EmptyExpr!7388 EmptyLang!7388))))

(declare-fun b!2498137 () Bool)

(declare-fun c!397352 () Bool)

(assert (=> b!2498137 (= c!397352 (is-Union!7388 (reg!7717 r!27340)))))

(declare-fun e!1584885 () Regex!7388)

(assert (=> b!2498137 (= e!1584886 e!1584885)))

(declare-fun bm!154070 () Bool)

(declare-fun c!397356 () Bool)

(declare-fun call!154077 () Regex!7388)

(assert (=> bm!154070 (= call!154077 (derivativeStep!1957 (ite c!397352 (regOne!15289 (reg!7717 r!27340)) (ite c!397356 (reg!7717 (reg!7717 r!27340)) (regOne!15288 (reg!7717 r!27340)))) c!14016))))

(declare-fun b!2498138 () Bool)

(declare-fun e!1584883 () Regex!7388)

(assert (=> b!2498138 (= e!1584883 EmptyLang!7388)))

(declare-fun bm!154071 () Bool)

(declare-fun call!154076 () Regex!7388)

(declare-fun call!154075 () Regex!7388)

(assert (=> bm!154071 (= call!154076 call!154075)))

(declare-fun b!2498140 () Bool)

(declare-fun e!1584884 () Regex!7388)

(assert (=> b!2498140 (= e!1584885 e!1584884)))

(assert (=> b!2498140 (= c!397356 (is-Star!7388 (reg!7717 r!27340)))))

(declare-fun b!2498141 () Bool)

(declare-fun c!397355 () Bool)

(assert (=> b!2498141 (= c!397355 (nullable!2305 (regOne!15288 (reg!7717 r!27340))))))

(declare-fun e!1584882 () Regex!7388)

(assert (=> b!2498141 (= e!1584884 e!1584882)))

(declare-fun b!2498142 () Bool)

(assert (=> b!2498142 (= e!1584882 (Union!7388 (Concat!12084 call!154076 (regTwo!15288 (reg!7717 r!27340))) EmptyLang!7388))))

(declare-fun b!2498143 () Bool)

(assert (=> b!2498143 (= e!1584884 (Concat!12084 call!154075 (reg!7717 r!27340)))))

(declare-fun b!2498144 () Bool)

(declare-fun call!154078 () Regex!7388)

(assert (=> b!2498144 (= e!1584885 (Union!7388 call!154077 call!154078))))

(declare-fun bm!154072 () Bool)

(assert (=> bm!154072 (= call!154078 (derivativeStep!1957 (ite c!397352 (regTwo!15289 (reg!7717 r!27340)) (regTwo!15288 (reg!7717 r!27340))) c!14016))))

(declare-fun d!715116 () Bool)

(declare-fun lt!895207 () Regex!7388)

(assert (=> d!715116 (validRegex!3014 lt!895207)))

(assert (=> d!715116 (= lt!895207 e!1584883)))

(declare-fun c!397353 () Bool)

(assert (=> d!715116 (= c!397353 (or (is-EmptyExpr!7388 (reg!7717 r!27340)) (is-EmptyLang!7388 (reg!7717 r!27340))))))

(assert (=> d!715116 (validRegex!3014 (reg!7717 r!27340))))

(assert (=> d!715116 (= (derivativeStep!1957 (reg!7717 r!27340) c!14016) lt!895207)))

(declare-fun b!2498139 () Bool)

(assert (=> b!2498139 (= e!1584882 (Union!7388 (Concat!12084 call!154076 (regTwo!15288 (reg!7717 r!27340))) call!154078))))

(declare-fun bm!154073 () Bool)

(assert (=> bm!154073 (= call!154075 call!154077)))

(declare-fun b!2498145 () Bool)

(assert (=> b!2498145 (= e!1584883 e!1584886)))

(declare-fun c!397354 () Bool)

(assert (=> b!2498145 (= c!397354 (is-ElementMatch!7388 (reg!7717 r!27340)))))

(assert (= (and d!715116 c!397353) b!2498138))

(assert (= (and d!715116 (not c!397353)) b!2498145))

(assert (= (and b!2498145 c!397354) b!2498136))

(assert (= (and b!2498145 (not c!397354)) b!2498137))

(assert (= (and b!2498137 c!397352) b!2498144))

(assert (= (and b!2498137 (not c!397352)) b!2498140))

(assert (= (and b!2498140 c!397356) b!2498143))

(assert (= (and b!2498140 (not c!397356)) b!2498141))

(assert (= (and b!2498141 c!397355) b!2498139))

(assert (= (and b!2498141 (not c!397355)) b!2498142))

(assert (= (or b!2498139 b!2498142) bm!154071))

(assert (= (or b!2498143 bm!154071) bm!154073))

(assert (= (or b!2498144 b!2498139) bm!154072))

(assert (= (or b!2498144 bm!154073) bm!154070))

(declare-fun m!2861907 () Bool)

(assert (=> bm!154070 m!2861907))

(declare-fun m!2861909 () Bool)

(assert (=> b!2498141 m!2861909))

(declare-fun m!2861911 () Bool)

(assert (=> bm!154072 m!2861911))

(declare-fun m!2861913 () Bool)

(assert (=> d!715116 m!2861913))

(assert (=> d!715116 m!2861841))

(assert (=> b!2498040 d!715116))

(declare-fun bm!154078 () Bool)

(declare-fun call!154083 () Bool)

(declare-fun isEmpty!16823 (List!29453) Bool)

(assert (=> bm!154078 (= call!154083 (isEmpty!16823 (_1!17239 lt!895177)))))

(declare-fun b!2498202 () Bool)

(declare-fun res!1056577 () Bool)

(declare-fun e!1584921 () Bool)

(assert (=> b!2498202 (=> res!1056577 e!1584921)))

(declare-fun e!1584917 () Bool)

(assert (=> b!2498202 (= res!1056577 e!1584917)))

(declare-fun res!1056582 () Bool)

(assert (=> b!2498202 (=> (not res!1056582) (not e!1584917))))

(declare-fun lt!895212 () Bool)

(assert (=> b!2498202 (= res!1056582 lt!895212)))

(declare-fun b!2498203 () Bool)

(declare-fun res!1056580 () Bool)

(assert (=> b!2498203 (=> (not res!1056580) (not e!1584917))))

(assert (=> b!2498203 (= res!1056580 (not call!154083))))

(declare-fun b!2498204 () Bool)

(declare-fun e!1584915 () Bool)

(declare-fun head!5689 (List!29453) C!14934)

(declare-fun tail!3966 (List!29453) List!29453)

(assert (=> b!2498204 (= e!1584915 (matchR!3397 (derivativeStep!1957 lt!895174 (head!5689 (_1!17239 lt!895177))) (tail!3966 (_1!17239 lt!895177))))))

(declare-fun b!2498205 () Bool)

(declare-fun res!1056583 () Bool)

(assert (=> b!2498205 (=> res!1056583 e!1584921)))

(assert (=> b!2498205 (= res!1056583 (not (is-ElementMatch!7388 lt!895174)))))

(declare-fun e!1584919 () Bool)

(assert (=> b!2498205 (= e!1584919 e!1584921)))

(declare-fun b!2498206 () Bool)

(declare-fun res!1056581 () Bool)

(declare-fun e!1584918 () Bool)

(assert (=> b!2498206 (=> res!1056581 e!1584918)))

(assert (=> b!2498206 (= res!1056581 (not (isEmpty!16823 (tail!3966 (_1!17239 lt!895177)))))))

(declare-fun b!2498207 () Bool)

(declare-fun e!1584920 () Bool)

(assert (=> b!2498207 (= e!1584921 e!1584920)))

(declare-fun res!1056579 () Bool)

(assert (=> b!2498207 (=> (not res!1056579) (not e!1584920))))

(assert (=> b!2498207 (= res!1056579 (not lt!895212))))

(declare-fun d!715122 () Bool)

(declare-fun e!1584916 () Bool)

(assert (=> d!715122 e!1584916))

(declare-fun c!397370 () Bool)

(assert (=> d!715122 (= c!397370 (is-EmptyExpr!7388 lt!895174))))

(assert (=> d!715122 (= lt!895212 e!1584915)))

(declare-fun c!397371 () Bool)

(assert (=> d!715122 (= c!397371 (isEmpty!16823 (_1!17239 lt!895177)))))

(assert (=> d!715122 (validRegex!3014 lt!895174)))

(assert (=> d!715122 (= (matchR!3397 lt!895174 (_1!17239 lt!895177)) lt!895212)))

(declare-fun b!2498208 () Bool)

(assert (=> b!2498208 (= e!1584920 e!1584918)))

(declare-fun res!1056576 () Bool)

(assert (=> b!2498208 (=> res!1056576 e!1584918)))

(assert (=> b!2498208 (= res!1056576 call!154083)))

(declare-fun b!2498209 () Bool)

(assert (=> b!2498209 (= e!1584918 (not (= (head!5689 (_1!17239 lt!895177)) (c!397334 lt!895174))))))

(declare-fun b!2498210 () Bool)

(assert (=> b!2498210 (= e!1584917 (= (head!5689 (_1!17239 lt!895177)) (c!397334 lt!895174)))))

(declare-fun b!2498211 () Bool)

(assert (=> b!2498211 (= e!1584919 (not lt!895212))))

(declare-fun b!2498212 () Bool)

(declare-fun res!1056578 () Bool)

(assert (=> b!2498212 (=> (not res!1056578) (not e!1584917))))

(assert (=> b!2498212 (= res!1056578 (isEmpty!16823 (tail!3966 (_1!17239 lt!895177))))))

(declare-fun b!2498213 () Bool)

(assert (=> b!2498213 (= e!1584916 e!1584919)))

(declare-fun c!397369 () Bool)

(assert (=> b!2498213 (= c!397369 (is-EmptyLang!7388 lt!895174))))

(declare-fun b!2498214 () Bool)

(assert (=> b!2498214 (= e!1584915 (nullable!2305 lt!895174))))

(declare-fun b!2498215 () Bool)

(assert (=> b!2498215 (= e!1584916 (= lt!895212 call!154083))))

(assert (= (and d!715122 c!397371) b!2498214))

(assert (= (and d!715122 (not c!397371)) b!2498204))

(assert (= (and d!715122 c!397370) b!2498215))

(assert (= (and d!715122 (not c!397370)) b!2498213))

(assert (= (and b!2498213 c!397369) b!2498211))

(assert (= (and b!2498213 (not c!397369)) b!2498205))

(assert (= (and b!2498205 (not res!1056583)) b!2498202))

(assert (= (and b!2498202 res!1056582) b!2498203))

(assert (= (and b!2498203 res!1056580) b!2498212))

(assert (= (and b!2498212 res!1056578) b!2498210))

(assert (= (and b!2498202 (not res!1056577)) b!2498207))

(assert (= (and b!2498207 res!1056579) b!2498208))

(assert (= (and b!2498208 (not res!1056576)) b!2498206))

(assert (= (and b!2498206 (not res!1056581)) b!2498209))

(assert (= (or b!2498215 b!2498203 b!2498208) bm!154078))

(declare-fun m!2861915 () Bool)

(assert (=> b!2498209 m!2861915))

(assert (=> b!2498204 m!2861915))

(assert (=> b!2498204 m!2861915))

(declare-fun m!2861917 () Bool)

(assert (=> b!2498204 m!2861917))

(declare-fun m!2861919 () Bool)

(assert (=> b!2498204 m!2861919))

(assert (=> b!2498204 m!2861917))

(assert (=> b!2498204 m!2861919))

(declare-fun m!2861921 () Bool)

(assert (=> b!2498204 m!2861921))

(assert (=> b!2498212 m!2861919))

(assert (=> b!2498212 m!2861919))

(declare-fun m!2861923 () Bool)

(assert (=> b!2498212 m!2861923))

(declare-fun m!2861925 () Bool)

(assert (=> b!2498214 m!2861925))

(declare-fun m!2861927 () Bool)

(assert (=> bm!154078 m!2861927))

(assert (=> b!2498206 m!2861919))

(assert (=> b!2498206 m!2861919))

(assert (=> b!2498206 m!2861923))

(assert (=> b!2498210 m!2861915))

(assert (=> d!715122 m!2861927))

(declare-fun m!2861929 () Bool)

(assert (=> d!715122 m!2861929))

(assert (=> b!2498030 d!715122))

(declare-fun b!2498262 () Bool)

(declare-fun res!1056610 () Bool)

(declare-fun e!1584954 () Bool)

(assert (=> b!2498262 (=> res!1056610 e!1584954)))

(assert (=> b!2498262 (= res!1056610 (not (is-Concat!12084 (reg!7717 r!27340))))))

(declare-fun e!1584950 () Bool)

(assert (=> b!2498262 (= e!1584950 e!1584954)))

(declare-fun b!2498263 () Bool)

(declare-fun e!1584952 () Bool)

(declare-fun call!154092 () Bool)

(assert (=> b!2498263 (= e!1584952 call!154092)))

(declare-fun b!2498264 () Bool)

(declare-fun e!1584955 () Bool)

(assert (=> b!2498264 (= e!1584954 e!1584955)))

(declare-fun res!1056611 () Bool)

(assert (=> b!2498264 (=> (not res!1056611) (not e!1584955))))

(assert (=> b!2498264 (= res!1056611 call!154092)))

(declare-fun b!2498265 () Bool)

(declare-fun e!1584951 () Bool)

(declare-fun e!1584956 () Bool)

(assert (=> b!2498265 (= e!1584951 e!1584956)))

(declare-fun res!1056612 () Bool)

(assert (=> b!2498265 (= res!1056612 (not (nullable!2305 (reg!7717 (reg!7717 r!27340)))))))

(assert (=> b!2498265 (=> (not res!1056612) (not e!1584956))))

(declare-fun d!715124 () Bool)

(declare-fun res!1056614 () Bool)

(declare-fun e!1584953 () Bool)

(assert (=> d!715124 (=> res!1056614 e!1584953)))

(assert (=> d!715124 (= res!1056614 (is-ElementMatch!7388 (reg!7717 r!27340)))))

(assert (=> d!715124 (= (validRegex!3014 (reg!7717 r!27340)) e!1584953)))

(declare-fun bm!154087 () Bool)

(declare-fun call!154094 () Bool)

(declare-fun c!397382 () Bool)

(assert (=> bm!154087 (= call!154094 (validRegex!3014 (ite c!397382 (regOne!15289 (reg!7717 r!27340)) (regTwo!15288 (reg!7717 r!27340)))))))

(declare-fun b!2498266 () Bool)

(assert (=> b!2498266 (= e!1584951 e!1584950)))

(assert (=> b!2498266 (= c!397382 (is-Union!7388 (reg!7717 r!27340)))))

(declare-fun b!2498267 () Bool)

(assert (=> b!2498267 (= e!1584955 call!154094)))

(declare-fun bm!154088 () Bool)

(declare-fun call!154093 () Bool)

(assert (=> bm!154088 (= call!154092 call!154093)))

(declare-fun b!2498268 () Bool)

(declare-fun res!1056613 () Bool)

(assert (=> b!2498268 (=> (not res!1056613) (not e!1584952))))

(assert (=> b!2498268 (= res!1056613 call!154094)))

(assert (=> b!2498268 (= e!1584950 e!1584952)))

(declare-fun b!2498269 () Bool)

(assert (=> b!2498269 (= e!1584956 call!154093)))

(declare-fun b!2498270 () Bool)

(assert (=> b!2498270 (= e!1584953 e!1584951)))

(declare-fun c!397383 () Bool)

(assert (=> b!2498270 (= c!397383 (is-Star!7388 (reg!7717 r!27340)))))

(declare-fun bm!154089 () Bool)

(assert (=> bm!154089 (= call!154093 (validRegex!3014 (ite c!397383 (reg!7717 (reg!7717 r!27340)) (ite c!397382 (regTwo!15289 (reg!7717 r!27340)) (regOne!15288 (reg!7717 r!27340))))))))

(assert (= (and d!715124 (not res!1056614)) b!2498270))

(assert (= (and b!2498270 c!397383) b!2498265))

(assert (= (and b!2498270 (not c!397383)) b!2498266))

(assert (= (and b!2498265 res!1056612) b!2498269))

(assert (= (and b!2498266 c!397382) b!2498268))

(assert (= (and b!2498266 (not c!397382)) b!2498262))

(assert (= (and b!2498268 res!1056613) b!2498263))

(assert (= (and b!2498262 (not res!1056610)) b!2498264))

(assert (= (and b!2498264 res!1056611) b!2498267))

(assert (= (or b!2498268 b!2498267) bm!154087))

(assert (= (or b!2498263 b!2498264) bm!154088))

(assert (= (or b!2498269 bm!154088) bm!154089))

(declare-fun m!2861961 () Bool)

(assert (=> b!2498265 m!2861961))

(declare-fun m!2861963 () Bool)

(assert (=> bm!154087 m!2861963))

(declare-fun m!2861965 () Bool)

(assert (=> bm!154089 m!2861965))

(assert (=> b!2498041 d!715124))

(declare-fun bm!154090 () Bool)

(declare-fun call!154095 () Bool)

(assert (=> bm!154090 (= call!154095 (isEmpty!16823 Nil!29353))))

(declare-fun b!2498271 () Bool)

(declare-fun res!1056616 () Bool)

(declare-fun e!1584963 () Bool)

(assert (=> b!2498271 (=> res!1056616 e!1584963)))

(declare-fun e!1584959 () Bool)

(assert (=> b!2498271 (= res!1056616 e!1584959)))

(declare-fun res!1056621 () Bool)

(assert (=> b!2498271 (=> (not res!1056621) (not e!1584959))))

(declare-fun lt!895215 () Bool)

(assert (=> b!2498271 (= res!1056621 lt!895215)))

(declare-fun b!2498272 () Bool)

(declare-fun res!1056619 () Bool)

(assert (=> b!2498272 (=> (not res!1056619) (not e!1584959))))

(assert (=> b!2498272 (= res!1056619 (not call!154095))))

(declare-fun b!2498273 () Bool)

(declare-fun e!1584957 () Bool)

(assert (=> b!2498273 (= e!1584957 (matchR!3397 (derivativeStep!1957 lt!895175 (head!5689 Nil!29353)) (tail!3966 Nil!29353)))))

(declare-fun b!2498274 () Bool)

(declare-fun res!1056622 () Bool)

(assert (=> b!2498274 (=> res!1056622 e!1584963)))

(assert (=> b!2498274 (= res!1056622 (not (is-ElementMatch!7388 lt!895175)))))

(declare-fun e!1584961 () Bool)

(assert (=> b!2498274 (= e!1584961 e!1584963)))

(declare-fun b!2498275 () Bool)

(declare-fun res!1056620 () Bool)

(declare-fun e!1584960 () Bool)

(assert (=> b!2498275 (=> res!1056620 e!1584960)))

(assert (=> b!2498275 (= res!1056620 (not (isEmpty!16823 (tail!3966 Nil!29353))))))

(declare-fun b!2498276 () Bool)

(declare-fun e!1584962 () Bool)

(assert (=> b!2498276 (= e!1584963 e!1584962)))

(declare-fun res!1056618 () Bool)

(assert (=> b!2498276 (=> (not res!1056618) (not e!1584962))))

(assert (=> b!2498276 (= res!1056618 (not lt!895215))))

(declare-fun d!715130 () Bool)

(declare-fun e!1584958 () Bool)

(assert (=> d!715130 e!1584958))

(declare-fun c!397385 () Bool)

(assert (=> d!715130 (= c!397385 (is-EmptyExpr!7388 lt!895175))))

(assert (=> d!715130 (= lt!895215 e!1584957)))

(declare-fun c!397386 () Bool)

(assert (=> d!715130 (= c!397386 (isEmpty!16823 Nil!29353))))

(assert (=> d!715130 (validRegex!3014 lt!895175)))

(assert (=> d!715130 (= (matchR!3397 lt!895175 Nil!29353) lt!895215)))

(declare-fun b!2498277 () Bool)

(assert (=> b!2498277 (= e!1584962 e!1584960)))

(declare-fun res!1056615 () Bool)

(assert (=> b!2498277 (=> res!1056615 e!1584960)))

(assert (=> b!2498277 (= res!1056615 call!154095)))

(declare-fun b!2498278 () Bool)

(assert (=> b!2498278 (= e!1584960 (not (= (head!5689 Nil!29353) (c!397334 lt!895175))))))

(declare-fun b!2498279 () Bool)

(assert (=> b!2498279 (= e!1584959 (= (head!5689 Nil!29353) (c!397334 lt!895175)))))

(declare-fun b!2498280 () Bool)

(assert (=> b!2498280 (= e!1584961 (not lt!895215))))

(declare-fun b!2498281 () Bool)

(declare-fun res!1056617 () Bool)

(assert (=> b!2498281 (=> (not res!1056617) (not e!1584959))))

(assert (=> b!2498281 (= res!1056617 (isEmpty!16823 (tail!3966 Nil!29353)))))

(declare-fun b!2498282 () Bool)

(assert (=> b!2498282 (= e!1584958 e!1584961)))

(declare-fun c!397384 () Bool)

(assert (=> b!2498282 (= c!397384 (is-EmptyLang!7388 lt!895175))))

(declare-fun b!2498283 () Bool)

(assert (=> b!2498283 (= e!1584957 (nullable!2305 lt!895175))))

(declare-fun b!2498284 () Bool)

(assert (=> b!2498284 (= e!1584958 (= lt!895215 call!154095))))

(assert (= (and d!715130 c!397386) b!2498283))

(assert (= (and d!715130 (not c!397386)) b!2498273))

(assert (= (and d!715130 c!397385) b!2498284))

(assert (= (and d!715130 (not c!397385)) b!2498282))

(assert (= (and b!2498282 c!397384) b!2498280))

(assert (= (and b!2498282 (not c!397384)) b!2498274))

(assert (= (and b!2498274 (not res!1056622)) b!2498271))

(assert (= (and b!2498271 res!1056621) b!2498272))

(assert (= (and b!2498272 res!1056619) b!2498281))

(assert (= (and b!2498281 res!1056617) b!2498279))

(assert (= (and b!2498271 (not res!1056616)) b!2498276))

(assert (= (and b!2498276 res!1056618) b!2498277))

(assert (= (and b!2498277 (not res!1056615)) b!2498275))

(assert (= (and b!2498275 (not res!1056620)) b!2498278))

(assert (= (or b!2498284 b!2498272 b!2498277) bm!154090))

(declare-fun m!2861967 () Bool)

(assert (=> b!2498278 m!2861967))

(assert (=> b!2498273 m!2861967))

(assert (=> b!2498273 m!2861967))

(declare-fun m!2861969 () Bool)

(assert (=> b!2498273 m!2861969))

(declare-fun m!2861971 () Bool)

(assert (=> b!2498273 m!2861971))

(assert (=> b!2498273 m!2861969))

(assert (=> b!2498273 m!2861971))

(declare-fun m!2861973 () Bool)

(assert (=> b!2498273 m!2861973))

(assert (=> b!2498281 m!2861971))

(assert (=> b!2498281 m!2861971))

(declare-fun m!2861975 () Bool)

(assert (=> b!2498281 m!2861975))

(assert (=> b!2498283 m!2861835))

(declare-fun m!2861977 () Bool)

(assert (=> bm!154090 m!2861977))

(assert (=> b!2498275 m!2861971))

(assert (=> b!2498275 m!2861971))

(assert (=> b!2498275 m!2861975))

(assert (=> b!2498279 m!2861967))

(assert (=> d!715130 m!2861977))

(declare-fun m!2861979 () Bool)

(assert (=> d!715130 m!2861979))

(assert (=> b!2498036 d!715130))

(declare-fun bm!154091 () Bool)

(declare-fun call!154096 () Bool)

(assert (=> bm!154091 (= call!154096 (isEmpty!16823 tl!4068))))

(declare-fun b!2498285 () Bool)

(declare-fun res!1056624 () Bool)

(declare-fun e!1584970 () Bool)

(assert (=> b!2498285 (=> res!1056624 e!1584970)))

(declare-fun e!1584966 () Bool)

(assert (=> b!2498285 (= res!1056624 e!1584966)))

(declare-fun res!1056629 () Bool)

(assert (=> b!2498285 (=> (not res!1056629) (not e!1584966))))

(declare-fun lt!895218 () Bool)

(assert (=> b!2498285 (= res!1056629 lt!895218)))

(declare-fun b!2498286 () Bool)

(declare-fun res!1056627 () Bool)

(assert (=> b!2498286 (=> (not res!1056627) (not e!1584966))))

(assert (=> b!2498286 (= res!1056627 (not call!154096))))

(declare-fun b!2498287 () Bool)

(declare-fun e!1584964 () Bool)

(assert (=> b!2498287 (= e!1584964 (matchR!3397 (derivativeStep!1957 lt!895172 (head!5689 tl!4068)) (tail!3966 tl!4068)))))

(declare-fun b!2498288 () Bool)

(declare-fun res!1056630 () Bool)

(assert (=> b!2498288 (=> res!1056630 e!1584970)))

(assert (=> b!2498288 (= res!1056630 (not (is-ElementMatch!7388 lt!895172)))))

(declare-fun e!1584968 () Bool)

(assert (=> b!2498288 (= e!1584968 e!1584970)))

(declare-fun b!2498289 () Bool)

(declare-fun res!1056628 () Bool)

(declare-fun e!1584967 () Bool)

(assert (=> b!2498289 (=> res!1056628 e!1584967)))

(assert (=> b!2498289 (= res!1056628 (not (isEmpty!16823 (tail!3966 tl!4068))))))

(declare-fun b!2498290 () Bool)

(declare-fun e!1584969 () Bool)

(assert (=> b!2498290 (= e!1584970 e!1584969)))

(declare-fun res!1056626 () Bool)

(assert (=> b!2498290 (=> (not res!1056626) (not e!1584969))))

(assert (=> b!2498290 (= res!1056626 (not lt!895218))))

(declare-fun d!715132 () Bool)

(declare-fun e!1584965 () Bool)

(assert (=> d!715132 e!1584965))

(declare-fun c!397388 () Bool)

(assert (=> d!715132 (= c!397388 (is-EmptyExpr!7388 lt!895172))))

(assert (=> d!715132 (= lt!895218 e!1584964)))

(declare-fun c!397389 () Bool)

(assert (=> d!715132 (= c!397389 (isEmpty!16823 tl!4068))))

(assert (=> d!715132 (validRegex!3014 lt!895172)))

(assert (=> d!715132 (= (matchR!3397 lt!895172 tl!4068) lt!895218)))

(declare-fun b!2498291 () Bool)

(assert (=> b!2498291 (= e!1584969 e!1584967)))

(declare-fun res!1056623 () Bool)

(assert (=> b!2498291 (=> res!1056623 e!1584967)))

(assert (=> b!2498291 (= res!1056623 call!154096)))

(declare-fun b!2498292 () Bool)

(assert (=> b!2498292 (= e!1584967 (not (= (head!5689 tl!4068) (c!397334 lt!895172))))))

(declare-fun b!2498293 () Bool)

(assert (=> b!2498293 (= e!1584966 (= (head!5689 tl!4068) (c!397334 lt!895172)))))

(declare-fun b!2498294 () Bool)

(assert (=> b!2498294 (= e!1584968 (not lt!895218))))

(declare-fun b!2498295 () Bool)

(declare-fun res!1056625 () Bool)

(assert (=> b!2498295 (=> (not res!1056625) (not e!1584966))))

(assert (=> b!2498295 (= res!1056625 (isEmpty!16823 (tail!3966 tl!4068)))))

(declare-fun b!2498296 () Bool)

(assert (=> b!2498296 (= e!1584965 e!1584968)))

(declare-fun c!397387 () Bool)

(assert (=> b!2498296 (= c!397387 (is-EmptyLang!7388 lt!895172))))

(declare-fun b!2498297 () Bool)

(assert (=> b!2498297 (= e!1584964 (nullable!2305 lt!895172))))

(declare-fun b!2498298 () Bool)

(assert (=> b!2498298 (= e!1584965 (= lt!895218 call!154096))))

(assert (= (and d!715132 c!397389) b!2498297))

(assert (= (and d!715132 (not c!397389)) b!2498287))

(assert (= (and d!715132 c!397388) b!2498298))

(assert (= (and d!715132 (not c!397388)) b!2498296))

(assert (= (and b!2498296 c!397387) b!2498294))

(assert (= (and b!2498296 (not c!397387)) b!2498288))

(assert (= (and b!2498288 (not res!1056630)) b!2498285))

(assert (= (and b!2498285 res!1056629) b!2498286))

(assert (= (and b!2498286 res!1056627) b!2498295))

(assert (= (and b!2498295 res!1056625) b!2498293))

(assert (= (and b!2498285 (not res!1056624)) b!2498290))

(assert (= (and b!2498290 res!1056626) b!2498291))

(assert (= (and b!2498291 (not res!1056623)) b!2498289))

(assert (= (and b!2498289 (not res!1056628)) b!2498292))

(assert (= (or b!2498298 b!2498286 b!2498291) bm!154091))

(declare-fun m!2861981 () Bool)

(assert (=> b!2498292 m!2861981))

(assert (=> b!2498287 m!2861981))

(assert (=> b!2498287 m!2861981))

(declare-fun m!2861985 () Bool)

(assert (=> b!2498287 m!2861985))

(declare-fun m!2861987 () Bool)

(assert (=> b!2498287 m!2861987))

(assert (=> b!2498287 m!2861985))

(assert (=> b!2498287 m!2861987))

(declare-fun m!2861991 () Bool)

(assert (=> b!2498287 m!2861991))

(assert (=> b!2498295 m!2861987))

(assert (=> b!2498295 m!2861987))

(declare-fun m!2861993 () Bool)

(assert (=> b!2498295 m!2861993))

(declare-fun m!2861995 () Bool)

(assert (=> b!2498297 m!2861995))

(declare-fun m!2861997 () Bool)

(assert (=> bm!154091 m!2861997))

(assert (=> b!2498289 m!2861987))

(assert (=> b!2498289 m!2861987))

(assert (=> b!2498289 m!2861993))

(assert (=> b!2498293 m!2861981))

(assert (=> d!715132 m!2861997))

(declare-fun m!2861999 () Bool)

(assert (=> d!715132 m!2861999))

(assert (=> b!2498036 d!715132))

(declare-fun d!715136 () Bool)

(assert (=> d!715136 (= (matchR!3397 lt!895172 tl!4068) (matchR!3397 (derivative!83 lt!895172 tl!4068) Nil!29353))))

(declare-fun lt!895223 () Unit!43045)

(declare-fun choose!14755 (Regex!7388 List!29453) Unit!43045)

(assert (=> d!715136 (= lt!895223 (choose!14755 lt!895172 tl!4068))))

(assert (=> d!715136 (validRegex!3014 lt!895172)))

(assert (=> d!715136 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!43 lt!895172 tl!4068) lt!895223)))

(declare-fun bs!468513 () Bool)

(assert (= bs!468513 d!715136))

(declare-fun m!2862017 () Bool)

(assert (=> bs!468513 m!2862017))

(assert (=> bs!468513 m!2861837))

(declare-fun m!2862019 () Bool)

(assert (=> bs!468513 m!2862019))

(assert (=> bs!468513 m!2861999))

(assert (=> bs!468513 m!2861837))

(assert (=> bs!468513 m!2861845))

(assert (=> b!2498036 d!715136))

(declare-fun bm!154093 () Bool)

(declare-fun call!154098 () Bool)

(assert (=> bm!154093 (= call!154098 (isEmpty!16823 (Cons!29353 c!14016 (_1!17239 lt!895177))))))

(declare-fun b!2498313 () Bool)

(declare-fun res!1056640 () Bool)

(declare-fun e!1584984 () Bool)

(assert (=> b!2498313 (=> res!1056640 e!1584984)))

(declare-fun e!1584980 () Bool)

(assert (=> b!2498313 (= res!1056640 e!1584980)))

(declare-fun res!1056645 () Bool)

(assert (=> b!2498313 (=> (not res!1056645) (not e!1584980))))

(declare-fun lt!895224 () Bool)

(assert (=> b!2498313 (= res!1056645 lt!895224)))

(declare-fun b!2498314 () Bool)

(declare-fun res!1056643 () Bool)

(assert (=> b!2498314 (=> (not res!1056643) (not e!1584980))))

(assert (=> b!2498314 (= res!1056643 (not call!154098))))

(declare-fun b!2498315 () Bool)

(declare-fun e!1584978 () Bool)

(assert (=> b!2498315 (= e!1584978 (matchR!3397 (derivativeStep!1957 (reg!7717 r!27340) (head!5689 (Cons!29353 c!14016 (_1!17239 lt!895177)))) (tail!3966 (Cons!29353 c!14016 (_1!17239 lt!895177)))))))

(declare-fun b!2498316 () Bool)

(declare-fun res!1056646 () Bool)

(assert (=> b!2498316 (=> res!1056646 e!1584984)))

(assert (=> b!2498316 (= res!1056646 (not (is-ElementMatch!7388 (reg!7717 r!27340))))))

(declare-fun e!1584982 () Bool)

(assert (=> b!2498316 (= e!1584982 e!1584984)))

(declare-fun b!2498317 () Bool)

(declare-fun res!1056644 () Bool)

(declare-fun e!1584981 () Bool)

(assert (=> b!2498317 (=> res!1056644 e!1584981)))

(assert (=> b!2498317 (= res!1056644 (not (isEmpty!16823 (tail!3966 (Cons!29353 c!14016 (_1!17239 lt!895177))))))))

(declare-fun b!2498318 () Bool)

(declare-fun e!1584983 () Bool)

(assert (=> b!2498318 (= e!1584984 e!1584983)))

(declare-fun res!1056642 () Bool)

(assert (=> b!2498318 (=> (not res!1056642) (not e!1584983))))

(assert (=> b!2498318 (= res!1056642 (not lt!895224))))

(declare-fun d!715142 () Bool)

(declare-fun e!1584979 () Bool)

(assert (=> d!715142 e!1584979))

(declare-fun c!397394 () Bool)

(assert (=> d!715142 (= c!397394 (is-EmptyExpr!7388 (reg!7717 r!27340)))))

(assert (=> d!715142 (= lt!895224 e!1584978)))

(declare-fun c!397395 () Bool)

(assert (=> d!715142 (= c!397395 (isEmpty!16823 (Cons!29353 c!14016 (_1!17239 lt!895177))))))

(assert (=> d!715142 (validRegex!3014 (reg!7717 r!27340))))

(assert (=> d!715142 (= (matchR!3397 (reg!7717 r!27340) (Cons!29353 c!14016 (_1!17239 lt!895177))) lt!895224)))

(declare-fun b!2498319 () Bool)

(assert (=> b!2498319 (= e!1584983 e!1584981)))

(declare-fun res!1056639 () Bool)

(assert (=> b!2498319 (=> res!1056639 e!1584981)))

(assert (=> b!2498319 (= res!1056639 call!154098)))

(declare-fun b!2498320 () Bool)

(assert (=> b!2498320 (= e!1584981 (not (= (head!5689 (Cons!29353 c!14016 (_1!17239 lt!895177))) (c!397334 (reg!7717 r!27340)))))))

(declare-fun b!2498321 () Bool)

(assert (=> b!2498321 (= e!1584980 (= (head!5689 (Cons!29353 c!14016 (_1!17239 lt!895177))) (c!397334 (reg!7717 r!27340))))))

(declare-fun b!2498322 () Bool)

(assert (=> b!2498322 (= e!1584982 (not lt!895224))))

(declare-fun b!2498323 () Bool)

(declare-fun res!1056641 () Bool)

(assert (=> b!2498323 (=> (not res!1056641) (not e!1584980))))

(assert (=> b!2498323 (= res!1056641 (isEmpty!16823 (tail!3966 (Cons!29353 c!14016 (_1!17239 lt!895177)))))))

(declare-fun b!2498324 () Bool)

(assert (=> b!2498324 (= e!1584979 e!1584982)))

(declare-fun c!397393 () Bool)

(assert (=> b!2498324 (= c!397393 (is-EmptyLang!7388 (reg!7717 r!27340)))))

(declare-fun b!2498325 () Bool)

(assert (=> b!2498325 (= e!1584978 (nullable!2305 (reg!7717 r!27340)))))

(declare-fun b!2498326 () Bool)

(assert (=> b!2498326 (= e!1584979 (= lt!895224 call!154098))))

(assert (= (and d!715142 c!397395) b!2498325))

(assert (= (and d!715142 (not c!397395)) b!2498315))

(assert (= (and d!715142 c!397394) b!2498326))

(assert (= (and d!715142 (not c!397394)) b!2498324))

(assert (= (and b!2498324 c!397393) b!2498322))

(assert (= (and b!2498324 (not c!397393)) b!2498316))

(assert (= (and b!2498316 (not res!1056646)) b!2498313))

(assert (= (and b!2498313 res!1056645) b!2498314))

(assert (= (and b!2498314 res!1056643) b!2498323))

(assert (= (and b!2498323 res!1056641) b!2498321))

(assert (= (and b!2498313 (not res!1056640)) b!2498318))

(assert (= (and b!2498318 res!1056642) b!2498319))

(assert (= (and b!2498319 (not res!1056639)) b!2498317))

(assert (= (and b!2498317 (not res!1056644)) b!2498320))

(assert (= (or b!2498326 b!2498314 b!2498319) bm!154093))

(declare-fun m!2862021 () Bool)

(assert (=> b!2498320 m!2862021))

(assert (=> b!2498315 m!2862021))

(assert (=> b!2498315 m!2862021))

(declare-fun m!2862023 () Bool)

(assert (=> b!2498315 m!2862023))

(declare-fun m!2862025 () Bool)

(assert (=> b!2498315 m!2862025))

(assert (=> b!2498315 m!2862023))

(assert (=> b!2498315 m!2862025))

(declare-fun m!2862027 () Bool)

(assert (=> b!2498315 m!2862027))

(assert (=> b!2498323 m!2862025))

(assert (=> b!2498323 m!2862025))

(declare-fun m!2862029 () Bool)

(assert (=> b!2498323 m!2862029))

(declare-fun m!2862031 () Bool)

(assert (=> b!2498325 m!2862031))

(declare-fun m!2862033 () Bool)

(assert (=> bm!154093 m!2862033))

(assert (=> b!2498317 m!2862025))

(assert (=> b!2498317 m!2862025))

(assert (=> b!2498317 m!2862029))

(assert (=> b!2498321 m!2862021))

(assert (=> d!715142 m!2862033))

(assert (=> d!715142 m!2861841))

(assert (=> b!2498031 d!715142))

(declare-fun b!2498357 () Bool)

(declare-fun e!1585003 () Bool)

(declare-fun lt!895239 () Option!5817)

(assert (=> b!2498357 (= e!1585003 (not (isDefined!4639 lt!895239)))))

(declare-fun b!2498358 () Bool)

(declare-fun e!1585005 () Bool)

(assert (=> b!2498358 (= e!1585005 (= (++!7170 (_1!17239 (get!9094 lt!895239)) (_2!17239 (get!9094 lt!895239))) tl!4068))))

(declare-fun b!2498359 () Bool)

(declare-fun res!1056665 () Bool)

(assert (=> b!2498359 (=> (not res!1056665) (not e!1585005))))

(assert (=> b!2498359 (= res!1056665 (matchR!3397 lt!895176 (_2!17239 (get!9094 lt!895239))))))

(declare-fun b!2498360 () Bool)

(declare-fun e!1585004 () Option!5817)

(assert (=> b!2498360 (= e!1585004 (Some!5816 (tuple2!29395 Nil!29353 tl!4068)))))

(declare-fun b!2498361 () Bool)

(declare-fun e!1585001 () Bool)

(assert (=> b!2498361 (= e!1585001 (matchR!3397 lt!895176 tl!4068))))

(declare-fun d!715144 () Bool)

(assert (=> d!715144 e!1585003))

(declare-fun res!1056667 () Bool)

(assert (=> d!715144 (=> res!1056667 e!1585003)))

(assert (=> d!715144 (= res!1056667 e!1585005)))

(declare-fun res!1056666 () Bool)

(assert (=> d!715144 (=> (not res!1056666) (not e!1585005))))

(assert (=> d!715144 (= res!1056666 (isDefined!4639 lt!895239))))

(assert (=> d!715144 (= lt!895239 e!1585004)))

(declare-fun c!397404 () Bool)

(assert (=> d!715144 (= c!397404 e!1585001)))

(declare-fun res!1056663 () Bool)

(assert (=> d!715144 (=> (not res!1056663) (not e!1585001))))

(assert (=> d!715144 (= res!1056663 (matchR!3397 lt!895174 Nil!29353))))

(assert (=> d!715144 (validRegex!3014 lt!895174)))

(assert (=> d!715144 (= (findConcatSeparation!839 lt!895174 lt!895176 Nil!29353 tl!4068 tl!4068) lt!895239)))

(declare-fun b!2498362 () Bool)

(declare-fun e!1585002 () Option!5817)

(assert (=> b!2498362 (= e!1585004 e!1585002)))

(declare-fun c!397403 () Bool)

(assert (=> b!2498362 (= c!397403 (is-Nil!29353 tl!4068))))

(declare-fun b!2498363 () Bool)

(assert (=> b!2498363 (= e!1585002 None!5816)))

(declare-fun b!2498364 () Bool)

(declare-fun lt!895237 () Unit!43045)

(declare-fun lt!895238 () Unit!43045)

(assert (=> b!2498364 (= lt!895237 lt!895238)))

(assert (=> b!2498364 (= (++!7170 (++!7170 Nil!29353 (Cons!29353 (h!34773 tl!4068) Nil!29353)) (t!211152 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!724 (List!29453 C!14934 List!29453 List!29453) Unit!43045)

(assert (=> b!2498364 (= lt!895238 (lemmaMoveElementToOtherListKeepsConcatEq!724 Nil!29353 (h!34773 tl!4068) (t!211152 tl!4068) tl!4068))))

(assert (=> b!2498364 (= e!1585002 (findConcatSeparation!839 lt!895174 lt!895176 (++!7170 Nil!29353 (Cons!29353 (h!34773 tl!4068) Nil!29353)) (t!211152 tl!4068) tl!4068))))

(declare-fun b!2498365 () Bool)

(declare-fun res!1056664 () Bool)

(assert (=> b!2498365 (=> (not res!1056664) (not e!1585005))))

(assert (=> b!2498365 (= res!1056664 (matchR!3397 lt!895174 (_1!17239 (get!9094 lt!895239))))))

(assert (= (and d!715144 res!1056663) b!2498361))

(assert (= (and d!715144 c!397404) b!2498360))

(assert (= (and d!715144 (not c!397404)) b!2498362))

(assert (= (and b!2498362 c!397403) b!2498363))

(assert (= (and b!2498362 (not c!397403)) b!2498364))

(assert (= (and d!715144 res!1056666) b!2498365))

(assert (= (and b!2498365 res!1056664) b!2498359))

(assert (= (and b!2498359 res!1056665) b!2498358))

(assert (= (and d!715144 (not res!1056667)) b!2498357))

(declare-fun m!2862055 () Bool)

(assert (=> b!2498361 m!2862055))

(declare-fun m!2862057 () Bool)

(assert (=> b!2498365 m!2862057))

(declare-fun m!2862059 () Bool)

(assert (=> b!2498365 m!2862059))

(declare-fun m!2862061 () Bool)

(assert (=> d!715144 m!2862061))

(declare-fun m!2862063 () Bool)

(assert (=> d!715144 m!2862063))

(assert (=> d!715144 m!2861929))

(assert (=> b!2498359 m!2862057))

(declare-fun m!2862065 () Bool)

(assert (=> b!2498359 m!2862065))

(assert (=> b!2498357 m!2862061))

(assert (=> b!2498358 m!2862057))

(declare-fun m!2862067 () Bool)

(assert (=> b!2498358 m!2862067))

(declare-fun m!2862069 () Bool)

(assert (=> b!2498364 m!2862069))

(assert (=> b!2498364 m!2862069))

(declare-fun m!2862071 () Bool)

(assert (=> b!2498364 m!2862071))

(declare-fun m!2862073 () Bool)

(assert (=> b!2498364 m!2862073))

(assert (=> b!2498364 m!2862069))

(declare-fun m!2862075 () Bool)

(assert (=> b!2498364 m!2862075))

(assert (=> b!2498042 d!715144))

(declare-fun d!715150 () Bool)

(assert (=> d!715150 (= (get!9094 lt!895170) (v!31747 lt!895170))))

(assert (=> b!2498042 d!715150))

(declare-fun d!715152 () Bool)

(declare-fun isEmpty!16825 (Option!5817) Bool)

(assert (=> d!715152 (= (isDefined!4639 lt!895170) (not (isEmpty!16825 lt!895170)))))

(declare-fun bs!468515 () Bool)

(assert (= bs!468515 d!715152))

(declare-fun m!2862077 () Bool)

(assert (=> bs!468515 m!2862077))

(assert (=> b!2498042 d!715152))

(declare-fun d!715154 () Bool)

(assert (=> d!715154 (isDefined!4639 (findConcatSeparation!839 lt!895174 lt!895176 Nil!29353 tl!4068 tl!4068))))

(declare-fun lt!895248 () Unit!43045)

(declare-fun choose!14756 (Regex!7388 Regex!7388 List!29453) Unit!43045)

(assert (=> d!715154 (= lt!895248 (choose!14756 lt!895174 lt!895176 tl!4068))))

(assert (=> d!715154 (validRegex!3014 lt!895174)))

(assert (=> d!715154 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!121 lt!895174 lt!895176 tl!4068) lt!895248)))

(declare-fun bs!468516 () Bool)

(assert (= bs!468516 d!715154))

(assert (=> bs!468516 m!2861857))

(assert (=> bs!468516 m!2861857))

(declare-fun m!2862079 () Bool)

(assert (=> bs!468516 m!2862079))

(declare-fun m!2862081 () Bool)

(assert (=> bs!468516 m!2862081))

(assert (=> bs!468516 m!2861929))

(assert (=> b!2498042 d!715154))

(declare-fun d!715156 () Bool)

(declare-fun e!1585021 () Bool)

(assert (=> d!715156 e!1585021))

(declare-fun res!1056683 () Bool)

(assert (=> d!715156 (=> (not res!1056683) (not e!1585021))))

(declare-fun lt!895251 () List!29453)

(declare-fun content!4001 (List!29453) (Set C!14934))

(assert (=> d!715156 (= res!1056683 (= (content!4001 lt!895251) (set.union (content!4001 (_1!17239 lt!895177)) (content!4001 (_2!17239 lt!895177)))))))

(declare-fun e!1585020 () List!29453)

(assert (=> d!715156 (= lt!895251 e!1585020)))

(declare-fun c!397411 () Bool)

(assert (=> d!715156 (= c!397411 (is-Nil!29353 (_1!17239 lt!895177)))))

(assert (=> d!715156 (= (++!7170 (_1!17239 lt!895177) (_2!17239 lt!895177)) lt!895251)))

(declare-fun b!2498395 () Bool)

(assert (=> b!2498395 (= e!1585021 (or (not (= (_2!17239 lt!895177) Nil!29353)) (= lt!895251 (_1!17239 lt!895177))))))

(declare-fun b!2498394 () Bool)

(declare-fun res!1056682 () Bool)

(assert (=> b!2498394 (=> (not res!1056682) (not e!1585021))))

(declare-fun size!22885 (List!29453) Int)

(assert (=> b!2498394 (= res!1056682 (= (size!22885 lt!895251) (+ (size!22885 (_1!17239 lt!895177)) (size!22885 (_2!17239 lt!895177)))))))

(declare-fun b!2498392 () Bool)

(assert (=> b!2498392 (= e!1585020 (_2!17239 lt!895177))))

(declare-fun b!2498393 () Bool)

(assert (=> b!2498393 (= e!1585020 (Cons!29353 (h!34773 (_1!17239 lt!895177)) (++!7170 (t!211152 (_1!17239 lt!895177)) (_2!17239 lt!895177))))))

(assert (= (and d!715156 c!397411) b!2498392))

(assert (= (and d!715156 (not c!397411)) b!2498393))

(assert (= (and d!715156 res!1056683) b!2498394))

(assert (= (and b!2498394 res!1056682) b!2498395))

(declare-fun m!2862083 () Bool)

(assert (=> d!715156 m!2862083))

(declare-fun m!2862085 () Bool)

(assert (=> d!715156 m!2862085))

(declare-fun m!2862087 () Bool)

(assert (=> d!715156 m!2862087))

(declare-fun m!2862089 () Bool)

(assert (=> b!2498394 m!2862089))

(declare-fun m!2862091 () Bool)

(assert (=> b!2498394 m!2862091))

(declare-fun m!2862093 () Bool)

(assert (=> b!2498394 m!2862093))

(declare-fun m!2862095 () Bool)

(assert (=> b!2498393 m!2862095))

(assert (=> b!2498042 d!715156))

(declare-fun d!715158 () Bool)

(declare-fun nullableFct!582 (Regex!7388) Bool)

(assert (=> d!715158 (= (nullable!2305 lt!895175) (nullableFct!582 lt!895175))))

(declare-fun bs!468517 () Bool)

(assert (= bs!468517 d!715158))

(declare-fun m!2862097 () Bool)

(assert (=> bs!468517 m!2862097))

(assert (=> b!2498043 d!715158))

(declare-fun d!715160 () Bool)

(declare-fun lt!895254 () Regex!7388)

(assert (=> d!715160 (validRegex!3014 lt!895254)))

(declare-fun e!1585024 () Regex!7388)

(assert (=> d!715160 (= lt!895254 e!1585024)))

(declare-fun c!397414 () Bool)

(assert (=> d!715160 (= c!397414 (is-Cons!29353 tl!4068))))

(assert (=> d!715160 (validRegex!3014 lt!895172)))

(assert (=> d!715160 (= (derivative!83 lt!895172 tl!4068) lt!895254)))

(declare-fun b!2498400 () Bool)

(assert (=> b!2498400 (= e!1585024 (derivative!83 (derivativeStep!1957 lt!895172 (h!34773 tl!4068)) (t!211152 tl!4068)))))

(declare-fun b!2498401 () Bool)

(assert (=> b!2498401 (= e!1585024 lt!895172)))

(assert (= (and d!715160 c!397414) b!2498400))

(assert (= (and d!715160 (not c!397414)) b!2498401))

(declare-fun m!2862099 () Bool)

(assert (=> d!715160 m!2862099))

(assert (=> d!715160 m!2861999))

(declare-fun m!2862101 () Bool)

(assert (=> b!2498400 m!2862101))

(assert (=> b!2498400 m!2862101))

(declare-fun m!2862103 () Bool)

(assert (=> b!2498400 m!2862103))

(assert (=> b!2498043 d!715160))

(declare-fun b!2498411 () Bool)

(declare-fun e!1585034 () Regex!7388)

(assert (=> b!2498411 (= e!1585034 (ite (= c!14016 (c!397334 r!27340)) EmptyExpr!7388 EmptyLang!7388))))

(declare-fun b!2498412 () Bool)

(declare-fun c!397417 () Bool)

(assert (=> b!2498412 (= c!397417 (is-Union!7388 r!27340))))

(declare-fun e!1585033 () Regex!7388)

(assert (=> b!2498412 (= e!1585034 e!1585033)))

(declare-fun bm!154094 () Bool)

(declare-fun c!397421 () Bool)

(declare-fun call!154101 () Regex!7388)

(assert (=> bm!154094 (= call!154101 (derivativeStep!1957 (ite c!397417 (regOne!15289 r!27340) (ite c!397421 (reg!7717 r!27340) (regOne!15288 r!27340))) c!14016))))

(declare-fun b!2498413 () Bool)

(declare-fun e!1585031 () Regex!7388)

(assert (=> b!2498413 (= e!1585031 EmptyLang!7388)))

(declare-fun bm!154095 () Bool)

(declare-fun call!154100 () Regex!7388)

(declare-fun call!154099 () Regex!7388)

(assert (=> bm!154095 (= call!154100 call!154099)))

(declare-fun b!2498415 () Bool)

(declare-fun e!1585032 () Regex!7388)

(assert (=> b!2498415 (= e!1585033 e!1585032)))

(assert (=> b!2498415 (= c!397421 (is-Star!7388 r!27340))))

(declare-fun b!2498416 () Bool)

(declare-fun c!397420 () Bool)

(assert (=> b!2498416 (= c!397420 (nullable!2305 (regOne!15288 r!27340)))))

(declare-fun e!1585030 () Regex!7388)

(assert (=> b!2498416 (= e!1585032 e!1585030)))

(declare-fun b!2498417 () Bool)

(assert (=> b!2498417 (= e!1585030 (Union!7388 (Concat!12084 call!154100 (regTwo!15288 r!27340)) EmptyLang!7388))))

(declare-fun b!2498418 () Bool)

(assert (=> b!2498418 (= e!1585032 (Concat!12084 call!154099 r!27340))))

(declare-fun b!2498419 () Bool)

(declare-fun call!154102 () Regex!7388)

(assert (=> b!2498419 (= e!1585033 (Union!7388 call!154101 call!154102))))

(declare-fun bm!154096 () Bool)

(assert (=> bm!154096 (= call!154102 (derivativeStep!1957 (ite c!397417 (regTwo!15289 r!27340) (regTwo!15288 r!27340)) c!14016))))

(declare-fun d!715162 () Bool)

(declare-fun lt!895258 () Regex!7388)

(assert (=> d!715162 (validRegex!3014 lt!895258)))

(assert (=> d!715162 (= lt!895258 e!1585031)))

(declare-fun c!397418 () Bool)

(assert (=> d!715162 (= c!397418 (or (is-EmptyExpr!7388 r!27340) (is-EmptyLang!7388 r!27340)))))

(assert (=> d!715162 (validRegex!3014 r!27340)))

(assert (=> d!715162 (= (derivativeStep!1957 r!27340 c!14016) lt!895258)))

(declare-fun b!2498414 () Bool)

(assert (=> b!2498414 (= e!1585030 (Union!7388 (Concat!12084 call!154100 (regTwo!15288 r!27340)) call!154102))))

(declare-fun bm!154097 () Bool)

(assert (=> bm!154097 (= call!154099 call!154101)))

(declare-fun b!2498420 () Bool)

(assert (=> b!2498420 (= e!1585031 e!1585034)))

(declare-fun c!397419 () Bool)

(assert (=> b!2498420 (= c!397419 (is-ElementMatch!7388 r!27340))))

(assert (= (and d!715162 c!397418) b!2498413))

(assert (= (and d!715162 (not c!397418)) b!2498420))

(assert (= (and b!2498420 c!397419) b!2498411))

(assert (= (and b!2498420 (not c!397419)) b!2498412))

(assert (= (and b!2498412 c!397417) b!2498419))

(assert (= (and b!2498412 (not c!397417)) b!2498415))

(assert (= (and b!2498415 c!397421) b!2498418))

(assert (= (and b!2498415 (not c!397421)) b!2498416))

(assert (= (and b!2498416 c!397420) b!2498414))

(assert (= (and b!2498416 (not c!397420)) b!2498417))

(assert (= (or b!2498414 b!2498417) bm!154095))

(assert (= (or b!2498418 bm!154095) bm!154097))

(assert (= (or b!2498419 b!2498414) bm!154096))

(assert (= (or b!2498419 bm!154097) bm!154094))

(declare-fun m!2862105 () Bool)

(assert (=> bm!154094 m!2862105))

(declare-fun m!2862107 () Bool)

(assert (=> b!2498416 m!2862107))

(declare-fun m!2862109 () Bool)

(assert (=> bm!154096 m!2862109))

(declare-fun m!2862111 () Bool)

(assert (=> d!715162 m!2862111))

(assert (=> d!715162 m!2861825))

(assert (=> b!2498043 d!715162))

(declare-fun d!715164 () Bool)

(assert (=> d!715164 (= (nullable!2305 (derivative!83 lt!895174 tl!4068)) (nullableFct!582 (derivative!83 lt!895174 tl!4068)))))

(declare-fun bs!468518 () Bool)

(assert (= bs!468518 d!715164))

(assert (=> bs!468518 m!2861829))

(declare-fun m!2862113 () Bool)

(assert (=> bs!468518 m!2862113))

(assert (=> b!2498038 d!715164))

(declare-fun d!715166 () Bool)

(declare-fun lt!895259 () Regex!7388)

(assert (=> d!715166 (validRegex!3014 lt!895259)))

(declare-fun e!1585035 () Regex!7388)

(assert (=> d!715166 (= lt!895259 e!1585035)))

(declare-fun c!397422 () Bool)

(assert (=> d!715166 (= c!397422 (is-Cons!29353 tl!4068))))

(assert (=> d!715166 (validRegex!3014 lt!895174)))

(assert (=> d!715166 (= (derivative!83 lt!895174 tl!4068) lt!895259)))

(declare-fun b!2498421 () Bool)

(assert (=> b!2498421 (= e!1585035 (derivative!83 (derivativeStep!1957 lt!895174 (h!34773 tl!4068)) (t!211152 tl!4068)))))

(declare-fun b!2498422 () Bool)

(assert (=> b!2498422 (= e!1585035 lt!895174)))

(assert (= (and d!715166 c!397422) b!2498421))

(assert (= (and d!715166 (not c!397422)) b!2498422))

(declare-fun m!2862115 () Bool)

(assert (=> d!715166 m!2862115))

(assert (=> d!715166 m!2861929))

(declare-fun m!2862117 () Bool)

(assert (=> b!2498421 m!2862117))

(assert (=> b!2498421 m!2862117))

(declare-fun m!2862119 () Bool)

(assert (=> b!2498421 m!2862119))

(assert (=> b!2498038 d!715166))

(declare-fun b!2498423 () Bool)

(declare-fun res!1056689 () Bool)

(declare-fun e!1585040 () Bool)

(assert (=> b!2498423 (=> res!1056689 e!1585040)))

(assert (=> b!2498423 (= res!1056689 (not (is-Concat!12084 r!27340)))))

(declare-fun e!1585036 () Bool)

(assert (=> b!2498423 (= e!1585036 e!1585040)))

(declare-fun b!2498424 () Bool)

(declare-fun e!1585038 () Bool)

(declare-fun call!154103 () Bool)

(assert (=> b!2498424 (= e!1585038 call!154103)))

(declare-fun b!2498425 () Bool)

(declare-fun e!1585041 () Bool)

(assert (=> b!2498425 (= e!1585040 e!1585041)))

(declare-fun res!1056690 () Bool)

(assert (=> b!2498425 (=> (not res!1056690) (not e!1585041))))

(assert (=> b!2498425 (= res!1056690 call!154103)))

(declare-fun b!2498426 () Bool)

(declare-fun e!1585037 () Bool)

(declare-fun e!1585042 () Bool)

(assert (=> b!2498426 (= e!1585037 e!1585042)))

(declare-fun res!1056691 () Bool)

(assert (=> b!2498426 (= res!1056691 (not (nullable!2305 (reg!7717 r!27340))))))

(assert (=> b!2498426 (=> (not res!1056691) (not e!1585042))))

(declare-fun d!715168 () Bool)

(declare-fun res!1056693 () Bool)

(declare-fun e!1585039 () Bool)

(assert (=> d!715168 (=> res!1056693 e!1585039)))

(assert (=> d!715168 (= res!1056693 (is-ElementMatch!7388 r!27340))))

(assert (=> d!715168 (= (validRegex!3014 r!27340) e!1585039)))

(declare-fun bm!154098 () Bool)

(declare-fun call!154105 () Bool)

(declare-fun c!397423 () Bool)

(assert (=> bm!154098 (= call!154105 (validRegex!3014 (ite c!397423 (regOne!15289 r!27340) (regTwo!15288 r!27340))))))

(declare-fun b!2498427 () Bool)

(assert (=> b!2498427 (= e!1585037 e!1585036)))

(assert (=> b!2498427 (= c!397423 (is-Union!7388 r!27340))))

(declare-fun b!2498428 () Bool)

(assert (=> b!2498428 (= e!1585041 call!154105)))

(declare-fun bm!154099 () Bool)

(declare-fun call!154104 () Bool)

(assert (=> bm!154099 (= call!154103 call!154104)))

(declare-fun b!2498429 () Bool)

(declare-fun res!1056692 () Bool)

(assert (=> b!2498429 (=> (not res!1056692) (not e!1585038))))

(assert (=> b!2498429 (= res!1056692 call!154105)))

(assert (=> b!2498429 (= e!1585036 e!1585038)))

(declare-fun b!2498430 () Bool)

(assert (=> b!2498430 (= e!1585042 call!154104)))

(declare-fun b!2498431 () Bool)

(assert (=> b!2498431 (= e!1585039 e!1585037)))

(declare-fun c!397424 () Bool)

(assert (=> b!2498431 (= c!397424 (is-Star!7388 r!27340))))

(declare-fun bm!154100 () Bool)

(assert (=> bm!154100 (= call!154104 (validRegex!3014 (ite c!397424 (reg!7717 r!27340) (ite c!397423 (regTwo!15289 r!27340) (regOne!15288 r!27340)))))))

(assert (= (and d!715168 (not res!1056693)) b!2498431))

(assert (= (and b!2498431 c!397424) b!2498426))

(assert (= (and b!2498431 (not c!397424)) b!2498427))

(assert (= (and b!2498426 res!1056691) b!2498430))

(assert (= (and b!2498427 c!397423) b!2498429))

(assert (= (and b!2498427 (not c!397423)) b!2498423))

(assert (= (and b!2498429 res!1056692) b!2498424))

(assert (= (and b!2498423 (not res!1056689)) b!2498425))

(assert (= (and b!2498425 res!1056690) b!2498428))

(assert (= (or b!2498429 b!2498428) bm!154098))

(assert (= (or b!2498424 b!2498425) bm!154099))

(assert (= (or b!2498430 bm!154099) bm!154100))

(assert (=> b!2498426 m!2862031))

(declare-fun m!2862121 () Bool)

(assert (=> bm!154098 m!2862121))

(declare-fun m!2862123 () Bool)

(assert (=> bm!154100 m!2862123))

(assert (=> start!243930 d!715168))

(declare-fun bm!154101 () Bool)

(declare-fun call!154106 () Bool)

(assert (=> bm!154101 (= call!154106 (isEmpty!16823 (_2!17239 lt!895177)))))

(declare-fun b!2498432 () Bool)

(declare-fun res!1056695 () Bool)

(declare-fun e!1585049 () Bool)

(assert (=> b!2498432 (=> res!1056695 e!1585049)))

(declare-fun e!1585045 () Bool)

(assert (=> b!2498432 (= res!1056695 e!1585045)))

(declare-fun res!1056700 () Bool)

(assert (=> b!2498432 (=> (not res!1056700) (not e!1585045))))

(declare-fun lt!895260 () Bool)

(assert (=> b!2498432 (= res!1056700 lt!895260)))

(declare-fun b!2498433 () Bool)

(declare-fun res!1056698 () Bool)

(assert (=> b!2498433 (=> (not res!1056698) (not e!1585045))))

(assert (=> b!2498433 (= res!1056698 (not call!154106))))

(declare-fun b!2498434 () Bool)

(declare-fun e!1585043 () Bool)

(assert (=> b!2498434 (= e!1585043 (matchR!3397 (derivativeStep!1957 lt!895176 (head!5689 (_2!17239 lt!895177))) (tail!3966 (_2!17239 lt!895177))))))

(declare-fun b!2498435 () Bool)

(declare-fun res!1056701 () Bool)

(assert (=> b!2498435 (=> res!1056701 e!1585049)))

(assert (=> b!2498435 (= res!1056701 (not (is-ElementMatch!7388 lt!895176)))))

(declare-fun e!1585047 () Bool)

(assert (=> b!2498435 (= e!1585047 e!1585049)))

(declare-fun b!2498436 () Bool)

(declare-fun res!1056699 () Bool)

(declare-fun e!1585046 () Bool)

(assert (=> b!2498436 (=> res!1056699 e!1585046)))

(assert (=> b!2498436 (= res!1056699 (not (isEmpty!16823 (tail!3966 (_2!17239 lt!895177)))))))

(declare-fun b!2498437 () Bool)

(declare-fun e!1585048 () Bool)

(assert (=> b!2498437 (= e!1585049 e!1585048)))

(declare-fun res!1056697 () Bool)

(assert (=> b!2498437 (=> (not res!1056697) (not e!1585048))))

(assert (=> b!2498437 (= res!1056697 (not lt!895260))))

(declare-fun d!715170 () Bool)

(declare-fun e!1585044 () Bool)

(assert (=> d!715170 e!1585044))

(declare-fun c!397426 () Bool)

(assert (=> d!715170 (= c!397426 (is-EmptyExpr!7388 lt!895176))))

(assert (=> d!715170 (= lt!895260 e!1585043)))

(declare-fun c!397427 () Bool)

(assert (=> d!715170 (= c!397427 (isEmpty!16823 (_2!17239 lt!895177)))))

(assert (=> d!715170 (validRegex!3014 lt!895176)))

(assert (=> d!715170 (= (matchR!3397 lt!895176 (_2!17239 lt!895177)) lt!895260)))

(declare-fun b!2498438 () Bool)

(assert (=> b!2498438 (= e!1585048 e!1585046)))

(declare-fun res!1056694 () Bool)

(assert (=> b!2498438 (=> res!1056694 e!1585046)))

(assert (=> b!2498438 (= res!1056694 call!154106)))

(declare-fun b!2498439 () Bool)

(assert (=> b!2498439 (= e!1585046 (not (= (head!5689 (_2!17239 lt!895177)) (c!397334 lt!895176))))))

(declare-fun b!2498440 () Bool)

(assert (=> b!2498440 (= e!1585045 (= (head!5689 (_2!17239 lt!895177)) (c!397334 lt!895176)))))

(declare-fun b!2498441 () Bool)

(assert (=> b!2498441 (= e!1585047 (not lt!895260))))

(declare-fun b!2498442 () Bool)

(declare-fun res!1056696 () Bool)

(assert (=> b!2498442 (=> (not res!1056696) (not e!1585045))))

(assert (=> b!2498442 (= res!1056696 (isEmpty!16823 (tail!3966 (_2!17239 lt!895177))))))

(declare-fun b!2498443 () Bool)

(assert (=> b!2498443 (= e!1585044 e!1585047)))

(declare-fun c!397425 () Bool)

(assert (=> b!2498443 (= c!397425 (is-EmptyLang!7388 lt!895176))))

(declare-fun b!2498444 () Bool)

(assert (=> b!2498444 (= e!1585043 (nullable!2305 lt!895176))))

(declare-fun b!2498445 () Bool)

(assert (=> b!2498445 (= e!1585044 (= lt!895260 call!154106))))

(assert (= (and d!715170 c!397427) b!2498444))

(assert (= (and d!715170 (not c!397427)) b!2498434))

(assert (= (and d!715170 c!397426) b!2498445))

(assert (= (and d!715170 (not c!397426)) b!2498443))

(assert (= (and b!2498443 c!397425) b!2498441))

(assert (= (and b!2498443 (not c!397425)) b!2498435))

(assert (= (and b!2498435 (not res!1056701)) b!2498432))

(assert (= (and b!2498432 res!1056700) b!2498433))

(assert (= (and b!2498433 res!1056698) b!2498442))

(assert (= (and b!2498442 res!1056696) b!2498440))

(assert (= (and b!2498432 (not res!1056695)) b!2498437))

(assert (= (and b!2498437 res!1056697) b!2498438))

(assert (= (and b!2498438 (not res!1056694)) b!2498436))

(assert (= (and b!2498436 (not res!1056699)) b!2498439))

(assert (= (or b!2498445 b!2498433 b!2498438) bm!154101))

(declare-fun m!2862137 () Bool)

(assert (=> b!2498439 m!2862137))

(assert (=> b!2498434 m!2862137))

(assert (=> b!2498434 m!2862137))

(declare-fun m!2862139 () Bool)

(assert (=> b!2498434 m!2862139))

(declare-fun m!2862141 () Bool)

(assert (=> b!2498434 m!2862141))

(assert (=> b!2498434 m!2862139))

(assert (=> b!2498434 m!2862141))

(declare-fun m!2862143 () Bool)

(assert (=> b!2498434 m!2862143))

(assert (=> b!2498442 m!2862141))

(assert (=> b!2498442 m!2862141))

(declare-fun m!2862147 () Bool)

(assert (=> b!2498442 m!2862147))

(declare-fun m!2862149 () Bool)

(assert (=> b!2498444 m!2862149))

(declare-fun m!2862153 () Bool)

(assert (=> bm!154101 m!2862153))

(assert (=> b!2498436 m!2862141))

(assert (=> b!2498436 m!2862141))

(assert (=> b!2498436 m!2862147))

(assert (=> b!2498440 m!2862137))

(assert (=> d!715170 m!2862153))

(declare-fun m!2862157 () Bool)

(assert (=> d!715170 m!2862157))

(assert (=> b!2498039 d!715170))

(declare-fun b!2498450 () Bool)

(declare-fun e!1585052 () Bool)

(declare-fun tp!799913 () Bool)

(assert (=> b!2498450 (= e!1585052 (and tp_is_empty!12631 tp!799913))))

(assert (=> b!2498035 (= tp!799890 e!1585052)))

(assert (= (and b!2498035 (is-Cons!29353 (t!211152 tl!4068))) b!2498450))

(declare-fun b!2498462 () Bool)

(declare-fun e!1585055 () Bool)

(declare-fun tp!799925 () Bool)

(declare-fun tp!799928 () Bool)

(assert (=> b!2498462 (= e!1585055 (and tp!799925 tp!799928))))

(declare-fun b!2498464 () Bool)

(declare-fun tp!799927 () Bool)

(declare-fun tp!799926 () Bool)

(assert (=> b!2498464 (= e!1585055 (and tp!799927 tp!799926))))

(declare-fun b!2498463 () Bool)

(declare-fun tp!799924 () Bool)

(assert (=> b!2498463 (= e!1585055 tp!799924)))

(declare-fun b!2498461 () Bool)

(assert (=> b!2498461 (= e!1585055 tp_is_empty!12631)))

(assert (=> b!2498032 (= tp!799889 e!1585055)))

(assert (= (and b!2498032 (is-ElementMatch!7388 (regOne!15289 r!27340))) b!2498461))

(assert (= (and b!2498032 (is-Concat!12084 (regOne!15289 r!27340))) b!2498462))

(assert (= (and b!2498032 (is-Star!7388 (regOne!15289 r!27340))) b!2498463))

(assert (= (and b!2498032 (is-Union!7388 (regOne!15289 r!27340))) b!2498464))

(declare-fun b!2498466 () Bool)

(declare-fun e!1585056 () Bool)

(declare-fun tp!799930 () Bool)

(declare-fun tp!799933 () Bool)

(assert (=> b!2498466 (= e!1585056 (and tp!799930 tp!799933))))

(declare-fun b!2498468 () Bool)

(declare-fun tp!799932 () Bool)

(declare-fun tp!799931 () Bool)

(assert (=> b!2498468 (= e!1585056 (and tp!799932 tp!799931))))

(declare-fun b!2498467 () Bool)

(declare-fun tp!799929 () Bool)

(assert (=> b!2498467 (= e!1585056 tp!799929)))

(declare-fun b!2498465 () Bool)

(assert (=> b!2498465 (= e!1585056 tp_is_empty!12631)))

(assert (=> b!2498032 (= tp!799892 e!1585056)))

(assert (= (and b!2498032 (is-ElementMatch!7388 (regTwo!15289 r!27340))) b!2498465))

(assert (= (and b!2498032 (is-Concat!12084 (regTwo!15289 r!27340))) b!2498466))

(assert (= (and b!2498032 (is-Star!7388 (regTwo!15289 r!27340))) b!2498467))

(assert (= (and b!2498032 (is-Union!7388 (regTwo!15289 r!27340))) b!2498468))

(declare-fun b!2498470 () Bool)

(declare-fun e!1585057 () Bool)

(declare-fun tp!799935 () Bool)

(declare-fun tp!799938 () Bool)

(assert (=> b!2498470 (= e!1585057 (and tp!799935 tp!799938))))

(declare-fun b!2498472 () Bool)

(declare-fun tp!799937 () Bool)

(declare-fun tp!799936 () Bool)

(assert (=> b!2498472 (= e!1585057 (and tp!799937 tp!799936))))

(declare-fun b!2498471 () Bool)

(declare-fun tp!799934 () Bool)

(assert (=> b!2498471 (= e!1585057 tp!799934)))

(declare-fun b!2498469 () Bool)

(assert (=> b!2498469 (= e!1585057 tp_is_empty!12631)))

(assert (=> b!2498033 (= tp!799888 e!1585057)))

(assert (= (and b!2498033 (is-ElementMatch!7388 (regOne!15288 r!27340))) b!2498469))

(assert (= (and b!2498033 (is-Concat!12084 (regOne!15288 r!27340))) b!2498470))

(assert (= (and b!2498033 (is-Star!7388 (regOne!15288 r!27340))) b!2498471))

(assert (= (and b!2498033 (is-Union!7388 (regOne!15288 r!27340))) b!2498472))

(declare-fun b!2498474 () Bool)

(declare-fun e!1585058 () Bool)

(declare-fun tp!799940 () Bool)

(declare-fun tp!799943 () Bool)

(assert (=> b!2498474 (= e!1585058 (and tp!799940 tp!799943))))

(declare-fun b!2498476 () Bool)

(declare-fun tp!799942 () Bool)

(declare-fun tp!799941 () Bool)

(assert (=> b!2498476 (= e!1585058 (and tp!799942 tp!799941))))

(declare-fun b!2498475 () Bool)

(declare-fun tp!799939 () Bool)

(assert (=> b!2498475 (= e!1585058 tp!799939)))

(declare-fun b!2498473 () Bool)

(assert (=> b!2498473 (= e!1585058 tp_is_empty!12631)))

(assert (=> b!2498033 (= tp!799887 e!1585058)))

(assert (= (and b!2498033 (is-ElementMatch!7388 (regTwo!15288 r!27340))) b!2498473))

(assert (= (and b!2498033 (is-Concat!12084 (regTwo!15288 r!27340))) b!2498474))

(assert (= (and b!2498033 (is-Star!7388 (regTwo!15288 r!27340))) b!2498475))

(assert (= (and b!2498033 (is-Union!7388 (regTwo!15288 r!27340))) b!2498476))

(declare-fun b!2498478 () Bool)

(declare-fun e!1585059 () Bool)

(declare-fun tp!799945 () Bool)

(declare-fun tp!799948 () Bool)

(assert (=> b!2498478 (= e!1585059 (and tp!799945 tp!799948))))

(declare-fun b!2498480 () Bool)

(declare-fun tp!799947 () Bool)

(declare-fun tp!799946 () Bool)

(assert (=> b!2498480 (= e!1585059 (and tp!799947 tp!799946))))

(declare-fun b!2498479 () Bool)

(declare-fun tp!799944 () Bool)

(assert (=> b!2498479 (= e!1585059 tp!799944)))

(declare-fun b!2498477 () Bool)

(assert (=> b!2498477 (= e!1585059 tp_is_empty!12631)))

(assert (=> b!2498029 (= tp!799891 e!1585059)))

(assert (= (and b!2498029 (is-ElementMatch!7388 (reg!7717 r!27340))) b!2498477))

(assert (= (and b!2498029 (is-Concat!12084 (reg!7717 r!27340))) b!2498478))

(assert (= (and b!2498029 (is-Star!7388 (reg!7717 r!27340))) b!2498479))

(assert (= (and b!2498029 (is-Union!7388 (reg!7717 r!27340))) b!2498480))

(push 1)

(assert (not b!2498478))

(assert (not b!2498464))

(assert (not b!2498209))

(assert (not b!2498463))

(assert (not b!2498479))

(assert (not b!2498426))

(assert (not b!2498315))

(assert (not b!2498364))

(assert (not b!2498471))

(assert (not b!2498470))

(assert (not b!2498358))

(assert (not b!2498434))

(assert (not bm!154072))

(assert (not b!2498359))

(assert (not b!2498275))

(assert (not b!2498416))

(assert (not b!2498283))

(assert (not b!2498273))

(assert (not b!2498204))

(assert (not d!715132))

(assert (not b!2498436))

(assert (not b!2498476))

(assert (not d!715122))

(assert (not d!715170))

(assert (not d!715116))

(assert (not b!2498141))

(assert (not b!2498442))

(assert (not b!2498265))

(assert (not b!2498475))

(assert (not b!2498468))

(assert (not b!2498439))

(assert (not b!2498321))

(assert (not d!715162))

(assert (not bm!154078))

(assert (not bm!154070))

(assert (not d!715156))

(assert (not b!2498278))

(assert tp_is_empty!12631)

(assert (not bm!154087))

(assert (not b!2498320))

(assert (not b!2498472))

(assert (not b!2498210))

(assert (not b!2498462))

(assert (not b!2498467))

(assert (not d!715154))

(assert (not bm!154094))

(assert (not b!2498214))

(assert (not b!2498287))

(assert (not b!2498474))

(assert (not bm!154098))

(assert (not b!2498444))

(assert (not d!715136))

(assert (not d!715158))

(assert (not bm!154090))

(assert (not b!2498293))

(assert (not d!715144))

(assert (not b!2498206))

(assert (not b!2498357))

(assert (not b!2498440))

(assert (not b!2498400))

(assert (not b!2498292))

(assert (not bm!154096))

(assert (not b!2498297))

(assert (not d!715160))

(assert (not d!715164))

(assert (not b!2498325))

(assert (not bm!154101))

(assert (not b!2498212))

(assert (not b!2498450))

(assert (not b!2498279))

(assert (not b!2498466))

(assert (not b!2498289))

(assert (not b!2498361))

(assert (not d!715142))

(assert (not b!2498421))

(assert (not bm!154093))

(assert (not bm!154089))

(assert (not bm!154091))

(assert (not d!715130))

(assert (not d!715152))

(assert (not d!715166))

(assert (not b!2498365))

(assert (not b!2498281))

(assert (not b!2498295))

(assert (not b!2498480))

(assert (not b!2498317))

(assert (not b!2498323))

(assert (not bm!154100))

(assert (not b!2498394))

(assert (not b!2498393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

