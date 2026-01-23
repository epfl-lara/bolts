; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!278462 () Bool)

(assert start!278462)

(declare-fun b!2861836 () Bool)

(assert (=> b!2861836 true))

(assert (=> b!2861836 true))

(declare-fun bs!520410 () Bool)

(declare-fun b!2861825 () Bool)

(assert (= bs!520410 (and b!2861825 b!2861836)))

(declare-datatypes ((C!17412 0))(
  ( (C!17413 (val!10740 Int)) )
))
(declare-datatypes ((List!34212 0))(
  ( (Nil!34088) (Cons!34088 (h!39508 C!17412) (t!233247 List!34212)) )
))
(declare-fun prefix!1470 () List!34212)

(declare-datatypes ((Regex!8615 0))(
  ( (ElementMatch!8615 (c!461268 C!17412)) (Concat!13936 (regOne!17742 Regex!8615) (regTwo!17742 Regex!8615)) (EmptyExpr!8615) (Star!8615 (reg!8944 Regex!8615)) (EmptyLang!8615) (Union!8615 (regOne!17743 Regex!8615) (regTwo!17743 Regex!8615)) )
))
(declare-fun r!23423 () Regex!8615)

(declare-fun lambda!105211 () Int)

(declare-fun lt!1014571 () Regex!8615)

(declare-fun lambda!105210 () Int)

(assert (=> bs!520410 (= (and (= r!23423 lt!1014571) (= prefix!1470 (t!233247 prefix!1470))) (= lambda!105211 lambda!105210))))

(assert (=> b!2861825 true))

(assert (=> b!2861825 true))

(declare-fun e!1811696 () Bool)

(declare-fun Exists!1311 (Int) Bool)

(assert (=> b!2861825 (= e!1811696 (Exists!1311 lambda!105211))))

(declare-datatypes ((Unit!47757 0))(
  ( (Unit!47758) )
))
(declare-fun lt!1014573 () Unit!47757)

(declare-fun lt!1014572 () List!34212)

(declare-fun ExistsThe!12 (List!34212 Int) Unit!47757)

(assert (=> b!2861825 (= lt!1014573 (ExistsThe!12 lt!1014572 lambda!105211))))

(declare-fun b!2861826 () Bool)

(declare-fun e!1811694 () Bool)

(declare-fun tp_is_empty!14967 () Bool)

(assert (=> b!2861826 (= e!1811694 tp_is_empty!14967)))

(declare-fun b!2861827 () Bool)

(declare-fun res!1188272 () Bool)

(declare-fun e!1811693 () Bool)

(assert (=> b!2861827 (=> (not res!1188272) (not e!1811693))))

(get-info :version)

(assert (=> b!2861827 (= res!1188272 (not ((_ is Nil!34088) prefix!1470)))))

(declare-fun b!2861828 () Bool)

(declare-fun tp!921426 () Bool)

(declare-fun tp!921425 () Bool)

(assert (=> b!2861828 (= e!1811694 (and tp!921426 tp!921425))))

(declare-fun b!2861829 () Bool)

(declare-fun tp!921428 () Bool)

(declare-fun tp!921427 () Bool)

(assert (=> b!2861829 (= e!1811694 (and tp!921428 tp!921427))))

(declare-fun b!2861830 () Bool)

(declare-fun tp!921423 () Bool)

(assert (=> b!2861830 (= e!1811694 tp!921423)))

(declare-fun b!2861831 () Bool)

(declare-fun res!1188278 () Bool)

(assert (=> b!2861831 (=> (not res!1188278) (not e!1811693))))

(declare-fun prefixMatch!923 (Regex!8615 List!34212) Bool)

(assert (=> b!2861831 (= res!1188278 (prefixMatch!923 r!23423 prefix!1470))))

(declare-fun b!2861832 () Bool)

(declare-fun res!1188273 () Bool)

(assert (=> b!2861832 (=> res!1188273 e!1811696)))

(declare-fun isPrefix!2685 (List!34212 List!34212) Bool)

(assert (=> b!2861832 (= res!1188273 (not (isPrefix!2685 prefix!1470 lt!1014572)))))

(declare-fun b!2861833 () Bool)

(declare-fun res!1188276 () Bool)

(declare-fun e!1811695 () Bool)

(assert (=> b!2861833 (=> res!1188276 e!1811695)))

(declare-fun lt!1014575 () List!34212)

(assert (=> b!2861833 (= res!1188276 (not (isPrefix!2685 (t!233247 prefix!1470) lt!1014575)))))

(declare-fun res!1188275 () Bool)

(assert (=> start!278462 (=> (not res!1188275) (not e!1811693))))

(declare-fun validRegex!3485 (Regex!8615) Bool)

(assert (=> start!278462 (= res!1188275 (validRegex!3485 r!23423))))

(assert (=> start!278462 e!1811693))

(assert (=> start!278462 e!1811694))

(declare-fun e!1811692 () Bool)

(assert (=> start!278462 e!1811692))

(declare-fun b!2861834 () Bool)

(assert (=> b!2861834 (= e!1811695 e!1811696)))

(declare-fun res!1188274 () Bool)

(assert (=> b!2861834 (=> res!1188274 e!1811696)))

(declare-fun matchR!3711 (Regex!8615 List!34212) Bool)

(assert (=> b!2861834 (= res!1188274 (not (matchR!3711 r!23423 lt!1014572)))))

(declare-fun $colon$colon!599 (List!34212 C!17412) List!34212)

(assert (=> b!2861834 (= lt!1014572 ($colon$colon!599 lt!1014575 (h!39508 prefix!1470)))))

(declare-fun b!2861835 () Bool)

(declare-fun tp!921424 () Bool)

(assert (=> b!2861835 (= e!1811692 (and tp_is_empty!14967 tp!921424))))

(assert (=> b!2861836 (= e!1811693 (not e!1811695))))

(declare-fun res!1188277 () Bool)

(assert (=> b!2861836 (=> res!1188277 e!1811695)))

(assert (=> b!2861836 (= res!1188277 (not (matchR!3711 lt!1014571 lt!1014575)))))

(declare-fun pickWitness!320 (Int) List!34212)

(assert (=> b!2861836 (= lt!1014575 (pickWitness!320 lambda!105210))))

(assert (=> b!2861836 (Exists!1311 lambda!105210)))

(assert (=> b!2861836 (Exists!1311 lambda!105210)))

(declare-fun lt!1014574 () Unit!47757)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!357 (Regex!8615 List!34212) Unit!47757)

(assert (=> b!2861836 (= lt!1014574 (lemmaPrefixMatchThenExistsStringThatMatches!357 lt!1014571 (t!233247 prefix!1470)))))

(declare-fun derivativeStep!2304 (Regex!8615 C!17412) Regex!8615)

(assert (=> b!2861836 (= lt!1014571 (derivativeStep!2304 r!23423 (h!39508 prefix!1470)))))

(assert (= (and start!278462 res!1188275) b!2861831))

(assert (= (and b!2861831 res!1188278) b!2861827))

(assert (= (and b!2861827 res!1188272) b!2861836))

(assert (= (and b!2861836 (not res!1188277)) b!2861833))

(assert (= (and b!2861833 (not res!1188276)) b!2861834))

(assert (= (and b!2861834 (not res!1188274)) b!2861832))

(assert (= (and b!2861832 (not res!1188273)) b!2861825))

(assert (= (and start!278462 ((_ is ElementMatch!8615) r!23423)) b!2861826))

(assert (= (and start!278462 ((_ is Concat!13936) r!23423)) b!2861828))

(assert (= (and start!278462 ((_ is Star!8615) r!23423)) b!2861830))

(assert (= (and start!278462 ((_ is Union!8615) r!23423)) b!2861829))

(assert (= (and start!278462 ((_ is Cons!34088) prefix!1470)) b!2861835))

(declare-fun m!3281339 () Bool)

(assert (=> start!278462 m!3281339))

(declare-fun m!3281341 () Bool)

(assert (=> b!2861834 m!3281341))

(declare-fun m!3281343 () Bool)

(assert (=> b!2861834 m!3281343))

(declare-fun m!3281345 () Bool)

(assert (=> b!2861831 m!3281345))

(declare-fun m!3281347 () Bool)

(assert (=> b!2861832 m!3281347))

(declare-fun m!3281349 () Bool)

(assert (=> b!2861833 m!3281349))

(declare-fun m!3281351 () Bool)

(assert (=> b!2861836 m!3281351))

(declare-fun m!3281353 () Bool)

(assert (=> b!2861836 m!3281353))

(declare-fun m!3281355 () Bool)

(assert (=> b!2861836 m!3281355))

(declare-fun m!3281357 () Bool)

(assert (=> b!2861836 m!3281357))

(declare-fun m!3281359 () Bool)

(assert (=> b!2861836 m!3281359))

(assert (=> b!2861836 m!3281355))

(declare-fun m!3281361 () Bool)

(assert (=> b!2861825 m!3281361))

(declare-fun m!3281363 () Bool)

(assert (=> b!2861825 m!3281363))

(check-sat (not start!278462) (not b!2861829) tp_is_empty!14967 (not b!2861831) (not b!2861830) (not b!2861832) (not b!2861836) (not b!2861825) (not b!2861834) (not b!2861833) (not b!2861828) (not b!2861835))
(check-sat)
(get-model)

(declare-fun d!827247 () Bool)

(declare-fun choose!16833 (Int) Bool)

(assert (=> d!827247 (= (Exists!1311 lambda!105211) (choose!16833 lambda!105211))))

(declare-fun bs!520411 () Bool)

(assert (= bs!520411 d!827247))

(declare-fun m!3281365 () Bool)

(assert (=> bs!520411 m!3281365))

(assert (=> b!2861825 d!827247))

(declare-fun d!827249 () Bool)

(assert (=> d!827249 (Exists!1311 lambda!105211)))

(declare-fun lt!1014578 () Unit!47757)

(declare-fun choose!16834 (List!34212 Int) Unit!47757)

(assert (=> d!827249 (= lt!1014578 (choose!16834 lt!1014572 lambda!105211))))

(declare-fun dynLambda!14240 (Int List!34212) Bool)

(assert (=> d!827249 (dynLambda!14240 lambda!105211 lt!1014572)))

(assert (=> d!827249 (= (ExistsThe!12 lt!1014572 lambda!105211) lt!1014578)))

(declare-fun b_lambda!85747 () Bool)

(assert (=> (not b_lambda!85747) (not d!827249)))

(declare-fun bs!520412 () Bool)

(assert (= bs!520412 d!827249))

(assert (=> bs!520412 m!3281361))

(declare-fun m!3281367 () Bool)

(assert (=> bs!520412 m!3281367))

(declare-fun m!3281369 () Bool)

(assert (=> bs!520412 m!3281369))

(assert (=> b!2861825 d!827249))

(declare-fun b!2861869 () Bool)

(declare-fun e!1811712 () Bool)

(declare-fun e!1811713 () Bool)

(assert (=> b!2861869 (= e!1811712 e!1811713)))

(declare-fun c!461277 () Bool)

(assert (=> b!2861869 (= c!461277 ((_ is EmptyLang!8615) r!23423))))

(declare-fun b!2861870 () Bool)

(declare-fun e!1811714 () Bool)

(declare-fun head!6295 (List!34212) C!17412)

(assert (=> b!2861870 (= e!1811714 (not (= (head!6295 lt!1014572) (c!461268 r!23423))))))

(declare-fun b!2861871 () Bool)

(declare-fun res!1188297 () Bool)

(declare-fun e!1811716 () Bool)

(assert (=> b!2861871 (=> (not res!1188297) (not e!1811716))))

(declare-fun call!184667 () Bool)

(assert (=> b!2861871 (= res!1188297 (not call!184667))))

(declare-fun bm!184662 () Bool)

(declare-fun isEmpty!18620 (List!34212) Bool)

(assert (=> bm!184662 (= call!184667 (isEmpty!18620 lt!1014572))))

(declare-fun b!2861872 () Bool)

(declare-fun e!1811711 () Bool)

(declare-fun nullable!2666 (Regex!8615) Bool)

(assert (=> b!2861872 (= e!1811711 (nullable!2666 r!23423))))

(declare-fun b!2861873 () Bool)

(assert (=> b!2861873 (= e!1811716 (= (head!6295 lt!1014572) (c!461268 r!23423)))))

(declare-fun d!827251 () Bool)

(assert (=> d!827251 e!1811712))

(declare-fun c!461276 () Bool)

(assert (=> d!827251 (= c!461276 ((_ is EmptyExpr!8615) r!23423))))

(declare-fun lt!1014581 () Bool)

(assert (=> d!827251 (= lt!1014581 e!1811711)))

(declare-fun c!461275 () Bool)

(assert (=> d!827251 (= c!461275 (isEmpty!18620 lt!1014572))))

(assert (=> d!827251 (validRegex!3485 r!23423)))

(assert (=> d!827251 (= (matchR!3711 r!23423 lt!1014572) lt!1014581)))

(declare-fun b!2861874 () Bool)

(assert (=> b!2861874 (= e!1811713 (not lt!1014581))))

(declare-fun b!2861875 () Bool)

(declare-fun e!1811715 () Bool)

(assert (=> b!2861875 (= e!1811715 e!1811714)))

(declare-fun res!1188298 () Bool)

(assert (=> b!2861875 (=> res!1188298 e!1811714)))

(assert (=> b!2861875 (= res!1188298 call!184667)))

(declare-fun b!2861876 () Bool)

(declare-fun res!1188296 () Bool)

(assert (=> b!2861876 (=> res!1188296 e!1811714)))

(declare-fun tail!4520 (List!34212) List!34212)

(assert (=> b!2861876 (= res!1188296 (not (isEmpty!18620 (tail!4520 lt!1014572))))))

(declare-fun b!2861877 () Bool)

(declare-fun e!1811717 () Bool)

(assert (=> b!2861877 (= e!1811717 e!1811715)))

(declare-fun res!1188301 () Bool)

(assert (=> b!2861877 (=> (not res!1188301) (not e!1811715))))

(assert (=> b!2861877 (= res!1188301 (not lt!1014581))))

(declare-fun b!2861878 () Bool)

(assert (=> b!2861878 (= e!1811711 (matchR!3711 (derivativeStep!2304 r!23423 (head!6295 lt!1014572)) (tail!4520 lt!1014572)))))

(declare-fun b!2861879 () Bool)

(declare-fun res!1188295 () Bool)

(assert (=> b!2861879 (=> res!1188295 e!1811717)))

(assert (=> b!2861879 (= res!1188295 e!1811716)))

(declare-fun res!1188299 () Bool)

(assert (=> b!2861879 (=> (not res!1188299) (not e!1811716))))

(assert (=> b!2861879 (= res!1188299 lt!1014581)))

(declare-fun b!2861880 () Bool)

(declare-fun res!1188300 () Bool)

(assert (=> b!2861880 (=> (not res!1188300) (not e!1811716))))

(assert (=> b!2861880 (= res!1188300 (isEmpty!18620 (tail!4520 lt!1014572)))))

(declare-fun b!2861881 () Bool)

(declare-fun res!1188302 () Bool)

(assert (=> b!2861881 (=> res!1188302 e!1811717)))

(assert (=> b!2861881 (= res!1188302 (not ((_ is ElementMatch!8615) r!23423)))))

(assert (=> b!2861881 (= e!1811713 e!1811717)))

(declare-fun b!2861882 () Bool)

(assert (=> b!2861882 (= e!1811712 (= lt!1014581 call!184667))))

(assert (= (and d!827251 c!461275) b!2861872))

(assert (= (and d!827251 (not c!461275)) b!2861878))

(assert (= (and d!827251 c!461276) b!2861882))

(assert (= (and d!827251 (not c!461276)) b!2861869))

(assert (= (and b!2861869 c!461277) b!2861874))

(assert (= (and b!2861869 (not c!461277)) b!2861881))

(assert (= (and b!2861881 (not res!1188302)) b!2861879))

(assert (= (and b!2861879 res!1188299) b!2861871))

(assert (= (and b!2861871 res!1188297) b!2861880))

(assert (= (and b!2861880 res!1188300) b!2861873))

(assert (= (and b!2861879 (not res!1188295)) b!2861877))

(assert (= (and b!2861877 res!1188301) b!2861875))

(assert (= (and b!2861875 (not res!1188298)) b!2861876))

(assert (= (and b!2861876 (not res!1188296)) b!2861870))

(assert (= (or b!2861882 b!2861871 b!2861875) bm!184662))

(declare-fun m!3281373 () Bool)

(assert (=> b!2861872 m!3281373))

(declare-fun m!3281375 () Bool)

(assert (=> b!2861873 m!3281375))

(assert (=> b!2861878 m!3281375))

(assert (=> b!2861878 m!3281375))

(declare-fun m!3281377 () Bool)

(assert (=> b!2861878 m!3281377))

(declare-fun m!3281379 () Bool)

(assert (=> b!2861878 m!3281379))

(assert (=> b!2861878 m!3281377))

(assert (=> b!2861878 m!3281379))

(declare-fun m!3281381 () Bool)

(assert (=> b!2861878 m!3281381))

(assert (=> b!2861876 m!3281379))

(assert (=> b!2861876 m!3281379))

(declare-fun m!3281383 () Bool)

(assert (=> b!2861876 m!3281383))

(declare-fun m!3281385 () Bool)

(assert (=> bm!184662 m!3281385))

(assert (=> b!2861880 m!3281379))

(assert (=> b!2861880 m!3281379))

(assert (=> b!2861880 m!3281383))

(assert (=> d!827251 m!3281385))

(assert (=> d!827251 m!3281339))

(assert (=> b!2861870 m!3281375))

(assert (=> b!2861834 d!827251))

(declare-fun d!827257 () Bool)

(assert (=> d!827257 (= ($colon$colon!599 lt!1014575 (h!39508 prefix!1470)) (Cons!34088 (h!39508 prefix!1470) lt!1014575))))

(assert (=> b!2861834 d!827257))

(declare-fun b!2861898 () Bool)

(declare-fun e!1811727 () Bool)

(declare-fun size!26286 (List!34212) Int)

(assert (=> b!2861898 (= e!1811727 (>= (size!26286 lt!1014572) (size!26286 prefix!1470)))))

(declare-fun b!2861896 () Bool)

(declare-fun res!1188313 () Bool)

(declare-fun e!1811726 () Bool)

(assert (=> b!2861896 (=> (not res!1188313) (not e!1811726))))

(assert (=> b!2861896 (= res!1188313 (= (head!6295 prefix!1470) (head!6295 lt!1014572)))))

(declare-fun b!2861897 () Bool)

(assert (=> b!2861897 (= e!1811726 (isPrefix!2685 (tail!4520 prefix!1470) (tail!4520 lt!1014572)))))

(declare-fun b!2861895 () Bool)

(declare-fun e!1811728 () Bool)

(assert (=> b!2861895 (= e!1811728 e!1811726)))

(declare-fun res!1188314 () Bool)

(assert (=> b!2861895 (=> (not res!1188314) (not e!1811726))))

(assert (=> b!2861895 (= res!1188314 (not ((_ is Nil!34088) lt!1014572)))))

(declare-fun d!827259 () Bool)

(assert (=> d!827259 e!1811727))

(declare-fun res!1188312 () Bool)

(assert (=> d!827259 (=> res!1188312 e!1811727)))

(declare-fun lt!1014587 () Bool)

(assert (=> d!827259 (= res!1188312 (not lt!1014587))))

(assert (=> d!827259 (= lt!1014587 e!1811728)))

(declare-fun res!1188311 () Bool)

(assert (=> d!827259 (=> res!1188311 e!1811728)))

(assert (=> d!827259 (= res!1188311 ((_ is Nil!34088) prefix!1470))))

(assert (=> d!827259 (= (isPrefix!2685 prefix!1470 lt!1014572) lt!1014587)))

(assert (= (and d!827259 (not res!1188311)) b!2861895))

(assert (= (and b!2861895 res!1188314) b!2861896))

(assert (= (and b!2861896 res!1188313) b!2861897))

(assert (= (and d!827259 (not res!1188312)) b!2861898))

(declare-fun m!3281391 () Bool)

(assert (=> b!2861898 m!3281391))

(declare-fun m!3281393 () Bool)

(assert (=> b!2861898 m!3281393))

(declare-fun m!3281395 () Bool)

(assert (=> b!2861896 m!3281395))

(assert (=> b!2861896 m!3281375))

(declare-fun m!3281397 () Bool)

(assert (=> b!2861897 m!3281397))

(assert (=> b!2861897 m!3281379))

(assert (=> b!2861897 m!3281397))

(assert (=> b!2861897 m!3281379))

(declare-fun m!3281399 () Bool)

(assert (=> b!2861897 m!3281399))

(assert (=> b!2861832 d!827259))

(declare-fun b!2861904 () Bool)

(declare-fun e!1811731 () Bool)

(assert (=> b!2861904 (= e!1811731 (>= (size!26286 lt!1014575) (size!26286 (t!233247 prefix!1470))))))

(declare-fun b!2861902 () Bool)

(declare-fun res!1188317 () Bool)

(declare-fun e!1811730 () Bool)

(assert (=> b!2861902 (=> (not res!1188317) (not e!1811730))))

(assert (=> b!2861902 (= res!1188317 (= (head!6295 (t!233247 prefix!1470)) (head!6295 lt!1014575)))))

(declare-fun b!2861903 () Bool)

(assert (=> b!2861903 (= e!1811730 (isPrefix!2685 (tail!4520 (t!233247 prefix!1470)) (tail!4520 lt!1014575)))))

(declare-fun b!2861901 () Bool)

(declare-fun e!1811732 () Bool)

(assert (=> b!2861901 (= e!1811732 e!1811730)))

(declare-fun res!1188318 () Bool)

(assert (=> b!2861901 (=> (not res!1188318) (not e!1811730))))

(assert (=> b!2861901 (= res!1188318 (not ((_ is Nil!34088) lt!1014575)))))

(declare-fun d!827263 () Bool)

(assert (=> d!827263 e!1811731))

(declare-fun res!1188316 () Bool)

(assert (=> d!827263 (=> res!1188316 e!1811731)))

(declare-fun lt!1014588 () Bool)

(assert (=> d!827263 (= res!1188316 (not lt!1014588))))

(assert (=> d!827263 (= lt!1014588 e!1811732)))

(declare-fun res!1188315 () Bool)

(assert (=> d!827263 (=> res!1188315 e!1811732)))

(assert (=> d!827263 (= res!1188315 ((_ is Nil!34088) (t!233247 prefix!1470)))))

(assert (=> d!827263 (= (isPrefix!2685 (t!233247 prefix!1470) lt!1014575) lt!1014588)))

(assert (= (and d!827263 (not res!1188315)) b!2861901))

(assert (= (and b!2861901 res!1188318) b!2861902))

(assert (= (and b!2861902 res!1188317) b!2861903))

(assert (= (and d!827263 (not res!1188316)) b!2861904))

(declare-fun m!3281413 () Bool)

(assert (=> b!2861904 m!3281413))

(declare-fun m!3281415 () Bool)

(assert (=> b!2861904 m!3281415))

(declare-fun m!3281417 () Bool)

(assert (=> b!2861902 m!3281417))

(declare-fun m!3281419 () Bool)

(assert (=> b!2861902 m!3281419))

(declare-fun m!3281421 () Bool)

(assert (=> b!2861903 m!3281421))

(declare-fun m!3281423 () Bool)

(assert (=> b!2861903 m!3281423))

(assert (=> b!2861903 m!3281421))

(assert (=> b!2861903 m!3281423))

(declare-fun m!3281425 () Bool)

(assert (=> b!2861903 m!3281425))

(assert (=> b!2861833 d!827263))

(declare-fun d!827267 () Bool)

(declare-fun c!461287 () Bool)

(assert (=> d!827267 (= c!461287 (isEmpty!18620 prefix!1470))))

(declare-fun e!1811749 () Bool)

(assert (=> d!827267 (= (prefixMatch!923 r!23423 prefix!1470) e!1811749)))

(declare-fun b!2861927 () Bool)

(declare-fun lostCause!766 (Regex!8615) Bool)

(assert (=> b!2861927 (= e!1811749 (not (lostCause!766 r!23423)))))

(declare-fun b!2861928 () Bool)

(assert (=> b!2861928 (= e!1811749 (prefixMatch!923 (derivativeStep!2304 r!23423 (head!6295 prefix!1470)) (tail!4520 prefix!1470)))))

(assert (= (and d!827267 c!461287) b!2861927))

(assert (= (and d!827267 (not c!461287)) b!2861928))

(declare-fun m!3281427 () Bool)

(assert (=> d!827267 m!3281427))

(declare-fun m!3281429 () Bool)

(assert (=> b!2861927 m!3281429))

(assert (=> b!2861928 m!3281395))

(assert (=> b!2861928 m!3281395))

(declare-fun m!3281431 () Bool)

(assert (=> b!2861928 m!3281431))

(assert (=> b!2861928 m!3281397))

(assert (=> b!2861928 m!3281431))

(assert (=> b!2861928 m!3281397))

(declare-fun m!3281433 () Bool)

(assert (=> b!2861928 m!3281433))

(assert (=> b!2861831 d!827267))

(declare-fun d!827269 () Bool)

(declare-fun res!1188345 () Bool)

(declare-fun e!1811771 () Bool)

(assert (=> d!827269 (=> res!1188345 e!1811771)))

(assert (=> d!827269 (= res!1188345 ((_ is ElementMatch!8615) r!23423))))

(assert (=> d!827269 (= (validRegex!3485 r!23423) e!1811771)))

(declare-fun b!2861956 () Bool)

(declare-fun res!1188344 () Bool)

(declare-fun e!1811777 () Bool)

(assert (=> b!2861956 (=> res!1188344 e!1811777)))

(assert (=> b!2861956 (= res!1188344 (not ((_ is Concat!13936) r!23423)))))

(declare-fun e!1811775 () Bool)

(assert (=> b!2861956 (= e!1811775 e!1811777)))

(declare-fun b!2861957 () Bool)

(declare-fun e!1811772 () Bool)

(assert (=> b!2861957 (= e!1811772 e!1811775)))

(declare-fun c!461295 () Bool)

(assert (=> b!2861957 (= c!461295 ((_ is Union!8615) r!23423))))

(declare-fun bm!184678 () Bool)

(declare-fun call!184684 () Bool)

(declare-fun call!184683 () Bool)

(assert (=> bm!184678 (= call!184684 call!184683)))

(declare-fun b!2861958 () Bool)

(declare-fun e!1811773 () Bool)

(assert (=> b!2861958 (= e!1811773 call!184684)))

(declare-fun b!2861959 () Bool)

(declare-fun e!1811776 () Bool)

(assert (=> b!2861959 (= e!1811776 call!184683)))

(declare-fun b!2861960 () Bool)

(declare-fun res!1188346 () Bool)

(assert (=> b!2861960 (=> (not res!1188346) (not e!1811773))))

(declare-fun call!184685 () Bool)

(assert (=> b!2861960 (= res!1188346 call!184685)))

(assert (=> b!2861960 (= e!1811775 e!1811773)))

(declare-fun b!2861961 () Bool)

(declare-fun e!1811774 () Bool)

(assert (=> b!2861961 (= e!1811774 call!184684)))

(declare-fun bm!184679 () Bool)

(assert (=> bm!184679 (= call!184685 (validRegex!3485 (ite c!461295 (regOne!17743 r!23423) (regOne!17742 r!23423))))))

(declare-fun b!2861962 () Bool)

(assert (=> b!2861962 (= e!1811772 e!1811776)))

(declare-fun res!1188348 () Bool)

(assert (=> b!2861962 (= res!1188348 (not (nullable!2666 (reg!8944 r!23423))))))

(assert (=> b!2861962 (=> (not res!1188348) (not e!1811776))))

(declare-fun b!2861963 () Bool)

(assert (=> b!2861963 (= e!1811777 e!1811774)))

(declare-fun res!1188347 () Bool)

(assert (=> b!2861963 (=> (not res!1188347) (not e!1811774))))

(assert (=> b!2861963 (= res!1188347 call!184685)))

(declare-fun bm!184680 () Bool)

(declare-fun c!461294 () Bool)

(assert (=> bm!184680 (= call!184683 (validRegex!3485 (ite c!461294 (reg!8944 r!23423) (ite c!461295 (regTwo!17743 r!23423) (regTwo!17742 r!23423)))))))

(declare-fun b!2861964 () Bool)

(assert (=> b!2861964 (= e!1811771 e!1811772)))

(assert (=> b!2861964 (= c!461294 ((_ is Star!8615) r!23423))))

(assert (= (and d!827269 (not res!1188345)) b!2861964))

(assert (= (and b!2861964 c!461294) b!2861962))

(assert (= (and b!2861964 (not c!461294)) b!2861957))

(assert (= (and b!2861962 res!1188348) b!2861959))

(assert (= (and b!2861957 c!461295) b!2861960))

(assert (= (and b!2861957 (not c!461295)) b!2861956))

(assert (= (and b!2861960 res!1188346) b!2861958))

(assert (= (and b!2861956 (not res!1188344)) b!2861963))

(assert (= (and b!2861963 res!1188347) b!2861961))

(assert (= (or b!2861958 b!2861961) bm!184678))

(assert (= (or b!2861960 b!2861963) bm!184679))

(assert (= (or b!2861959 bm!184678) bm!184680))

(declare-fun m!3281441 () Bool)

(assert (=> bm!184679 m!3281441))

(declare-fun m!3281443 () Bool)

(assert (=> b!2861962 m!3281443))

(declare-fun m!3281445 () Bool)

(assert (=> bm!184680 m!3281445))

(assert (=> start!278462 d!827269))

(declare-fun bs!520415 () Bool)

(declare-fun d!827273 () Bool)

(assert (= bs!520415 (and d!827273 b!2861836)))

(declare-fun lambda!105214 () Int)

(assert (=> bs!520415 (= lambda!105214 lambda!105210)))

(declare-fun bs!520416 () Bool)

(assert (= bs!520416 (and d!827273 b!2861825)))

(assert (=> bs!520416 (= (and (= lt!1014571 r!23423) (= (t!233247 prefix!1470) prefix!1470)) (= lambda!105214 lambda!105211))))

(assert (=> d!827273 true))

(assert (=> d!827273 true))

(assert (=> d!827273 (Exists!1311 lambda!105214)))

(declare-fun lt!1014593 () Unit!47757)

(declare-fun choose!16837 (Regex!8615 List!34212) Unit!47757)

(assert (=> d!827273 (= lt!1014593 (choose!16837 lt!1014571 (t!233247 prefix!1470)))))

(assert (=> d!827273 (validRegex!3485 lt!1014571)))

(assert (=> d!827273 (= (lemmaPrefixMatchThenExistsStringThatMatches!357 lt!1014571 (t!233247 prefix!1470)) lt!1014593)))

(declare-fun bs!520417 () Bool)

(assert (= bs!520417 d!827273))

(declare-fun m!3281447 () Bool)

(assert (=> bs!520417 m!3281447))

(declare-fun m!3281449 () Bool)

(assert (=> bs!520417 m!3281449))

(declare-fun m!3281451 () Bool)

(assert (=> bs!520417 m!3281451))

(assert (=> b!2861836 d!827273))

(declare-fun d!827275 () Bool)

(declare-fun lt!1014597 () List!34212)

(assert (=> d!827275 (dynLambda!14240 lambda!105210 lt!1014597)))

(declare-fun choose!16838 (Int) List!34212)

(assert (=> d!827275 (= lt!1014597 (choose!16838 lambda!105210))))

(assert (=> d!827275 (Exists!1311 lambda!105210)))

(assert (=> d!827275 (= (pickWitness!320 lambda!105210) lt!1014597)))

(declare-fun b_lambda!85751 () Bool)

(assert (=> (not b_lambda!85751) (not d!827275)))

(declare-fun bs!520418 () Bool)

(assert (= bs!520418 d!827275))

(declare-fun m!3281453 () Bool)

(assert (=> bs!520418 m!3281453))

(declare-fun m!3281455 () Bool)

(assert (=> bs!520418 m!3281455))

(assert (=> bs!520418 m!3281355))

(assert (=> b!2861836 d!827275))

(declare-fun b!2862049 () Bool)

(declare-fun e!1811823 () Regex!8615)

(assert (=> b!2862049 (= e!1811823 (ite (= (h!39508 prefix!1470) (c!461268 r!23423)) EmptyExpr!8615 EmptyLang!8615))))

(declare-fun c!461326 () Bool)

(declare-fun bm!184700 () Bool)

(declare-fun call!184706 () Regex!8615)

(declare-fun c!461329 () Bool)

(assert (=> bm!184700 (= call!184706 (derivativeStep!2304 (ite c!461326 (regTwo!17743 r!23423) (ite c!461329 (reg!8944 r!23423) (regOne!17742 r!23423))) (h!39508 prefix!1470)))))

(declare-fun b!2862050 () Bool)

(declare-fun e!1811825 () Regex!8615)

(declare-fun call!184708 () Regex!8615)

(assert (=> b!2862050 (= e!1811825 (Union!8615 (Concat!13936 call!184708 (regTwo!17742 r!23423)) EmptyLang!8615))))

(declare-fun b!2862051 () Bool)

(assert (=> b!2862051 (= c!461326 ((_ is Union!8615) r!23423))))

(declare-fun e!1811821 () Regex!8615)

(assert (=> b!2862051 (= e!1811823 e!1811821)))

(declare-fun b!2862052 () Bool)

(declare-fun call!184705 () Regex!8615)

(assert (=> b!2862052 (= e!1811825 (Union!8615 (Concat!13936 call!184705 (regTwo!17742 r!23423)) call!184708))))

(declare-fun b!2862053 () Bool)

(declare-fun e!1811824 () Regex!8615)

(assert (=> b!2862053 (= e!1811821 e!1811824)))

(assert (=> b!2862053 (= c!461329 ((_ is Star!8615) r!23423))))

(declare-fun b!2862054 () Bool)

(declare-fun e!1811822 () Regex!8615)

(assert (=> b!2862054 (= e!1811822 e!1811823)))

(declare-fun c!461325 () Bool)

(assert (=> b!2862054 (= c!461325 ((_ is ElementMatch!8615) r!23423))))

(declare-fun b!2862055 () Bool)

(assert (=> b!2862055 (= e!1811824 (Concat!13936 call!184705 r!23423))))

(declare-fun b!2862056 () Bool)

(declare-fun call!184707 () Regex!8615)

(assert (=> b!2862056 (= e!1811821 (Union!8615 call!184707 call!184706))))

(declare-fun d!827277 () Bool)

(declare-fun lt!1014602 () Regex!8615)

(assert (=> d!827277 (validRegex!3485 lt!1014602)))

(assert (=> d!827277 (= lt!1014602 e!1811822)))

(declare-fun c!461328 () Bool)

(assert (=> d!827277 (= c!461328 (or ((_ is EmptyExpr!8615) r!23423) ((_ is EmptyLang!8615) r!23423)))))

(assert (=> d!827277 (validRegex!3485 r!23423)))

(assert (=> d!827277 (= (derivativeStep!2304 r!23423 (h!39508 prefix!1470)) lt!1014602)))

(declare-fun bm!184701 () Bool)

(assert (=> bm!184701 (= call!184708 call!184707)))

(declare-fun c!461327 () Bool)

(declare-fun bm!184702 () Bool)

(assert (=> bm!184702 (= call!184707 (derivativeStep!2304 (ite c!461326 (regOne!17743 r!23423) (ite c!461327 (regTwo!17742 r!23423) (regOne!17742 r!23423))) (h!39508 prefix!1470)))))

(declare-fun b!2862057 () Bool)

(assert (=> b!2862057 (= e!1811822 EmptyLang!8615)))

(declare-fun bm!184703 () Bool)

(assert (=> bm!184703 (= call!184705 call!184706)))

(declare-fun b!2862058 () Bool)

(assert (=> b!2862058 (= c!461327 (nullable!2666 (regOne!17742 r!23423)))))

(assert (=> b!2862058 (= e!1811824 e!1811825)))

(assert (= (and d!827277 c!461328) b!2862057))

(assert (= (and d!827277 (not c!461328)) b!2862054))

(assert (= (and b!2862054 c!461325) b!2862049))

(assert (= (and b!2862054 (not c!461325)) b!2862051))

(assert (= (and b!2862051 c!461326) b!2862056))

(assert (= (and b!2862051 (not c!461326)) b!2862053))

(assert (= (and b!2862053 c!461329) b!2862055))

(assert (= (and b!2862053 (not c!461329)) b!2862058))

(assert (= (and b!2862058 c!461327) b!2862052))

(assert (= (and b!2862058 (not c!461327)) b!2862050))

(assert (= (or b!2862052 b!2862050) bm!184701))

(assert (= (or b!2862055 b!2862052) bm!184703))

(assert (= (or b!2862056 bm!184703) bm!184700))

(assert (= (or b!2862056 bm!184701) bm!184702))

(declare-fun m!3281473 () Bool)

(assert (=> bm!184700 m!3281473))

(declare-fun m!3281475 () Bool)

(assert (=> d!827277 m!3281475))

(assert (=> d!827277 m!3281339))

(declare-fun m!3281477 () Bool)

(assert (=> bm!184702 m!3281477))

(declare-fun m!3281479 () Bool)

(assert (=> b!2862058 m!3281479))

(assert (=> b!2861836 d!827277))

(declare-fun d!827281 () Bool)

(assert (=> d!827281 (= (Exists!1311 lambda!105210) (choose!16833 lambda!105210))))

(declare-fun bs!520419 () Bool)

(assert (= bs!520419 d!827281))

(declare-fun m!3281487 () Bool)

(assert (=> bs!520419 m!3281487))

(assert (=> b!2861836 d!827281))

(declare-fun b!2862069 () Bool)

(declare-fun e!1811832 () Bool)

(declare-fun e!1811833 () Bool)

(assert (=> b!2862069 (= e!1811832 e!1811833)))

(declare-fun c!461337 () Bool)

(assert (=> b!2862069 (= c!461337 ((_ is EmptyLang!8615) lt!1014571))))

(declare-fun b!2862070 () Bool)

(declare-fun e!1811834 () Bool)

(assert (=> b!2862070 (= e!1811834 (not (= (head!6295 lt!1014575) (c!461268 lt!1014571))))))

(declare-fun b!2862071 () Bool)

(declare-fun res!1188377 () Bool)

(declare-fun e!1811836 () Bool)

(assert (=> b!2862071 (=> (not res!1188377) (not e!1811836))))

(declare-fun call!184713 () Bool)

(assert (=> b!2862071 (= res!1188377 (not call!184713))))

(declare-fun bm!184708 () Bool)

(assert (=> bm!184708 (= call!184713 (isEmpty!18620 lt!1014575))))

(declare-fun b!2862072 () Bool)

(declare-fun e!1811831 () Bool)

(assert (=> b!2862072 (= e!1811831 (nullable!2666 lt!1014571))))

(declare-fun b!2862073 () Bool)

(assert (=> b!2862073 (= e!1811836 (= (head!6295 lt!1014575) (c!461268 lt!1014571)))))

(declare-fun d!827283 () Bool)

(assert (=> d!827283 e!1811832))

(declare-fun c!461336 () Bool)

(assert (=> d!827283 (= c!461336 ((_ is EmptyExpr!8615) lt!1014571))))

(declare-fun lt!1014604 () Bool)

(assert (=> d!827283 (= lt!1014604 e!1811831)))

(declare-fun c!461335 () Bool)

(assert (=> d!827283 (= c!461335 (isEmpty!18620 lt!1014575))))

(assert (=> d!827283 (validRegex!3485 lt!1014571)))

(assert (=> d!827283 (= (matchR!3711 lt!1014571 lt!1014575) lt!1014604)))

(declare-fun b!2862074 () Bool)

(assert (=> b!2862074 (= e!1811833 (not lt!1014604))))

(declare-fun b!2862075 () Bool)

(declare-fun e!1811835 () Bool)

(assert (=> b!2862075 (= e!1811835 e!1811834)))

(declare-fun res!1188378 () Bool)

(assert (=> b!2862075 (=> res!1188378 e!1811834)))

(assert (=> b!2862075 (= res!1188378 call!184713)))

(declare-fun b!2862076 () Bool)

(declare-fun res!1188376 () Bool)

(assert (=> b!2862076 (=> res!1188376 e!1811834)))

(assert (=> b!2862076 (= res!1188376 (not (isEmpty!18620 (tail!4520 lt!1014575))))))

(declare-fun b!2862077 () Bool)

(declare-fun e!1811837 () Bool)

(assert (=> b!2862077 (= e!1811837 e!1811835)))

(declare-fun res!1188381 () Bool)

(assert (=> b!2862077 (=> (not res!1188381) (not e!1811835))))

(assert (=> b!2862077 (= res!1188381 (not lt!1014604))))

(declare-fun b!2862078 () Bool)

(assert (=> b!2862078 (= e!1811831 (matchR!3711 (derivativeStep!2304 lt!1014571 (head!6295 lt!1014575)) (tail!4520 lt!1014575)))))

(declare-fun b!2862079 () Bool)

(declare-fun res!1188375 () Bool)

(assert (=> b!2862079 (=> res!1188375 e!1811837)))

(assert (=> b!2862079 (= res!1188375 e!1811836)))

(declare-fun res!1188379 () Bool)

(assert (=> b!2862079 (=> (not res!1188379) (not e!1811836))))

(assert (=> b!2862079 (= res!1188379 lt!1014604)))

(declare-fun b!2862080 () Bool)

(declare-fun res!1188380 () Bool)

(assert (=> b!2862080 (=> (not res!1188380) (not e!1811836))))

(assert (=> b!2862080 (= res!1188380 (isEmpty!18620 (tail!4520 lt!1014575)))))

(declare-fun b!2862081 () Bool)

(declare-fun res!1188382 () Bool)

(assert (=> b!2862081 (=> res!1188382 e!1811837)))

(assert (=> b!2862081 (= res!1188382 (not ((_ is ElementMatch!8615) lt!1014571)))))

(assert (=> b!2862081 (= e!1811833 e!1811837)))

(declare-fun b!2862082 () Bool)

(assert (=> b!2862082 (= e!1811832 (= lt!1014604 call!184713))))

(assert (= (and d!827283 c!461335) b!2862072))

(assert (= (and d!827283 (not c!461335)) b!2862078))

(assert (= (and d!827283 c!461336) b!2862082))

(assert (= (and d!827283 (not c!461336)) b!2862069))

(assert (= (and b!2862069 c!461337) b!2862074))

(assert (= (and b!2862069 (not c!461337)) b!2862081))

(assert (= (and b!2862081 (not res!1188382)) b!2862079))

(assert (= (and b!2862079 res!1188379) b!2862071))

(assert (= (and b!2862071 res!1188377) b!2862080))

(assert (= (and b!2862080 res!1188380) b!2862073))

(assert (= (and b!2862079 (not res!1188375)) b!2862077))

(assert (= (and b!2862077 res!1188381) b!2862075))

(assert (= (and b!2862075 (not res!1188378)) b!2862076))

(assert (= (and b!2862076 (not res!1188376)) b!2862070))

(assert (= (or b!2862082 b!2862071 b!2862075) bm!184708))

(declare-fun m!3281493 () Bool)

(assert (=> b!2862072 m!3281493))

(assert (=> b!2862073 m!3281419))

(assert (=> b!2862078 m!3281419))

(assert (=> b!2862078 m!3281419))

(declare-fun m!3281495 () Bool)

(assert (=> b!2862078 m!3281495))

(assert (=> b!2862078 m!3281423))

(assert (=> b!2862078 m!3281495))

(assert (=> b!2862078 m!3281423))

(declare-fun m!3281497 () Bool)

(assert (=> b!2862078 m!3281497))

(assert (=> b!2862076 m!3281423))

(assert (=> b!2862076 m!3281423))

(declare-fun m!3281499 () Bool)

(assert (=> b!2862076 m!3281499))

(declare-fun m!3281501 () Bool)

(assert (=> bm!184708 m!3281501))

(assert (=> b!2862080 m!3281423))

(assert (=> b!2862080 m!3281423))

(assert (=> b!2862080 m!3281499))

(assert (=> d!827283 m!3281501))

(assert (=> d!827283 m!3281451))

(assert (=> b!2862070 m!3281419))

(assert (=> b!2861836 d!827283))

(declare-fun b!2862087 () Bool)

(declare-fun e!1811840 () Bool)

(declare-fun tp!921431 () Bool)

(assert (=> b!2862087 (= e!1811840 (and tp_is_empty!14967 tp!921431))))

(assert (=> b!2861835 (= tp!921424 e!1811840)))

(assert (= (and b!2861835 ((_ is Cons!34088) (t!233247 prefix!1470))) b!2862087))

(declare-fun b!2862098 () Bool)

(declare-fun e!1811843 () Bool)

(assert (=> b!2862098 (= e!1811843 tp_is_empty!14967)))

(declare-fun b!2862100 () Bool)

(declare-fun tp!921444 () Bool)

(assert (=> b!2862100 (= e!1811843 tp!921444)))

(assert (=> b!2861830 (= tp!921423 e!1811843)))

(declare-fun b!2862101 () Bool)

(declare-fun tp!921442 () Bool)

(declare-fun tp!921445 () Bool)

(assert (=> b!2862101 (= e!1811843 (and tp!921442 tp!921445))))

(declare-fun b!2862099 () Bool)

(declare-fun tp!921443 () Bool)

(declare-fun tp!921446 () Bool)

(assert (=> b!2862099 (= e!1811843 (and tp!921443 tp!921446))))

(assert (= (and b!2861830 ((_ is ElementMatch!8615) (reg!8944 r!23423))) b!2862098))

(assert (= (and b!2861830 ((_ is Concat!13936) (reg!8944 r!23423))) b!2862099))

(assert (= (and b!2861830 ((_ is Star!8615) (reg!8944 r!23423))) b!2862100))

(assert (= (and b!2861830 ((_ is Union!8615) (reg!8944 r!23423))) b!2862101))

(declare-fun b!2862102 () Bool)

(declare-fun e!1811844 () Bool)

(assert (=> b!2862102 (= e!1811844 tp_is_empty!14967)))

(declare-fun b!2862104 () Bool)

(declare-fun tp!921449 () Bool)

(assert (=> b!2862104 (= e!1811844 tp!921449)))

(assert (=> b!2861828 (= tp!921426 e!1811844)))

(declare-fun b!2862105 () Bool)

(declare-fun tp!921447 () Bool)

(declare-fun tp!921450 () Bool)

(assert (=> b!2862105 (= e!1811844 (and tp!921447 tp!921450))))

(declare-fun b!2862103 () Bool)

(declare-fun tp!921448 () Bool)

(declare-fun tp!921451 () Bool)

(assert (=> b!2862103 (= e!1811844 (and tp!921448 tp!921451))))

(assert (= (and b!2861828 ((_ is ElementMatch!8615) (regOne!17742 r!23423))) b!2862102))

(assert (= (and b!2861828 ((_ is Concat!13936) (regOne!17742 r!23423))) b!2862103))

(assert (= (and b!2861828 ((_ is Star!8615) (regOne!17742 r!23423))) b!2862104))

(assert (= (and b!2861828 ((_ is Union!8615) (regOne!17742 r!23423))) b!2862105))

(declare-fun b!2862106 () Bool)

(declare-fun e!1811845 () Bool)

(assert (=> b!2862106 (= e!1811845 tp_is_empty!14967)))

(declare-fun b!2862108 () Bool)

(declare-fun tp!921454 () Bool)

(assert (=> b!2862108 (= e!1811845 tp!921454)))

(assert (=> b!2861828 (= tp!921425 e!1811845)))

(declare-fun b!2862109 () Bool)

(declare-fun tp!921452 () Bool)

(declare-fun tp!921455 () Bool)

(assert (=> b!2862109 (= e!1811845 (and tp!921452 tp!921455))))

(declare-fun b!2862107 () Bool)

(declare-fun tp!921453 () Bool)

(declare-fun tp!921456 () Bool)

(assert (=> b!2862107 (= e!1811845 (and tp!921453 tp!921456))))

(assert (= (and b!2861828 ((_ is ElementMatch!8615) (regTwo!17742 r!23423))) b!2862106))

(assert (= (and b!2861828 ((_ is Concat!13936) (regTwo!17742 r!23423))) b!2862107))

(assert (= (and b!2861828 ((_ is Star!8615) (regTwo!17742 r!23423))) b!2862108))

(assert (= (and b!2861828 ((_ is Union!8615) (regTwo!17742 r!23423))) b!2862109))

(declare-fun b!2862110 () Bool)

(declare-fun e!1811846 () Bool)

(assert (=> b!2862110 (= e!1811846 tp_is_empty!14967)))

(declare-fun b!2862112 () Bool)

(declare-fun tp!921459 () Bool)

(assert (=> b!2862112 (= e!1811846 tp!921459)))

(assert (=> b!2861829 (= tp!921428 e!1811846)))

(declare-fun b!2862113 () Bool)

(declare-fun tp!921457 () Bool)

(declare-fun tp!921460 () Bool)

(assert (=> b!2862113 (= e!1811846 (and tp!921457 tp!921460))))

(declare-fun b!2862111 () Bool)

(declare-fun tp!921458 () Bool)

(declare-fun tp!921461 () Bool)

(assert (=> b!2862111 (= e!1811846 (and tp!921458 tp!921461))))

(assert (= (and b!2861829 ((_ is ElementMatch!8615) (regOne!17743 r!23423))) b!2862110))

(assert (= (and b!2861829 ((_ is Concat!13936) (regOne!17743 r!23423))) b!2862111))

(assert (= (and b!2861829 ((_ is Star!8615) (regOne!17743 r!23423))) b!2862112))

(assert (= (and b!2861829 ((_ is Union!8615) (regOne!17743 r!23423))) b!2862113))

(declare-fun b!2862114 () Bool)

(declare-fun e!1811847 () Bool)

(assert (=> b!2862114 (= e!1811847 tp_is_empty!14967)))

(declare-fun b!2862116 () Bool)

(declare-fun tp!921464 () Bool)

(assert (=> b!2862116 (= e!1811847 tp!921464)))

(assert (=> b!2861829 (= tp!921427 e!1811847)))

(declare-fun b!2862117 () Bool)

(declare-fun tp!921462 () Bool)

(declare-fun tp!921465 () Bool)

(assert (=> b!2862117 (= e!1811847 (and tp!921462 tp!921465))))

(declare-fun b!2862115 () Bool)

(declare-fun tp!921463 () Bool)

(declare-fun tp!921466 () Bool)

(assert (=> b!2862115 (= e!1811847 (and tp!921463 tp!921466))))

(assert (= (and b!2861829 ((_ is ElementMatch!8615) (regTwo!17743 r!23423))) b!2862114))

(assert (= (and b!2861829 ((_ is Concat!13936) (regTwo!17743 r!23423))) b!2862115))

(assert (= (and b!2861829 ((_ is Star!8615) (regTwo!17743 r!23423))) b!2862116))

(assert (= (and b!2861829 ((_ is Union!8615) (regTwo!17743 r!23423))) b!2862117))

(declare-fun b_lambda!85753 () Bool)

(assert (= b_lambda!85747 (or b!2861825 b_lambda!85753)))

(declare-fun bs!520421 () Bool)

(declare-fun d!827289 () Bool)

(assert (= bs!520421 (and d!827289 b!2861825)))

(declare-fun res!1188385 () Bool)

(declare-fun e!1811850 () Bool)

(assert (=> bs!520421 (=> (not res!1188385) (not e!1811850))))

(assert (=> bs!520421 (= res!1188385 (matchR!3711 r!23423 lt!1014572))))

(assert (=> bs!520421 (= (dynLambda!14240 lambda!105211 lt!1014572) e!1811850)))

(declare-fun b!2862120 () Bool)

(assert (=> b!2862120 (= e!1811850 (isPrefix!2685 prefix!1470 lt!1014572))))

(assert (= (and bs!520421 res!1188385) b!2862120))

(assert (=> bs!520421 m!3281341))

(assert (=> b!2862120 m!3281347))

(assert (=> d!827249 d!827289))

(declare-fun b_lambda!85755 () Bool)

(assert (= b_lambda!85751 (or b!2861836 b_lambda!85755)))

(declare-fun bs!520422 () Bool)

(declare-fun d!827291 () Bool)

(assert (= bs!520422 (and d!827291 b!2861836)))

(declare-fun res!1188386 () Bool)

(declare-fun e!1811851 () Bool)

(assert (=> bs!520422 (=> (not res!1188386) (not e!1811851))))

(assert (=> bs!520422 (= res!1188386 (matchR!3711 lt!1014571 lt!1014597))))

(assert (=> bs!520422 (= (dynLambda!14240 lambda!105210 lt!1014597) e!1811851)))

(declare-fun b!2862121 () Bool)

(assert (=> b!2862121 (= e!1811851 (isPrefix!2685 (t!233247 prefix!1470) lt!1014597))))

(assert (= (and bs!520422 res!1188386) b!2862121))

(declare-fun m!3281503 () Bool)

(assert (=> bs!520422 m!3281503))

(declare-fun m!3281505 () Bool)

(assert (=> b!2862121 m!3281505))

(assert (=> d!827275 d!827291))

(check-sat (not b!2862121) (not b_lambda!85753) (not d!827277) (not b!2861962) (not d!827251) (not d!827273) (not d!827283) (not b!2861870) (not bm!184679) (not d!827267) (not bs!520422) (not b!2862112) (not b!2861904) (not bm!184702) (not b!2862100) (not b!2861872) (not b!2861928) (not b!2862111) (not b!2862087) (not b!2862070) (not b!2862116) (not d!827281) (not b!2861880) (not b!2861902) (not b!2861878) (not b_lambda!85755) (not b!2862058) (not b!2862109) (not b!2862105) tp_is_empty!14967 (not bm!184680) (not b!2862104) (not d!827275) (not bm!184662) (not b!2862073) (not d!827249) (not b!2862117) (not b!2861898) (not b!2861896) (not bm!184700) (not b!2862101) (not b!2862072) (not b!2861876) (not bm!184708) (not b!2862113) (not b!2862103) (not b!2861897) (not b!2861927) (not b!2861903) (not b!2862078) (not b!2861873) (not b!2862115) (not b!2862099) (not b!2862107) (not b!2862080) (not d!827247) (not b!2862076) (not b!2862120) (not b!2862108) (not bs!520421))
(check-sat)
