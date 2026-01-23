; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281902 () Bool)

(assert start!281902)

(declare-fun b!2890957 () Bool)

(declare-fun e!1827130 () Bool)

(declare-fun tp!928346 () Bool)

(declare-fun tp!928349 () Bool)

(assert (=> b!2890957 (= e!1827130 (and tp!928346 tp!928349))))

(declare-fun b!2890958 () Bool)

(declare-fun res!1196340 () Bool)

(declare-fun e!1827131 () Bool)

(assert (=> b!2890958 (=> (not res!1196340) (not e!1827131))))

(declare-datatypes ((C!17832 0))(
  ( (C!17833 (val!10950 Int)) )
))
(declare-datatypes ((Regex!8825 0))(
  ( (ElementMatch!8825 (c!469968 C!17832)) (Concat!14146 (regOne!18162 Regex!8825) (regTwo!18162 Regex!8825)) (EmptyExpr!8825) (Star!8825 (reg!9154 Regex!8825)) (EmptyLang!8825) (Union!8825 (regOne!18163 Regex!8825) (regTwo!18163 Regex!8825)) )
))
(declare-fun r!23079 () Regex!8825)

(declare-datatypes ((List!34626 0))(
  ( (Nil!34502) (Cons!34502 (h!39922 C!17832) (t!233669 List!34626)) )
))
(declare-datatypes ((Option!6498 0))(
  ( (None!6497) (Some!6497 (v!34623 List!34626)) )
))
(declare-fun isDefined!5062 (Option!6498) Bool)

(declare-fun getLanguageWitness!532 (Regex!8825) Option!6498)

(assert (=> b!2890958 (= res!1196340 (isDefined!5062 (getLanguageWitness!532 r!23079)))))

(declare-fun b!2890959 () Bool)

(declare-fun res!1196342 () Bool)

(declare-fun e!1827129 () Bool)

(assert (=> b!2890959 (=> (not res!1196342) (not e!1827129))))

(declare-fun validRegex!3598 (Regex!8825) Bool)

(assert (=> b!2890959 (= res!1196342 (validRegex!3598 (regOne!18163 r!23079)))))

(declare-fun b!2890960 () Bool)

(declare-fun res!1196339 () Bool)

(assert (=> b!2890960 (=> (not res!1196339) (not e!1827131))))

(get-info :version)

(assert (=> b!2890960 (= res!1196339 (and (not ((_ is EmptyExpr!8825) r!23079)) (not ((_ is EmptyLang!8825) r!23079)) (not ((_ is ElementMatch!8825) r!23079)) (not ((_ is Star!8825) r!23079)) ((_ is Union!8825) r!23079)))))

(declare-fun b!2890961 () Bool)

(declare-fun tp!928345 () Bool)

(declare-fun tp!928347 () Bool)

(assert (=> b!2890961 (= e!1827130 (and tp!928345 tp!928347))))

(declare-fun b!2890962 () Bool)

(declare-fun tp!928348 () Bool)

(assert (=> b!2890962 (= e!1827130 tp!928348)))

(declare-fun b!2890963 () Bool)

(declare-fun tp_is_empty!15237 () Bool)

(assert (=> b!2890963 (= e!1827130 tp_is_empty!15237)))

(declare-fun b!2890965 () Bool)

(assert (=> b!2890965 (= e!1827131 e!1827129)))

(declare-fun res!1196343 () Bool)

(assert (=> b!2890965 (=> (not res!1196343) (not e!1827129))))

(declare-fun lt!1020976 () Option!6498)

(assert (=> b!2890965 (= res!1196343 ((_ is Some!6497) lt!1020976))))

(assert (=> b!2890965 (= lt!1020976 (getLanguageWitness!532 (regOne!18163 r!23079)))))

(declare-fun b!2890966 () Bool)

(declare-fun res!1196338 () Bool)

(assert (=> b!2890966 (=> (not res!1196338) (not e!1827129))))

(assert (=> b!2890966 (= res!1196338 (isDefined!5062 lt!1020976))))

(declare-fun res!1196341 () Bool)

(assert (=> start!281902 (=> (not res!1196341) (not e!1827131))))

(assert (=> start!281902 (= res!1196341 (validRegex!3598 r!23079))))

(assert (=> start!281902 e!1827131))

(assert (=> start!281902 e!1827130))

(declare-fun b!2890964 () Bool)

(declare-fun regexDepth!75 (Regex!8825) Int)

(assert (=> b!2890964 (= e!1827129 (>= (regexDepth!75 (regOne!18163 r!23079)) (regexDepth!75 r!23079)))))

(assert (= (and start!281902 res!1196341) b!2890958))

(assert (= (and b!2890958 res!1196340) b!2890960))

(assert (= (and b!2890960 res!1196339) b!2890965))

(assert (= (and b!2890965 res!1196343) b!2890959))

(assert (= (and b!2890959 res!1196342) b!2890966))

(assert (= (and b!2890966 res!1196338) b!2890964))

(assert (= (and start!281902 ((_ is ElementMatch!8825) r!23079)) b!2890963))

(assert (= (and start!281902 ((_ is Concat!14146) r!23079)) b!2890961))

(assert (= (and start!281902 ((_ is Star!8825) r!23079)) b!2890962))

(assert (= (and start!281902 ((_ is Union!8825) r!23079)) b!2890957))

(declare-fun m!3302439 () Bool)

(assert (=> b!2890964 m!3302439))

(declare-fun m!3302441 () Bool)

(assert (=> b!2890964 m!3302441))

(declare-fun m!3302443 () Bool)

(assert (=> b!2890959 m!3302443))

(declare-fun m!3302445 () Bool)

(assert (=> b!2890966 m!3302445))

(declare-fun m!3302447 () Bool)

(assert (=> b!2890965 m!3302447))

(declare-fun m!3302449 () Bool)

(assert (=> start!281902 m!3302449))

(declare-fun m!3302451 () Bool)

(assert (=> b!2890958 m!3302451))

(assert (=> b!2890958 m!3302451))

(declare-fun m!3302453 () Bool)

(assert (=> b!2890958 m!3302453))

(check-sat (not b!2890962) (not b!2890966) (not b!2890957) (not b!2890958) (not start!281902) tp_is_empty!15237 (not b!2890959) (not b!2890964) (not b!2890965) (not b!2890961))
(check-sat)
(get-model)

(declare-fun d!834424 () Bool)

(declare-fun isEmpty!18800 (Option!6498) Bool)

(assert (=> d!834424 (= (isDefined!5062 lt!1020976) (not (isEmpty!18800 lt!1020976)))))

(declare-fun bs!523873 () Bool)

(assert (= bs!523873 d!834424))

(declare-fun m!3302455 () Bool)

(assert (=> bs!523873 m!3302455))

(assert (=> b!2890966 d!834424))

(declare-fun b!2891035 () Bool)

(declare-fun e!1827179 () Option!6498)

(assert (=> b!2891035 (= e!1827179 (Some!6497 (Cons!34502 (c!469968 (regOne!18163 r!23079)) Nil!34502)))))

(declare-fun b!2891036 () Bool)

(declare-fun e!1827183 () Option!6498)

(assert (=> b!2891036 (= e!1827183 None!6497)))

(declare-fun b!2891037 () Bool)

(declare-fun e!1827182 () Option!6498)

(assert (=> b!2891037 (= e!1827179 e!1827182)))

(declare-fun c!469995 () Bool)

(assert (=> b!2891037 (= c!469995 ((_ is Star!8825) (regOne!18163 r!23079)))))

(declare-fun b!2891038 () Bool)

(declare-fun e!1827178 () Option!6498)

(assert (=> b!2891038 (= e!1827178 None!6497)))

(declare-fun b!2891039 () Bool)

(declare-fun e!1827180 () Option!6498)

(declare-fun e!1827181 () Option!6498)

(assert (=> b!2891039 (= e!1827180 e!1827181)))

(declare-fun lt!1020983 () Option!6498)

(declare-fun call!187705 () Option!6498)

(assert (=> b!2891039 (= lt!1020983 call!187705)))

(declare-fun c!469997 () Bool)

(assert (=> b!2891039 (= c!469997 ((_ is Some!6497) lt!1020983))))

(declare-fun bm!187700 () Bool)

(declare-fun c!469996 () Bool)

(assert (=> bm!187700 (= call!187705 (getLanguageWitness!532 (ite c!469996 (regOne!18163 (regOne!18163 r!23079)) (regTwo!18162 (regOne!18163 r!23079)))))))

(declare-fun b!2891040 () Bool)

(declare-fun e!1827176 () Option!6498)

(assert (=> b!2891040 (= e!1827176 None!6497)))

(declare-fun b!2891041 () Bool)

(assert (=> b!2891041 (= c!469996 ((_ is Union!8825) (regOne!18163 r!23079)))))

(assert (=> b!2891041 (= e!1827182 e!1827180)))

(declare-fun b!2891042 () Bool)

(assert (=> b!2891042 (= e!1827181 lt!1020983)))

(declare-fun b!2891043 () Bool)

(assert (=> b!2891043 (= e!1827180 e!1827183)))

(declare-fun lt!1020984 () Option!6498)

(declare-fun call!187706 () Option!6498)

(assert (=> b!2891043 (= lt!1020984 call!187706)))

(declare-fun c!469994 () Bool)

(assert (=> b!2891043 (= c!469994 ((_ is Some!6497) lt!1020984))))

(declare-fun b!2891044 () Bool)

(declare-fun c!470000 () Bool)

(declare-fun lt!1020985 () Option!6498)

(assert (=> b!2891044 (= c!470000 ((_ is Some!6497) lt!1020985))))

(assert (=> b!2891044 (= lt!1020985 call!187705)))

(assert (=> b!2891044 (= e!1827183 e!1827178)))

(declare-fun b!2891045 () Bool)

(declare-fun e!1827177 () Option!6498)

(assert (=> b!2891045 (= e!1827177 e!1827176)))

(declare-fun c!469993 () Bool)

(assert (=> b!2891045 (= c!469993 ((_ is EmptyLang!8825) (regOne!18163 r!23079)))))

(declare-fun d!834426 () Bool)

(declare-fun c!469999 () Bool)

(assert (=> d!834426 (= c!469999 ((_ is EmptyExpr!8825) (regOne!18163 r!23079)))))

(assert (=> d!834426 (= (getLanguageWitness!532 (regOne!18163 r!23079)) e!1827177)))

(declare-fun b!2891046 () Bool)

(assert (=> b!2891046 (= e!1827182 (Some!6497 Nil!34502))))

(declare-fun b!2891047 () Bool)

(declare-fun ++!8224 (List!34626 List!34626) List!34626)

(assert (=> b!2891047 (= e!1827178 (Some!6497 (++!8224 (v!34623 lt!1020984) (v!34623 lt!1020985))))))

(declare-fun bm!187701 () Bool)

(assert (=> bm!187701 (= call!187706 (getLanguageWitness!532 (ite c!469996 (regTwo!18163 (regOne!18163 r!23079)) (regOne!18162 (regOne!18163 r!23079)))))))

(declare-fun b!2891048 () Bool)

(assert (=> b!2891048 (= e!1827181 call!187706)))

(declare-fun b!2891049 () Bool)

(declare-fun c!469998 () Bool)

(assert (=> b!2891049 (= c!469998 ((_ is ElementMatch!8825) (regOne!18163 r!23079)))))

(assert (=> b!2891049 (= e!1827176 e!1827179)))

(declare-fun b!2891050 () Bool)

(assert (=> b!2891050 (= e!1827177 (Some!6497 Nil!34502))))

(assert (= (and d!834426 c!469999) b!2891050))

(assert (= (and d!834426 (not c!469999)) b!2891045))

(assert (= (and b!2891045 c!469993) b!2891040))

(assert (= (and b!2891045 (not c!469993)) b!2891049))

(assert (= (and b!2891049 c!469998) b!2891035))

(assert (= (and b!2891049 (not c!469998)) b!2891037))

(assert (= (and b!2891037 c!469995) b!2891046))

(assert (= (and b!2891037 (not c!469995)) b!2891041))

(assert (= (and b!2891041 c!469996) b!2891039))

(assert (= (and b!2891041 (not c!469996)) b!2891043))

(assert (= (and b!2891039 c!469997) b!2891042))

(assert (= (and b!2891039 (not c!469997)) b!2891048))

(assert (= (and b!2891043 c!469994) b!2891044))

(assert (= (and b!2891043 (not c!469994)) b!2891036))

(assert (= (and b!2891044 c!470000) b!2891047))

(assert (= (and b!2891044 (not c!470000)) b!2891038))

(assert (= (or b!2891048 b!2891043) bm!187701))

(assert (= (or b!2891039 b!2891044) bm!187700))

(declare-fun m!3302471 () Bool)

(assert (=> bm!187700 m!3302471))

(declare-fun m!3302473 () Bool)

(assert (=> b!2891047 m!3302473))

(declare-fun m!3302475 () Bool)

(assert (=> bm!187701 m!3302475))

(assert (=> b!2890965 d!834426))

(declare-fun b!2891101 () Bool)

(declare-fun e!1827220 () Bool)

(declare-fun e!1827218 () Bool)

(assert (=> b!2891101 (= e!1827220 e!1827218)))

(declare-fun res!1196378 () Bool)

(declare-fun nullable!2727 (Regex!8825) Bool)

(assert (=> b!2891101 (= res!1196378 (not (nullable!2727 (reg!9154 r!23079))))))

(assert (=> b!2891101 (=> (not res!1196378) (not e!1827218))))

(declare-fun b!2891102 () Bool)

(declare-fun e!1827214 () Bool)

(declare-fun call!187718 () Bool)

(assert (=> b!2891102 (= e!1827214 call!187718)))

(declare-fun b!2891103 () Bool)

(declare-fun e!1827217 () Bool)

(assert (=> b!2891103 (= e!1827217 call!187718)))

(declare-fun b!2891104 () Bool)

(declare-fun e!1827219 () Bool)

(assert (=> b!2891104 (= e!1827219 e!1827220)))

(declare-fun c!470022 () Bool)

(assert (=> b!2891104 (= c!470022 ((_ is Star!8825) r!23079))))

(declare-fun bm!187712 () Bool)

(declare-fun call!187717 () Bool)

(assert (=> bm!187712 (= call!187718 call!187717)))

(declare-fun b!2891106 () Bool)

(assert (=> b!2891106 (= e!1827218 call!187717)))

(declare-fun b!2891107 () Bool)

(declare-fun res!1196374 () Bool)

(declare-fun e!1827215 () Bool)

(assert (=> b!2891107 (=> res!1196374 e!1827215)))

(assert (=> b!2891107 (= res!1196374 (not ((_ is Concat!14146) r!23079)))))

(declare-fun e!1827216 () Bool)

(assert (=> b!2891107 (= e!1827216 e!1827215)))

(declare-fun b!2891108 () Bool)

(assert (=> b!2891108 (= e!1827215 e!1827217)))

(declare-fun res!1196377 () Bool)

(assert (=> b!2891108 (=> (not res!1196377) (not e!1827217))))

(declare-fun call!187719 () Bool)

(assert (=> b!2891108 (= res!1196377 call!187719)))

(declare-fun bm!187713 () Bool)

(declare-fun c!470021 () Bool)

(assert (=> bm!187713 (= call!187719 (validRegex!3598 (ite c!470021 (regOne!18163 r!23079) (regOne!18162 r!23079))))))

(declare-fun b!2891109 () Bool)

(assert (=> b!2891109 (= e!1827220 e!1827216)))

(assert (=> b!2891109 (= c!470021 ((_ is Union!8825) r!23079))))

(declare-fun bm!187714 () Bool)

(assert (=> bm!187714 (= call!187717 (validRegex!3598 (ite c!470022 (reg!9154 r!23079) (ite c!470021 (regTwo!18163 r!23079) (regTwo!18162 r!23079)))))))

(declare-fun d!834436 () Bool)

(declare-fun res!1196376 () Bool)

(assert (=> d!834436 (=> res!1196376 e!1827219)))

(assert (=> d!834436 (= res!1196376 ((_ is ElementMatch!8825) r!23079))))

(assert (=> d!834436 (= (validRegex!3598 r!23079) e!1827219)))

(declare-fun b!2891105 () Bool)

(declare-fun res!1196375 () Bool)

(assert (=> b!2891105 (=> (not res!1196375) (not e!1827214))))

(assert (=> b!2891105 (= res!1196375 call!187719)))

(assert (=> b!2891105 (= e!1827216 e!1827214)))

(assert (= (and d!834436 (not res!1196376)) b!2891104))

(assert (= (and b!2891104 c!470022) b!2891101))

(assert (= (and b!2891104 (not c!470022)) b!2891109))

(assert (= (and b!2891101 res!1196378) b!2891106))

(assert (= (and b!2891109 c!470021) b!2891105))

(assert (= (and b!2891109 (not c!470021)) b!2891107))

(assert (= (and b!2891105 res!1196375) b!2891102))

(assert (= (and b!2891107 (not res!1196374)) b!2891108))

(assert (= (and b!2891108 res!1196377) b!2891103))

(assert (= (or b!2891102 b!2891103) bm!187712))

(assert (= (or b!2891105 b!2891108) bm!187713))

(assert (= (or b!2891106 bm!187712) bm!187714))

(declare-fun m!3302477 () Bool)

(assert (=> b!2891101 m!3302477))

(declare-fun m!3302479 () Bool)

(assert (=> bm!187713 m!3302479))

(declare-fun m!3302481 () Bool)

(assert (=> bm!187714 m!3302481))

(assert (=> start!281902 d!834436))

(declare-fun d!834438 () Bool)

(assert (=> d!834438 (= (isDefined!5062 (getLanguageWitness!532 r!23079)) (not (isEmpty!18800 (getLanguageWitness!532 r!23079))))))

(declare-fun bs!523875 () Bool)

(assert (= bs!523875 d!834438))

(assert (=> bs!523875 m!3302451))

(declare-fun m!3302483 () Bool)

(assert (=> bs!523875 m!3302483))

(assert (=> b!2890958 d!834438))

(declare-fun b!2891110 () Bool)

(declare-fun e!1827224 () Option!6498)

(assert (=> b!2891110 (= e!1827224 (Some!6497 (Cons!34502 (c!469968 r!23079) Nil!34502)))))

(declare-fun b!2891111 () Bool)

(declare-fun e!1827228 () Option!6498)

(assert (=> b!2891111 (= e!1827228 None!6497)))

(declare-fun b!2891112 () Bool)

(declare-fun e!1827227 () Option!6498)

(assert (=> b!2891112 (= e!1827224 e!1827227)))

(declare-fun c!470025 () Bool)

(assert (=> b!2891112 (= c!470025 ((_ is Star!8825) r!23079))))

(declare-fun b!2891113 () Bool)

(declare-fun e!1827223 () Option!6498)

(assert (=> b!2891113 (= e!1827223 None!6497)))

(declare-fun b!2891114 () Bool)

(declare-fun e!1827225 () Option!6498)

(declare-fun e!1827226 () Option!6498)

(assert (=> b!2891114 (= e!1827225 e!1827226)))

(declare-fun lt!1020992 () Option!6498)

(declare-fun call!187720 () Option!6498)

(assert (=> b!2891114 (= lt!1020992 call!187720)))

(declare-fun c!470027 () Bool)

(assert (=> b!2891114 (= c!470027 ((_ is Some!6497) lt!1020992))))

(declare-fun bm!187715 () Bool)

(declare-fun c!470026 () Bool)

(assert (=> bm!187715 (= call!187720 (getLanguageWitness!532 (ite c!470026 (regOne!18163 r!23079) (regTwo!18162 r!23079))))))

(declare-fun b!2891115 () Bool)

(declare-fun e!1827221 () Option!6498)

(assert (=> b!2891115 (= e!1827221 None!6497)))

(declare-fun b!2891116 () Bool)

(assert (=> b!2891116 (= c!470026 ((_ is Union!8825) r!23079))))

(assert (=> b!2891116 (= e!1827227 e!1827225)))

(declare-fun b!2891117 () Bool)

(assert (=> b!2891117 (= e!1827226 lt!1020992)))

(declare-fun b!2891118 () Bool)

(assert (=> b!2891118 (= e!1827225 e!1827228)))

(declare-fun lt!1020993 () Option!6498)

(declare-fun call!187721 () Option!6498)

(assert (=> b!2891118 (= lt!1020993 call!187721)))

(declare-fun c!470024 () Bool)

(assert (=> b!2891118 (= c!470024 ((_ is Some!6497) lt!1020993))))

(declare-fun b!2891119 () Bool)

(declare-fun c!470030 () Bool)

(declare-fun lt!1020994 () Option!6498)

(assert (=> b!2891119 (= c!470030 ((_ is Some!6497) lt!1020994))))

(assert (=> b!2891119 (= lt!1020994 call!187720)))

(assert (=> b!2891119 (= e!1827228 e!1827223)))

(declare-fun b!2891120 () Bool)

(declare-fun e!1827222 () Option!6498)

(assert (=> b!2891120 (= e!1827222 e!1827221)))

(declare-fun c!470023 () Bool)

(assert (=> b!2891120 (= c!470023 ((_ is EmptyLang!8825) r!23079))))

(declare-fun d!834440 () Bool)

(declare-fun c!470029 () Bool)

(assert (=> d!834440 (= c!470029 ((_ is EmptyExpr!8825) r!23079))))

(assert (=> d!834440 (= (getLanguageWitness!532 r!23079) e!1827222)))

(declare-fun b!2891121 () Bool)

(assert (=> b!2891121 (= e!1827227 (Some!6497 Nil!34502))))

(declare-fun b!2891122 () Bool)

(assert (=> b!2891122 (= e!1827223 (Some!6497 (++!8224 (v!34623 lt!1020993) (v!34623 lt!1020994))))))

(declare-fun bm!187716 () Bool)

(assert (=> bm!187716 (= call!187721 (getLanguageWitness!532 (ite c!470026 (regTwo!18163 r!23079) (regOne!18162 r!23079))))))

(declare-fun b!2891123 () Bool)

(assert (=> b!2891123 (= e!1827226 call!187721)))

(declare-fun b!2891124 () Bool)

(declare-fun c!470028 () Bool)

(assert (=> b!2891124 (= c!470028 ((_ is ElementMatch!8825) r!23079))))

(assert (=> b!2891124 (= e!1827221 e!1827224)))

(declare-fun b!2891125 () Bool)

(assert (=> b!2891125 (= e!1827222 (Some!6497 Nil!34502))))

(assert (= (and d!834440 c!470029) b!2891125))

(assert (= (and d!834440 (not c!470029)) b!2891120))

(assert (= (and b!2891120 c!470023) b!2891115))

(assert (= (and b!2891120 (not c!470023)) b!2891124))

(assert (= (and b!2891124 c!470028) b!2891110))

(assert (= (and b!2891124 (not c!470028)) b!2891112))

(assert (= (and b!2891112 c!470025) b!2891121))

(assert (= (and b!2891112 (not c!470025)) b!2891116))

(assert (= (and b!2891116 c!470026) b!2891114))

(assert (= (and b!2891116 (not c!470026)) b!2891118))

(assert (= (and b!2891114 c!470027) b!2891117))

(assert (= (and b!2891114 (not c!470027)) b!2891123))

(assert (= (and b!2891118 c!470024) b!2891119))

(assert (= (and b!2891118 (not c!470024)) b!2891111))

(assert (= (and b!2891119 c!470030) b!2891122))

(assert (= (and b!2891119 (not c!470030)) b!2891113))

(assert (= (or b!2891123 b!2891118) bm!187716))

(assert (= (or b!2891114 b!2891119) bm!187715))

(declare-fun m!3302485 () Bool)

(assert (=> bm!187715 m!3302485))

(declare-fun m!3302487 () Bool)

(assert (=> b!2891122 m!3302487))

(declare-fun m!3302489 () Bool)

(assert (=> bm!187716 m!3302489))

(assert (=> b!2890958 d!834440))

(declare-fun b!2891126 () Bool)

(declare-fun e!1827235 () Bool)

(declare-fun e!1827233 () Bool)

(assert (=> b!2891126 (= e!1827235 e!1827233)))

(declare-fun res!1196383 () Bool)

(assert (=> b!2891126 (= res!1196383 (not (nullable!2727 (reg!9154 (regOne!18163 r!23079)))))))

(assert (=> b!2891126 (=> (not res!1196383) (not e!1827233))))

(declare-fun b!2891127 () Bool)

(declare-fun e!1827229 () Bool)

(declare-fun call!187723 () Bool)

(assert (=> b!2891127 (= e!1827229 call!187723)))

(declare-fun b!2891128 () Bool)

(declare-fun e!1827232 () Bool)

(assert (=> b!2891128 (= e!1827232 call!187723)))

(declare-fun b!2891129 () Bool)

(declare-fun e!1827234 () Bool)

(assert (=> b!2891129 (= e!1827234 e!1827235)))

(declare-fun c!470032 () Bool)

(assert (=> b!2891129 (= c!470032 ((_ is Star!8825) (regOne!18163 r!23079)))))

(declare-fun bm!187717 () Bool)

(declare-fun call!187722 () Bool)

(assert (=> bm!187717 (= call!187723 call!187722)))

(declare-fun b!2891131 () Bool)

(assert (=> b!2891131 (= e!1827233 call!187722)))

(declare-fun b!2891132 () Bool)

(declare-fun res!1196379 () Bool)

(declare-fun e!1827230 () Bool)

(assert (=> b!2891132 (=> res!1196379 e!1827230)))

(assert (=> b!2891132 (= res!1196379 (not ((_ is Concat!14146) (regOne!18163 r!23079))))))

(declare-fun e!1827231 () Bool)

(assert (=> b!2891132 (= e!1827231 e!1827230)))

(declare-fun b!2891133 () Bool)

(assert (=> b!2891133 (= e!1827230 e!1827232)))

(declare-fun res!1196382 () Bool)

(assert (=> b!2891133 (=> (not res!1196382) (not e!1827232))))

(declare-fun call!187724 () Bool)

(assert (=> b!2891133 (= res!1196382 call!187724)))

(declare-fun bm!187718 () Bool)

(declare-fun c!470031 () Bool)

(assert (=> bm!187718 (= call!187724 (validRegex!3598 (ite c!470031 (regOne!18163 (regOne!18163 r!23079)) (regOne!18162 (regOne!18163 r!23079)))))))

(declare-fun b!2891134 () Bool)

(assert (=> b!2891134 (= e!1827235 e!1827231)))

(assert (=> b!2891134 (= c!470031 ((_ is Union!8825) (regOne!18163 r!23079)))))

(declare-fun bm!187719 () Bool)

(assert (=> bm!187719 (= call!187722 (validRegex!3598 (ite c!470032 (reg!9154 (regOne!18163 r!23079)) (ite c!470031 (regTwo!18163 (regOne!18163 r!23079)) (regTwo!18162 (regOne!18163 r!23079))))))))

(declare-fun d!834442 () Bool)

(declare-fun res!1196381 () Bool)

(assert (=> d!834442 (=> res!1196381 e!1827234)))

(assert (=> d!834442 (= res!1196381 ((_ is ElementMatch!8825) (regOne!18163 r!23079)))))

(assert (=> d!834442 (= (validRegex!3598 (regOne!18163 r!23079)) e!1827234)))

(declare-fun b!2891130 () Bool)

(declare-fun res!1196380 () Bool)

(assert (=> b!2891130 (=> (not res!1196380) (not e!1827229))))

(assert (=> b!2891130 (= res!1196380 call!187724)))

(assert (=> b!2891130 (= e!1827231 e!1827229)))

(assert (= (and d!834442 (not res!1196381)) b!2891129))

(assert (= (and b!2891129 c!470032) b!2891126))

(assert (= (and b!2891129 (not c!470032)) b!2891134))

(assert (= (and b!2891126 res!1196383) b!2891131))

(assert (= (and b!2891134 c!470031) b!2891130))

(assert (= (and b!2891134 (not c!470031)) b!2891132))

(assert (= (and b!2891130 res!1196380) b!2891127))

(assert (= (and b!2891132 (not res!1196379)) b!2891133))

(assert (= (and b!2891133 res!1196382) b!2891128))

(assert (= (or b!2891127 b!2891128) bm!187717))

(assert (= (or b!2891130 b!2891133) bm!187718))

(assert (= (or b!2891131 bm!187717) bm!187719))

(declare-fun m!3302491 () Bool)

(assert (=> b!2891126 m!3302491))

(declare-fun m!3302493 () Bool)

(assert (=> bm!187718 m!3302493))

(declare-fun m!3302495 () Bool)

(assert (=> bm!187719 m!3302495))

(assert (=> b!2890959 d!834442))

(declare-fun b!2891219 () Bool)

(declare-fun e!1827289 () Bool)

(declare-fun lt!1021002 () Int)

(declare-fun call!187755 () Int)

(assert (=> b!2891219 (= e!1827289 (> lt!1021002 call!187755))))

(declare-fun b!2891220 () Bool)

(declare-fun e!1827292 () Int)

(declare-fun e!1827288 () Int)

(assert (=> b!2891220 (= e!1827292 e!1827288)))

(declare-fun c!470071 () Bool)

(assert (=> b!2891220 (= c!470071 ((_ is Star!8825) (regOne!18163 r!23079)))))

(declare-fun c!470074 () Bool)

(declare-fun bm!187750 () Bool)

(declare-fun call!187757 () Int)

(assert (=> bm!187750 (= call!187757 (regexDepth!75 (ite c!470071 (reg!9154 (regOne!18163 r!23079)) (ite c!470074 (regOne!18163 (regOne!18163 r!23079)) (regOne!18162 (regOne!18163 r!23079))))))))

(declare-fun b!2891221 () Bool)

(declare-fun res!1196396 () Bool)

(assert (=> b!2891221 (=> (not res!1196396) (not e!1827289))))

(declare-fun call!187758 () Int)

(assert (=> b!2891221 (= res!1196396 (> lt!1021002 call!187758))))

(declare-fun e!1827284 () Bool)

(assert (=> b!2891221 (= e!1827284 e!1827289)))

(declare-fun b!2891222 () Bool)

(assert (=> b!2891222 (= e!1827288 (+ 1 call!187757))))

(declare-fun d!834444 () Bool)

(declare-fun e!1827286 () Bool)

(assert (=> d!834444 e!1827286))

(declare-fun res!1196397 () Bool)

(assert (=> d!834444 (=> (not res!1196397) (not e!1827286))))

(assert (=> d!834444 (= res!1196397 (> lt!1021002 0))))

(assert (=> d!834444 (= lt!1021002 e!1827292)))

(declare-fun c!470070 () Bool)

(assert (=> d!834444 (= c!470070 ((_ is ElementMatch!8825) (regOne!18163 r!23079)))))

(assert (=> d!834444 (= (regexDepth!75 (regOne!18163 r!23079)) lt!1021002)))

(declare-fun bm!187751 () Bool)

(declare-fun c!470069 () Bool)

(assert (=> bm!187751 (= call!187755 (regexDepth!75 (ite c!470069 (regOne!18163 (regOne!18163 r!23079)) (regTwo!18162 (regOne!18163 r!23079)))))))

(declare-fun bm!187752 () Bool)

(declare-fun call!187760 () Int)

(declare-fun call!187756 () Int)

(declare-fun call!187759 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!187752 (= call!187760 (maxBigInt!0 call!187756 call!187759))))

(declare-fun b!2891223 () Bool)

(declare-fun e!1827285 () Bool)

(declare-fun e!1827290 () Bool)

(assert (=> b!2891223 (= e!1827285 e!1827290)))

(declare-fun res!1196398 () Bool)

(assert (=> b!2891223 (= res!1196398 (> lt!1021002 call!187755))))

(assert (=> b!2891223 (=> (not res!1196398) (not e!1827290))))

(declare-fun b!2891224 () Bool)

(assert (=> b!2891224 (= e!1827286 e!1827285)))

(assert (=> b!2891224 (= c!470069 ((_ is Union!8825) (regOne!18163 r!23079)))))

(declare-fun b!2891225 () Bool)

(declare-fun e!1827287 () Int)

(declare-fun e!1827293 () Int)

(assert (=> b!2891225 (= e!1827287 e!1827293)))

(declare-fun c!470075 () Bool)

(assert (=> b!2891225 (= c!470075 ((_ is Concat!14146) (regOne!18163 r!23079)))))

(declare-fun b!2891226 () Bool)

(declare-fun e!1827291 () Bool)

(assert (=> b!2891226 (= e!1827291 (= lt!1021002 1))))

(declare-fun b!2891227 () Bool)

(assert (=> b!2891227 (= e!1827293 1)))

(declare-fun bm!187753 () Bool)

(declare-fun call!187761 () Int)

(assert (=> bm!187753 (= call!187758 call!187761)))

(declare-fun b!2891228 () Bool)

(assert (=> b!2891228 (= c!470074 ((_ is Union!8825) (regOne!18163 r!23079)))))

(assert (=> b!2891228 (= e!1827288 e!1827287)))

(declare-fun b!2891229 () Bool)

(assert (=> b!2891229 (= e!1827287 (+ 1 call!187760))))

(declare-fun bm!187754 () Bool)

(declare-fun c!470073 () Bool)

(assert (=> bm!187754 (= call!187761 (regexDepth!75 (ite c!470069 (regTwo!18163 (regOne!18163 r!23079)) (ite c!470073 (regOne!18162 (regOne!18163 r!23079)) (reg!9154 (regOne!18163 r!23079))))))))

(declare-fun b!2891230 () Bool)

(assert (=> b!2891230 (= e!1827285 e!1827284)))

(assert (=> b!2891230 (= c!470073 ((_ is Concat!14146) (regOne!18163 r!23079)))))

(declare-fun b!2891231 () Bool)

(assert (=> b!2891231 (= e!1827291 (> lt!1021002 call!187758))))

(declare-fun bm!187755 () Bool)

(assert (=> bm!187755 (= call!187756 call!187757)))

(declare-fun b!2891232 () Bool)

(assert (=> b!2891232 (= e!1827293 (+ 1 call!187760))))

(declare-fun b!2891233 () Bool)

(declare-fun c!470072 () Bool)

(assert (=> b!2891233 (= c!470072 ((_ is Star!8825) (regOne!18163 r!23079)))))

(assert (=> b!2891233 (= e!1827284 e!1827291)))

(declare-fun b!2891234 () Bool)

(assert (=> b!2891234 (= e!1827290 (> lt!1021002 call!187761))))

(declare-fun b!2891235 () Bool)

(assert (=> b!2891235 (= e!1827292 1)))

(declare-fun bm!187756 () Bool)

(assert (=> bm!187756 (= call!187759 (regexDepth!75 (ite c!470074 (regTwo!18163 (regOne!18163 r!23079)) (regTwo!18162 (regOne!18163 r!23079)))))))

(assert (= (and d!834444 c!470070) b!2891235))

(assert (= (and d!834444 (not c!470070)) b!2891220))

(assert (= (and b!2891220 c!470071) b!2891222))

(assert (= (and b!2891220 (not c!470071)) b!2891228))

(assert (= (and b!2891228 c!470074) b!2891229))

(assert (= (and b!2891228 (not c!470074)) b!2891225))

(assert (= (and b!2891225 c!470075) b!2891232))

(assert (= (and b!2891225 (not c!470075)) b!2891227))

(assert (= (or b!2891229 b!2891232) bm!187755))

(assert (= (or b!2891229 b!2891232) bm!187756))

(assert (= (or b!2891229 b!2891232) bm!187752))

(assert (= (or b!2891222 bm!187755) bm!187750))

(assert (= (and d!834444 res!1196397) b!2891224))

(assert (= (and b!2891224 c!470069) b!2891223))

(assert (= (and b!2891224 (not c!470069)) b!2891230))

(assert (= (and b!2891223 res!1196398) b!2891234))

(assert (= (and b!2891230 c!470073) b!2891221))

(assert (= (and b!2891230 (not c!470073)) b!2891233))

(assert (= (and b!2891221 res!1196396) b!2891219))

(assert (= (and b!2891233 c!470072) b!2891231))

(assert (= (and b!2891233 (not c!470072)) b!2891226))

(assert (= (or b!2891221 b!2891231) bm!187753))

(assert (= (or b!2891234 bm!187753) bm!187754))

(assert (= (or b!2891223 b!2891219) bm!187751))

(declare-fun m!3302503 () Bool)

(assert (=> bm!187752 m!3302503))

(declare-fun m!3302505 () Bool)

(assert (=> bm!187756 m!3302505))

(declare-fun m!3302507 () Bool)

(assert (=> bm!187754 m!3302507))

(declare-fun m!3302509 () Bool)

(assert (=> bm!187750 m!3302509))

(declare-fun m!3302511 () Bool)

(assert (=> bm!187751 m!3302511))

(assert (=> b!2890964 d!834444))

(declare-fun b!2891236 () Bool)

(declare-fun e!1827299 () Bool)

(declare-fun lt!1021003 () Int)

(declare-fun call!187762 () Int)

(assert (=> b!2891236 (= e!1827299 (> lt!1021003 call!187762))))

(declare-fun b!2891237 () Bool)

(declare-fun e!1827302 () Int)

(declare-fun e!1827298 () Int)

(assert (=> b!2891237 (= e!1827302 e!1827298)))

(declare-fun c!470078 () Bool)

(assert (=> b!2891237 (= c!470078 ((_ is Star!8825) r!23079))))

(declare-fun c!470081 () Bool)

(declare-fun call!187764 () Int)

(declare-fun bm!187757 () Bool)

(assert (=> bm!187757 (= call!187764 (regexDepth!75 (ite c!470078 (reg!9154 r!23079) (ite c!470081 (regOne!18163 r!23079) (regOne!18162 r!23079)))))))

(declare-fun b!2891238 () Bool)

(declare-fun res!1196399 () Bool)

(assert (=> b!2891238 (=> (not res!1196399) (not e!1827299))))

(declare-fun call!187765 () Int)

(assert (=> b!2891238 (= res!1196399 (> lt!1021003 call!187765))))

(declare-fun e!1827294 () Bool)

(assert (=> b!2891238 (= e!1827294 e!1827299)))

(declare-fun b!2891239 () Bool)

(assert (=> b!2891239 (= e!1827298 (+ 1 call!187764))))

(declare-fun d!834448 () Bool)

(declare-fun e!1827296 () Bool)

(assert (=> d!834448 e!1827296))

(declare-fun res!1196400 () Bool)

(assert (=> d!834448 (=> (not res!1196400) (not e!1827296))))

(assert (=> d!834448 (= res!1196400 (> lt!1021003 0))))

(assert (=> d!834448 (= lt!1021003 e!1827302)))

(declare-fun c!470077 () Bool)

(assert (=> d!834448 (= c!470077 ((_ is ElementMatch!8825) r!23079))))

(assert (=> d!834448 (= (regexDepth!75 r!23079) lt!1021003)))

(declare-fun bm!187758 () Bool)

(declare-fun c!470076 () Bool)

(assert (=> bm!187758 (= call!187762 (regexDepth!75 (ite c!470076 (regOne!18163 r!23079) (regTwo!18162 r!23079))))))

(declare-fun bm!187759 () Bool)

(declare-fun call!187767 () Int)

(declare-fun call!187763 () Int)

(declare-fun call!187766 () Int)

(assert (=> bm!187759 (= call!187767 (maxBigInt!0 call!187763 call!187766))))

(declare-fun b!2891240 () Bool)

(declare-fun e!1827295 () Bool)

(declare-fun e!1827300 () Bool)

(assert (=> b!2891240 (= e!1827295 e!1827300)))

(declare-fun res!1196401 () Bool)

(assert (=> b!2891240 (= res!1196401 (> lt!1021003 call!187762))))

(assert (=> b!2891240 (=> (not res!1196401) (not e!1827300))))

(declare-fun b!2891241 () Bool)

(assert (=> b!2891241 (= e!1827296 e!1827295)))

(assert (=> b!2891241 (= c!470076 ((_ is Union!8825) r!23079))))

(declare-fun b!2891242 () Bool)

(declare-fun e!1827297 () Int)

(declare-fun e!1827303 () Int)

(assert (=> b!2891242 (= e!1827297 e!1827303)))

(declare-fun c!470082 () Bool)

(assert (=> b!2891242 (= c!470082 ((_ is Concat!14146) r!23079))))

(declare-fun b!2891243 () Bool)

(declare-fun e!1827301 () Bool)

(assert (=> b!2891243 (= e!1827301 (= lt!1021003 1))))

(declare-fun b!2891244 () Bool)

(assert (=> b!2891244 (= e!1827303 1)))

(declare-fun bm!187760 () Bool)

(declare-fun call!187768 () Int)

(assert (=> bm!187760 (= call!187765 call!187768)))

(declare-fun b!2891245 () Bool)

(assert (=> b!2891245 (= c!470081 ((_ is Union!8825) r!23079))))

(assert (=> b!2891245 (= e!1827298 e!1827297)))

(declare-fun b!2891246 () Bool)

(assert (=> b!2891246 (= e!1827297 (+ 1 call!187767))))

(declare-fun c!470080 () Bool)

(declare-fun bm!187761 () Bool)

(assert (=> bm!187761 (= call!187768 (regexDepth!75 (ite c!470076 (regTwo!18163 r!23079) (ite c!470080 (regOne!18162 r!23079) (reg!9154 r!23079)))))))

(declare-fun b!2891247 () Bool)

(assert (=> b!2891247 (= e!1827295 e!1827294)))

(assert (=> b!2891247 (= c!470080 ((_ is Concat!14146) r!23079))))

(declare-fun b!2891248 () Bool)

(assert (=> b!2891248 (= e!1827301 (> lt!1021003 call!187765))))

(declare-fun bm!187762 () Bool)

(assert (=> bm!187762 (= call!187763 call!187764)))

(declare-fun b!2891249 () Bool)

(assert (=> b!2891249 (= e!1827303 (+ 1 call!187767))))

(declare-fun b!2891250 () Bool)

(declare-fun c!470079 () Bool)

(assert (=> b!2891250 (= c!470079 ((_ is Star!8825) r!23079))))

(assert (=> b!2891250 (= e!1827294 e!1827301)))

(declare-fun b!2891251 () Bool)

(assert (=> b!2891251 (= e!1827300 (> lt!1021003 call!187768))))

(declare-fun b!2891252 () Bool)

(assert (=> b!2891252 (= e!1827302 1)))

(declare-fun bm!187763 () Bool)

(assert (=> bm!187763 (= call!187766 (regexDepth!75 (ite c!470081 (regTwo!18163 r!23079) (regTwo!18162 r!23079))))))

(assert (= (and d!834448 c!470077) b!2891252))

(assert (= (and d!834448 (not c!470077)) b!2891237))

(assert (= (and b!2891237 c!470078) b!2891239))

(assert (= (and b!2891237 (not c!470078)) b!2891245))

(assert (= (and b!2891245 c!470081) b!2891246))

(assert (= (and b!2891245 (not c!470081)) b!2891242))

(assert (= (and b!2891242 c!470082) b!2891249))

(assert (= (and b!2891242 (not c!470082)) b!2891244))

(assert (= (or b!2891246 b!2891249) bm!187762))

(assert (= (or b!2891246 b!2891249) bm!187763))

(assert (= (or b!2891246 b!2891249) bm!187759))

(assert (= (or b!2891239 bm!187762) bm!187757))

(assert (= (and d!834448 res!1196400) b!2891241))

(assert (= (and b!2891241 c!470076) b!2891240))

(assert (= (and b!2891241 (not c!470076)) b!2891247))

(assert (= (and b!2891240 res!1196401) b!2891251))

(assert (= (and b!2891247 c!470080) b!2891238))

(assert (= (and b!2891247 (not c!470080)) b!2891250))

(assert (= (and b!2891238 res!1196399) b!2891236))

(assert (= (and b!2891250 c!470079) b!2891248))

(assert (= (and b!2891250 (not c!470079)) b!2891243))

(assert (= (or b!2891238 b!2891248) bm!187760))

(assert (= (or b!2891251 bm!187760) bm!187761))

(assert (= (or b!2891240 b!2891236) bm!187758))

(declare-fun m!3302513 () Bool)

(assert (=> bm!187759 m!3302513))

(declare-fun m!3302515 () Bool)

(assert (=> bm!187763 m!3302515))

(declare-fun m!3302517 () Bool)

(assert (=> bm!187761 m!3302517))

(declare-fun m!3302519 () Bool)

(assert (=> bm!187757 m!3302519))

(declare-fun m!3302521 () Bool)

(assert (=> bm!187758 m!3302521))

(assert (=> b!2890964 d!834448))

(declare-fun b!2891299 () Bool)

(declare-fun e!1827326 () Bool)

(declare-fun tp!928362 () Bool)

(declare-fun tp!928363 () Bool)

(assert (=> b!2891299 (= e!1827326 (and tp!928362 tp!928363))))

(declare-fun b!2891295 () Bool)

(declare-fun tp!928364 () Bool)

(declare-fun tp!928360 () Bool)

(assert (=> b!2891295 (= e!1827326 (and tp!928364 tp!928360))))

(assert (=> b!2890957 (= tp!928346 e!1827326)))

(declare-fun b!2891297 () Bool)

(declare-fun tp!928361 () Bool)

(assert (=> b!2891297 (= e!1827326 tp!928361)))

(declare-fun b!2891294 () Bool)

(assert (=> b!2891294 (= e!1827326 tp_is_empty!15237)))

(assert (= (and b!2890957 ((_ is ElementMatch!8825) (regOne!18163 r!23079))) b!2891294))

(assert (= (and b!2890957 ((_ is Concat!14146) (regOne!18163 r!23079))) b!2891295))

(assert (= (and b!2890957 ((_ is Star!8825) (regOne!18163 r!23079))) b!2891297))

(assert (= (and b!2890957 ((_ is Union!8825) (regOne!18163 r!23079))) b!2891299))

(declare-fun b!2891304 () Bool)

(declare-fun e!1827327 () Bool)

(declare-fun tp!928367 () Bool)

(declare-fun tp!928368 () Bool)

(assert (=> b!2891304 (= e!1827327 (and tp!928367 tp!928368))))

(declare-fun b!2891302 () Bool)

(declare-fun tp!928369 () Bool)

(declare-fun tp!928365 () Bool)

(assert (=> b!2891302 (= e!1827327 (and tp!928369 tp!928365))))

(assert (=> b!2890957 (= tp!928349 e!1827327)))

(declare-fun b!2891303 () Bool)

(declare-fun tp!928366 () Bool)

(assert (=> b!2891303 (= e!1827327 tp!928366)))

(declare-fun b!2891301 () Bool)

(assert (=> b!2891301 (= e!1827327 tp_is_empty!15237)))

(assert (= (and b!2890957 ((_ is ElementMatch!8825) (regTwo!18163 r!23079))) b!2891301))

(assert (= (and b!2890957 ((_ is Concat!14146) (regTwo!18163 r!23079))) b!2891302))

(assert (= (and b!2890957 ((_ is Star!8825) (regTwo!18163 r!23079))) b!2891303))

(assert (= (and b!2890957 ((_ is Union!8825) (regTwo!18163 r!23079))) b!2891304))

(declare-fun b!2891308 () Bool)

(declare-fun e!1827328 () Bool)

(declare-fun tp!928372 () Bool)

(declare-fun tp!928373 () Bool)

(assert (=> b!2891308 (= e!1827328 (and tp!928372 tp!928373))))

(declare-fun b!2891306 () Bool)

(declare-fun tp!928374 () Bool)

(declare-fun tp!928370 () Bool)

(assert (=> b!2891306 (= e!1827328 (and tp!928374 tp!928370))))

(assert (=> b!2890962 (= tp!928348 e!1827328)))

(declare-fun b!2891307 () Bool)

(declare-fun tp!928371 () Bool)

(assert (=> b!2891307 (= e!1827328 tp!928371)))

(declare-fun b!2891305 () Bool)

(assert (=> b!2891305 (= e!1827328 tp_is_empty!15237)))

(assert (= (and b!2890962 ((_ is ElementMatch!8825) (reg!9154 r!23079))) b!2891305))

(assert (= (and b!2890962 ((_ is Concat!14146) (reg!9154 r!23079))) b!2891306))

(assert (= (and b!2890962 ((_ is Star!8825) (reg!9154 r!23079))) b!2891307))

(assert (= (and b!2890962 ((_ is Union!8825) (reg!9154 r!23079))) b!2891308))

(declare-fun b!2891312 () Bool)

(declare-fun e!1827329 () Bool)

(declare-fun tp!928377 () Bool)

(declare-fun tp!928378 () Bool)

(assert (=> b!2891312 (= e!1827329 (and tp!928377 tp!928378))))

(declare-fun b!2891310 () Bool)

(declare-fun tp!928379 () Bool)

(declare-fun tp!928375 () Bool)

(assert (=> b!2891310 (= e!1827329 (and tp!928379 tp!928375))))

(assert (=> b!2890961 (= tp!928345 e!1827329)))

(declare-fun b!2891311 () Bool)

(declare-fun tp!928376 () Bool)

(assert (=> b!2891311 (= e!1827329 tp!928376)))

(declare-fun b!2891309 () Bool)

(assert (=> b!2891309 (= e!1827329 tp_is_empty!15237)))

(assert (= (and b!2890961 ((_ is ElementMatch!8825) (regOne!18162 r!23079))) b!2891309))

(assert (= (and b!2890961 ((_ is Concat!14146) (regOne!18162 r!23079))) b!2891310))

(assert (= (and b!2890961 ((_ is Star!8825) (regOne!18162 r!23079))) b!2891311))

(assert (= (and b!2890961 ((_ is Union!8825) (regOne!18162 r!23079))) b!2891312))

(declare-fun b!2891316 () Bool)

(declare-fun e!1827330 () Bool)

(declare-fun tp!928382 () Bool)

(declare-fun tp!928383 () Bool)

(assert (=> b!2891316 (= e!1827330 (and tp!928382 tp!928383))))

(declare-fun b!2891314 () Bool)

(declare-fun tp!928384 () Bool)

(declare-fun tp!928380 () Bool)

(assert (=> b!2891314 (= e!1827330 (and tp!928384 tp!928380))))

(assert (=> b!2890961 (= tp!928347 e!1827330)))

(declare-fun b!2891315 () Bool)

(declare-fun tp!928381 () Bool)

(assert (=> b!2891315 (= e!1827330 tp!928381)))

(declare-fun b!2891313 () Bool)

(assert (=> b!2891313 (= e!1827330 tp_is_empty!15237)))

(assert (= (and b!2890961 ((_ is ElementMatch!8825) (regTwo!18162 r!23079))) b!2891313))

(assert (= (and b!2890961 ((_ is Concat!14146) (regTwo!18162 r!23079))) b!2891314))

(assert (= (and b!2890961 ((_ is Star!8825) (regTwo!18162 r!23079))) b!2891315))

(assert (= (and b!2890961 ((_ is Union!8825) (regTwo!18162 r!23079))) b!2891316))

(check-sat (not bm!187757) (not b!2891303) (not b!2891304) (not bm!187750) (not b!2891302) (not bm!187763) (not b!2891307) (not b!2891297) (not bm!187756) (not b!2891047) (not b!2891314) (not b!2891310) (not bm!187713) (not bm!187754) (not bm!187719) (not bm!187700) (not bm!187714) (not b!2891308) (not b!2891311) (not bm!187715) (not bm!187718) (not b!2891122) (not bm!187751) (not bm!187761) (not b!2891101) (not b!2891316) (not bm!187701) (not d!834438) (not b!2891299) (not b!2891126) tp_is_empty!15237 (not bm!187759) (not b!2891306) (not b!2891295) (not d!834424) (not bm!187716) (not bm!187752) (not b!2891312) (not b!2891315) (not bm!187758))
(check-sat)
