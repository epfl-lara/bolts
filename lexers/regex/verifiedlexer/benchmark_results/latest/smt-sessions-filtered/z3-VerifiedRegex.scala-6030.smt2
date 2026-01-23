; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294968 () Bool)

(assert start!294968)

(declare-fun b!3115895 () Bool)

(declare-fun res!1275353 () Bool)

(declare-fun e!1946021 () Bool)

(assert (=> b!3115895 (=> res!1275353 e!1946021)))

(declare-datatypes ((C!19408 0))(
  ( (C!19409 (val!11740 Int)) )
))
(declare-datatypes ((Regex!9611 0))(
  ( (ElementMatch!9611 (c!521897 C!19408)) (Concat!14932 (regOne!19734 Regex!9611) (regTwo!19734 Regex!9611)) (EmptyExpr!9611) (Star!9611 (reg!9940 Regex!9611)) (EmptyLang!9611) (Union!9611 (regOne!19735 Regex!9611) (regTwo!19735 Regex!9611)) )
))
(declare-fun r!17423 () Regex!9611)

(declare-datatypes ((List!35476 0))(
  ( (Nil!35352) (Cons!35352 (h!40772 C!19408) (t!234541 List!35476)) )
))
(declare-fun matchR!4493 (Regex!9611 List!35476) Bool)

(assert (=> b!3115895 (= res!1275353 (not (matchR!4493 (reg!9940 r!17423) Nil!35352)))))

(declare-fun b!3115896 () Bool)

(declare-fun e!1946020 () Bool)

(declare-fun e!1946025 () Bool)

(assert (=> b!3115896 (= e!1946020 e!1946025)))

(declare-fun res!1275358 () Bool)

(assert (=> b!3115896 (=> res!1275358 e!1946025)))

(declare-fun lt!1058270 () Regex!9611)

(declare-fun isEmptyLang!662 (Regex!9611) Bool)

(assert (=> b!3115896 (= res!1275358 (not (isEmptyLang!662 lt!1058270)))))

(declare-fun simplify!566 (Regex!9611) Regex!9611)

(assert (=> b!3115896 (= lt!1058270 (simplify!566 (reg!9940 r!17423)))))

(declare-fun b!3115897 () Bool)

(declare-fun e!1946024 () Bool)

(declare-fun tp!977224 () Bool)

(declare-fun tp!977227 () Bool)

(assert (=> b!3115897 (= e!1946024 (and tp!977224 tp!977227))))

(declare-fun b!3115898 () Bool)

(declare-fun e!1946023 () Bool)

(declare-fun tp_is_empty!16785 () Bool)

(declare-fun tp!977229 () Bool)

(assert (=> b!3115898 (= e!1946023 (and tp_is_empty!16785 tp!977229))))

(declare-fun b!3115899 () Bool)

(declare-fun e!1946019 () Bool)

(assert (=> b!3115899 (= e!1946019 (not e!1946020))))

(declare-fun res!1275354 () Bool)

(assert (=> b!3115899 (=> res!1275354 e!1946020)))

(declare-fun lt!1058267 () Bool)

(get-info :version)

(assert (=> b!3115899 (= res!1275354 (or lt!1058267 ((_ is Concat!14932) r!17423) ((_ is Union!9611) r!17423) (not ((_ is Star!9611) r!17423))))))

(declare-fun s!11993 () List!35476)

(declare-fun matchRSpec!1748 (Regex!9611 List!35476) Bool)

(assert (=> b!3115899 (= lt!1058267 (matchRSpec!1748 r!17423 s!11993))))

(assert (=> b!3115899 (= lt!1058267 (matchR!4493 r!17423 s!11993))))

(declare-datatypes ((Unit!49661 0))(
  ( (Unit!49662) )
))
(declare-fun lt!1058268 () Unit!49661)

(declare-fun mainMatchTheorem!1748 (Regex!9611 List!35476) Unit!49661)

(assert (=> b!3115899 (= lt!1058268 (mainMatchTheorem!1748 r!17423 s!11993))))

(declare-fun b!3115901 () Bool)

(assert (=> b!3115901 (= e!1946024 tp_is_empty!16785)))

(declare-fun b!3115902 () Bool)

(declare-fun lt!1058272 () Regex!9611)

(assert (=> b!3115902 (= e!1946021 (matchR!4493 lt!1058272 s!11993))))

(declare-fun b!3115903 () Bool)

(declare-fun tp!977226 () Bool)

(assert (=> b!3115903 (= e!1946024 tp!977226)))

(declare-fun b!3115904 () Bool)

(declare-fun e!1946022 () Bool)

(assert (=> b!3115904 (= e!1946025 e!1946022)))

(declare-fun res!1275355 () Bool)

(assert (=> b!3115904 (=> res!1275355 e!1946022)))

(declare-fun lt!1058269 () Bool)

(assert (=> b!3115904 (= res!1275355 (not lt!1058269))))

(assert (=> b!3115904 (= lt!1058269 (matchR!4493 lt!1058270 s!11993))))

(assert (=> b!3115904 (= lt!1058269 (matchR!4493 (reg!9940 r!17423) s!11993))))

(declare-fun lt!1058271 () Unit!49661)

(declare-fun lemmaSimplifySound!354 (Regex!9611 List!35476) Unit!49661)

(assert (=> b!3115904 (= lt!1058271 (lemmaSimplifySound!354 (reg!9940 r!17423) s!11993))))

(declare-fun b!3115905 () Bool)

(declare-fun tp!977228 () Bool)

(declare-fun tp!977225 () Bool)

(assert (=> b!3115905 (= e!1946024 (and tp!977228 tp!977225))))

(declare-fun b!3115900 () Bool)

(assert (=> b!3115900 (= e!1946022 e!1946021)))

(declare-fun res!1275357 () Bool)

(assert (=> b!3115900 (=> res!1275357 e!1946021)))

(declare-fun validRegex!4344 (Regex!9611) Bool)

(assert (=> b!3115900 (= res!1275357 (not (validRegex!4344 lt!1058272)))))

(assert (=> b!3115900 (= lt!1058272 (Star!9611 (reg!9940 r!17423)))))

(declare-fun res!1275356 () Bool)

(assert (=> start!294968 (=> (not res!1275356) (not e!1946019))))

(assert (=> start!294968 (= res!1275356 (validRegex!4344 r!17423))))

(assert (=> start!294968 e!1946019))

(assert (=> start!294968 e!1946024))

(assert (=> start!294968 e!1946023))

(assert (= (and start!294968 res!1275356) b!3115899))

(assert (= (and b!3115899 (not res!1275354)) b!3115896))

(assert (= (and b!3115896 (not res!1275358)) b!3115904))

(assert (= (and b!3115904 (not res!1275355)) b!3115900))

(assert (= (and b!3115900 (not res!1275357)) b!3115895))

(assert (= (and b!3115895 (not res!1275353)) b!3115902))

(assert (= (and start!294968 ((_ is ElementMatch!9611) r!17423)) b!3115901))

(assert (= (and start!294968 ((_ is Concat!14932) r!17423)) b!3115897))

(assert (= (and start!294968 ((_ is Star!9611) r!17423)) b!3115903))

(assert (= (and start!294968 ((_ is Union!9611) r!17423)) b!3115905))

(assert (= (and start!294968 ((_ is Cons!35352) s!11993)) b!3115898))

(declare-fun m!3406437 () Bool)

(assert (=> b!3115902 m!3406437))

(declare-fun m!3406439 () Bool)

(assert (=> b!3115899 m!3406439))

(declare-fun m!3406441 () Bool)

(assert (=> b!3115899 m!3406441))

(declare-fun m!3406443 () Bool)

(assert (=> b!3115899 m!3406443))

(declare-fun m!3406445 () Bool)

(assert (=> b!3115896 m!3406445))

(declare-fun m!3406447 () Bool)

(assert (=> b!3115896 m!3406447))

(declare-fun m!3406449 () Bool)

(assert (=> start!294968 m!3406449))

(declare-fun m!3406451 () Bool)

(assert (=> b!3115904 m!3406451))

(declare-fun m!3406453 () Bool)

(assert (=> b!3115904 m!3406453))

(declare-fun m!3406455 () Bool)

(assert (=> b!3115904 m!3406455))

(declare-fun m!3406457 () Bool)

(assert (=> b!3115895 m!3406457))

(declare-fun m!3406459 () Bool)

(assert (=> b!3115900 m!3406459))

(check-sat tp_is_empty!16785 (not b!3115896) (not b!3115895) (not b!3115897) (not b!3115899) (not b!3115902) (not b!3115900) (not b!3115905) (not start!294968) (not b!3115904) (not b!3115903) (not b!3115898))
(check-sat)
(get-model)

(declare-fun b!3115952 () Bool)

(declare-fun e!1946055 () Bool)

(declare-fun e!1946057 () Bool)

(assert (=> b!3115952 (= e!1946055 e!1946057)))

(declare-fun res!1275385 () Bool)

(assert (=> b!3115952 (=> (not res!1275385) (not e!1946057))))

(declare-fun call!221082 () Bool)

(assert (=> b!3115952 (= res!1275385 call!221082)))

(declare-fun b!3115953 () Bool)

(declare-fun res!1275389 () Bool)

(assert (=> b!3115953 (=> res!1275389 e!1946055)))

(assert (=> b!3115953 (= res!1275389 (not ((_ is Concat!14932) r!17423)))))

(declare-fun e!1946060 () Bool)

(assert (=> b!3115953 (= e!1946060 e!1946055)))

(declare-fun b!3115954 () Bool)

(declare-fun res!1275386 () Bool)

(declare-fun e!1946058 () Bool)

(assert (=> b!3115954 (=> (not res!1275386) (not e!1946058))))

(declare-fun call!221081 () Bool)

(assert (=> b!3115954 (= res!1275386 call!221081)))

(assert (=> b!3115954 (= e!1946060 e!1946058)))

(declare-fun bm!221077 () Bool)

(declare-fun call!221083 () Bool)

(assert (=> bm!221077 (= call!221081 call!221083)))

(declare-fun b!3115955 () Bool)

(assert (=> b!3115955 (= e!1946057 call!221081)))

(declare-fun b!3115956 () Bool)

(declare-fun e!1946056 () Bool)

(declare-fun e!1946059 () Bool)

(assert (=> b!3115956 (= e!1946056 e!1946059)))

(declare-fun res!1275388 () Bool)

(declare-fun nullable!3249 (Regex!9611) Bool)

(assert (=> b!3115956 (= res!1275388 (not (nullable!3249 (reg!9940 r!17423))))))

(assert (=> b!3115956 (=> (not res!1275388) (not e!1946059))))

(declare-fun bm!221078 () Bool)

(declare-fun c!521908 () Bool)

(assert (=> bm!221078 (= call!221082 (validRegex!4344 (ite c!521908 (regTwo!19735 r!17423) (regOne!19734 r!17423))))))

(declare-fun d!862127 () Bool)

(declare-fun res!1275387 () Bool)

(declare-fun e!1946054 () Bool)

(assert (=> d!862127 (=> res!1275387 e!1946054)))

(assert (=> d!862127 (= res!1275387 ((_ is ElementMatch!9611) r!17423))))

(assert (=> d!862127 (= (validRegex!4344 r!17423) e!1946054)))

(declare-fun c!521909 () Bool)

(declare-fun bm!221076 () Bool)

(assert (=> bm!221076 (= call!221083 (validRegex!4344 (ite c!521909 (reg!9940 r!17423) (ite c!521908 (regOne!19735 r!17423) (regTwo!19734 r!17423)))))))

(declare-fun b!3115957 () Bool)

(assert (=> b!3115957 (= e!1946058 call!221082)))

(declare-fun b!3115958 () Bool)

(assert (=> b!3115958 (= e!1946059 call!221083)))

(declare-fun b!3115959 () Bool)

(assert (=> b!3115959 (= e!1946054 e!1946056)))

(assert (=> b!3115959 (= c!521909 ((_ is Star!9611) r!17423))))

(declare-fun b!3115960 () Bool)

(assert (=> b!3115960 (= e!1946056 e!1946060)))

(assert (=> b!3115960 (= c!521908 ((_ is Union!9611) r!17423))))

(assert (= (and d!862127 (not res!1275387)) b!3115959))

(assert (= (and b!3115959 c!521909) b!3115956))

(assert (= (and b!3115959 (not c!521909)) b!3115960))

(assert (= (and b!3115956 res!1275388) b!3115958))

(assert (= (and b!3115960 c!521908) b!3115954))

(assert (= (and b!3115960 (not c!521908)) b!3115953))

(assert (= (and b!3115954 res!1275386) b!3115957))

(assert (= (and b!3115953 (not res!1275389)) b!3115952))

(assert (= (and b!3115952 res!1275385) b!3115955))

(assert (= (or b!3115954 b!3115955) bm!221077))

(assert (= (or b!3115957 b!3115952) bm!221078))

(assert (= (or b!3115958 bm!221077) bm!221076))

(declare-fun m!3406461 () Bool)

(assert (=> b!3115956 m!3406461))

(declare-fun m!3406463 () Bool)

(assert (=> bm!221078 m!3406463))

(declare-fun m!3406465 () Bool)

(assert (=> bm!221076 m!3406465))

(assert (=> start!294968 d!862127))

(declare-fun d!862129 () Bool)

(assert (=> d!862129 (= (isEmptyLang!662 lt!1058270) ((_ is EmptyLang!9611) lt!1058270))))

(assert (=> b!3115896 d!862129))

(declare-fun b!3116116 () Bool)

(declare-fun e!1946154 () Regex!9611)

(declare-fun lt!1058297 () Regex!9611)

(assert (=> b!3116116 (= e!1946154 lt!1058297)))

(declare-fun b!3116117 () Bool)

(declare-fun c!521958 () Bool)

(declare-fun lt!1058296 () Regex!9611)

(declare-fun isEmptyExpr!659 (Regex!9611) Bool)

(assert (=> b!3116117 (= c!521958 (isEmptyExpr!659 lt!1058296))))

(declare-fun e!1946162 () Regex!9611)

(declare-fun e!1946159 () Regex!9611)

(assert (=> b!3116117 (= e!1946162 e!1946159)))

(declare-fun b!3116118 () Bool)

(declare-fun e!1946158 () Regex!9611)

(declare-fun lt!1058295 () Regex!9611)

(assert (=> b!3116118 (= e!1946158 (Concat!14932 lt!1058296 lt!1058295))))

(declare-fun call!221111 () Bool)

(declare-fun c!521966 () Bool)

(declare-fun bm!221106 () Bool)

(declare-fun c!521960 () Bool)

(declare-fun lt!1058299 () Regex!9611)

(assert (=> bm!221106 (= call!221111 (isEmptyLang!662 (ite c!521966 lt!1058299 (ite c!521960 lt!1058297 lt!1058295))))))

(declare-fun b!3116119 () Bool)

(assert (=> b!3116119 (= e!1946159 lt!1058295)))

(declare-fun b!3116120 () Bool)

(declare-fun e!1946165 () Regex!9611)

(assert (=> b!3116120 (= e!1946165 (Star!9611 lt!1058299))))

(declare-fun b!3116121 () Bool)

(declare-fun c!521963 () Bool)

(declare-fun e!1946160 () Bool)

(assert (=> b!3116121 (= c!521963 e!1946160)))

(declare-fun res!1275449 () Bool)

(assert (=> b!3116121 (=> res!1275449 e!1946160)))

(assert (=> b!3116121 (= res!1275449 call!221111)))

(declare-fun call!221112 () Regex!9611)

(assert (=> b!3116121 (= lt!1058299 call!221112)))

(declare-fun e!1946164 () Regex!9611)

(assert (=> b!3116121 (= e!1946164 e!1946165)))

(declare-fun b!3116122 () Bool)

(assert (=> b!3116122 (= e!1946165 EmptyExpr!9611)))

(declare-fun b!3116123 () Bool)

(assert (=> b!3116123 (= e!1946162 EmptyLang!9611)))

(declare-fun bm!221107 () Bool)

(declare-fun lt!1058298 () Regex!9611)

(declare-fun call!221116 () Bool)

(assert (=> bm!221107 (= call!221116 (isEmptyLang!662 (ite c!521960 lt!1058298 lt!1058296)))))

(declare-fun b!3116124 () Bool)

(declare-fun e!1946161 () Regex!9611)

(assert (=> b!3116124 (= e!1946161 lt!1058298)))

(declare-fun b!3116125 () Bool)

(declare-fun e!1946152 () Bool)

(declare-fun call!221117 () Bool)

(assert (=> b!3116125 (= e!1946152 call!221117)))

(declare-fun b!3116126 () Bool)

(declare-fun call!221114 () Bool)

(assert (=> b!3116126 (= e!1946160 call!221114)))

(declare-fun bm!221108 () Bool)

(declare-fun call!221113 () Regex!9611)

(assert (=> bm!221108 (= call!221113 call!221112)))

(declare-fun b!3116127 () Bool)

(declare-fun e!1946153 () Regex!9611)

(assert (=> b!3116127 (= e!1946153 EmptyLang!9611)))

(declare-fun b!3116128 () Bool)

(assert (=> b!3116128 (= c!521960 ((_ is Union!9611) (reg!9940 r!17423)))))

(declare-fun e!1946156 () Regex!9611)

(assert (=> b!3116128 (= e!1946164 e!1946156)))

(declare-fun bm!221109 () Bool)

(assert (=> bm!221109 (= call!221114 (isEmptyExpr!659 (ite c!521966 lt!1058299 lt!1058295)))))

(declare-fun b!3116129 () Bool)

(assert (=> b!3116129 (= e!1946158 lt!1058296)))

(declare-fun b!3116130 () Bool)

(declare-fun c!521965 () Bool)

(assert (=> b!3116130 (= c!521965 ((_ is EmptyExpr!9611) (reg!9940 r!17423)))))

(declare-fun e!1946163 () Regex!9611)

(declare-fun e!1946157 () Regex!9611)

(assert (=> b!3116130 (= e!1946163 e!1946157)))

(declare-fun b!3116131 () Bool)

(assert (=> b!3116131 (= e!1946159 e!1946158)))

(declare-fun c!521959 () Bool)

(assert (=> b!3116131 (= c!521959 call!221114)))

(declare-fun b!3116132 () Bool)

(assert (=> b!3116132 (= e!1946157 EmptyExpr!9611)))

(declare-fun b!3116133 () Bool)

(assert (=> b!3116133 (= e!1946161 (Union!9611 lt!1058298 lt!1058297))))

(declare-fun b!3116134 () Bool)

(declare-fun c!521967 () Bool)

(assert (=> b!3116134 (= c!521967 call!221117)))

(assert (=> b!3116134 (= e!1946154 e!1946161)))

(declare-fun b!3116136 () Bool)

(assert (=> b!3116136 (= e!1946156 e!1946162)))

(declare-fun call!221115 () Regex!9611)

(assert (=> b!3116136 (= lt!1058296 call!221115)))

(assert (=> b!3116136 (= lt!1058295 call!221113)))

(declare-fun res!1275451 () Bool)

(assert (=> b!3116136 (= res!1275451 call!221116)))

(assert (=> b!3116136 (=> res!1275451 e!1946152)))

(declare-fun c!521961 () Bool)

(assert (=> b!3116136 (= c!521961 e!1946152)))

(declare-fun b!3116135 () Bool)

(declare-fun e!1946155 () Bool)

(declare-fun lt!1058294 () Regex!9611)

(assert (=> b!3116135 (= e!1946155 (= (nullable!3249 lt!1058294) (nullable!3249 (reg!9940 r!17423))))))

(declare-fun d!862131 () Bool)

(assert (=> d!862131 e!1946155))

(declare-fun res!1275450 () Bool)

(assert (=> d!862131 (=> (not res!1275450) (not e!1946155))))

(assert (=> d!862131 (= res!1275450 (validRegex!4344 lt!1058294))))

(assert (=> d!862131 (= lt!1058294 e!1946153)))

(declare-fun c!521964 () Bool)

(assert (=> d!862131 (= c!521964 ((_ is EmptyLang!9611) (reg!9940 r!17423)))))

(assert (=> d!862131 (validRegex!4344 (reg!9940 r!17423))))

(assert (=> d!862131 (= (simplify!566 (reg!9940 r!17423)) lt!1058294)))

(declare-fun b!3116137 () Bool)

(assert (=> b!3116137 (= e!1946153 e!1946163)))

(declare-fun c!521968 () Bool)

(assert (=> b!3116137 (= c!521968 ((_ is ElementMatch!9611) (reg!9940 r!17423)))))

(declare-fun b!3116138 () Bool)

(assert (=> b!3116138 (= e!1946163 (reg!9940 r!17423))))

(declare-fun bm!221110 () Bool)

(assert (=> bm!221110 (= call!221117 call!221111)))

(declare-fun b!3116139 () Bool)

(assert (=> b!3116139 (= e!1946157 e!1946164)))

(assert (=> b!3116139 (= c!521966 ((_ is Star!9611) (reg!9940 r!17423)))))

(declare-fun bm!221111 () Bool)

(assert (=> bm!221111 (= call!221115 (simplify!566 (ite c!521960 (regTwo!19735 (reg!9940 r!17423)) (regOne!19734 (reg!9940 r!17423)))))))

(declare-fun b!3116140 () Bool)

(assert (=> b!3116140 (= e!1946156 e!1946154)))

(assert (=> b!3116140 (= lt!1058298 call!221113)))

(assert (=> b!3116140 (= lt!1058297 call!221115)))

(declare-fun c!521962 () Bool)

(assert (=> b!3116140 (= c!521962 call!221116)))

(declare-fun bm!221112 () Bool)

(assert (=> bm!221112 (= call!221112 (simplify!566 (ite c!521966 (reg!9940 (reg!9940 r!17423)) (ite c!521960 (regOne!19735 (reg!9940 r!17423)) (regTwo!19734 (reg!9940 r!17423))))))))

(assert (= (and d!862131 c!521964) b!3116127))

(assert (= (and d!862131 (not c!521964)) b!3116137))

(assert (= (and b!3116137 c!521968) b!3116138))

(assert (= (and b!3116137 (not c!521968)) b!3116130))

(assert (= (and b!3116130 c!521965) b!3116132))

(assert (= (and b!3116130 (not c!521965)) b!3116139))

(assert (= (and b!3116139 c!521966) b!3116121))

(assert (= (and b!3116139 (not c!521966)) b!3116128))

(assert (= (and b!3116121 (not res!1275449)) b!3116126))

(assert (= (and b!3116121 c!521963) b!3116122))

(assert (= (and b!3116121 (not c!521963)) b!3116120))

(assert (= (and b!3116128 c!521960) b!3116140))

(assert (= (and b!3116128 (not c!521960)) b!3116136))

(assert (= (and b!3116140 c!521962) b!3116116))

(assert (= (and b!3116140 (not c!521962)) b!3116134))

(assert (= (and b!3116134 c!521967) b!3116124))

(assert (= (and b!3116134 (not c!521967)) b!3116133))

(assert (= (and b!3116136 (not res!1275451)) b!3116125))

(assert (= (and b!3116136 c!521961) b!3116123))

(assert (= (and b!3116136 (not c!521961)) b!3116117))

(assert (= (and b!3116117 c!521958) b!3116119))

(assert (= (and b!3116117 (not c!521958)) b!3116131))

(assert (= (and b!3116131 c!521959) b!3116129))

(assert (= (and b!3116131 (not c!521959)) b!3116118))

(assert (= (or b!3116140 b!3116136) bm!221108))

(assert (= (or b!3116140 b!3116136) bm!221111))

(assert (= (or b!3116140 b!3116136) bm!221107))

(assert (= (or b!3116134 b!3116125) bm!221110))

(assert (= (or b!3116126 b!3116131) bm!221109))

(assert (= (or b!3116121 bm!221108) bm!221112))

(assert (= (or b!3116121 bm!221110) bm!221106))

(assert (= (and d!862131 res!1275450) b!3116135))

(declare-fun m!3406519 () Bool)

(assert (=> b!3116117 m!3406519))

(declare-fun m!3406521 () Bool)

(assert (=> bm!221109 m!3406521))

(declare-fun m!3406523 () Bool)

(assert (=> d!862131 m!3406523))

(declare-fun m!3406525 () Bool)

(assert (=> d!862131 m!3406525))

(declare-fun m!3406527 () Bool)

(assert (=> bm!221106 m!3406527))

(declare-fun m!3406529 () Bool)

(assert (=> b!3116135 m!3406529))

(assert (=> b!3116135 m!3406461))

(declare-fun m!3406531 () Bool)

(assert (=> bm!221112 m!3406531))

(declare-fun m!3406533 () Bool)

(assert (=> bm!221107 m!3406533))

(declare-fun m!3406535 () Bool)

(assert (=> bm!221111 m!3406535))

(assert (=> b!3115896 d!862131))

(declare-fun b!3116169 () Bool)

(declare-fun res!1275468 () Bool)

(declare-fun e!1946186 () Bool)

(assert (=> b!3116169 (=> (not res!1275468) (not e!1946186))))

(declare-fun isEmpty!19695 (List!35476) Bool)

(declare-fun tail!5129 (List!35476) List!35476)

(assert (=> b!3116169 (= res!1275468 (isEmpty!19695 (tail!5129 s!11993)))))

(declare-fun bm!221115 () Bool)

(declare-fun call!221120 () Bool)

(assert (=> bm!221115 (= call!221120 (isEmpty!19695 s!11993))))

(declare-fun b!3116171 () Bool)

(declare-fun e!1946185 () Bool)

(declare-fun e!1946184 () Bool)

(assert (=> b!3116171 (= e!1946185 e!1946184)))

(declare-fun res!1275472 () Bool)

(assert (=> b!3116171 (=> res!1275472 e!1946184)))

(assert (=> b!3116171 (= res!1275472 call!221120)))

(declare-fun b!3116172 () Bool)

(declare-fun e!1946180 () Bool)

(declare-fun derivativeStep!2844 (Regex!9611 C!19408) Regex!9611)

(declare-fun head!6903 (List!35476) C!19408)

(assert (=> b!3116172 (= e!1946180 (matchR!4493 (derivativeStep!2844 lt!1058272 (head!6903 s!11993)) (tail!5129 s!11993)))))

(declare-fun b!3116173 () Bool)

(declare-fun res!1275469 () Bool)

(declare-fun e!1946181 () Bool)

(assert (=> b!3116173 (=> res!1275469 e!1946181)))

(assert (=> b!3116173 (= res!1275469 (not ((_ is ElementMatch!9611) lt!1058272)))))

(declare-fun e!1946182 () Bool)

(assert (=> b!3116173 (= e!1946182 e!1946181)))

(declare-fun b!3116174 () Bool)

(declare-fun res!1275471 () Bool)

(assert (=> b!3116174 (=> (not res!1275471) (not e!1946186))))

(assert (=> b!3116174 (= res!1275471 (not call!221120))))

(declare-fun b!3116175 () Bool)

(assert (=> b!3116175 (= e!1946186 (= (head!6903 s!11993) (c!521897 lt!1058272)))))

(declare-fun b!3116176 () Bool)

(declare-fun e!1946183 () Bool)

(declare-fun lt!1058302 () Bool)

(assert (=> b!3116176 (= e!1946183 (= lt!1058302 call!221120))))

(declare-fun b!3116170 () Bool)

(assert (=> b!3116170 (= e!1946184 (not (= (head!6903 s!11993) (c!521897 lt!1058272))))))

(declare-fun d!862145 () Bool)

(assert (=> d!862145 e!1946183))

(declare-fun c!521977 () Bool)

(assert (=> d!862145 (= c!521977 ((_ is EmptyExpr!9611) lt!1058272))))

(assert (=> d!862145 (= lt!1058302 e!1946180)))

(declare-fun c!521975 () Bool)

(assert (=> d!862145 (= c!521975 (isEmpty!19695 s!11993))))

(assert (=> d!862145 (validRegex!4344 lt!1058272)))

(assert (=> d!862145 (= (matchR!4493 lt!1058272 s!11993) lt!1058302)))

(declare-fun b!3116177 () Bool)

(assert (=> b!3116177 (= e!1946181 e!1946185)))

(declare-fun res!1275470 () Bool)

(assert (=> b!3116177 (=> (not res!1275470) (not e!1946185))))

(assert (=> b!3116177 (= res!1275470 (not lt!1058302))))

(declare-fun b!3116178 () Bool)

(declare-fun res!1275473 () Bool)

(assert (=> b!3116178 (=> res!1275473 e!1946181)))

(assert (=> b!3116178 (= res!1275473 e!1946186)))

(declare-fun res!1275474 () Bool)

(assert (=> b!3116178 (=> (not res!1275474) (not e!1946186))))

(assert (=> b!3116178 (= res!1275474 lt!1058302)))

(declare-fun b!3116179 () Bool)

(assert (=> b!3116179 (= e!1946180 (nullable!3249 lt!1058272))))

(declare-fun b!3116180 () Bool)

(assert (=> b!3116180 (= e!1946183 e!1946182)))

(declare-fun c!521976 () Bool)

(assert (=> b!3116180 (= c!521976 ((_ is EmptyLang!9611) lt!1058272))))

(declare-fun b!3116181 () Bool)

(assert (=> b!3116181 (= e!1946182 (not lt!1058302))))

(declare-fun b!3116182 () Bool)

(declare-fun res!1275475 () Bool)

(assert (=> b!3116182 (=> res!1275475 e!1946184)))

(assert (=> b!3116182 (= res!1275475 (not (isEmpty!19695 (tail!5129 s!11993))))))

(assert (= (and d!862145 c!521975) b!3116179))

(assert (= (and d!862145 (not c!521975)) b!3116172))

(assert (= (and d!862145 c!521977) b!3116176))

(assert (= (and d!862145 (not c!521977)) b!3116180))

(assert (= (and b!3116180 c!521976) b!3116181))

(assert (= (and b!3116180 (not c!521976)) b!3116173))

(assert (= (and b!3116173 (not res!1275469)) b!3116178))

(assert (= (and b!3116178 res!1275474) b!3116174))

(assert (= (and b!3116174 res!1275471) b!3116169))

(assert (= (and b!3116169 res!1275468) b!3116175))

(assert (= (and b!3116178 (not res!1275473)) b!3116177))

(assert (= (and b!3116177 res!1275470) b!3116171))

(assert (= (and b!3116171 (not res!1275472)) b!3116182))

(assert (= (and b!3116182 (not res!1275475)) b!3116170))

(assert (= (or b!3116176 b!3116171 b!3116174) bm!221115))

(declare-fun m!3406537 () Bool)

(assert (=> d!862145 m!3406537))

(assert (=> d!862145 m!3406459))

(declare-fun m!3406539 () Bool)

(assert (=> b!3116172 m!3406539))

(assert (=> b!3116172 m!3406539))

(declare-fun m!3406541 () Bool)

(assert (=> b!3116172 m!3406541))

(declare-fun m!3406543 () Bool)

(assert (=> b!3116172 m!3406543))

(assert (=> b!3116172 m!3406541))

(assert (=> b!3116172 m!3406543))

(declare-fun m!3406545 () Bool)

(assert (=> b!3116172 m!3406545))

(assert (=> bm!221115 m!3406537))

(assert (=> b!3116169 m!3406543))

(assert (=> b!3116169 m!3406543))

(declare-fun m!3406547 () Bool)

(assert (=> b!3116169 m!3406547))

(assert (=> b!3116170 m!3406539))

(declare-fun m!3406549 () Bool)

(assert (=> b!3116179 m!3406549))

(assert (=> b!3116182 m!3406543))

(assert (=> b!3116182 m!3406543))

(assert (=> b!3116182 m!3406547))

(assert (=> b!3116175 m!3406539))

(assert (=> b!3115902 d!862145))

(declare-fun b!3116377 () Bool)

(assert (=> b!3116377 true))

(assert (=> b!3116377 true))

(declare-fun bs!535845 () Bool)

(declare-fun b!3116374 () Bool)

(assert (= bs!535845 (and b!3116374 b!3116377)))

(declare-fun lambda!115144 () Int)

(declare-fun lambda!115143 () Int)

(assert (=> bs!535845 (not (= lambda!115144 lambda!115143))))

(assert (=> b!3116374 true))

(assert (=> b!3116374 true))

(declare-fun b!3116373 () Bool)

(declare-fun e!1946283 () Bool)

(declare-fun call!221157 () Bool)

(assert (=> b!3116373 (= e!1946283 call!221157)))

(declare-fun e!1946285 () Bool)

(declare-fun call!221156 () Bool)

(assert (=> b!3116374 (= e!1946285 call!221156)))

(declare-fun bm!221151 () Bool)

(declare-fun c!522028 () Bool)

(declare-fun Exists!1865 (Int) Bool)

(assert (=> bm!221151 (= call!221156 (Exists!1865 (ite c!522028 lambda!115143 lambda!115144)))))

(declare-fun bm!221152 () Bool)

(assert (=> bm!221152 (= call!221157 (isEmpty!19695 s!11993))))

(declare-fun d!862147 () Bool)

(declare-fun c!522031 () Bool)

(assert (=> d!862147 (= c!522031 ((_ is EmptyExpr!9611) r!17423))))

(assert (=> d!862147 (= (matchRSpec!1748 r!17423 s!11993) e!1946283)))

(declare-fun b!3116375 () Bool)

(declare-fun c!522030 () Bool)

(assert (=> b!3116375 (= c!522030 ((_ is Union!9611) r!17423))))

(declare-fun e!1946287 () Bool)

(declare-fun e!1946288 () Bool)

(assert (=> b!3116375 (= e!1946287 e!1946288)))

(declare-fun b!3116376 () Bool)

(declare-fun c!522029 () Bool)

(assert (=> b!3116376 (= c!522029 ((_ is ElementMatch!9611) r!17423))))

(declare-fun e!1946282 () Bool)

(assert (=> b!3116376 (= e!1946282 e!1946287)))

(declare-fun e!1946286 () Bool)

(assert (=> b!3116377 (= e!1946286 call!221156)))

(declare-fun b!3116378 () Bool)

(declare-fun e!1946284 () Bool)

(assert (=> b!3116378 (= e!1946288 e!1946284)))

(declare-fun res!1275529 () Bool)

(assert (=> b!3116378 (= res!1275529 (matchRSpec!1748 (regOne!19735 r!17423) s!11993))))

(assert (=> b!3116378 (=> res!1275529 e!1946284)))

(declare-fun b!3116379 () Bool)

(declare-fun res!1275528 () Bool)

(assert (=> b!3116379 (=> res!1275528 e!1946286)))

(assert (=> b!3116379 (= res!1275528 call!221157)))

(assert (=> b!3116379 (= e!1946285 e!1946286)))

(declare-fun b!3116380 () Bool)

(assert (=> b!3116380 (= e!1946284 (matchRSpec!1748 (regTwo!19735 r!17423) s!11993))))

(declare-fun b!3116381 () Bool)

(assert (=> b!3116381 (= e!1946283 e!1946282)))

(declare-fun res!1275527 () Bool)

(assert (=> b!3116381 (= res!1275527 (not ((_ is EmptyLang!9611) r!17423)))))

(assert (=> b!3116381 (=> (not res!1275527) (not e!1946282))))

(declare-fun b!3116382 () Bool)

(assert (=> b!3116382 (= e!1946287 (= s!11993 (Cons!35352 (c!521897 r!17423) Nil!35352)))))

(declare-fun b!3116383 () Bool)

(assert (=> b!3116383 (= e!1946288 e!1946285)))

(assert (=> b!3116383 (= c!522028 ((_ is Star!9611) r!17423))))

(assert (= (and d!862147 c!522031) b!3116373))

(assert (= (and d!862147 (not c!522031)) b!3116381))

(assert (= (and b!3116381 res!1275527) b!3116376))

(assert (= (and b!3116376 c!522029) b!3116382))

(assert (= (and b!3116376 (not c!522029)) b!3116375))

(assert (= (and b!3116375 c!522030) b!3116378))

(assert (= (and b!3116375 (not c!522030)) b!3116383))

(assert (= (and b!3116378 (not res!1275529)) b!3116380))

(assert (= (and b!3116383 c!522028) b!3116379))

(assert (= (and b!3116383 (not c!522028)) b!3116374))

(assert (= (and b!3116379 (not res!1275528)) b!3116377))

(assert (= (or b!3116377 b!3116374) bm!221151))

(assert (= (or b!3116373 b!3116379) bm!221152))

(declare-fun m!3406585 () Bool)

(assert (=> bm!221151 m!3406585))

(assert (=> bm!221152 m!3406537))

(declare-fun m!3406587 () Bool)

(assert (=> b!3116378 m!3406587))

(declare-fun m!3406589 () Bool)

(assert (=> b!3116380 m!3406589))

(assert (=> b!3115899 d!862147))

(declare-fun b!3116388 () Bool)

(declare-fun res!1275530 () Bool)

(declare-fun e!1946295 () Bool)

(assert (=> b!3116388 (=> (not res!1275530) (not e!1946295))))

(assert (=> b!3116388 (= res!1275530 (isEmpty!19695 (tail!5129 s!11993)))))

(declare-fun bm!221153 () Bool)

(declare-fun call!221158 () Bool)

(assert (=> bm!221153 (= call!221158 (isEmpty!19695 s!11993))))

(declare-fun b!3116390 () Bool)

(declare-fun e!1946294 () Bool)

(declare-fun e!1946293 () Bool)

(assert (=> b!3116390 (= e!1946294 e!1946293)))

(declare-fun res!1275534 () Bool)

(assert (=> b!3116390 (=> res!1275534 e!1946293)))

(assert (=> b!3116390 (= res!1275534 call!221158)))

(declare-fun b!3116391 () Bool)

(declare-fun e!1946289 () Bool)

(assert (=> b!3116391 (= e!1946289 (matchR!4493 (derivativeStep!2844 r!17423 (head!6903 s!11993)) (tail!5129 s!11993)))))

(declare-fun b!3116392 () Bool)

(declare-fun res!1275531 () Bool)

(declare-fun e!1946290 () Bool)

(assert (=> b!3116392 (=> res!1275531 e!1946290)))

(assert (=> b!3116392 (= res!1275531 (not ((_ is ElementMatch!9611) r!17423)))))

(declare-fun e!1946291 () Bool)

(assert (=> b!3116392 (= e!1946291 e!1946290)))

(declare-fun b!3116393 () Bool)

(declare-fun res!1275533 () Bool)

(assert (=> b!3116393 (=> (not res!1275533) (not e!1946295))))

(assert (=> b!3116393 (= res!1275533 (not call!221158))))

(declare-fun b!3116394 () Bool)

(assert (=> b!3116394 (= e!1946295 (= (head!6903 s!11993) (c!521897 r!17423)))))

(declare-fun b!3116395 () Bool)

(declare-fun e!1946292 () Bool)

(declare-fun lt!1058325 () Bool)

(assert (=> b!3116395 (= e!1946292 (= lt!1058325 call!221158))))

(declare-fun b!3116389 () Bool)

(assert (=> b!3116389 (= e!1946293 (not (= (head!6903 s!11993) (c!521897 r!17423))))))

(declare-fun d!862159 () Bool)

(assert (=> d!862159 e!1946292))

(declare-fun c!522034 () Bool)

(assert (=> d!862159 (= c!522034 ((_ is EmptyExpr!9611) r!17423))))

(assert (=> d!862159 (= lt!1058325 e!1946289)))

(declare-fun c!522032 () Bool)

(assert (=> d!862159 (= c!522032 (isEmpty!19695 s!11993))))

(assert (=> d!862159 (validRegex!4344 r!17423)))

(assert (=> d!862159 (= (matchR!4493 r!17423 s!11993) lt!1058325)))

(declare-fun b!3116396 () Bool)

(assert (=> b!3116396 (= e!1946290 e!1946294)))

(declare-fun res!1275532 () Bool)

(assert (=> b!3116396 (=> (not res!1275532) (not e!1946294))))

(assert (=> b!3116396 (= res!1275532 (not lt!1058325))))

(declare-fun b!3116397 () Bool)

(declare-fun res!1275535 () Bool)

(assert (=> b!3116397 (=> res!1275535 e!1946290)))

(assert (=> b!3116397 (= res!1275535 e!1946295)))

(declare-fun res!1275536 () Bool)

(assert (=> b!3116397 (=> (not res!1275536) (not e!1946295))))

(assert (=> b!3116397 (= res!1275536 lt!1058325)))

(declare-fun b!3116398 () Bool)

(assert (=> b!3116398 (= e!1946289 (nullable!3249 r!17423))))

(declare-fun b!3116399 () Bool)

(assert (=> b!3116399 (= e!1946292 e!1946291)))

(declare-fun c!522033 () Bool)

(assert (=> b!3116399 (= c!522033 ((_ is EmptyLang!9611) r!17423))))

(declare-fun b!3116400 () Bool)

(assert (=> b!3116400 (= e!1946291 (not lt!1058325))))

(declare-fun b!3116401 () Bool)

(declare-fun res!1275537 () Bool)

(assert (=> b!3116401 (=> res!1275537 e!1946293)))

(assert (=> b!3116401 (= res!1275537 (not (isEmpty!19695 (tail!5129 s!11993))))))

(assert (= (and d!862159 c!522032) b!3116398))

(assert (= (and d!862159 (not c!522032)) b!3116391))

(assert (= (and d!862159 c!522034) b!3116395))

(assert (= (and d!862159 (not c!522034)) b!3116399))

(assert (= (and b!3116399 c!522033) b!3116400))

(assert (= (and b!3116399 (not c!522033)) b!3116392))

(assert (= (and b!3116392 (not res!1275531)) b!3116397))

(assert (= (and b!3116397 res!1275536) b!3116393))

(assert (= (and b!3116393 res!1275533) b!3116388))

(assert (= (and b!3116388 res!1275530) b!3116394))

(assert (= (and b!3116397 (not res!1275535)) b!3116396))

(assert (= (and b!3116396 res!1275532) b!3116390))

(assert (= (and b!3116390 (not res!1275534)) b!3116401))

(assert (= (and b!3116401 (not res!1275537)) b!3116389))

(assert (= (or b!3116395 b!3116390 b!3116393) bm!221153))

(assert (=> d!862159 m!3406537))

(assert (=> d!862159 m!3406449))

(assert (=> b!3116391 m!3406539))

(assert (=> b!3116391 m!3406539))

(declare-fun m!3406591 () Bool)

(assert (=> b!3116391 m!3406591))

(assert (=> b!3116391 m!3406543))

(assert (=> b!3116391 m!3406591))

(assert (=> b!3116391 m!3406543))

(declare-fun m!3406593 () Bool)

(assert (=> b!3116391 m!3406593))

(assert (=> bm!221153 m!3406537))

(assert (=> b!3116388 m!3406543))

(assert (=> b!3116388 m!3406543))

(assert (=> b!3116388 m!3406547))

(assert (=> b!3116389 m!3406539))

(declare-fun m!3406595 () Bool)

(assert (=> b!3116398 m!3406595))

(assert (=> b!3116401 m!3406543))

(assert (=> b!3116401 m!3406543))

(assert (=> b!3116401 m!3406547))

(assert (=> b!3116394 m!3406539))

(assert (=> b!3115899 d!862159))

(declare-fun d!862161 () Bool)

(assert (=> d!862161 (= (matchR!4493 r!17423 s!11993) (matchRSpec!1748 r!17423 s!11993))))

(declare-fun lt!1058328 () Unit!49661)

(declare-fun choose!18429 (Regex!9611 List!35476) Unit!49661)

(assert (=> d!862161 (= lt!1058328 (choose!18429 r!17423 s!11993))))

(assert (=> d!862161 (validRegex!4344 r!17423)))

(assert (=> d!862161 (= (mainMatchTheorem!1748 r!17423 s!11993) lt!1058328)))

(declare-fun bs!535846 () Bool)

(assert (= bs!535846 d!862161))

(assert (=> bs!535846 m!3406441))

(assert (=> bs!535846 m!3406439))

(declare-fun m!3406597 () Bool)

(assert (=> bs!535846 m!3406597))

(assert (=> bs!535846 m!3406449))

(assert (=> b!3115899 d!862161))

(declare-fun b!3116402 () Bool)

(declare-fun res!1275538 () Bool)

(declare-fun e!1946302 () Bool)

(assert (=> b!3116402 (=> (not res!1275538) (not e!1946302))))

(assert (=> b!3116402 (= res!1275538 (isEmpty!19695 (tail!5129 s!11993)))))

(declare-fun bm!221154 () Bool)

(declare-fun call!221159 () Bool)

(assert (=> bm!221154 (= call!221159 (isEmpty!19695 s!11993))))

(declare-fun b!3116404 () Bool)

(declare-fun e!1946301 () Bool)

(declare-fun e!1946300 () Bool)

(assert (=> b!3116404 (= e!1946301 e!1946300)))

(declare-fun res!1275542 () Bool)

(assert (=> b!3116404 (=> res!1275542 e!1946300)))

(assert (=> b!3116404 (= res!1275542 call!221159)))

(declare-fun b!3116405 () Bool)

(declare-fun e!1946296 () Bool)

(assert (=> b!3116405 (= e!1946296 (matchR!4493 (derivativeStep!2844 lt!1058270 (head!6903 s!11993)) (tail!5129 s!11993)))))

(declare-fun b!3116406 () Bool)

(declare-fun res!1275539 () Bool)

(declare-fun e!1946297 () Bool)

(assert (=> b!3116406 (=> res!1275539 e!1946297)))

(assert (=> b!3116406 (= res!1275539 (not ((_ is ElementMatch!9611) lt!1058270)))))

(declare-fun e!1946298 () Bool)

(assert (=> b!3116406 (= e!1946298 e!1946297)))

(declare-fun b!3116407 () Bool)

(declare-fun res!1275541 () Bool)

(assert (=> b!3116407 (=> (not res!1275541) (not e!1946302))))

(assert (=> b!3116407 (= res!1275541 (not call!221159))))

(declare-fun b!3116408 () Bool)

(assert (=> b!3116408 (= e!1946302 (= (head!6903 s!11993) (c!521897 lt!1058270)))))

(declare-fun b!3116409 () Bool)

(declare-fun e!1946299 () Bool)

(declare-fun lt!1058329 () Bool)

(assert (=> b!3116409 (= e!1946299 (= lt!1058329 call!221159))))

(declare-fun b!3116403 () Bool)

(assert (=> b!3116403 (= e!1946300 (not (= (head!6903 s!11993) (c!521897 lt!1058270))))))

(declare-fun d!862163 () Bool)

(assert (=> d!862163 e!1946299))

(declare-fun c!522037 () Bool)

(assert (=> d!862163 (= c!522037 ((_ is EmptyExpr!9611) lt!1058270))))

(assert (=> d!862163 (= lt!1058329 e!1946296)))

(declare-fun c!522035 () Bool)

(assert (=> d!862163 (= c!522035 (isEmpty!19695 s!11993))))

(assert (=> d!862163 (validRegex!4344 lt!1058270)))

(assert (=> d!862163 (= (matchR!4493 lt!1058270 s!11993) lt!1058329)))

(declare-fun b!3116410 () Bool)

(assert (=> b!3116410 (= e!1946297 e!1946301)))

(declare-fun res!1275540 () Bool)

(assert (=> b!3116410 (=> (not res!1275540) (not e!1946301))))

(assert (=> b!3116410 (= res!1275540 (not lt!1058329))))

(declare-fun b!3116411 () Bool)

(declare-fun res!1275543 () Bool)

(assert (=> b!3116411 (=> res!1275543 e!1946297)))

(assert (=> b!3116411 (= res!1275543 e!1946302)))

(declare-fun res!1275544 () Bool)

(assert (=> b!3116411 (=> (not res!1275544) (not e!1946302))))

(assert (=> b!3116411 (= res!1275544 lt!1058329)))

(declare-fun b!3116412 () Bool)

(assert (=> b!3116412 (= e!1946296 (nullable!3249 lt!1058270))))

(declare-fun b!3116413 () Bool)

(assert (=> b!3116413 (= e!1946299 e!1946298)))

(declare-fun c!522036 () Bool)

(assert (=> b!3116413 (= c!522036 ((_ is EmptyLang!9611) lt!1058270))))

(declare-fun b!3116414 () Bool)

(assert (=> b!3116414 (= e!1946298 (not lt!1058329))))

(declare-fun b!3116415 () Bool)

(declare-fun res!1275545 () Bool)

(assert (=> b!3116415 (=> res!1275545 e!1946300)))

(assert (=> b!3116415 (= res!1275545 (not (isEmpty!19695 (tail!5129 s!11993))))))

(assert (= (and d!862163 c!522035) b!3116412))

(assert (= (and d!862163 (not c!522035)) b!3116405))

(assert (= (and d!862163 c!522037) b!3116409))

(assert (= (and d!862163 (not c!522037)) b!3116413))

(assert (= (and b!3116413 c!522036) b!3116414))

(assert (= (and b!3116413 (not c!522036)) b!3116406))

(assert (= (and b!3116406 (not res!1275539)) b!3116411))

(assert (= (and b!3116411 res!1275544) b!3116407))

(assert (= (and b!3116407 res!1275541) b!3116402))

(assert (= (and b!3116402 res!1275538) b!3116408))

(assert (= (and b!3116411 (not res!1275543)) b!3116410))

(assert (= (and b!3116410 res!1275540) b!3116404))

(assert (= (and b!3116404 (not res!1275542)) b!3116415))

(assert (= (and b!3116415 (not res!1275545)) b!3116403))

(assert (= (or b!3116409 b!3116404 b!3116407) bm!221154))

(assert (=> d!862163 m!3406537))

(declare-fun m!3406599 () Bool)

(assert (=> d!862163 m!3406599))

(assert (=> b!3116405 m!3406539))

(assert (=> b!3116405 m!3406539))

(declare-fun m!3406601 () Bool)

(assert (=> b!3116405 m!3406601))

(assert (=> b!3116405 m!3406543))

(assert (=> b!3116405 m!3406601))

(assert (=> b!3116405 m!3406543))

(declare-fun m!3406603 () Bool)

(assert (=> b!3116405 m!3406603))

(assert (=> bm!221154 m!3406537))

(assert (=> b!3116402 m!3406543))

(assert (=> b!3116402 m!3406543))

(assert (=> b!3116402 m!3406547))

(assert (=> b!3116403 m!3406539))

(declare-fun m!3406605 () Bool)

(assert (=> b!3116412 m!3406605))

(assert (=> b!3116415 m!3406543))

(assert (=> b!3116415 m!3406543))

(assert (=> b!3116415 m!3406547))

(assert (=> b!3116408 m!3406539))

(assert (=> b!3115904 d!862163))

(declare-fun b!3116416 () Bool)

(declare-fun res!1275546 () Bool)

(declare-fun e!1946309 () Bool)

(assert (=> b!3116416 (=> (not res!1275546) (not e!1946309))))

(assert (=> b!3116416 (= res!1275546 (isEmpty!19695 (tail!5129 s!11993)))))

(declare-fun bm!221155 () Bool)

(declare-fun call!221160 () Bool)

(assert (=> bm!221155 (= call!221160 (isEmpty!19695 s!11993))))

(declare-fun b!3116418 () Bool)

(declare-fun e!1946308 () Bool)

(declare-fun e!1946307 () Bool)

(assert (=> b!3116418 (= e!1946308 e!1946307)))

(declare-fun res!1275550 () Bool)

(assert (=> b!3116418 (=> res!1275550 e!1946307)))

(assert (=> b!3116418 (= res!1275550 call!221160)))

(declare-fun b!3116419 () Bool)

(declare-fun e!1946303 () Bool)

(assert (=> b!3116419 (= e!1946303 (matchR!4493 (derivativeStep!2844 (reg!9940 r!17423) (head!6903 s!11993)) (tail!5129 s!11993)))))

(declare-fun b!3116420 () Bool)

(declare-fun res!1275547 () Bool)

(declare-fun e!1946304 () Bool)

(assert (=> b!3116420 (=> res!1275547 e!1946304)))

(assert (=> b!3116420 (= res!1275547 (not ((_ is ElementMatch!9611) (reg!9940 r!17423))))))

(declare-fun e!1946305 () Bool)

(assert (=> b!3116420 (= e!1946305 e!1946304)))

(declare-fun b!3116421 () Bool)

(declare-fun res!1275549 () Bool)

(assert (=> b!3116421 (=> (not res!1275549) (not e!1946309))))

(assert (=> b!3116421 (= res!1275549 (not call!221160))))

(declare-fun b!3116422 () Bool)

(assert (=> b!3116422 (= e!1946309 (= (head!6903 s!11993) (c!521897 (reg!9940 r!17423))))))

(declare-fun b!3116423 () Bool)

(declare-fun e!1946306 () Bool)

(declare-fun lt!1058330 () Bool)

(assert (=> b!3116423 (= e!1946306 (= lt!1058330 call!221160))))

(declare-fun b!3116417 () Bool)

(assert (=> b!3116417 (= e!1946307 (not (= (head!6903 s!11993) (c!521897 (reg!9940 r!17423)))))))

(declare-fun d!862165 () Bool)

(assert (=> d!862165 e!1946306))

(declare-fun c!522040 () Bool)

(assert (=> d!862165 (= c!522040 ((_ is EmptyExpr!9611) (reg!9940 r!17423)))))

(assert (=> d!862165 (= lt!1058330 e!1946303)))

(declare-fun c!522038 () Bool)

(assert (=> d!862165 (= c!522038 (isEmpty!19695 s!11993))))

(assert (=> d!862165 (validRegex!4344 (reg!9940 r!17423))))

(assert (=> d!862165 (= (matchR!4493 (reg!9940 r!17423) s!11993) lt!1058330)))

(declare-fun b!3116424 () Bool)

(assert (=> b!3116424 (= e!1946304 e!1946308)))

(declare-fun res!1275548 () Bool)

(assert (=> b!3116424 (=> (not res!1275548) (not e!1946308))))

(assert (=> b!3116424 (= res!1275548 (not lt!1058330))))

(declare-fun b!3116425 () Bool)

(declare-fun res!1275551 () Bool)

(assert (=> b!3116425 (=> res!1275551 e!1946304)))

(assert (=> b!3116425 (= res!1275551 e!1946309)))

(declare-fun res!1275552 () Bool)

(assert (=> b!3116425 (=> (not res!1275552) (not e!1946309))))

(assert (=> b!3116425 (= res!1275552 lt!1058330)))

(declare-fun b!3116426 () Bool)

(assert (=> b!3116426 (= e!1946303 (nullable!3249 (reg!9940 r!17423)))))

(declare-fun b!3116427 () Bool)

(assert (=> b!3116427 (= e!1946306 e!1946305)))

(declare-fun c!522039 () Bool)

(assert (=> b!3116427 (= c!522039 ((_ is EmptyLang!9611) (reg!9940 r!17423)))))

(declare-fun b!3116428 () Bool)

(assert (=> b!3116428 (= e!1946305 (not lt!1058330))))

(declare-fun b!3116429 () Bool)

(declare-fun res!1275553 () Bool)

(assert (=> b!3116429 (=> res!1275553 e!1946307)))

(assert (=> b!3116429 (= res!1275553 (not (isEmpty!19695 (tail!5129 s!11993))))))

(assert (= (and d!862165 c!522038) b!3116426))

(assert (= (and d!862165 (not c!522038)) b!3116419))

(assert (= (and d!862165 c!522040) b!3116423))

(assert (= (and d!862165 (not c!522040)) b!3116427))

(assert (= (and b!3116427 c!522039) b!3116428))

(assert (= (and b!3116427 (not c!522039)) b!3116420))

(assert (= (and b!3116420 (not res!1275547)) b!3116425))

(assert (= (and b!3116425 res!1275552) b!3116421))

(assert (= (and b!3116421 res!1275549) b!3116416))

(assert (= (and b!3116416 res!1275546) b!3116422))

(assert (= (and b!3116425 (not res!1275551)) b!3116424))

(assert (= (and b!3116424 res!1275548) b!3116418))

(assert (= (and b!3116418 (not res!1275550)) b!3116429))

(assert (= (and b!3116429 (not res!1275553)) b!3116417))

(assert (= (or b!3116423 b!3116418 b!3116421) bm!221155))

(assert (=> d!862165 m!3406537))

(assert (=> d!862165 m!3406525))

(assert (=> b!3116419 m!3406539))

(assert (=> b!3116419 m!3406539))

(declare-fun m!3406607 () Bool)

(assert (=> b!3116419 m!3406607))

(assert (=> b!3116419 m!3406543))

(assert (=> b!3116419 m!3406607))

(assert (=> b!3116419 m!3406543))

(declare-fun m!3406609 () Bool)

(assert (=> b!3116419 m!3406609))

(assert (=> bm!221155 m!3406537))

(assert (=> b!3116416 m!3406543))

(assert (=> b!3116416 m!3406543))

(assert (=> b!3116416 m!3406547))

(assert (=> b!3116417 m!3406539))

(assert (=> b!3116426 m!3406461))

(assert (=> b!3116429 m!3406543))

(assert (=> b!3116429 m!3406543))

(assert (=> b!3116429 m!3406547))

(assert (=> b!3116422 m!3406539))

(assert (=> b!3115904 d!862165))

(declare-fun d!862167 () Bool)

(assert (=> d!862167 (= (matchR!4493 (reg!9940 r!17423) s!11993) (matchR!4493 (simplify!566 (reg!9940 r!17423)) s!11993))))

(declare-fun lt!1058333 () Unit!49661)

(declare-fun choose!18430 (Regex!9611 List!35476) Unit!49661)

(assert (=> d!862167 (= lt!1058333 (choose!18430 (reg!9940 r!17423) s!11993))))

(assert (=> d!862167 (validRegex!4344 (reg!9940 r!17423))))

(assert (=> d!862167 (= (lemmaSimplifySound!354 (reg!9940 r!17423) s!11993) lt!1058333)))

(declare-fun bs!535847 () Bool)

(assert (= bs!535847 d!862167))

(assert (=> bs!535847 m!3406525))

(declare-fun m!3406611 () Bool)

(assert (=> bs!535847 m!3406611))

(assert (=> bs!535847 m!3406447))

(assert (=> bs!535847 m!3406453))

(assert (=> bs!535847 m!3406447))

(declare-fun m!3406613 () Bool)

(assert (=> bs!535847 m!3406613))

(assert (=> b!3115904 d!862167))

(declare-fun b!3116430 () Bool)

(declare-fun res!1275554 () Bool)

(declare-fun e!1946316 () Bool)

(assert (=> b!3116430 (=> (not res!1275554) (not e!1946316))))

(assert (=> b!3116430 (= res!1275554 (isEmpty!19695 (tail!5129 Nil!35352)))))

(declare-fun bm!221156 () Bool)

(declare-fun call!221161 () Bool)

(assert (=> bm!221156 (= call!221161 (isEmpty!19695 Nil!35352))))

(declare-fun b!3116432 () Bool)

(declare-fun e!1946315 () Bool)

(declare-fun e!1946314 () Bool)

(assert (=> b!3116432 (= e!1946315 e!1946314)))

(declare-fun res!1275558 () Bool)

(assert (=> b!3116432 (=> res!1275558 e!1946314)))

(assert (=> b!3116432 (= res!1275558 call!221161)))

(declare-fun b!3116433 () Bool)

(declare-fun e!1946310 () Bool)

(assert (=> b!3116433 (= e!1946310 (matchR!4493 (derivativeStep!2844 (reg!9940 r!17423) (head!6903 Nil!35352)) (tail!5129 Nil!35352)))))

(declare-fun b!3116434 () Bool)

(declare-fun res!1275555 () Bool)

(declare-fun e!1946311 () Bool)

(assert (=> b!3116434 (=> res!1275555 e!1946311)))

(assert (=> b!3116434 (= res!1275555 (not ((_ is ElementMatch!9611) (reg!9940 r!17423))))))

(declare-fun e!1946312 () Bool)

(assert (=> b!3116434 (= e!1946312 e!1946311)))

(declare-fun b!3116435 () Bool)

(declare-fun res!1275557 () Bool)

(assert (=> b!3116435 (=> (not res!1275557) (not e!1946316))))

(assert (=> b!3116435 (= res!1275557 (not call!221161))))

(declare-fun b!3116436 () Bool)

(assert (=> b!3116436 (= e!1946316 (= (head!6903 Nil!35352) (c!521897 (reg!9940 r!17423))))))

(declare-fun b!3116437 () Bool)

(declare-fun e!1946313 () Bool)

(declare-fun lt!1058334 () Bool)

(assert (=> b!3116437 (= e!1946313 (= lt!1058334 call!221161))))

(declare-fun b!3116431 () Bool)

(assert (=> b!3116431 (= e!1946314 (not (= (head!6903 Nil!35352) (c!521897 (reg!9940 r!17423)))))))

(declare-fun d!862169 () Bool)

(assert (=> d!862169 e!1946313))

(declare-fun c!522043 () Bool)

(assert (=> d!862169 (= c!522043 ((_ is EmptyExpr!9611) (reg!9940 r!17423)))))

(assert (=> d!862169 (= lt!1058334 e!1946310)))

(declare-fun c!522041 () Bool)

(assert (=> d!862169 (= c!522041 (isEmpty!19695 Nil!35352))))

(assert (=> d!862169 (validRegex!4344 (reg!9940 r!17423))))

(assert (=> d!862169 (= (matchR!4493 (reg!9940 r!17423) Nil!35352) lt!1058334)))

(declare-fun b!3116438 () Bool)

(assert (=> b!3116438 (= e!1946311 e!1946315)))

(declare-fun res!1275556 () Bool)

(assert (=> b!3116438 (=> (not res!1275556) (not e!1946315))))

(assert (=> b!3116438 (= res!1275556 (not lt!1058334))))

(declare-fun b!3116439 () Bool)

(declare-fun res!1275559 () Bool)

(assert (=> b!3116439 (=> res!1275559 e!1946311)))

(assert (=> b!3116439 (= res!1275559 e!1946316)))

(declare-fun res!1275560 () Bool)

(assert (=> b!3116439 (=> (not res!1275560) (not e!1946316))))

(assert (=> b!3116439 (= res!1275560 lt!1058334)))

(declare-fun b!3116440 () Bool)

(assert (=> b!3116440 (= e!1946310 (nullable!3249 (reg!9940 r!17423)))))

(declare-fun b!3116441 () Bool)

(assert (=> b!3116441 (= e!1946313 e!1946312)))

(declare-fun c!522042 () Bool)

(assert (=> b!3116441 (= c!522042 ((_ is EmptyLang!9611) (reg!9940 r!17423)))))

(declare-fun b!3116442 () Bool)

(assert (=> b!3116442 (= e!1946312 (not lt!1058334))))

(declare-fun b!3116443 () Bool)

(declare-fun res!1275561 () Bool)

(assert (=> b!3116443 (=> res!1275561 e!1946314)))

(assert (=> b!3116443 (= res!1275561 (not (isEmpty!19695 (tail!5129 Nil!35352))))))

(assert (= (and d!862169 c!522041) b!3116440))

(assert (= (and d!862169 (not c!522041)) b!3116433))

(assert (= (and d!862169 c!522043) b!3116437))

(assert (= (and d!862169 (not c!522043)) b!3116441))

(assert (= (and b!3116441 c!522042) b!3116442))

(assert (= (and b!3116441 (not c!522042)) b!3116434))

(assert (= (and b!3116434 (not res!1275555)) b!3116439))

(assert (= (and b!3116439 res!1275560) b!3116435))

(assert (= (and b!3116435 res!1275557) b!3116430))

(assert (= (and b!3116430 res!1275554) b!3116436))

(assert (= (and b!3116439 (not res!1275559)) b!3116438))

(assert (= (and b!3116438 res!1275556) b!3116432))

(assert (= (and b!3116432 (not res!1275558)) b!3116443))

(assert (= (and b!3116443 (not res!1275561)) b!3116431))

(assert (= (or b!3116437 b!3116432 b!3116435) bm!221156))

(declare-fun m!3406615 () Bool)

(assert (=> d!862169 m!3406615))

(assert (=> d!862169 m!3406525))

(declare-fun m!3406617 () Bool)

(assert (=> b!3116433 m!3406617))

(assert (=> b!3116433 m!3406617))

(declare-fun m!3406619 () Bool)

(assert (=> b!3116433 m!3406619))

(declare-fun m!3406621 () Bool)

(assert (=> b!3116433 m!3406621))

(assert (=> b!3116433 m!3406619))

(assert (=> b!3116433 m!3406621))

(declare-fun m!3406623 () Bool)

(assert (=> b!3116433 m!3406623))

(assert (=> bm!221156 m!3406615))

(assert (=> b!3116430 m!3406621))

(assert (=> b!3116430 m!3406621))

(declare-fun m!3406625 () Bool)

(assert (=> b!3116430 m!3406625))

(assert (=> b!3116431 m!3406617))

(assert (=> b!3116440 m!3406461))

(assert (=> b!3116443 m!3406621))

(assert (=> b!3116443 m!3406621))

(assert (=> b!3116443 m!3406625))

(assert (=> b!3116436 m!3406617))

(assert (=> b!3115895 d!862169))

(declare-fun b!3116444 () Bool)

(declare-fun e!1946318 () Bool)

(declare-fun e!1946320 () Bool)

(assert (=> b!3116444 (= e!1946318 e!1946320)))

(declare-fun res!1275562 () Bool)

(assert (=> b!3116444 (=> (not res!1275562) (not e!1946320))))

(declare-fun call!221163 () Bool)

(assert (=> b!3116444 (= res!1275562 call!221163)))

(declare-fun b!3116445 () Bool)

(declare-fun res!1275566 () Bool)

(assert (=> b!3116445 (=> res!1275566 e!1946318)))

(assert (=> b!3116445 (= res!1275566 (not ((_ is Concat!14932) lt!1058272)))))

(declare-fun e!1946323 () Bool)

(assert (=> b!3116445 (= e!1946323 e!1946318)))

(declare-fun b!3116446 () Bool)

(declare-fun res!1275563 () Bool)

(declare-fun e!1946321 () Bool)

(assert (=> b!3116446 (=> (not res!1275563) (not e!1946321))))

(declare-fun call!221162 () Bool)

(assert (=> b!3116446 (= res!1275563 call!221162)))

(assert (=> b!3116446 (= e!1946323 e!1946321)))

(declare-fun bm!221158 () Bool)

(declare-fun call!221164 () Bool)

(assert (=> bm!221158 (= call!221162 call!221164)))

(declare-fun b!3116447 () Bool)

(assert (=> b!3116447 (= e!1946320 call!221162)))

(declare-fun b!3116448 () Bool)

(declare-fun e!1946319 () Bool)

(declare-fun e!1946322 () Bool)

(assert (=> b!3116448 (= e!1946319 e!1946322)))

(declare-fun res!1275565 () Bool)

(assert (=> b!3116448 (= res!1275565 (not (nullable!3249 (reg!9940 lt!1058272))))))

(assert (=> b!3116448 (=> (not res!1275565) (not e!1946322))))

(declare-fun bm!221159 () Bool)

(declare-fun c!522044 () Bool)

(assert (=> bm!221159 (= call!221163 (validRegex!4344 (ite c!522044 (regTwo!19735 lt!1058272) (regOne!19734 lt!1058272))))))

(declare-fun d!862171 () Bool)

(declare-fun res!1275564 () Bool)

(declare-fun e!1946317 () Bool)

(assert (=> d!862171 (=> res!1275564 e!1946317)))

(assert (=> d!862171 (= res!1275564 ((_ is ElementMatch!9611) lt!1058272))))

(assert (=> d!862171 (= (validRegex!4344 lt!1058272) e!1946317)))

(declare-fun c!522045 () Bool)

(declare-fun bm!221157 () Bool)

(assert (=> bm!221157 (= call!221164 (validRegex!4344 (ite c!522045 (reg!9940 lt!1058272) (ite c!522044 (regOne!19735 lt!1058272) (regTwo!19734 lt!1058272)))))))

(declare-fun b!3116449 () Bool)

(assert (=> b!3116449 (= e!1946321 call!221163)))

(declare-fun b!3116450 () Bool)

(assert (=> b!3116450 (= e!1946322 call!221164)))

(declare-fun b!3116451 () Bool)

(assert (=> b!3116451 (= e!1946317 e!1946319)))

(assert (=> b!3116451 (= c!522045 ((_ is Star!9611) lt!1058272))))

(declare-fun b!3116452 () Bool)

(assert (=> b!3116452 (= e!1946319 e!1946323)))

(assert (=> b!3116452 (= c!522044 ((_ is Union!9611) lt!1058272))))

(assert (= (and d!862171 (not res!1275564)) b!3116451))

(assert (= (and b!3116451 c!522045) b!3116448))

(assert (= (and b!3116451 (not c!522045)) b!3116452))

(assert (= (and b!3116448 res!1275565) b!3116450))

(assert (= (and b!3116452 c!522044) b!3116446))

(assert (= (and b!3116452 (not c!522044)) b!3116445))

(assert (= (and b!3116446 res!1275563) b!3116449))

(assert (= (and b!3116445 (not res!1275566)) b!3116444))

(assert (= (and b!3116444 res!1275562) b!3116447))

(assert (= (or b!3116446 b!3116447) bm!221158))

(assert (= (or b!3116449 b!3116444) bm!221159))

(assert (= (or b!3116450 bm!221158) bm!221157))

(declare-fun m!3406627 () Bool)

(assert (=> b!3116448 m!3406627))

(declare-fun m!3406629 () Bool)

(assert (=> bm!221159 m!3406629))

(declare-fun m!3406631 () Bool)

(assert (=> bm!221157 m!3406631))

(assert (=> b!3115900 d!862171))

(declare-fun b!3116466 () Bool)

(declare-fun e!1946326 () Bool)

(declare-fun tp!977278 () Bool)

(declare-fun tp!977282 () Bool)

(assert (=> b!3116466 (= e!1946326 (and tp!977278 tp!977282))))

(assert (=> b!3115897 (= tp!977224 e!1946326)))

(declare-fun b!3116465 () Bool)

(declare-fun tp!977279 () Bool)

(assert (=> b!3116465 (= e!1946326 tp!977279)))

(declare-fun b!3116464 () Bool)

(declare-fun tp!977280 () Bool)

(declare-fun tp!977281 () Bool)

(assert (=> b!3116464 (= e!1946326 (and tp!977280 tp!977281))))

(declare-fun b!3116463 () Bool)

(assert (=> b!3116463 (= e!1946326 tp_is_empty!16785)))

(assert (= (and b!3115897 ((_ is ElementMatch!9611) (regOne!19734 r!17423))) b!3116463))

(assert (= (and b!3115897 ((_ is Concat!14932) (regOne!19734 r!17423))) b!3116464))

(assert (= (and b!3115897 ((_ is Star!9611) (regOne!19734 r!17423))) b!3116465))

(assert (= (and b!3115897 ((_ is Union!9611) (regOne!19734 r!17423))) b!3116466))

(declare-fun b!3116470 () Bool)

(declare-fun e!1946327 () Bool)

(declare-fun tp!977283 () Bool)

(declare-fun tp!977287 () Bool)

(assert (=> b!3116470 (= e!1946327 (and tp!977283 tp!977287))))

(assert (=> b!3115897 (= tp!977227 e!1946327)))

(declare-fun b!3116469 () Bool)

(declare-fun tp!977284 () Bool)

(assert (=> b!3116469 (= e!1946327 tp!977284)))

(declare-fun b!3116468 () Bool)

(declare-fun tp!977285 () Bool)

(declare-fun tp!977286 () Bool)

(assert (=> b!3116468 (= e!1946327 (and tp!977285 tp!977286))))

(declare-fun b!3116467 () Bool)

(assert (=> b!3116467 (= e!1946327 tp_is_empty!16785)))

(assert (= (and b!3115897 ((_ is ElementMatch!9611) (regTwo!19734 r!17423))) b!3116467))

(assert (= (and b!3115897 ((_ is Concat!14932) (regTwo!19734 r!17423))) b!3116468))

(assert (= (and b!3115897 ((_ is Star!9611) (regTwo!19734 r!17423))) b!3116469))

(assert (= (and b!3115897 ((_ is Union!9611) (regTwo!19734 r!17423))) b!3116470))

(declare-fun b!3116474 () Bool)

(declare-fun e!1946328 () Bool)

(declare-fun tp!977288 () Bool)

(declare-fun tp!977292 () Bool)

(assert (=> b!3116474 (= e!1946328 (and tp!977288 tp!977292))))

(assert (=> b!3115903 (= tp!977226 e!1946328)))

(declare-fun b!3116473 () Bool)

(declare-fun tp!977289 () Bool)

(assert (=> b!3116473 (= e!1946328 tp!977289)))

(declare-fun b!3116472 () Bool)

(declare-fun tp!977290 () Bool)

(declare-fun tp!977291 () Bool)

(assert (=> b!3116472 (= e!1946328 (and tp!977290 tp!977291))))

(declare-fun b!3116471 () Bool)

(assert (=> b!3116471 (= e!1946328 tp_is_empty!16785)))

(assert (= (and b!3115903 ((_ is ElementMatch!9611) (reg!9940 r!17423))) b!3116471))

(assert (= (and b!3115903 ((_ is Concat!14932) (reg!9940 r!17423))) b!3116472))

(assert (= (and b!3115903 ((_ is Star!9611) (reg!9940 r!17423))) b!3116473))

(assert (= (and b!3115903 ((_ is Union!9611) (reg!9940 r!17423))) b!3116474))

(declare-fun b!3116479 () Bool)

(declare-fun e!1946331 () Bool)

(declare-fun tp!977295 () Bool)

(assert (=> b!3116479 (= e!1946331 (and tp_is_empty!16785 tp!977295))))

(assert (=> b!3115898 (= tp!977229 e!1946331)))

(assert (= (and b!3115898 ((_ is Cons!35352) (t!234541 s!11993))) b!3116479))

(declare-fun b!3116483 () Bool)

(declare-fun e!1946332 () Bool)

(declare-fun tp!977296 () Bool)

(declare-fun tp!977300 () Bool)

(assert (=> b!3116483 (= e!1946332 (and tp!977296 tp!977300))))

(assert (=> b!3115905 (= tp!977228 e!1946332)))

(declare-fun b!3116482 () Bool)

(declare-fun tp!977297 () Bool)

(assert (=> b!3116482 (= e!1946332 tp!977297)))

(declare-fun b!3116481 () Bool)

(declare-fun tp!977298 () Bool)

(declare-fun tp!977299 () Bool)

(assert (=> b!3116481 (= e!1946332 (and tp!977298 tp!977299))))

(declare-fun b!3116480 () Bool)

(assert (=> b!3116480 (= e!1946332 tp_is_empty!16785)))

(assert (= (and b!3115905 ((_ is ElementMatch!9611) (regOne!19735 r!17423))) b!3116480))

(assert (= (and b!3115905 ((_ is Concat!14932) (regOne!19735 r!17423))) b!3116481))

(assert (= (and b!3115905 ((_ is Star!9611) (regOne!19735 r!17423))) b!3116482))

(assert (= (and b!3115905 ((_ is Union!9611) (regOne!19735 r!17423))) b!3116483))

(declare-fun b!3116487 () Bool)

(declare-fun e!1946333 () Bool)

(declare-fun tp!977301 () Bool)

(declare-fun tp!977305 () Bool)

(assert (=> b!3116487 (= e!1946333 (and tp!977301 tp!977305))))

(assert (=> b!3115905 (= tp!977225 e!1946333)))

(declare-fun b!3116486 () Bool)

(declare-fun tp!977302 () Bool)

(assert (=> b!3116486 (= e!1946333 tp!977302)))

(declare-fun b!3116485 () Bool)

(declare-fun tp!977303 () Bool)

(declare-fun tp!977304 () Bool)

(assert (=> b!3116485 (= e!1946333 (and tp!977303 tp!977304))))

(declare-fun b!3116484 () Bool)

(assert (=> b!3116484 (= e!1946333 tp_is_empty!16785)))

(assert (= (and b!3115905 ((_ is ElementMatch!9611) (regTwo!19735 r!17423))) b!3116484))

(assert (= (and b!3115905 ((_ is Concat!14932) (regTwo!19735 r!17423))) b!3116485))

(assert (= (and b!3115905 ((_ is Star!9611) (regTwo!19735 r!17423))) b!3116486))

(assert (= (and b!3115905 ((_ is Union!9611) (regTwo!19735 r!17423))) b!3116487))

(check-sat (not d!862161) (not d!862165) (not b!3116430) (not b!3116405) (not b!3116464) (not bm!221153) (not b!3116378) (not b!3116474) (not b!3116433) (not b!3116431) (not bm!221151) (not b!3116436) (not bm!221111) (not b!3115956) (not d!862145) (not b!3116448) (not b!3116465) tp_is_empty!16785 (not d!862131) (not bm!221152) (not b!3116403) (not d!862163) (not b!3116466) (not b!3116388) (not b!3116135) (not b!3116422) (not bm!221109) (not b!3116416) (not b!3116417) (not b!3116482) (not bm!221157) (not b!3116481) (not b!3116443) (not b!3116487) (not b!3116485) (not bm!221107) (not b!3116426) (not b!3116486) (not d!862159) (not b!3116380) (not bm!221112) (not d!862169) (not b!3116473) (not b!3116175) (not b!3116401) (not bm!221115) (not bm!221106) (not bm!221076) (not b!3116415) (not b!3116408) (not b!3116472) (not b!3116394) (not b!3116469) (not b!3116170) (not bm!221078) (not d!862167) (not b!3116412) (not b!3116429) (not b!3116169) (not b!3116470) (not b!3116179) (not b!3116479) (not b!3116172) (not b!3116483) (not b!3116468) (not b!3116419) (not b!3116182) (not b!3116440) (not b!3116398) (not b!3116389) (not b!3116402) (not bm!221159) (not b!3116391) (not bm!221154) (not bm!221155) (not b!3116117) (not bm!221156))
(check-sat)
