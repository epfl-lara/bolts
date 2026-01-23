; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!233066 () Bool)

(assert start!233066)

(declare-fun b!2374964 () Bool)

(assert (=> b!2374964 true))

(assert (=> b!2374964 true))

(declare-fun lambda!88126 () Int)

(declare-fun lambda!88125 () Int)

(assert (=> b!2374964 (not (= lambda!88126 lambda!88125))))

(assert (=> b!2374964 true))

(assert (=> b!2374964 true))

(declare-fun b!2374955 () Bool)

(declare-fun res!1008302 () Bool)

(declare-fun e!1515412 () Bool)

(assert (=> b!2374955 (=> res!1008302 e!1515412)))

(declare-datatypes ((C!14074 0))(
  ( (C!14075 (val!8279 Int)) )
))
(declare-datatypes ((Regex!6958 0))(
  ( (ElementMatch!6958 (c!377528 C!14074)) (Concat!11594 (regOne!14428 Regex!6958) (regTwo!14428 Regex!6958)) (EmptyExpr!6958) (Star!6958 (reg!7287 Regex!6958)) (EmptyLang!6958) (Union!6958 (regOne!14429 Regex!6958) (regTwo!14429 Regex!6958)) )
))
(declare-datatypes ((List!28154 0))(
  ( (Nil!28056) (Cons!28056 (h!33457 Regex!6958) (t!208131 List!28154)) )
))
(declare-fun l!9164 () List!28154)

(declare-fun isEmpty!15996 (List!28154) Bool)

(assert (=> b!2374955 (= res!1008302 (isEmpty!15996 l!9164))))

(declare-fun b!2374956 () Bool)

(declare-fun res!1008303 () Bool)

(declare-fun e!1515411 () Bool)

(assert (=> b!2374956 (=> res!1008303 e!1515411)))

(declare-fun lt!866875 () List!28154)

(declare-fun generalisedConcat!59 (List!28154) Regex!6958)

(assert (=> b!2374956 (= res!1008303 (not (= (generalisedConcat!59 lt!866875) EmptyExpr!6958)))))

(declare-fun b!2374957 () Bool)

(declare-fun e!1515418 () Bool)

(declare-fun lt!866876 () Regex!6958)

(declare-fun validRegex!2685 (Regex!6958) Bool)

(assert (=> b!2374957 (= e!1515418 (validRegex!2685 lt!866876))))

(declare-fun b!2374958 () Bool)

(declare-fun e!1515414 () Bool)

(declare-fun tp!758713 () Bool)

(declare-fun tp!758714 () Bool)

(assert (=> b!2374958 (= e!1515414 (and tp!758713 tp!758714))))

(declare-fun b!2374959 () Bool)

(declare-fun e!1515415 () Bool)

(declare-fun tp_is_empty!11329 () Bool)

(declare-fun tp!758715 () Bool)

(assert (=> b!2374959 (= e!1515415 (and tp_is_empty!11329 tp!758715))))

(declare-fun b!2374960 () Bool)

(declare-fun tp!758712 () Bool)

(assert (=> b!2374960 (= e!1515414 tp!758712)))

(declare-fun b!2374962 () Bool)

(declare-fun tp!758709 () Bool)

(declare-fun tp!758708 () Bool)

(assert (=> b!2374962 (= e!1515414 (and tp!758709 tp!758708))))

(declare-fun res!1008300 () Bool)

(declare-fun e!1515413 () Bool)

(assert (=> start!233066 (=> (not res!1008300) (not e!1515413))))

(declare-fun lambda!88124 () Int)

(declare-fun forall!5592 (List!28154 Int) Bool)

(assert (=> start!233066 (= res!1008300 (forall!5592 l!9164 lambda!88124))))

(assert (=> start!233066 e!1515413))

(declare-fun e!1515416 () Bool)

(assert (=> start!233066 e!1515416))

(assert (=> start!233066 e!1515414))

(assert (=> start!233066 e!1515415))

(declare-fun b!2374961 () Bool)

(assert (=> b!2374961 (= e!1515412 e!1515411)))

(declare-fun res!1008299 () Bool)

(assert (=> b!2374961 (=> res!1008299 e!1515411)))

(assert (=> b!2374961 (= res!1008299 (not (isEmpty!15996 lt!866875)))))

(declare-fun tail!3425 (List!28154) List!28154)

(assert (=> b!2374961 (= lt!866875 (tail!3425 l!9164))))

(declare-fun b!2374963 () Bool)

(declare-fun e!1515417 () Bool)

(assert (=> b!2374963 (= e!1515413 (not e!1515417))))

(declare-fun res!1008304 () Bool)

(assert (=> b!2374963 (=> res!1008304 e!1515417)))

(declare-fun r!13927 () Regex!6958)

(assert (=> b!2374963 (= res!1008304 (not (is-Concat!11594 r!13927)))))

(declare-fun lt!866877 () Bool)

(declare-fun lt!866881 () Bool)

(assert (=> b!2374963 (= lt!866877 lt!866881)))

(declare-datatypes ((List!28155 0))(
  ( (Nil!28057) (Cons!28057 (h!33458 C!14074) (t!208132 List!28155)) )
))
(declare-fun s!9460 () List!28155)

(declare-fun matchRSpec!807 (Regex!6958 List!28155) Bool)

(assert (=> b!2374963 (= lt!866881 (matchRSpec!807 r!13927 s!9460))))

(declare-fun matchR!3075 (Regex!6958 List!28155) Bool)

(assert (=> b!2374963 (= lt!866877 (matchR!3075 r!13927 s!9460))))

(declare-datatypes ((Unit!40951 0))(
  ( (Unit!40952) )
))
(declare-fun lt!866879 () Unit!40951)

(declare-fun mainMatchTheorem!807 (Regex!6958 List!28155) Unit!40951)

(assert (=> b!2374963 (= lt!866879 (mainMatchTheorem!807 r!13927 s!9460))))

(assert (=> b!2374964 (= e!1515417 e!1515412)))

(declare-fun res!1008301 () Bool)

(assert (=> b!2374964 (=> res!1008301 e!1515412)))

(declare-fun lt!866880 () Bool)

(assert (=> b!2374964 (= res!1008301 (not (= lt!866881 lt!866880)))))

(declare-fun Exists!1020 (Int) Bool)

(assert (=> b!2374964 (= (Exists!1020 lambda!88125) (Exists!1020 lambda!88126))))

(declare-fun lt!866878 () Unit!40951)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!359 (Regex!6958 Regex!6958 List!28155) Unit!40951)

(assert (=> b!2374964 (= lt!866878 (lemmaExistCutMatchRandMatchRSpecEquivalent!359 (regOne!14428 r!13927) (regTwo!14428 r!13927) s!9460))))

(assert (=> b!2374964 (= lt!866880 (Exists!1020 lambda!88125))))

(declare-datatypes ((tuple2!27780 0))(
  ( (tuple2!27781 (_1!16431 List!28155) (_2!16431 List!28155)) )
))
(declare-datatypes ((Option!5501 0))(
  ( (None!5500) (Some!5500 (v!30908 tuple2!27780)) )
))
(declare-fun isDefined!4329 (Option!5501) Bool)

(declare-fun findConcatSeparation!609 (Regex!6958 Regex!6958 List!28155 List!28155 List!28155) Option!5501)

(assert (=> b!2374964 (= lt!866880 (isDefined!4329 (findConcatSeparation!609 (regOne!14428 r!13927) (regTwo!14428 r!13927) Nil!28057 s!9460 s!9460)))))

(declare-fun lt!866882 () Unit!40951)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!609 (Regex!6958 Regex!6958 List!28155) Unit!40951)

(assert (=> b!2374964 (= lt!866882 (lemmaFindConcatSeparationEquivalentToExists!609 (regOne!14428 r!13927) (regTwo!14428 r!13927) s!9460))))

(declare-fun b!2374965 () Bool)

(assert (=> b!2374965 (= e!1515411 e!1515418)))

(declare-fun res!1008297 () Bool)

(assert (=> b!2374965 (=> res!1008297 e!1515418)))

(assert (=> b!2374965 (= res!1008297 (matchR!3075 lt!866876 s!9460))))

(declare-fun head!5155 (List!28154) Regex!6958)

(assert (=> b!2374965 (= lt!866876 (head!5155 l!9164))))

(declare-fun b!2374966 () Bool)

(declare-fun tp!758710 () Bool)

(declare-fun tp!758711 () Bool)

(assert (=> b!2374966 (= e!1515416 (and tp!758710 tp!758711))))

(declare-fun b!2374967 () Bool)

(assert (=> b!2374967 (= e!1515414 tp_is_empty!11329)))

(declare-fun b!2374968 () Bool)

(declare-fun res!1008298 () Bool)

(assert (=> b!2374968 (=> (not res!1008298) (not e!1515413))))

(assert (=> b!2374968 (= res!1008298 (= r!13927 (generalisedConcat!59 l!9164)))))

(assert (= (and start!233066 res!1008300) b!2374968))

(assert (= (and b!2374968 res!1008298) b!2374963))

(assert (= (and b!2374963 (not res!1008304)) b!2374964))

(assert (= (and b!2374964 (not res!1008301)) b!2374955))

(assert (= (and b!2374955 (not res!1008302)) b!2374961))

(assert (= (and b!2374961 (not res!1008299)) b!2374956))

(assert (= (and b!2374956 (not res!1008303)) b!2374965))

(assert (= (and b!2374965 (not res!1008297)) b!2374957))

(assert (= (and start!233066 (is-Cons!28056 l!9164)) b!2374966))

(assert (= (and start!233066 (is-ElementMatch!6958 r!13927)) b!2374967))

(assert (= (and start!233066 (is-Concat!11594 r!13927)) b!2374958))

(assert (= (and start!233066 (is-Star!6958 r!13927)) b!2374960))

(assert (= (and start!233066 (is-Union!6958 r!13927)) b!2374962))

(assert (= (and start!233066 (is-Cons!28057 s!9460)) b!2374959))

(declare-fun m!2781179 () Bool)

(assert (=> b!2374956 m!2781179))

(declare-fun m!2781181 () Bool)

(assert (=> b!2374957 m!2781181))

(declare-fun m!2781183 () Bool)

(assert (=> b!2374968 m!2781183))

(declare-fun m!2781185 () Bool)

(assert (=> b!2374965 m!2781185))

(declare-fun m!2781187 () Bool)

(assert (=> b!2374965 m!2781187))

(declare-fun m!2781189 () Bool)

(assert (=> b!2374961 m!2781189))

(declare-fun m!2781191 () Bool)

(assert (=> b!2374961 m!2781191))

(declare-fun m!2781193 () Bool)

(assert (=> b!2374963 m!2781193))

(declare-fun m!2781195 () Bool)

(assert (=> b!2374963 m!2781195))

(declare-fun m!2781197 () Bool)

(assert (=> b!2374963 m!2781197))

(declare-fun m!2781199 () Bool)

(assert (=> start!233066 m!2781199))

(declare-fun m!2781201 () Bool)

(assert (=> b!2374955 m!2781201))

(declare-fun m!2781203 () Bool)

(assert (=> b!2374964 m!2781203))

(declare-fun m!2781205 () Bool)

(assert (=> b!2374964 m!2781205))

(declare-fun m!2781207 () Bool)

(assert (=> b!2374964 m!2781207))

(assert (=> b!2374964 m!2781207))

(declare-fun m!2781209 () Bool)

(assert (=> b!2374964 m!2781209))

(assert (=> b!2374964 m!2781203))

(declare-fun m!2781211 () Bool)

(assert (=> b!2374964 m!2781211))

(declare-fun m!2781213 () Bool)

(assert (=> b!2374964 m!2781213))

(push 1)

(assert (not b!2374965))

(assert (not b!2374957))

(assert (not b!2374962))

(assert (not b!2374955))

(assert tp_is_empty!11329)

(assert (not b!2374964))

(assert (not b!2374961))

(assert (not b!2374968))

(assert (not b!2374959))

(assert (not b!2374963))

(assert (not start!233066))

(assert (not b!2374958))

(assert (not b!2374966))

(assert (not b!2374956))

(assert (not b!2374960))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!461497 () Bool)

(declare-fun b!2375073 () Bool)

(assert (= bs!461497 (and b!2375073 b!2374964)))

(declare-fun lambda!88142 () Int)

(assert (=> bs!461497 (not (= lambda!88142 lambda!88125))))

(assert (=> bs!461497 (not (= lambda!88142 lambda!88126))))

(assert (=> b!2375073 true))

(assert (=> b!2375073 true))

(declare-fun bs!461498 () Bool)

(declare-fun b!2375076 () Bool)

(assert (= bs!461498 (and b!2375076 b!2374964)))

(declare-fun lambda!88143 () Int)

(assert (=> bs!461498 (not (= lambda!88143 lambda!88125))))

(assert (=> bs!461498 (= lambda!88143 lambda!88126)))

(declare-fun bs!461499 () Bool)

(assert (= bs!461499 (and b!2375076 b!2375073)))

(assert (=> bs!461499 (not (= lambda!88143 lambda!88142))))

(assert (=> b!2375076 true))

(assert (=> b!2375076 true))

(declare-fun b!2375069 () Bool)

(declare-fun e!1515476 () Bool)

(declare-fun e!1515475 () Bool)

(assert (=> b!2375069 (= e!1515476 e!1515475)))

(declare-fun res!1008364 () Bool)

(assert (=> b!2375069 (= res!1008364 (not (is-EmptyLang!6958 r!13927)))))

(assert (=> b!2375069 (=> (not res!1008364) (not e!1515475))))

(declare-fun bm!144342 () Bool)

(declare-fun call!144347 () Bool)

(declare-fun isEmpty!15998 (List!28155) Bool)

(assert (=> bm!144342 (= call!144347 (isEmpty!15998 s!9460))))

(declare-fun b!2375070 () Bool)

(declare-fun e!1515477 () Bool)

(declare-fun e!1515479 () Bool)

(assert (=> b!2375070 (= e!1515477 e!1515479)))

(declare-fun c!377540 () Bool)

(assert (=> b!2375070 (= c!377540 (is-Star!6958 r!13927))))

(declare-fun d!695912 () Bool)

(declare-fun c!377538 () Bool)

(assert (=> d!695912 (= c!377538 (is-EmptyExpr!6958 r!13927))))

(assert (=> d!695912 (= (matchRSpec!807 r!13927 s!9460) e!1515476)))

(declare-fun b!2375071 () Bool)

(declare-fun e!1515473 () Bool)

(assert (=> b!2375071 (= e!1515477 e!1515473)))

(declare-fun res!1008365 () Bool)

(assert (=> b!2375071 (= res!1008365 (matchRSpec!807 (regOne!14429 r!13927) s!9460))))

(assert (=> b!2375071 (=> res!1008365 e!1515473)))

(declare-fun b!2375072 () Bool)

(assert (=> b!2375072 (= e!1515473 (matchRSpec!807 (regTwo!14429 r!13927) s!9460))))

(declare-fun e!1515474 () Bool)

(declare-fun call!144348 () Bool)

(assert (=> b!2375073 (= e!1515474 call!144348)))

(declare-fun b!2375074 () Bool)

(declare-fun res!1008363 () Bool)

(assert (=> b!2375074 (=> res!1008363 e!1515474)))

(assert (=> b!2375074 (= res!1008363 call!144347)))

(assert (=> b!2375074 (= e!1515479 e!1515474)))

(declare-fun b!2375075 () Bool)

(declare-fun e!1515478 () Bool)

(assert (=> b!2375075 (= e!1515478 (= s!9460 (Cons!28057 (c!377528 r!13927) Nil!28057)))))

(declare-fun bm!144343 () Bool)

(assert (=> bm!144343 (= call!144348 (Exists!1020 (ite c!377540 lambda!88142 lambda!88143)))))

(assert (=> b!2375076 (= e!1515479 call!144348)))

(declare-fun b!2375077 () Bool)

(declare-fun c!377539 () Bool)

(assert (=> b!2375077 (= c!377539 (is-ElementMatch!6958 r!13927))))

(assert (=> b!2375077 (= e!1515475 e!1515478)))

(declare-fun b!2375078 () Bool)

(assert (=> b!2375078 (= e!1515476 call!144347)))

(declare-fun b!2375079 () Bool)

(declare-fun c!377541 () Bool)

(assert (=> b!2375079 (= c!377541 (is-Union!6958 r!13927))))

(assert (=> b!2375079 (= e!1515478 e!1515477)))

(assert (= (and d!695912 c!377538) b!2375078))

(assert (= (and d!695912 (not c!377538)) b!2375069))

(assert (= (and b!2375069 res!1008364) b!2375077))

(assert (= (and b!2375077 c!377539) b!2375075))

(assert (= (and b!2375077 (not c!377539)) b!2375079))

(assert (= (and b!2375079 c!377541) b!2375071))

(assert (= (and b!2375079 (not c!377541)) b!2375070))

(assert (= (and b!2375071 (not res!1008365)) b!2375072))

(assert (= (and b!2375070 c!377540) b!2375074))

(assert (= (and b!2375070 (not c!377540)) b!2375076))

(assert (= (and b!2375074 (not res!1008363)) b!2375073))

(assert (= (or b!2375073 b!2375076) bm!144343))

(assert (= (or b!2375078 b!2375074) bm!144342))

(declare-fun m!2781255 () Bool)

(assert (=> bm!144342 m!2781255))

(declare-fun m!2781257 () Bool)

(assert (=> b!2375071 m!2781257))

(declare-fun m!2781259 () Bool)

(assert (=> b!2375072 m!2781259))

(declare-fun m!2781261 () Bool)

(assert (=> bm!144343 m!2781261))

(assert (=> b!2374963 d!695912))

(declare-fun b!2375135 () Bool)

(declare-fun e!1515518 () Bool)

(declare-fun e!1515516 () Bool)

(assert (=> b!2375135 (= e!1515518 e!1515516)))

(declare-fun c!377556 () Bool)

(assert (=> b!2375135 (= c!377556 (is-EmptyLang!6958 r!13927))))

(declare-fun b!2375136 () Bool)

(declare-fun e!1515515 () Bool)

(declare-fun nullable!2014 (Regex!6958) Bool)

(assert (=> b!2375136 (= e!1515515 (nullable!2014 r!13927))))

(declare-fun b!2375137 () Bool)

(declare-fun derivativeStep!1672 (Regex!6958 C!14074) Regex!6958)

(declare-fun head!5157 (List!28155) C!14074)

(declare-fun tail!3427 (List!28155) List!28155)

(assert (=> b!2375137 (= e!1515515 (matchR!3075 (derivativeStep!1672 r!13927 (head!5157 s!9460)) (tail!3427 s!9460)))))

(declare-fun b!2375138 () Bool)

(declare-fun e!1515521 () Bool)

(assert (=> b!2375138 (= e!1515521 (not (= (head!5157 s!9460) (c!377528 r!13927))))))

(declare-fun b!2375139 () Bool)

(declare-fun lt!866909 () Bool)

(assert (=> b!2375139 (= e!1515516 (not lt!866909))))

(declare-fun b!2375140 () Bool)

(declare-fun res!1008399 () Bool)

(declare-fun e!1515520 () Bool)

(assert (=> b!2375140 (=> (not res!1008399) (not e!1515520))))

(assert (=> b!2375140 (= res!1008399 (isEmpty!15998 (tail!3427 s!9460)))))

(declare-fun b!2375141 () Bool)

(assert (=> b!2375141 (= e!1515520 (= (head!5157 s!9460) (c!377528 r!13927)))))

(declare-fun b!2375142 () Bool)

(declare-fun e!1515519 () Bool)

(declare-fun e!1515517 () Bool)

(assert (=> b!2375142 (= e!1515519 e!1515517)))

(declare-fun res!1008403 () Bool)

(assert (=> b!2375142 (=> (not res!1008403) (not e!1515517))))

(assert (=> b!2375142 (= res!1008403 (not lt!866909))))

(declare-fun b!2375143 () Bool)

(declare-fun res!1008397 () Bool)

(assert (=> b!2375143 (=> (not res!1008397) (not e!1515520))))

(declare-fun call!144360 () Bool)

(assert (=> b!2375143 (= res!1008397 (not call!144360))))

(declare-fun b!2375144 () Bool)

(declare-fun res!1008398 () Bool)

(assert (=> b!2375144 (=> res!1008398 e!1515519)))

(assert (=> b!2375144 (= res!1008398 (not (is-ElementMatch!6958 r!13927)))))

(assert (=> b!2375144 (= e!1515516 e!1515519)))

(declare-fun b!2375145 () Bool)

(declare-fun res!1008402 () Bool)

(assert (=> b!2375145 (=> res!1008402 e!1515519)))

(assert (=> b!2375145 (= res!1008402 e!1515520)))

(declare-fun res!1008404 () Bool)

(assert (=> b!2375145 (=> (not res!1008404) (not e!1515520))))

(assert (=> b!2375145 (= res!1008404 lt!866909)))

(declare-fun b!2375146 () Bool)

(assert (=> b!2375146 (= e!1515518 (= lt!866909 call!144360))))

(declare-fun d!695918 () Bool)

(assert (=> d!695918 e!1515518))

(declare-fun c!377555 () Bool)

(assert (=> d!695918 (= c!377555 (is-EmptyExpr!6958 r!13927))))

(assert (=> d!695918 (= lt!866909 e!1515515)))

(declare-fun c!377554 () Bool)

(assert (=> d!695918 (= c!377554 (isEmpty!15998 s!9460))))

(assert (=> d!695918 (validRegex!2685 r!13927)))

(assert (=> d!695918 (= (matchR!3075 r!13927 s!9460) lt!866909)))

(declare-fun bm!144355 () Bool)

(assert (=> bm!144355 (= call!144360 (isEmpty!15998 s!9460))))

(declare-fun b!2375147 () Bool)

(declare-fun res!1008401 () Bool)

(assert (=> b!2375147 (=> res!1008401 e!1515521)))

(assert (=> b!2375147 (= res!1008401 (not (isEmpty!15998 (tail!3427 s!9460))))))

(declare-fun b!2375148 () Bool)

(assert (=> b!2375148 (= e!1515517 e!1515521)))

(declare-fun res!1008400 () Bool)

(assert (=> b!2375148 (=> res!1008400 e!1515521)))

(assert (=> b!2375148 (= res!1008400 call!144360)))

(assert (= (and d!695918 c!377554) b!2375136))

(assert (= (and d!695918 (not c!377554)) b!2375137))

(assert (= (and d!695918 c!377555) b!2375146))

(assert (= (and d!695918 (not c!377555)) b!2375135))

(assert (= (and b!2375135 c!377556) b!2375139))

(assert (= (and b!2375135 (not c!377556)) b!2375144))

(assert (= (and b!2375144 (not res!1008398)) b!2375145))

(assert (= (and b!2375145 res!1008404) b!2375143))

(assert (= (and b!2375143 res!1008397) b!2375140))

(assert (= (and b!2375140 res!1008399) b!2375141))

(assert (= (and b!2375145 (not res!1008402)) b!2375142))

(assert (= (and b!2375142 res!1008403) b!2375148))

(assert (= (and b!2375148 (not res!1008400)) b!2375147))

(assert (= (and b!2375147 (not res!1008401)) b!2375138))

(assert (= (or b!2375146 b!2375143 b!2375148) bm!144355))

(declare-fun m!2781269 () Bool)

(assert (=> b!2375141 m!2781269))

(assert (=> b!2375137 m!2781269))

(assert (=> b!2375137 m!2781269))

(declare-fun m!2781271 () Bool)

(assert (=> b!2375137 m!2781271))

(declare-fun m!2781273 () Bool)

(assert (=> b!2375137 m!2781273))

(assert (=> b!2375137 m!2781271))

(assert (=> b!2375137 m!2781273))

(declare-fun m!2781275 () Bool)

(assert (=> b!2375137 m!2781275))

(assert (=> b!2375138 m!2781269))

(assert (=> b!2375140 m!2781273))

(assert (=> b!2375140 m!2781273))

(declare-fun m!2781277 () Bool)

(assert (=> b!2375140 m!2781277))

(assert (=> bm!144355 m!2781255))

(declare-fun m!2781279 () Bool)

(assert (=> b!2375136 m!2781279))

(assert (=> d!695918 m!2781255))

(declare-fun m!2781281 () Bool)

(assert (=> d!695918 m!2781281))

(assert (=> b!2375147 m!2781273))

(assert (=> b!2375147 m!2781273))

(assert (=> b!2375147 m!2781277))

(assert (=> b!2374963 d!695918))

(declare-fun d!695922 () Bool)

(assert (=> d!695922 (= (matchR!3075 r!13927 s!9460) (matchRSpec!807 r!13927 s!9460))))

(declare-fun lt!866912 () Unit!40951)

(declare-fun choose!13848 (Regex!6958 List!28155) Unit!40951)

(assert (=> d!695922 (= lt!866912 (choose!13848 r!13927 s!9460))))

(assert (=> d!695922 (validRegex!2685 r!13927)))

(assert (=> d!695922 (= (mainMatchTheorem!807 r!13927 s!9460) lt!866912)))

(declare-fun bs!461501 () Bool)

(assert (= bs!461501 d!695922))

(assert (=> bs!461501 m!2781195))

(assert (=> bs!461501 m!2781193))

(declare-fun m!2781285 () Bool)

(assert (=> bs!461501 m!2781285))

(assert (=> bs!461501 m!2781281))

(assert (=> b!2374963 d!695922))

(declare-fun bs!461502 () Bool)

(declare-fun d!695926 () Bool)

(assert (= bs!461502 (and d!695926 start!233066)))

(declare-fun lambda!88146 () Int)

(assert (=> bs!461502 (= lambda!88146 lambda!88124)))

(declare-fun b!2375169 () Bool)

(declare-fun e!1515538 () Bool)

(declare-fun e!1515535 () Bool)

(assert (=> b!2375169 (= e!1515538 e!1515535)))

(declare-fun c!377566 () Bool)

(assert (=> b!2375169 (= c!377566 (isEmpty!15996 (tail!3425 l!9164)))))

(declare-fun b!2375170 () Bool)

(declare-fun lt!866915 () Regex!6958)

(assert (=> b!2375170 (= e!1515535 (= lt!866915 (head!5155 l!9164)))))

(declare-fun b!2375171 () Bool)

(declare-fun isConcat!35 (Regex!6958) Bool)

(assert (=> b!2375171 (= e!1515535 (isConcat!35 lt!866915))))

(declare-fun e!1515537 () Bool)

(assert (=> d!695926 e!1515537))

(declare-fun res!1008409 () Bool)

(assert (=> d!695926 (=> (not res!1008409) (not e!1515537))))

(assert (=> d!695926 (= res!1008409 (validRegex!2685 lt!866915))))

(declare-fun e!1515536 () Regex!6958)

(assert (=> d!695926 (= lt!866915 e!1515536)))

(declare-fun c!377565 () Bool)

(declare-fun e!1515539 () Bool)

(assert (=> d!695926 (= c!377565 e!1515539)))

(declare-fun res!1008410 () Bool)

(assert (=> d!695926 (=> (not res!1008410) (not e!1515539))))

(assert (=> d!695926 (= res!1008410 (is-Cons!28056 l!9164))))

(assert (=> d!695926 (forall!5592 l!9164 lambda!88146)))

(assert (=> d!695926 (= (generalisedConcat!59 l!9164) lt!866915)))

(declare-fun b!2375172 () Bool)

(declare-fun e!1515534 () Regex!6958)

(assert (=> b!2375172 (= e!1515534 EmptyExpr!6958)))

(declare-fun b!2375173 () Bool)

(assert (=> b!2375173 (= e!1515539 (isEmpty!15996 (t!208131 l!9164)))))

(declare-fun b!2375174 () Bool)

(assert (=> b!2375174 (= e!1515534 (Concat!11594 (h!33457 l!9164) (generalisedConcat!59 (t!208131 l!9164))))))

(declare-fun b!2375175 () Bool)

(assert (=> b!2375175 (= e!1515536 (h!33457 l!9164))))

(declare-fun b!2375176 () Bool)

(assert (=> b!2375176 (= e!1515536 e!1515534)))

(declare-fun c!377567 () Bool)

(assert (=> b!2375176 (= c!377567 (is-Cons!28056 l!9164))))

(declare-fun b!2375177 () Bool)

(assert (=> b!2375177 (= e!1515537 e!1515538)))

(declare-fun c!377568 () Bool)

(assert (=> b!2375177 (= c!377568 (isEmpty!15996 l!9164))))

(declare-fun b!2375178 () Bool)

(declare-fun isEmptyExpr!35 (Regex!6958) Bool)

(assert (=> b!2375178 (= e!1515538 (isEmptyExpr!35 lt!866915))))

(assert (= (and d!695926 res!1008410) b!2375173))

(assert (= (and d!695926 c!377565) b!2375175))

(assert (= (and d!695926 (not c!377565)) b!2375176))

(assert (= (and b!2375176 c!377567) b!2375174))

(assert (= (and b!2375176 (not c!377567)) b!2375172))

(assert (= (and d!695926 res!1008409) b!2375177))

(assert (= (and b!2375177 c!377568) b!2375178))

(assert (= (and b!2375177 (not c!377568)) b!2375169))

(assert (= (and b!2375169 c!377566) b!2375170))

(assert (= (and b!2375169 (not c!377566)) b!2375171))

(assert (=> b!2375177 m!2781201))

(declare-fun m!2781287 () Bool)

(assert (=> b!2375178 m!2781287))

(declare-fun m!2781289 () Bool)

(assert (=> b!2375173 m!2781289))

(declare-fun m!2781291 () Bool)

(assert (=> b!2375174 m!2781291))

(assert (=> b!2375170 m!2781187))

(declare-fun m!2781293 () Bool)

(assert (=> b!2375171 m!2781293))

(declare-fun m!2781295 () Bool)

(assert (=> d!695926 m!2781295))

(declare-fun m!2781297 () Bool)

(assert (=> d!695926 m!2781297))

(assert (=> b!2375169 m!2781191))

(assert (=> b!2375169 m!2781191))

(declare-fun m!2781299 () Bool)

(assert (=> b!2375169 m!2781299))

(assert (=> b!2374968 d!695926))

(declare-fun bs!461503 () Bool)

(declare-fun d!695928 () Bool)

(assert (= bs!461503 (and d!695928 start!233066)))

(declare-fun lambda!88147 () Int)

(assert (=> bs!461503 (= lambda!88147 lambda!88124)))

(declare-fun bs!461504 () Bool)

(assert (= bs!461504 (and d!695928 d!695926)))

(assert (=> bs!461504 (= lambda!88147 lambda!88146)))

(declare-fun b!2375179 () Bool)

(declare-fun e!1515544 () Bool)

(declare-fun e!1515541 () Bool)

(assert (=> b!2375179 (= e!1515544 e!1515541)))

(declare-fun c!377570 () Bool)

(assert (=> b!2375179 (= c!377570 (isEmpty!15996 (tail!3425 lt!866875)))))

(declare-fun b!2375180 () Bool)

(declare-fun lt!866916 () Regex!6958)

(assert (=> b!2375180 (= e!1515541 (= lt!866916 (head!5155 lt!866875)))))

(declare-fun b!2375181 () Bool)

(assert (=> b!2375181 (= e!1515541 (isConcat!35 lt!866916))))

(declare-fun e!1515543 () Bool)

(assert (=> d!695928 e!1515543))

(declare-fun res!1008411 () Bool)

(assert (=> d!695928 (=> (not res!1008411) (not e!1515543))))

(assert (=> d!695928 (= res!1008411 (validRegex!2685 lt!866916))))

(declare-fun e!1515542 () Regex!6958)

(assert (=> d!695928 (= lt!866916 e!1515542)))

(declare-fun c!377569 () Bool)

(declare-fun e!1515545 () Bool)

(assert (=> d!695928 (= c!377569 e!1515545)))

(declare-fun res!1008412 () Bool)

(assert (=> d!695928 (=> (not res!1008412) (not e!1515545))))

(assert (=> d!695928 (= res!1008412 (is-Cons!28056 lt!866875))))

(assert (=> d!695928 (forall!5592 lt!866875 lambda!88147)))

(assert (=> d!695928 (= (generalisedConcat!59 lt!866875) lt!866916)))

(declare-fun b!2375182 () Bool)

(declare-fun e!1515540 () Regex!6958)

(assert (=> b!2375182 (= e!1515540 EmptyExpr!6958)))

(declare-fun b!2375183 () Bool)

(assert (=> b!2375183 (= e!1515545 (isEmpty!15996 (t!208131 lt!866875)))))

(declare-fun b!2375184 () Bool)

(assert (=> b!2375184 (= e!1515540 (Concat!11594 (h!33457 lt!866875) (generalisedConcat!59 (t!208131 lt!866875))))))

(declare-fun b!2375185 () Bool)

(assert (=> b!2375185 (= e!1515542 (h!33457 lt!866875))))

(declare-fun b!2375186 () Bool)

(assert (=> b!2375186 (= e!1515542 e!1515540)))

(declare-fun c!377571 () Bool)

(assert (=> b!2375186 (= c!377571 (is-Cons!28056 lt!866875))))

(declare-fun b!2375187 () Bool)

(assert (=> b!2375187 (= e!1515543 e!1515544)))

(declare-fun c!377572 () Bool)

(assert (=> b!2375187 (= c!377572 (isEmpty!15996 lt!866875))))

(declare-fun b!2375188 () Bool)

(assert (=> b!2375188 (= e!1515544 (isEmptyExpr!35 lt!866916))))

(assert (= (and d!695928 res!1008412) b!2375183))

(assert (= (and d!695928 c!377569) b!2375185))

(assert (= (and d!695928 (not c!377569)) b!2375186))

(assert (= (and b!2375186 c!377571) b!2375184))

(assert (= (and b!2375186 (not c!377571)) b!2375182))

(assert (= (and d!695928 res!1008411) b!2375187))

(assert (= (and b!2375187 c!377572) b!2375188))

(assert (= (and b!2375187 (not c!377572)) b!2375179))

(assert (= (and b!2375179 c!377570) b!2375180))

(assert (= (and b!2375179 (not c!377570)) b!2375181))

(assert (=> b!2375187 m!2781189))

(declare-fun m!2781301 () Bool)

(assert (=> b!2375188 m!2781301))

(declare-fun m!2781303 () Bool)

(assert (=> b!2375183 m!2781303))

(declare-fun m!2781305 () Bool)

(assert (=> b!2375184 m!2781305))

(declare-fun m!2781307 () Bool)

(assert (=> b!2375180 m!2781307))

(declare-fun m!2781309 () Bool)

(assert (=> b!2375181 m!2781309))

(declare-fun m!2781311 () Bool)

(assert (=> d!695928 m!2781311))

(declare-fun m!2781313 () Bool)

(assert (=> d!695928 m!2781313))

(declare-fun m!2781315 () Bool)

(assert (=> b!2375179 m!2781315))

(assert (=> b!2375179 m!2781315))

(declare-fun m!2781317 () Bool)

(assert (=> b!2375179 m!2781317))

(assert (=> b!2374956 d!695928))

(declare-fun d!695930 () Bool)

(declare-fun res!1008419 () Bool)

(declare-fun e!1515552 () Bool)

(assert (=> d!695930 (=> res!1008419 e!1515552)))

(assert (=> d!695930 (= res!1008419 (is-Nil!28056 l!9164))))

(assert (=> d!695930 (= (forall!5592 l!9164 lambda!88124) e!1515552)))

(declare-fun b!2375195 () Bool)

(declare-fun e!1515553 () Bool)

(assert (=> b!2375195 (= e!1515552 e!1515553)))

(declare-fun res!1008420 () Bool)

(assert (=> b!2375195 (=> (not res!1008420) (not e!1515553))))

(declare-fun dynLambda!12081 (Int Regex!6958) Bool)

(assert (=> b!2375195 (= res!1008420 (dynLambda!12081 lambda!88124 (h!33457 l!9164)))))

(declare-fun b!2375196 () Bool)

(assert (=> b!2375196 (= e!1515553 (forall!5592 (t!208131 l!9164) lambda!88124))))

(assert (= (and d!695930 (not res!1008419)) b!2375195))

(assert (= (and b!2375195 res!1008420) b!2375196))

(declare-fun b_lambda!73989 () Bool)

(assert (=> (not b_lambda!73989) (not b!2375195)))

(declare-fun m!2781319 () Bool)

(assert (=> b!2375195 m!2781319))

(declare-fun m!2781321 () Bool)

(assert (=> b!2375196 m!2781321))

(assert (=> start!233066 d!695930))

(declare-fun bm!144362 () Bool)

(declare-fun call!144369 () Bool)

(declare-fun c!377578 () Bool)

(assert (=> bm!144362 (= call!144369 (validRegex!2685 (ite c!377578 (regTwo!14429 lt!866876) (regOne!14428 lt!866876))))))

(declare-fun d!695932 () Bool)

(declare-fun res!1008437 () Bool)

(declare-fun e!1515574 () Bool)

(assert (=> d!695932 (=> res!1008437 e!1515574)))

(assert (=> d!695932 (= res!1008437 (is-ElementMatch!6958 lt!866876))))

(assert (=> d!695932 (= (validRegex!2685 lt!866876) e!1515574)))

(declare-fun b!2375217 () Bool)

(declare-fun res!1008434 () Bool)

(declare-fun e!1515569 () Bool)

(assert (=> b!2375217 (=> res!1008434 e!1515569)))

(assert (=> b!2375217 (= res!1008434 (not (is-Concat!11594 lt!866876)))))

(declare-fun e!1515573 () Bool)

(assert (=> b!2375217 (= e!1515573 e!1515569)))

(declare-fun b!2375218 () Bool)

(declare-fun e!1515568 () Bool)

(declare-fun call!144367 () Bool)

(assert (=> b!2375218 (= e!1515568 call!144367)))

(declare-fun b!2375219 () Bool)

(declare-fun e!1515572 () Bool)

(assert (=> b!2375219 (= e!1515572 call!144369)))

(declare-fun b!2375220 () Bool)

(declare-fun e!1515570 () Bool)

(declare-fun call!144368 () Bool)

(assert (=> b!2375220 (= e!1515570 call!144368)))

(declare-fun c!377577 () Bool)

(declare-fun bm!144363 () Bool)

(assert (=> bm!144363 (= call!144368 (validRegex!2685 (ite c!377577 (reg!7287 lt!866876) (ite c!377578 (regOne!14429 lt!866876) (regTwo!14428 lt!866876)))))))

(declare-fun b!2375221 () Bool)

(declare-fun e!1515571 () Bool)

(assert (=> b!2375221 (= e!1515574 e!1515571)))

(assert (=> b!2375221 (= c!377577 (is-Star!6958 lt!866876))))

(declare-fun b!2375222 () Bool)

(assert (=> b!2375222 (= e!1515571 e!1515573)))

(assert (=> b!2375222 (= c!377578 (is-Union!6958 lt!866876))))

(declare-fun b!2375223 () Bool)

(assert (=> b!2375223 (= e!1515571 e!1515570)))

(declare-fun res!1008433 () Bool)

(assert (=> b!2375223 (= res!1008433 (not (nullable!2014 (reg!7287 lt!866876))))))

(assert (=> b!2375223 (=> (not res!1008433) (not e!1515570))))

(declare-fun b!2375224 () Bool)

(assert (=> b!2375224 (= e!1515569 e!1515568)))

(declare-fun res!1008436 () Bool)

(assert (=> b!2375224 (=> (not res!1008436) (not e!1515568))))

(assert (=> b!2375224 (= res!1008436 call!144369)))

(declare-fun b!2375225 () Bool)

(declare-fun res!1008435 () Bool)

(assert (=> b!2375225 (=> (not res!1008435) (not e!1515572))))

(assert (=> b!2375225 (= res!1008435 call!144367)))

(assert (=> b!2375225 (= e!1515573 e!1515572)))

(declare-fun bm!144364 () Bool)

(assert (=> bm!144364 (= call!144367 call!144368)))

(assert (= (and d!695932 (not res!1008437)) b!2375221))

(assert (= (and b!2375221 c!377577) b!2375223))

(assert (= (and b!2375221 (not c!377577)) b!2375222))

(assert (= (and b!2375223 res!1008433) b!2375220))

(assert (= (and b!2375222 c!377578) b!2375225))

(assert (= (and b!2375222 (not c!377578)) b!2375217))

(assert (= (and b!2375225 res!1008435) b!2375219))

(assert (= (and b!2375217 (not res!1008434)) b!2375224))

(assert (= (and b!2375224 res!1008436) b!2375218))

(assert (= (or b!2375225 b!2375218) bm!144364))

(assert (= (or b!2375219 b!2375224) bm!144362))

(assert (= (or b!2375220 bm!144364) bm!144363))

(declare-fun m!2781325 () Bool)

(assert (=> bm!144362 m!2781325))

(declare-fun m!2781327 () Bool)

(assert (=> bm!144363 m!2781327))

(declare-fun m!2781329 () Bool)

(assert (=> b!2375223 m!2781329))

(assert (=> b!2374957 d!695932))

(declare-fun d!695934 () Bool)

(assert (=> d!695934 (= (isEmpty!15996 l!9164) (is-Nil!28056 l!9164))))

(assert (=> b!2374955 d!695934))

(declare-fun d!695938 () Bool)

(assert (=> d!695938 (= (isEmpty!15996 lt!866875) (is-Nil!28056 lt!866875))))

(assert (=> b!2374961 d!695938))

(declare-fun d!695940 () Bool)

(assert (=> d!695940 (= (tail!3425 l!9164) (t!208131 l!9164))))

(assert (=> b!2374961 d!695940))

(declare-fun d!695942 () Bool)

(declare-fun isEmpty!15999 (Option!5501) Bool)

(assert (=> d!695942 (= (isDefined!4329 (findConcatSeparation!609 (regOne!14428 r!13927) (regTwo!14428 r!13927) Nil!28057 s!9460 s!9460)) (not (isEmpty!15999 (findConcatSeparation!609 (regOne!14428 r!13927) (regTwo!14428 r!13927) Nil!28057 s!9460 s!9460))))))

(declare-fun bs!461507 () Bool)

(assert (= bs!461507 d!695942))

(assert (=> bs!461507 m!2781203))

(declare-fun m!2781335 () Bool)

(assert (=> bs!461507 m!2781335))

(assert (=> b!2374964 d!695942))

(declare-fun bs!461508 () Bool)

(declare-fun d!695944 () Bool)

(assert (= bs!461508 (and d!695944 b!2374964)))

(declare-fun lambda!88153 () Int)

(assert (=> bs!461508 (= lambda!88153 lambda!88125)))

(assert (=> bs!461508 (not (= lambda!88153 lambda!88126))))

(declare-fun bs!461509 () Bool)

(assert (= bs!461509 (and d!695944 b!2375073)))

(assert (=> bs!461509 (not (= lambda!88153 lambda!88142))))

(declare-fun bs!461510 () Bool)

(assert (= bs!461510 (and d!695944 b!2375076)))

(assert (=> bs!461510 (not (= lambda!88153 lambda!88143))))

(assert (=> d!695944 true))

(assert (=> d!695944 true))

(assert (=> d!695944 true))

(assert (=> d!695944 (= (isDefined!4329 (findConcatSeparation!609 (regOne!14428 r!13927) (regTwo!14428 r!13927) Nil!28057 s!9460 s!9460)) (Exists!1020 lambda!88153))))

(declare-fun lt!866922 () Unit!40951)

(declare-fun choose!13849 (Regex!6958 Regex!6958 List!28155) Unit!40951)

(assert (=> d!695944 (= lt!866922 (choose!13849 (regOne!14428 r!13927) (regTwo!14428 r!13927) s!9460))))

(assert (=> d!695944 (validRegex!2685 (regOne!14428 r!13927))))

(assert (=> d!695944 (= (lemmaFindConcatSeparationEquivalentToExists!609 (regOne!14428 r!13927) (regTwo!14428 r!13927) s!9460) lt!866922)))

(declare-fun bs!461511 () Bool)

(assert (= bs!461511 d!695944))

(declare-fun m!2781337 () Bool)

(assert (=> bs!461511 m!2781337))

(declare-fun m!2781339 () Bool)

(assert (=> bs!461511 m!2781339))

(declare-fun m!2781341 () Bool)

(assert (=> bs!461511 m!2781341))

(assert (=> bs!461511 m!2781203))

(assert (=> bs!461511 m!2781203))

(assert (=> bs!461511 m!2781205))

(assert (=> b!2374964 d!695944))

(declare-fun bs!461512 () Bool)

(declare-fun d!695946 () Bool)

(assert (= bs!461512 (and d!695946 d!695944)))

(declare-fun lambda!88162 () Int)

(assert (=> bs!461512 (= lambda!88162 lambda!88153)))

(declare-fun bs!461513 () Bool)

(assert (= bs!461513 (and d!695946 b!2374964)))

(assert (=> bs!461513 (= lambda!88162 lambda!88125)))

(declare-fun bs!461514 () Bool)

(assert (= bs!461514 (and d!695946 b!2375076)))

(assert (=> bs!461514 (not (= lambda!88162 lambda!88143))))

(declare-fun bs!461515 () Bool)

(assert (= bs!461515 (and d!695946 b!2375073)))

(assert (=> bs!461515 (not (= lambda!88162 lambda!88142))))

(assert (=> bs!461513 (not (= lambda!88162 lambda!88126))))

(assert (=> d!695946 true))

(assert (=> d!695946 true))

(assert (=> d!695946 true))

(declare-fun lambda!88163 () Int)

(assert (=> bs!461512 (not (= lambda!88163 lambda!88153))))

(assert (=> bs!461513 (not (= lambda!88163 lambda!88125))))

(assert (=> bs!461514 (= lambda!88163 lambda!88143)))

(declare-fun bs!461516 () Bool)

(assert (= bs!461516 d!695946))

(assert (=> bs!461516 (not (= lambda!88163 lambda!88162))))

(assert (=> bs!461515 (not (= lambda!88163 lambda!88142))))

(assert (=> bs!461513 (= lambda!88163 lambda!88126)))

(assert (=> d!695946 true))

(assert (=> d!695946 true))

(assert (=> d!695946 true))

(assert (=> d!695946 (= (Exists!1020 lambda!88162) (Exists!1020 lambda!88163))))

(declare-fun lt!866927 () Unit!40951)

(declare-fun choose!13850 (Regex!6958 Regex!6958 List!28155) Unit!40951)

(assert (=> d!695946 (= lt!866927 (choose!13850 (regOne!14428 r!13927) (regTwo!14428 r!13927) s!9460))))

(assert (=> d!695946 (validRegex!2685 (regOne!14428 r!13927))))

(assert (=> d!695946 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!359 (regOne!14428 r!13927) (regTwo!14428 r!13927) s!9460) lt!866927)))

(declare-fun m!2781343 () Bool)

(assert (=> bs!461516 m!2781343))

(declare-fun m!2781345 () Bool)

(assert (=> bs!461516 m!2781345))

(declare-fun m!2781347 () Bool)

(assert (=> bs!461516 m!2781347))

(assert (=> bs!461516 m!2781341))

(assert (=> b!2374964 d!695946))

(declare-fun d!695948 () Bool)

(declare-fun choose!13851 (Int) Bool)

(assert (=> d!695948 (= (Exists!1020 lambda!88125) (choose!13851 lambda!88125))))

(declare-fun bs!461517 () Bool)

(assert (= bs!461517 d!695948))

(declare-fun m!2781349 () Bool)

(assert (=> bs!461517 m!2781349))

(assert (=> b!2374964 d!695948))

(declare-fun d!695950 () Bool)

(declare-fun e!1515595 () Bool)

(assert (=> d!695950 e!1515595))

(declare-fun res!1008471 () Bool)

(assert (=> d!695950 (=> res!1008471 e!1515595)))

(declare-fun e!1515597 () Bool)

(assert (=> d!695950 (= res!1008471 e!1515597)))

(declare-fun res!1008468 () Bool)

(assert (=> d!695950 (=> (not res!1008468) (not e!1515597))))

(declare-fun lt!866937 () Option!5501)

(assert (=> d!695950 (= res!1008468 (isDefined!4329 lt!866937))))

(declare-fun e!1515599 () Option!5501)

(assert (=> d!695950 (= lt!866937 e!1515599)))

(declare-fun c!377583 () Bool)

(declare-fun e!1515598 () Bool)

(assert (=> d!695950 (= c!377583 e!1515598)))

(declare-fun res!1008470 () Bool)

(assert (=> d!695950 (=> (not res!1008470) (not e!1515598))))

(assert (=> d!695950 (= res!1008470 (matchR!3075 (regOne!14428 r!13927) Nil!28057))))

(assert (=> d!695950 (validRegex!2685 (regOne!14428 r!13927))))

(assert (=> d!695950 (= (findConcatSeparation!609 (regOne!14428 r!13927) (regTwo!14428 r!13927) Nil!28057 s!9460 s!9460) lt!866937)))

(declare-fun b!2375264 () Bool)

(assert (=> b!2375264 (= e!1515599 (Some!5500 (tuple2!27781 Nil!28057 s!9460)))))

(declare-fun b!2375265 () Bool)

(declare-fun e!1515596 () Option!5501)

(assert (=> b!2375265 (= e!1515599 e!1515596)))

(declare-fun c!377584 () Bool)

(assert (=> b!2375265 (= c!377584 (is-Nil!28057 s!9460))))

(declare-fun b!2375266 () Bool)

(assert (=> b!2375266 (= e!1515598 (matchR!3075 (regTwo!14428 r!13927) s!9460))))

(declare-fun b!2375267 () Bool)

(declare-fun ++!6917 (List!28155 List!28155) List!28155)

(declare-fun get!8540 (Option!5501) tuple2!27780)

(assert (=> b!2375267 (= e!1515597 (= (++!6917 (_1!16431 (get!8540 lt!866937)) (_2!16431 (get!8540 lt!866937))) s!9460))))

(declare-fun b!2375268 () Bool)

(declare-fun res!1008469 () Bool)

(assert (=> b!2375268 (=> (not res!1008469) (not e!1515597))))

(assert (=> b!2375268 (= res!1008469 (matchR!3075 (regOne!14428 r!13927) (_1!16431 (get!8540 lt!866937))))))

(declare-fun b!2375269 () Bool)

(assert (=> b!2375269 (= e!1515596 None!5500)))

(declare-fun b!2375270 () Bool)

(assert (=> b!2375270 (= e!1515595 (not (isDefined!4329 lt!866937)))))

(declare-fun b!2375271 () Bool)

(declare-fun lt!866935 () Unit!40951)

(declare-fun lt!866936 () Unit!40951)

(assert (=> b!2375271 (= lt!866935 lt!866936)))

(assert (=> b!2375271 (= (++!6917 (++!6917 Nil!28057 (Cons!28057 (h!33458 s!9460) Nil!28057)) (t!208132 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!561 (List!28155 C!14074 List!28155 List!28155) Unit!40951)

(assert (=> b!2375271 (= lt!866936 (lemmaMoveElementToOtherListKeepsConcatEq!561 Nil!28057 (h!33458 s!9460) (t!208132 s!9460) s!9460))))

(assert (=> b!2375271 (= e!1515596 (findConcatSeparation!609 (regOne!14428 r!13927) (regTwo!14428 r!13927) (++!6917 Nil!28057 (Cons!28057 (h!33458 s!9460) Nil!28057)) (t!208132 s!9460) s!9460))))

(declare-fun b!2375272 () Bool)

(declare-fun res!1008472 () Bool)

(assert (=> b!2375272 (=> (not res!1008472) (not e!1515597))))

(assert (=> b!2375272 (= res!1008472 (matchR!3075 (regTwo!14428 r!13927) (_2!16431 (get!8540 lt!866937))))))

(assert (= (and d!695950 res!1008470) b!2375266))

(assert (= (and d!695950 c!377583) b!2375264))

(assert (= (and d!695950 (not c!377583)) b!2375265))

(assert (= (and b!2375265 c!377584) b!2375269))

(assert (= (and b!2375265 (not c!377584)) b!2375271))

(assert (= (and d!695950 res!1008468) b!2375268))

(assert (= (and b!2375268 res!1008469) b!2375272))

(assert (= (and b!2375272 res!1008472) b!2375267))

(assert (= (and d!695950 (not res!1008471)) b!2375270))

(declare-fun m!2781361 () Bool)

(assert (=> d!695950 m!2781361))

(declare-fun m!2781363 () Bool)

(assert (=> d!695950 m!2781363))

(assert (=> d!695950 m!2781341))

(declare-fun m!2781365 () Bool)

(assert (=> b!2375267 m!2781365))

(declare-fun m!2781367 () Bool)

(assert (=> b!2375267 m!2781367))

(assert (=> b!2375268 m!2781365))

(declare-fun m!2781369 () Bool)

(assert (=> b!2375268 m!2781369))

(declare-fun m!2781371 () Bool)

(assert (=> b!2375271 m!2781371))

(assert (=> b!2375271 m!2781371))

(declare-fun m!2781373 () Bool)

(assert (=> b!2375271 m!2781373))

(declare-fun m!2781375 () Bool)

(assert (=> b!2375271 m!2781375))

(assert (=> b!2375271 m!2781371))

(declare-fun m!2781377 () Bool)

(assert (=> b!2375271 m!2781377))

(assert (=> b!2375270 m!2781361))

(assert (=> b!2375272 m!2781365))

(declare-fun m!2781379 () Bool)

(assert (=> b!2375272 m!2781379))

(declare-fun m!2781381 () Bool)

(assert (=> b!2375266 m!2781381))

(assert (=> b!2374964 d!695950))

(declare-fun d!695958 () Bool)

(assert (=> d!695958 (= (Exists!1020 lambda!88126) (choose!13851 lambda!88126))))

(declare-fun bs!461523 () Bool)

(assert (= bs!461523 d!695958))

(declare-fun m!2781383 () Bool)

(assert (=> bs!461523 m!2781383))

(assert (=> b!2374964 d!695958))

(declare-fun b!2375273 () Bool)

(declare-fun e!1515603 () Bool)

(declare-fun e!1515601 () Bool)

(assert (=> b!2375273 (= e!1515603 e!1515601)))

(declare-fun c!377587 () Bool)

(assert (=> b!2375273 (= c!377587 (is-EmptyLang!6958 lt!866876))))

(declare-fun b!2375274 () Bool)

(declare-fun e!1515600 () Bool)

(assert (=> b!2375274 (= e!1515600 (nullable!2014 lt!866876))))

(declare-fun b!2375275 () Bool)

(assert (=> b!2375275 (= e!1515600 (matchR!3075 (derivativeStep!1672 lt!866876 (head!5157 s!9460)) (tail!3427 s!9460)))))

(declare-fun b!2375276 () Bool)

(declare-fun e!1515606 () Bool)

(assert (=> b!2375276 (= e!1515606 (not (= (head!5157 s!9460) (c!377528 lt!866876))))))

(declare-fun b!2375277 () Bool)

(declare-fun lt!866938 () Bool)

(assert (=> b!2375277 (= e!1515601 (not lt!866938))))

(declare-fun b!2375278 () Bool)

(declare-fun res!1008475 () Bool)

(declare-fun e!1515605 () Bool)

(assert (=> b!2375278 (=> (not res!1008475) (not e!1515605))))

(assert (=> b!2375278 (= res!1008475 (isEmpty!15998 (tail!3427 s!9460)))))

(declare-fun b!2375279 () Bool)

(assert (=> b!2375279 (= e!1515605 (= (head!5157 s!9460) (c!377528 lt!866876)))))

(declare-fun b!2375280 () Bool)

(declare-fun e!1515604 () Bool)

(declare-fun e!1515602 () Bool)

(assert (=> b!2375280 (= e!1515604 e!1515602)))

(declare-fun res!1008479 () Bool)

(assert (=> b!2375280 (=> (not res!1008479) (not e!1515602))))

(assert (=> b!2375280 (= res!1008479 (not lt!866938))))

(declare-fun b!2375281 () Bool)

(declare-fun res!1008473 () Bool)

(assert (=> b!2375281 (=> (not res!1008473) (not e!1515605))))

(declare-fun call!144370 () Bool)

(assert (=> b!2375281 (= res!1008473 (not call!144370))))

(declare-fun b!2375282 () Bool)

(declare-fun res!1008474 () Bool)

(assert (=> b!2375282 (=> res!1008474 e!1515604)))

(assert (=> b!2375282 (= res!1008474 (not (is-ElementMatch!6958 lt!866876)))))

(assert (=> b!2375282 (= e!1515601 e!1515604)))

(declare-fun b!2375283 () Bool)

(declare-fun res!1008478 () Bool)

(assert (=> b!2375283 (=> res!1008478 e!1515604)))

(assert (=> b!2375283 (= res!1008478 e!1515605)))

(declare-fun res!1008480 () Bool)

(assert (=> b!2375283 (=> (not res!1008480) (not e!1515605))))

(assert (=> b!2375283 (= res!1008480 lt!866938)))

(declare-fun b!2375284 () Bool)

(assert (=> b!2375284 (= e!1515603 (= lt!866938 call!144370))))

(declare-fun d!695960 () Bool)

(assert (=> d!695960 e!1515603))

(declare-fun c!377586 () Bool)

(assert (=> d!695960 (= c!377586 (is-EmptyExpr!6958 lt!866876))))

(assert (=> d!695960 (= lt!866938 e!1515600)))

(declare-fun c!377585 () Bool)

(assert (=> d!695960 (= c!377585 (isEmpty!15998 s!9460))))

(assert (=> d!695960 (validRegex!2685 lt!866876)))

(assert (=> d!695960 (= (matchR!3075 lt!866876 s!9460) lt!866938)))

(declare-fun bm!144365 () Bool)

(assert (=> bm!144365 (= call!144370 (isEmpty!15998 s!9460))))

(declare-fun b!2375285 () Bool)

(declare-fun res!1008477 () Bool)

(assert (=> b!2375285 (=> res!1008477 e!1515606)))

(assert (=> b!2375285 (= res!1008477 (not (isEmpty!15998 (tail!3427 s!9460))))))

(declare-fun b!2375286 () Bool)

(assert (=> b!2375286 (= e!1515602 e!1515606)))

(declare-fun res!1008476 () Bool)

(assert (=> b!2375286 (=> res!1008476 e!1515606)))

(assert (=> b!2375286 (= res!1008476 call!144370)))

(assert (= (and d!695960 c!377585) b!2375274))

(assert (= (and d!695960 (not c!377585)) b!2375275))

(assert (= (and d!695960 c!377586) b!2375284))

(assert (= (and d!695960 (not c!377586)) b!2375273))

(assert (= (and b!2375273 c!377587) b!2375277))

(assert (= (and b!2375273 (not c!377587)) b!2375282))

(assert (= (and b!2375282 (not res!1008474)) b!2375283))

(assert (= (and b!2375283 res!1008480) b!2375281))

(assert (= (and b!2375281 res!1008473) b!2375278))

(assert (= (and b!2375278 res!1008475) b!2375279))

(assert (= (and b!2375283 (not res!1008478)) b!2375280))

(assert (= (and b!2375280 res!1008479) b!2375286))

(assert (= (and b!2375286 (not res!1008476)) b!2375285))

(assert (= (and b!2375285 (not res!1008477)) b!2375276))

(assert (= (or b!2375284 b!2375281 b!2375286) bm!144365))

(assert (=> b!2375279 m!2781269))

(assert (=> b!2375275 m!2781269))

(assert (=> b!2375275 m!2781269))

(declare-fun m!2781385 () Bool)

(assert (=> b!2375275 m!2781385))

(assert (=> b!2375275 m!2781273))

(assert (=> b!2375275 m!2781385))

(assert (=> b!2375275 m!2781273))

(declare-fun m!2781387 () Bool)

(assert (=> b!2375275 m!2781387))

(assert (=> b!2375276 m!2781269))

(assert (=> b!2375278 m!2781273))

(assert (=> b!2375278 m!2781273))

(assert (=> b!2375278 m!2781277))

(assert (=> bm!144365 m!2781255))

(declare-fun m!2781389 () Bool)

(assert (=> b!2375274 m!2781389))

(assert (=> d!695960 m!2781255))

(assert (=> d!695960 m!2781181))

(assert (=> b!2375285 m!2781273))

(assert (=> b!2375285 m!2781273))

(assert (=> b!2375285 m!2781277))

(assert (=> b!2374965 d!695960))

(declare-fun d!695962 () Bool)

(assert (=> d!695962 (= (head!5155 l!9164) (h!33457 l!9164))))

(assert (=> b!2374965 d!695962))

(declare-fun b!2375298 () Bool)

(declare-fun e!1515609 () Bool)

(declare-fun tp!758753 () Bool)

(declare-fun tp!758750 () Bool)

(assert (=> b!2375298 (= e!1515609 (and tp!758753 tp!758750))))

(declare-fun b!2375297 () Bool)

(assert (=> b!2375297 (= e!1515609 tp_is_empty!11329)))

(assert (=> b!2374958 (= tp!758713 e!1515609)))

(declare-fun b!2375300 () Bool)

(declare-fun tp!758752 () Bool)

(declare-fun tp!758754 () Bool)

(assert (=> b!2375300 (= e!1515609 (and tp!758752 tp!758754))))

(declare-fun b!2375299 () Bool)

(declare-fun tp!758751 () Bool)

(assert (=> b!2375299 (= e!1515609 tp!758751)))

(assert (= (and b!2374958 (is-ElementMatch!6958 (regOne!14428 r!13927))) b!2375297))

(assert (= (and b!2374958 (is-Concat!11594 (regOne!14428 r!13927))) b!2375298))

(assert (= (and b!2374958 (is-Star!6958 (regOne!14428 r!13927))) b!2375299))

(assert (= (and b!2374958 (is-Union!6958 (regOne!14428 r!13927))) b!2375300))

(declare-fun b!2375302 () Bool)

(declare-fun e!1515610 () Bool)

(declare-fun tp!758758 () Bool)

(declare-fun tp!758755 () Bool)

(assert (=> b!2375302 (= e!1515610 (and tp!758758 tp!758755))))

(declare-fun b!2375301 () Bool)

(assert (=> b!2375301 (= e!1515610 tp_is_empty!11329)))

(assert (=> b!2374958 (= tp!758714 e!1515610)))

(declare-fun b!2375304 () Bool)

(declare-fun tp!758757 () Bool)

(declare-fun tp!758759 () Bool)

(assert (=> b!2375304 (= e!1515610 (and tp!758757 tp!758759))))

(declare-fun b!2375303 () Bool)

(declare-fun tp!758756 () Bool)

(assert (=> b!2375303 (= e!1515610 tp!758756)))

(assert (= (and b!2374958 (is-ElementMatch!6958 (regTwo!14428 r!13927))) b!2375301))

(assert (= (and b!2374958 (is-Concat!11594 (regTwo!14428 r!13927))) b!2375302))

(assert (= (and b!2374958 (is-Star!6958 (regTwo!14428 r!13927))) b!2375303))

(assert (= (and b!2374958 (is-Union!6958 (regTwo!14428 r!13927))) b!2375304))

(declare-fun b!2375306 () Bool)

(declare-fun e!1515611 () Bool)

(declare-fun tp!758763 () Bool)

(declare-fun tp!758760 () Bool)

(assert (=> b!2375306 (= e!1515611 (and tp!758763 tp!758760))))

(declare-fun b!2375305 () Bool)

(assert (=> b!2375305 (= e!1515611 tp_is_empty!11329)))

(assert (=> b!2374962 (= tp!758709 e!1515611)))

(declare-fun b!2375308 () Bool)

(declare-fun tp!758762 () Bool)

(declare-fun tp!758764 () Bool)

(assert (=> b!2375308 (= e!1515611 (and tp!758762 tp!758764))))

(declare-fun b!2375307 () Bool)

(declare-fun tp!758761 () Bool)

(assert (=> b!2375307 (= e!1515611 tp!758761)))

(assert (= (and b!2374962 (is-ElementMatch!6958 (regOne!14429 r!13927))) b!2375305))

(assert (= (and b!2374962 (is-Concat!11594 (regOne!14429 r!13927))) b!2375306))

(assert (= (and b!2374962 (is-Star!6958 (regOne!14429 r!13927))) b!2375307))

(assert (= (and b!2374962 (is-Union!6958 (regOne!14429 r!13927))) b!2375308))

(declare-fun b!2375310 () Bool)

(declare-fun e!1515612 () Bool)

(declare-fun tp!758768 () Bool)

(declare-fun tp!758765 () Bool)

(assert (=> b!2375310 (= e!1515612 (and tp!758768 tp!758765))))

(declare-fun b!2375309 () Bool)

(assert (=> b!2375309 (= e!1515612 tp_is_empty!11329)))

(assert (=> b!2374962 (= tp!758708 e!1515612)))

(declare-fun b!2375312 () Bool)

(declare-fun tp!758767 () Bool)

(declare-fun tp!758769 () Bool)

(assert (=> b!2375312 (= e!1515612 (and tp!758767 tp!758769))))

(declare-fun b!2375311 () Bool)

(declare-fun tp!758766 () Bool)

(assert (=> b!2375311 (= e!1515612 tp!758766)))

(assert (= (and b!2374962 (is-ElementMatch!6958 (regTwo!14429 r!13927))) b!2375309))

(assert (= (and b!2374962 (is-Concat!11594 (regTwo!14429 r!13927))) b!2375310))

(assert (= (and b!2374962 (is-Star!6958 (regTwo!14429 r!13927))) b!2375311))

(assert (= (and b!2374962 (is-Union!6958 (regTwo!14429 r!13927))) b!2375312))

(declare-fun b!2375314 () Bool)

(declare-fun e!1515613 () Bool)

(declare-fun tp!758773 () Bool)

(declare-fun tp!758770 () Bool)

(assert (=> b!2375314 (= e!1515613 (and tp!758773 tp!758770))))

(declare-fun b!2375313 () Bool)

(assert (=> b!2375313 (= e!1515613 tp_is_empty!11329)))

(assert (=> b!2374960 (= tp!758712 e!1515613)))

(declare-fun b!2375316 () Bool)

(declare-fun tp!758772 () Bool)

(declare-fun tp!758774 () Bool)

(assert (=> b!2375316 (= e!1515613 (and tp!758772 tp!758774))))

(declare-fun b!2375315 () Bool)

(declare-fun tp!758771 () Bool)

(assert (=> b!2375315 (= e!1515613 tp!758771)))

(assert (= (and b!2374960 (is-ElementMatch!6958 (reg!7287 r!13927))) b!2375313))

(assert (= (and b!2374960 (is-Concat!11594 (reg!7287 r!13927))) b!2375314))

(assert (= (and b!2374960 (is-Star!6958 (reg!7287 r!13927))) b!2375315))

(assert (= (and b!2374960 (is-Union!6958 (reg!7287 r!13927))) b!2375316))

(declare-fun b!2375318 () Bool)

(declare-fun e!1515614 () Bool)

(declare-fun tp!758778 () Bool)

(declare-fun tp!758775 () Bool)

(assert (=> b!2375318 (= e!1515614 (and tp!758778 tp!758775))))

(declare-fun b!2375317 () Bool)

(assert (=> b!2375317 (= e!1515614 tp_is_empty!11329)))

(assert (=> b!2374966 (= tp!758710 e!1515614)))

(declare-fun b!2375320 () Bool)

(declare-fun tp!758777 () Bool)

(declare-fun tp!758779 () Bool)

(assert (=> b!2375320 (= e!1515614 (and tp!758777 tp!758779))))

(declare-fun b!2375319 () Bool)

(declare-fun tp!758776 () Bool)

(assert (=> b!2375319 (= e!1515614 tp!758776)))

(assert (= (and b!2374966 (is-ElementMatch!6958 (h!33457 l!9164))) b!2375317))

(assert (= (and b!2374966 (is-Concat!11594 (h!33457 l!9164))) b!2375318))

(assert (= (and b!2374966 (is-Star!6958 (h!33457 l!9164))) b!2375319))

(assert (= (and b!2374966 (is-Union!6958 (h!33457 l!9164))) b!2375320))

(declare-fun b!2375325 () Bool)

(declare-fun e!1515617 () Bool)

(declare-fun tp!758784 () Bool)

(declare-fun tp!758785 () Bool)

(assert (=> b!2375325 (= e!1515617 (and tp!758784 tp!758785))))

(assert (=> b!2374966 (= tp!758711 e!1515617)))

(assert (= (and b!2374966 (is-Cons!28056 (t!208131 l!9164))) b!2375325))

(declare-fun b!2375330 () Bool)

(declare-fun e!1515620 () Bool)

(declare-fun tp!758788 () Bool)

(assert (=> b!2375330 (= e!1515620 (and tp_is_empty!11329 tp!758788))))

(assert (=> b!2374959 (= tp!758715 e!1515620)))

(assert (= (and b!2374959 (is-Cons!28057 (t!208132 s!9460))) b!2375330))

(declare-fun b_lambda!73991 () Bool)

(assert (= b_lambda!73989 (or start!233066 b_lambda!73991)))

(declare-fun bs!461524 () Bool)

(declare-fun d!695964 () Bool)

(assert (= bs!461524 (and d!695964 start!233066)))

(assert (=> bs!461524 (= (dynLambda!12081 lambda!88124 (h!33457 l!9164)) (validRegex!2685 (h!33457 l!9164)))))

(declare-fun m!2781391 () Bool)

(assert (=> bs!461524 m!2781391))

(assert (=> b!2375195 d!695964))

(push 1)

(assert (not b!2375315))

(assert (not d!695948))

(assert (not d!695944))

(assert (not b!2375071))

(assert (not bm!144342))

(assert (not b!2375310))

(assert (not b!2375180))

(assert (not d!695960))

(assert (not d!695958))

(assert (not b!2375318))

(assert (not b!2375173))

(assert (not b!2375319))

(assert (not b!2375268))

(assert (not d!695928))

(assert (not b!2375312))

(assert (not b!2375181))

(assert (not b!2375308))

(assert (not b!2375278))

(assert (not b!2375304))

(assert (not b!2375072))

(assert (not b!2375270))

(assert (not bm!144363))

(assert (not b!2375303))

(assert (not b!2375187))

(assert (not bs!461524))

(assert (not b!2375141))

(assert (not b!2375311))

(assert (not b!2375179))

(assert tp_is_empty!11329)

(assert (not b!2375274))

(assert (not b!2375267))

(assert (not b!2375316))

(assert (not b!2375271))

(assert (not b_lambda!73991))

(assert (not b!2375325))

(assert (not bm!144355))

(assert (not b!2375272))

(assert (not b!2375183))

(assert (not b!2375266))

(assert (not d!695946))

(assert (not b!2375330))

(assert (not b!2375320))

(assert (not b!2375136))

(assert (not bm!144362))

(assert (not b!2375169))

(assert (not b!2375137))

(assert (not bm!144343))

(assert (not d!695922))

(assert (not b!2375276))

(assert (not b!2375299))

(assert (not b!2375300))

(assert (not b!2375184))

(assert (not d!695942))

(assert (not b!2375302))

(assert (not b!2375178))

(assert (not b!2375138))

(assert (not b!2375196))

(assert (not b!2375177))

(assert (not b!2375298))

(assert (not b!2375285))

(assert (not b!2375174))

(assert (not b!2375171))

(assert (not b!2375170))

(assert (not d!695950))

(assert (not b!2375147))

(assert (not b!2375307))

(assert (not b!2375140))

(assert (not b!2375275))

(assert (not b!2375279))

(assert (not b!2375188))

(assert (not b!2375306))

(assert (not b!2375314))

(assert (not b!2375223))

(assert (not d!695926))

(assert (not d!695918))

(assert (not bm!144365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

