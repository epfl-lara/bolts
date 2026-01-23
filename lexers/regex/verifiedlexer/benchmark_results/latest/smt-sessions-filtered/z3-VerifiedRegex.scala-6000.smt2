; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293952 () Bool)

(assert start!293952)

(declare-fun b!3097016 () Bool)

(assert (=> b!3097016 true))

(assert (=> b!3097016 true))

(assert (=> b!3097016 true))

(declare-fun lambda!114684 () Int)

(declare-fun lambda!114683 () Int)

(assert (=> b!3097016 (not (= lambda!114684 lambda!114683))))

(assert (=> b!3097016 true))

(assert (=> b!3097016 true))

(assert (=> b!3097016 true))

(declare-fun b!3097005 () Bool)

(declare-fun res!1268676 () Bool)

(declare-fun e!1935746 () Bool)

(assert (=> b!3097005 (=> res!1268676 e!1935746)))

(declare-datatypes ((C!19288 0))(
  ( (C!19289 (val!11680 Int)) )
))
(declare-datatypes ((Regex!9551 0))(
  ( (ElementMatch!9551 (c!517195 C!19288)) (Concat!14872 (regOne!19614 Regex!9551) (regTwo!19614 Regex!9551)) (EmptyExpr!9551) (Star!9551 (reg!9880 Regex!9551)) (EmptyLang!9551) (Union!9551 (regOne!19615 Regex!9551) (regTwo!19615 Regex!9551)) )
))
(declare-fun lt!1054966 () Regex!9551)

(declare-fun isEmptyExpr!608 (Regex!9551) Bool)

(assert (=> b!3097005 (= res!1268676 (isEmptyExpr!608 lt!1054966))))

(declare-fun b!3097006 () Bool)

(declare-fun e!1935749 () Bool)

(declare-fun r!17423 () Regex!9551)

(declare-fun validRegex!4284 (Regex!9551) Bool)

(assert (=> b!3097006 (= e!1935749 (validRegex!4284 (regTwo!19614 r!17423)))))

(declare-fun b!3097007 () Bool)

(declare-fun e!1935753 () Bool)

(assert (=> b!3097007 (= e!1935746 e!1935753)))

(declare-fun res!1268674 () Bool)

(assert (=> b!3097007 (=> res!1268674 e!1935753)))

(declare-fun lt!1054969 () Regex!9551)

(declare-datatypes ((List!35416 0))(
  ( (Nil!35292) (Cons!35292 (h!40712 C!19288) (t!234481 List!35416)) )
))
(declare-fun s!11993 () List!35416)

(declare-fun matchR!4433 (Regex!9551 List!35416) Bool)

(assert (=> b!3097007 (= res!1268674 (not (matchR!4433 lt!1054969 s!11993)))))

(declare-fun lt!1054973 () Regex!9551)

(assert (=> b!3097007 (= lt!1054969 (Concat!14872 lt!1054973 lt!1054966))))

(declare-fun b!3097008 () Bool)

(declare-fun e!1935748 () Bool)

(declare-fun tp!974172 () Bool)

(declare-fun tp!974173 () Bool)

(assert (=> b!3097008 (= e!1935748 (and tp!974172 tp!974173))))

(declare-fun b!3097009 () Bool)

(declare-fun tp_is_empty!16665 () Bool)

(assert (=> b!3097009 (= e!1935748 tp_is_empty!16665)))

(declare-fun b!3097010 () Bool)

(declare-fun tp!974171 () Bool)

(assert (=> b!3097010 (= e!1935748 tp!974171)))

(declare-fun b!3097011 () Bool)

(declare-fun res!1268675 () Bool)

(assert (=> b!3097011 (=> res!1268675 e!1935746)))

(declare-fun isEmptyLang!602 (Regex!9551) Bool)

(assert (=> b!3097011 (= res!1268675 (isEmptyLang!602 lt!1054966))))

(declare-fun b!3097012 () Bool)

(declare-fun e!1935747 () Bool)

(assert (=> b!3097012 (= e!1935747 e!1935746)))

(declare-fun res!1268679 () Bool)

(assert (=> b!3097012 (=> res!1268679 e!1935746)))

(assert (=> b!3097012 (= res!1268679 (isEmptyLang!602 lt!1054973))))

(declare-fun simplify!506 (Regex!9551) Regex!9551)

(assert (=> b!3097012 (= lt!1054966 (simplify!506 (regTwo!19614 r!17423)))))

(assert (=> b!3097012 (= lt!1054973 (simplify!506 (regOne!19614 r!17423)))))

(declare-fun b!3097013 () Bool)

(declare-fun tp!974170 () Bool)

(declare-fun tp!974169 () Bool)

(assert (=> b!3097013 (= e!1935748 (and tp!974170 tp!974169))))

(declare-fun b!3097014 () Bool)

(declare-fun res!1268671 () Bool)

(assert (=> b!3097014 (=> res!1268671 e!1935747)))

(declare-fun isEmpty!19636 (List!35416) Bool)

(assert (=> b!3097014 (= res!1268671 (isEmpty!19636 s!11993))))

(declare-fun e!1935751 () Bool)

(assert (=> b!3097016 (= e!1935753 e!1935751)))

(declare-fun res!1268678 () Bool)

(assert (=> b!3097016 (=> res!1268678 e!1935751)))

(declare-fun lt!1054965 () Bool)

(assert (=> b!3097016 (= res!1268678 (not lt!1054965))))

(declare-fun Exists!1814 (Int) Bool)

(assert (=> b!3097016 (= (Exists!1814 lambda!114683) (Exists!1814 lambda!114684))))

(declare-datatypes ((Unit!49541 0))(
  ( (Unit!49542) )
))
(declare-fun lt!1054963 () Unit!49541)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!568 (Regex!9551 Regex!9551 List!35416) Unit!49541)

(assert (=> b!3097016 (= lt!1054963 (lemmaExistCutMatchRandMatchRSpecEquivalent!568 lt!1054973 lt!1054966 s!11993))))

(assert (=> b!3097016 (= lt!1054965 (Exists!1814 lambda!114683))))

(declare-datatypes ((tuple2!34212 0))(
  ( (tuple2!34213 (_1!20238 List!35416) (_2!20238 List!35416)) )
))
(declare-datatypes ((Option!6838 0))(
  ( (None!6837) (Some!6837 (v!34971 tuple2!34212)) )
))
(declare-fun lt!1054972 () Option!6838)

(declare-fun isDefined!5389 (Option!6838) Bool)

(assert (=> b!3097016 (= lt!1054965 (isDefined!5389 lt!1054972))))

(declare-fun findConcatSeparation!1232 (Regex!9551 Regex!9551 List!35416 List!35416 List!35416) Option!6838)

(assert (=> b!3097016 (= lt!1054972 (findConcatSeparation!1232 lt!1054973 lt!1054966 Nil!35292 s!11993 s!11993))))

(declare-fun lt!1054974 () Unit!49541)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1002 (Regex!9551 Regex!9551 List!35416) Unit!49541)

(assert (=> b!3097016 (= lt!1054974 (lemmaFindConcatSeparationEquivalentToExists!1002 lt!1054973 lt!1054966 s!11993))))

(declare-fun matchRSpec!1688 (Regex!9551 List!35416) Bool)

(assert (=> b!3097016 (matchRSpec!1688 lt!1054969 s!11993)))

(declare-fun lt!1054968 () Unit!49541)

(declare-fun mainMatchTheorem!1688 (Regex!9551 List!35416) Unit!49541)

(assert (=> b!3097016 (= lt!1054968 (mainMatchTheorem!1688 lt!1054969 s!11993))))

(declare-fun b!3097017 () Bool)

(declare-fun res!1268677 () Bool)

(assert (=> b!3097017 (=> res!1268677 e!1935746)))

(assert (=> b!3097017 (= res!1268677 (isEmptyExpr!608 lt!1054973))))

(declare-fun b!3097018 () Bool)

(assert (=> b!3097018 (= e!1935751 e!1935749)))

(declare-fun res!1268673 () Bool)

(assert (=> b!3097018 (=> (not res!1268673) (not e!1935749))))

(assert (=> b!3097018 (= res!1268673 (validRegex!4284 (regOne!19614 r!17423)))))

(declare-fun lt!1054971 () tuple2!34212)

(assert (=> b!3097018 (= (matchR!4433 (regTwo!19614 r!17423) (_2!20238 lt!1054971)) (matchR!4433 lt!1054966 (_2!20238 lt!1054971)))))

(declare-fun lt!1054970 () Unit!49541)

(declare-fun lemmaSimplifySound!320 (Regex!9551 List!35416) Unit!49541)

(assert (=> b!3097018 (= lt!1054970 (lemmaSimplifySound!320 (regTwo!19614 r!17423) (_2!20238 lt!1054971)))))

(assert (=> b!3097018 (= (matchR!4433 (regOne!19614 r!17423) (_1!20238 lt!1054971)) (matchR!4433 lt!1054973 (_1!20238 lt!1054971)))))

(declare-fun lt!1054962 () Unit!49541)

(assert (=> b!3097018 (= lt!1054962 (lemmaSimplifySound!320 (regOne!19614 r!17423) (_1!20238 lt!1054971)))))

(declare-fun get!11079 (Option!6838) tuple2!34212)

(assert (=> b!3097018 (= lt!1054971 (get!11079 lt!1054972))))

(declare-fun b!3097019 () Bool)

(declare-fun e!1935752 () Bool)

(declare-fun tp!974168 () Bool)

(assert (=> b!3097019 (= e!1935752 (and tp_is_empty!16665 tp!974168))))

(declare-fun b!3097015 () Bool)

(declare-fun e!1935750 () Bool)

(assert (=> b!3097015 (= e!1935750 (not e!1935747))))

(declare-fun res!1268680 () Bool)

(assert (=> b!3097015 (=> res!1268680 e!1935747)))

(declare-fun lt!1054964 () Bool)

(get-info :version)

(assert (=> b!3097015 (= res!1268680 (or lt!1054964 (not ((_ is Concat!14872) r!17423))))))

(assert (=> b!3097015 (= lt!1054964 (matchRSpec!1688 r!17423 s!11993))))

(assert (=> b!3097015 (= lt!1054964 (matchR!4433 r!17423 s!11993))))

(declare-fun lt!1054967 () Unit!49541)

(assert (=> b!3097015 (= lt!1054967 (mainMatchTheorem!1688 r!17423 s!11993))))

(declare-fun res!1268672 () Bool)

(assert (=> start!293952 (=> (not res!1268672) (not e!1935750))))

(assert (=> start!293952 (= res!1268672 (validRegex!4284 r!17423))))

(assert (=> start!293952 e!1935750))

(assert (=> start!293952 e!1935748))

(assert (=> start!293952 e!1935752))

(assert (= (and start!293952 res!1268672) b!3097015))

(assert (= (and b!3097015 (not res!1268680)) b!3097014))

(assert (= (and b!3097014 (not res!1268671)) b!3097012))

(assert (= (and b!3097012 (not res!1268679)) b!3097011))

(assert (= (and b!3097011 (not res!1268675)) b!3097017))

(assert (= (and b!3097017 (not res!1268677)) b!3097005))

(assert (= (and b!3097005 (not res!1268676)) b!3097007))

(assert (= (and b!3097007 (not res!1268674)) b!3097016))

(assert (= (and b!3097016 (not res!1268678)) b!3097018))

(assert (= (and b!3097018 res!1268673) b!3097006))

(assert (= (and start!293952 ((_ is ElementMatch!9551) r!17423)) b!3097009))

(assert (= (and start!293952 ((_ is Concat!14872) r!17423)) b!3097013))

(assert (= (and start!293952 ((_ is Star!9551) r!17423)) b!3097010))

(assert (= (and start!293952 ((_ is Union!9551) r!17423)) b!3097008))

(assert (= (and start!293952 ((_ is Cons!35292) s!11993)) b!3097019))

(declare-fun m!3399011 () Bool)

(assert (=> b!3097007 m!3399011))

(declare-fun m!3399013 () Bool)

(assert (=> b!3097006 m!3399013))

(declare-fun m!3399015 () Bool)

(assert (=> start!293952 m!3399015))

(declare-fun m!3399017 () Bool)

(assert (=> b!3097016 m!3399017))

(declare-fun m!3399019 () Bool)

(assert (=> b!3097016 m!3399019))

(declare-fun m!3399021 () Bool)

(assert (=> b!3097016 m!3399021))

(declare-fun m!3399023 () Bool)

(assert (=> b!3097016 m!3399023))

(declare-fun m!3399025 () Bool)

(assert (=> b!3097016 m!3399025))

(assert (=> b!3097016 m!3399023))

(declare-fun m!3399027 () Bool)

(assert (=> b!3097016 m!3399027))

(declare-fun m!3399029 () Bool)

(assert (=> b!3097016 m!3399029))

(declare-fun m!3399031 () Bool)

(assert (=> b!3097016 m!3399031))

(declare-fun m!3399033 () Bool)

(assert (=> b!3097015 m!3399033))

(declare-fun m!3399035 () Bool)

(assert (=> b!3097015 m!3399035))

(declare-fun m!3399037 () Bool)

(assert (=> b!3097015 m!3399037))

(declare-fun m!3399039 () Bool)

(assert (=> b!3097014 m!3399039))

(declare-fun m!3399041 () Bool)

(assert (=> b!3097018 m!3399041))

(declare-fun m!3399043 () Bool)

(assert (=> b!3097018 m!3399043))

(declare-fun m!3399045 () Bool)

(assert (=> b!3097018 m!3399045))

(declare-fun m!3399047 () Bool)

(assert (=> b!3097018 m!3399047))

(declare-fun m!3399049 () Bool)

(assert (=> b!3097018 m!3399049))

(declare-fun m!3399051 () Bool)

(assert (=> b!3097018 m!3399051))

(declare-fun m!3399053 () Bool)

(assert (=> b!3097018 m!3399053))

(declare-fun m!3399055 () Bool)

(assert (=> b!3097018 m!3399055))

(declare-fun m!3399057 () Bool)

(assert (=> b!3097005 m!3399057))

(declare-fun m!3399059 () Bool)

(assert (=> b!3097012 m!3399059))

(declare-fun m!3399061 () Bool)

(assert (=> b!3097012 m!3399061))

(declare-fun m!3399063 () Bool)

(assert (=> b!3097012 m!3399063))

(declare-fun m!3399065 () Bool)

(assert (=> b!3097011 m!3399065))

(declare-fun m!3399067 () Bool)

(assert (=> b!3097017 m!3399067))

(check-sat (not b!3097008) (not b!3097006) (not b!3097015) (not b!3097017) (not b!3097010) (not b!3097018) (not b!3097007) tp_is_empty!16665 (not b!3097013) (not b!3097005) (not b!3097014) (not b!3097016) (not b!3097012) (not b!3097019) (not b!3097011) (not start!293952))
(check-sat)
(get-model)

(declare-fun bs!535438 () Bool)

(declare-fun b!3097307 () Bool)

(assert (= bs!535438 (and b!3097307 b!3097016)))

(declare-fun lambda!114689 () Int)

(assert (=> bs!535438 (not (= lambda!114689 lambda!114683))))

(assert (=> bs!535438 (not (= lambda!114689 lambda!114684))))

(assert (=> b!3097307 true))

(assert (=> b!3097307 true))

(declare-fun bs!535439 () Bool)

(declare-fun b!3097303 () Bool)

(assert (= bs!535439 (and b!3097303 b!3097016)))

(declare-fun lambda!114690 () Int)

(assert (=> bs!535439 (not (= lambda!114690 lambda!114683))))

(assert (=> bs!535439 (= (and (= (regOne!19614 r!17423) lt!1054973) (= (regTwo!19614 r!17423) lt!1054966)) (= lambda!114690 lambda!114684))))

(declare-fun bs!535440 () Bool)

(assert (= bs!535440 (and b!3097303 b!3097307)))

(assert (=> bs!535440 (not (= lambda!114690 lambda!114689))))

(assert (=> b!3097303 true))

(assert (=> b!3097303 true))

(declare-fun bm!218076 () Bool)

(declare-fun call!218081 () Bool)

(declare-fun c!517279 () Bool)

(assert (=> bm!218076 (= call!218081 (Exists!1814 (ite c!517279 lambda!114689 lambda!114690)))))

(declare-fun b!3097299 () Bool)

(declare-fun e!1935918 () Bool)

(declare-fun e!1935912 () Bool)

(assert (=> b!3097299 (= e!1935918 e!1935912)))

(declare-fun res!1268792 () Bool)

(assert (=> b!3097299 (= res!1268792 (matchRSpec!1688 (regOne!19615 r!17423) s!11993))))

(assert (=> b!3097299 (=> res!1268792 e!1935912)))

(declare-fun b!3097300 () Bool)

(declare-fun e!1935914 () Bool)

(declare-fun e!1935917 () Bool)

(assert (=> b!3097300 (= e!1935914 e!1935917)))

(declare-fun res!1268791 () Bool)

(assert (=> b!3097300 (= res!1268791 (not ((_ is EmptyLang!9551) r!17423)))))

(assert (=> b!3097300 (=> (not res!1268791) (not e!1935917))))

(declare-fun b!3097301 () Bool)

(assert (=> b!3097301 (= e!1935912 (matchRSpec!1688 (regTwo!19615 r!17423) s!11993))))

(declare-fun d!860527 () Bool)

(declare-fun c!517281 () Bool)

(assert (=> d!860527 (= c!517281 ((_ is EmptyExpr!9551) r!17423))))

(assert (=> d!860527 (= (matchRSpec!1688 r!17423 s!11993) e!1935914)))

(declare-fun b!3097302 () Bool)

(declare-fun res!1268790 () Bool)

(declare-fun e!1935916 () Bool)

(assert (=> b!3097302 (=> res!1268790 e!1935916)))

(declare-fun call!218082 () Bool)

(assert (=> b!3097302 (= res!1268790 call!218082)))

(declare-fun e!1935915 () Bool)

(assert (=> b!3097302 (= e!1935915 e!1935916)))

(assert (=> b!3097303 (= e!1935915 call!218081)))

(declare-fun b!3097304 () Bool)

(declare-fun c!517282 () Bool)

(assert (=> b!3097304 (= c!517282 ((_ is Union!9551) r!17423))))

(declare-fun e!1935913 () Bool)

(assert (=> b!3097304 (= e!1935913 e!1935918)))

(declare-fun b!3097305 () Bool)

(declare-fun c!517280 () Bool)

(assert (=> b!3097305 (= c!517280 ((_ is ElementMatch!9551) r!17423))))

(assert (=> b!3097305 (= e!1935917 e!1935913)))

(declare-fun b!3097306 () Bool)

(assert (=> b!3097306 (= e!1935913 (= s!11993 (Cons!35292 (c!517195 r!17423) Nil!35292)))))

(assert (=> b!3097307 (= e!1935916 call!218081)))

(declare-fun b!3097308 () Bool)

(assert (=> b!3097308 (= e!1935914 call!218082)))

(declare-fun b!3097309 () Bool)

(assert (=> b!3097309 (= e!1935918 e!1935915)))

(assert (=> b!3097309 (= c!517279 ((_ is Star!9551) r!17423))))

(declare-fun bm!218077 () Bool)

(assert (=> bm!218077 (= call!218082 (isEmpty!19636 s!11993))))

(assert (= (and d!860527 c!517281) b!3097308))

(assert (= (and d!860527 (not c!517281)) b!3097300))

(assert (= (and b!3097300 res!1268791) b!3097305))

(assert (= (and b!3097305 c!517280) b!3097306))

(assert (= (and b!3097305 (not c!517280)) b!3097304))

(assert (= (and b!3097304 c!517282) b!3097299))

(assert (= (and b!3097304 (not c!517282)) b!3097309))

(assert (= (and b!3097299 (not res!1268792)) b!3097301))

(assert (= (and b!3097309 c!517279) b!3097302))

(assert (= (and b!3097309 (not c!517279)) b!3097303))

(assert (= (and b!3097302 (not res!1268790)) b!3097307))

(assert (= (or b!3097307 b!3097303) bm!218076))

(assert (= (or b!3097308 b!3097302) bm!218077))

(declare-fun m!3399185 () Bool)

(assert (=> bm!218076 m!3399185))

(declare-fun m!3399187 () Bool)

(assert (=> b!3097299 m!3399187))

(declare-fun m!3399189 () Bool)

(assert (=> b!3097301 m!3399189))

(assert (=> bm!218077 m!3399039))

(assert (=> b!3097015 d!860527))

(declare-fun d!860563 () Bool)

(declare-fun e!1935958 () Bool)

(assert (=> d!860563 e!1935958))

(declare-fun c!517297 () Bool)

(assert (=> d!860563 (= c!517297 ((_ is EmptyExpr!9551) r!17423))))

(declare-fun lt!1055027 () Bool)

(declare-fun e!1935956 () Bool)

(assert (=> d!860563 (= lt!1055027 e!1935956)))

(declare-fun c!517295 () Bool)

(assert (=> d!860563 (= c!517295 (isEmpty!19636 s!11993))))

(assert (=> d!860563 (validRegex!4284 r!17423)))

(assert (=> d!860563 (= (matchR!4433 r!17423 s!11993) lt!1055027)))

(declare-fun b!3097377 () Bool)

(declare-fun res!1268839 () Bool)

(declare-fun e!1935959 () Bool)

(assert (=> b!3097377 (=> (not res!1268839) (not e!1935959))))

(declare-fun tail!5077 (List!35416) List!35416)

(assert (=> b!3097377 (= res!1268839 (isEmpty!19636 (tail!5077 s!11993)))))

(declare-fun b!3097378 () Bool)

(declare-fun res!1268837 () Bool)

(assert (=> b!3097378 (=> (not res!1268837) (not e!1935959))))

(declare-fun call!218085 () Bool)

(assert (=> b!3097378 (= res!1268837 (not call!218085))))

(declare-fun b!3097379 () Bool)

(assert (=> b!3097379 (= e!1935958 (= lt!1055027 call!218085))))

(declare-fun b!3097380 () Bool)

(declare-fun nullable!3197 (Regex!9551) Bool)

(assert (=> b!3097380 (= e!1935956 (nullable!3197 r!17423))))

(declare-fun b!3097381 () Bool)

(declare-fun res!1268843 () Bool)

(declare-fun e!1935954 () Bool)

(assert (=> b!3097381 (=> res!1268843 e!1935954)))

(assert (=> b!3097381 (= res!1268843 (not ((_ is ElementMatch!9551) r!17423)))))

(declare-fun e!1935957 () Bool)

(assert (=> b!3097381 (= e!1935957 e!1935954)))

(declare-fun b!3097382 () Bool)

(declare-fun e!1935960 () Bool)

(declare-fun e!1935955 () Bool)

(assert (=> b!3097382 (= e!1935960 e!1935955)))

(declare-fun res!1268841 () Bool)

(assert (=> b!3097382 (=> res!1268841 e!1935955)))

(assert (=> b!3097382 (= res!1268841 call!218085)))

(declare-fun b!3097383 () Bool)

(declare-fun derivativeStep!2792 (Regex!9551 C!19288) Regex!9551)

(declare-fun head!6851 (List!35416) C!19288)

(assert (=> b!3097383 (= e!1935956 (matchR!4433 (derivativeStep!2792 r!17423 (head!6851 s!11993)) (tail!5077 s!11993)))))

(declare-fun b!3097384 () Bool)

(assert (=> b!3097384 (= e!1935957 (not lt!1055027))))

(declare-fun b!3097385 () Bool)

(assert (=> b!3097385 (= e!1935955 (not (= (head!6851 s!11993) (c!517195 r!17423))))))

(declare-fun b!3097386 () Bool)

(assert (=> b!3097386 (= e!1935959 (= (head!6851 s!11993) (c!517195 r!17423)))))

(declare-fun b!3097387 () Bool)

(declare-fun res!1268836 () Bool)

(assert (=> b!3097387 (=> res!1268836 e!1935955)))

(assert (=> b!3097387 (= res!1268836 (not (isEmpty!19636 (tail!5077 s!11993))))))

(declare-fun b!3097388 () Bool)

(assert (=> b!3097388 (= e!1935958 e!1935957)))

(declare-fun c!517296 () Bool)

(assert (=> b!3097388 (= c!517296 ((_ is EmptyLang!9551) r!17423))))

(declare-fun b!3097389 () Bool)

(assert (=> b!3097389 (= e!1935954 e!1935960)))

(declare-fun res!1268838 () Bool)

(assert (=> b!3097389 (=> (not res!1268838) (not e!1935960))))

(assert (=> b!3097389 (= res!1268838 (not lt!1055027))))

(declare-fun bm!218080 () Bool)

(assert (=> bm!218080 (= call!218085 (isEmpty!19636 s!11993))))

(declare-fun b!3097390 () Bool)

(declare-fun res!1268840 () Bool)

(assert (=> b!3097390 (=> res!1268840 e!1935954)))

(assert (=> b!3097390 (= res!1268840 e!1935959)))

(declare-fun res!1268842 () Bool)

(assert (=> b!3097390 (=> (not res!1268842) (not e!1935959))))

(assert (=> b!3097390 (= res!1268842 lt!1055027)))

(assert (= (and d!860563 c!517295) b!3097380))

(assert (= (and d!860563 (not c!517295)) b!3097383))

(assert (= (and d!860563 c!517297) b!3097379))

(assert (= (and d!860563 (not c!517297)) b!3097388))

(assert (= (and b!3097388 c!517296) b!3097384))

(assert (= (and b!3097388 (not c!517296)) b!3097381))

(assert (= (and b!3097381 (not res!1268843)) b!3097390))

(assert (= (and b!3097390 res!1268842) b!3097378))

(assert (= (and b!3097378 res!1268837) b!3097377))

(assert (= (and b!3097377 res!1268839) b!3097386))

(assert (= (and b!3097390 (not res!1268840)) b!3097389))

(assert (= (and b!3097389 res!1268838) b!3097382))

(assert (= (and b!3097382 (not res!1268841)) b!3097387))

(assert (= (and b!3097387 (not res!1268836)) b!3097385))

(assert (= (or b!3097379 b!3097378 b!3097382) bm!218080))

(declare-fun m!3399227 () Bool)

(assert (=> b!3097380 m!3399227))

(declare-fun m!3399229 () Bool)

(assert (=> b!3097386 m!3399229))

(assert (=> b!3097385 m!3399229))

(assert (=> b!3097383 m!3399229))

(assert (=> b!3097383 m!3399229))

(declare-fun m!3399231 () Bool)

(assert (=> b!3097383 m!3399231))

(declare-fun m!3399233 () Bool)

(assert (=> b!3097383 m!3399233))

(assert (=> b!3097383 m!3399231))

(assert (=> b!3097383 m!3399233))

(declare-fun m!3399235 () Bool)

(assert (=> b!3097383 m!3399235))

(assert (=> b!3097387 m!3399233))

(assert (=> b!3097387 m!3399233))

(declare-fun m!3399237 () Bool)

(assert (=> b!3097387 m!3399237))

(assert (=> d!860563 m!3399039))

(assert (=> d!860563 m!3399015))

(assert (=> b!3097377 m!3399233))

(assert (=> b!3097377 m!3399233))

(assert (=> b!3097377 m!3399237))

(assert (=> bm!218080 m!3399039))

(assert (=> b!3097015 d!860563))

(declare-fun d!860573 () Bool)

(assert (=> d!860573 (= (matchR!4433 r!17423 s!11993) (matchRSpec!1688 r!17423 s!11993))))

(declare-fun lt!1055030 () Unit!49541)

(declare-fun choose!18309 (Regex!9551 List!35416) Unit!49541)

(assert (=> d!860573 (= lt!1055030 (choose!18309 r!17423 s!11993))))

(assert (=> d!860573 (validRegex!4284 r!17423)))

(assert (=> d!860573 (= (mainMatchTheorem!1688 r!17423 s!11993) lt!1055030)))

(declare-fun bs!535447 () Bool)

(assert (= bs!535447 d!860573))

(assert (=> bs!535447 m!3399035))

(assert (=> bs!535447 m!3399033))

(declare-fun m!3399239 () Bool)

(assert (=> bs!535447 m!3399239))

(assert (=> bs!535447 m!3399015))

(assert (=> b!3097015 d!860573))

(declare-fun b!3097477 () Bool)

(declare-fun res!1268888 () Bool)

(declare-fun e!1936018 () Bool)

(assert (=> b!3097477 (=> (not res!1268888) (not e!1936018))))

(declare-fun call!218101 () Bool)

(assert (=> b!3097477 (= res!1268888 call!218101)))

(declare-fun e!1936016 () Bool)

(assert (=> b!3097477 (= e!1936016 e!1936018)))

(declare-fun b!3097478 () Bool)

(declare-fun e!1936015 () Bool)

(declare-fun e!1936019 () Bool)

(assert (=> b!3097478 (= e!1936015 e!1936019)))

(declare-fun res!1268885 () Bool)

(assert (=> b!3097478 (=> (not res!1268885) (not e!1936019))))

(declare-fun call!218103 () Bool)

(assert (=> b!3097478 (= res!1268885 call!218103)))

(declare-fun b!3097479 () Bool)

(assert (=> b!3097479 (= e!1936019 call!218101)))

(declare-fun bm!218096 () Bool)

(declare-fun c!517322 () Bool)

(assert (=> bm!218096 (= call!218103 (validRegex!4284 (ite c!517322 (regTwo!19615 (regTwo!19614 r!17423)) (regOne!19614 (regTwo!19614 r!17423)))))))

(declare-fun bm!218097 () Bool)

(declare-fun call!218102 () Bool)

(assert (=> bm!218097 (= call!218101 call!218102)))

(declare-fun b!3097480 () Bool)

(declare-fun e!1936020 () Bool)

(assert (=> b!3097480 (= e!1936020 e!1936016)))

(assert (=> b!3097480 (= c!517322 ((_ is Union!9551) (regTwo!19614 r!17423)))))

(declare-fun b!3097481 () Bool)

(declare-fun e!1936017 () Bool)

(assert (=> b!3097481 (= e!1936017 e!1936020)))

(declare-fun c!517321 () Bool)

(assert (=> b!3097481 (= c!517321 ((_ is Star!9551) (regTwo!19614 r!17423)))))

(declare-fun b!3097482 () Bool)

(declare-fun e!1936014 () Bool)

(assert (=> b!3097482 (= e!1936014 call!218102)))

(declare-fun b!3097483 () Bool)

(assert (=> b!3097483 (= e!1936018 call!218103)))

(declare-fun b!3097484 () Bool)

(declare-fun res!1268887 () Bool)

(assert (=> b!3097484 (=> res!1268887 e!1936015)))

(assert (=> b!3097484 (= res!1268887 (not ((_ is Concat!14872) (regTwo!19614 r!17423))))))

(assert (=> b!3097484 (= e!1936016 e!1936015)))

(declare-fun b!3097485 () Bool)

(assert (=> b!3097485 (= e!1936020 e!1936014)))

(declare-fun res!1268884 () Bool)

(assert (=> b!3097485 (= res!1268884 (not (nullable!3197 (reg!9880 (regTwo!19614 r!17423)))))))

(assert (=> b!3097485 (=> (not res!1268884) (not e!1936014))))

(declare-fun d!860575 () Bool)

(declare-fun res!1268886 () Bool)

(assert (=> d!860575 (=> res!1268886 e!1936017)))

(assert (=> d!860575 (= res!1268886 ((_ is ElementMatch!9551) (regTwo!19614 r!17423)))))

(assert (=> d!860575 (= (validRegex!4284 (regTwo!19614 r!17423)) e!1936017)))

(declare-fun bm!218098 () Bool)

(assert (=> bm!218098 (= call!218102 (validRegex!4284 (ite c!517321 (reg!9880 (regTwo!19614 r!17423)) (ite c!517322 (regOne!19615 (regTwo!19614 r!17423)) (regTwo!19614 (regTwo!19614 r!17423))))))))

(assert (= (and d!860575 (not res!1268886)) b!3097481))

(assert (= (and b!3097481 c!517321) b!3097485))

(assert (= (and b!3097481 (not c!517321)) b!3097480))

(assert (= (and b!3097485 res!1268884) b!3097482))

(assert (= (and b!3097480 c!517322) b!3097477))

(assert (= (and b!3097480 (not c!517322)) b!3097484))

(assert (= (and b!3097477 res!1268888) b!3097483))

(assert (= (and b!3097484 (not res!1268887)) b!3097478))

(assert (= (and b!3097478 res!1268885) b!3097479))

(assert (= (or b!3097477 b!3097479) bm!218097))

(assert (= (or b!3097483 b!3097478) bm!218096))

(assert (= (or b!3097482 bm!218097) bm!218098))

(declare-fun m!3399267 () Bool)

(assert (=> bm!218096 m!3399267))

(declare-fun m!3399269 () Bool)

(assert (=> b!3097485 m!3399269))

(declare-fun m!3399271 () Bool)

(assert (=> bm!218098 m!3399271))

(assert (=> b!3097006 d!860575))

(declare-fun d!860589 () Bool)

(assert (=> d!860589 (= (isEmptyLang!602 lt!1054966) ((_ is EmptyLang!9551) lt!1054966))))

(assert (=> b!3097011 d!860589))

(declare-fun d!860591 () Bool)

(declare-fun choose!18310 (Int) Bool)

(assert (=> d!860591 (= (Exists!1814 lambda!114683) (choose!18310 lambda!114683))))

(declare-fun bs!535470 () Bool)

(assert (= bs!535470 d!860591))

(declare-fun m!3399273 () Bool)

(assert (=> bs!535470 m!3399273))

(assert (=> b!3097016 d!860591))

(declare-fun bs!535471 () Bool)

(declare-fun d!860593 () Bool)

(assert (= bs!535471 (and d!860593 b!3097016)))

(declare-fun lambda!114710 () Int)

(assert (=> bs!535471 (= lambda!114710 lambda!114683)))

(assert (=> bs!535471 (not (= lambda!114710 lambda!114684))))

(declare-fun bs!535472 () Bool)

(assert (= bs!535472 (and d!860593 b!3097307)))

(assert (=> bs!535472 (not (= lambda!114710 lambda!114689))))

(declare-fun bs!535473 () Bool)

(assert (= bs!535473 (and d!860593 b!3097303)))

(assert (=> bs!535473 (not (= lambda!114710 lambda!114690))))

(assert (=> d!860593 true))

(assert (=> d!860593 true))

(assert (=> d!860593 true))

(assert (=> d!860593 (= (isDefined!5389 (findConcatSeparation!1232 lt!1054973 lt!1054966 Nil!35292 s!11993 s!11993)) (Exists!1814 lambda!114710))))

(declare-fun lt!1055038 () Unit!49541)

(declare-fun choose!18311 (Regex!9551 Regex!9551 List!35416) Unit!49541)

(assert (=> d!860593 (= lt!1055038 (choose!18311 lt!1054973 lt!1054966 s!11993))))

(assert (=> d!860593 (validRegex!4284 lt!1054973)))

(assert (=> d!860593 (= (lemmaFindConcatSeparationEquivalentToExists!1002 lt!1054973 lt!1054966 s!11993) lt!1055038)))

(declare-fun bs!535474 () Bool)

(assert (= bs!535474 d!860593))

(declare-fun m!3399275 () Bool)

(assert (=> bs!535474 m!3399275))

(declare-fun m!3399277 () Bool)

(assert (=> bs!535474 m!3399277))

(assert (=> bs!535474 m!3399029))

(declare-fun m!3399279 () Bool)

(assert (=> bs!535474 m!3399279))

(assert (=> bs!535474 m!3399029))

(declare-fun m!3399281 () Bool)

(assert (=> bs!535474 m!3399281))

(assert (=> b!3097016 d!860593))

(declare-fun d!860595 () Bool)

(declare-fun e!1936043 () Bool)

(assert (=> d!860595 e!1936043))

(declare-fun res!1268906 () Bool)

(assert (=> d!860595 (=> res!1268906 e!1936043)))

(declare-fun e!1936044 () Bool)

(assert (=> d!860595 (= res!1268906 e!1936044)))

(declare-fun res!1268907 () Bool)

(assert (=> d!860595 (=> (not res!1268907) (not e!1936044))))

(declare-fun lt!1055046 () Option!6838)

(assert (=> d!860595 (= res!1268907 (isDefined!5389 lt!1055046))))

(declare-fun e!1936046 () Option!6838)

(assert (=> d!860595 (= lt!1055046 e!1936046)))

(declare-fun c!517327 () Bool)

(declare-fun e!1936045 () Bool)

(assert (=> d!860595 (= c!517327 e!1936045)))

(declare-fun res!1268903 () Bool)

(assert (=> d!860595 (=> (not res!1268903) (not e!1936045))))

(assert (=> d!860595 (= res!1268903 (matchR!4433 lt!1054973 Nil!35292))))

(assert (=> d!860595 (validRegex!4284 lt!1054973)))

(assert (=> d!860595 (= (findConcatSeparation!1232 lt!1054973 lt!1054966 Nil!35292 s!11993 s!11993) lt!1055046)))

(declare-fun b!3097543 () Bool)

(assert (=> b!3097543 (= e!1936046 (Some!6837 (tuple2!34213 Nil!35292 s!11993)))))

(declare-fun b!3097544 () Bool)

(declare-fun lt!1055047 () Unit!49541)

(declare-fun lt!1055045 () Unit!49541)

(assert (=> b!3097544 (= lt!1055047 lt!1055045)))

(declare-fun ++!8493 (List!35416 List!35416) List!35416)

(assert (=> b!3097544 (= (++!8493 (++!8493 Nil!35292 (Cons!35292 (h!40712 s!11993) Nil!35292)) (t!234481 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1088 (List!35416 C!19288 List!35416 List!35416) Unit!49541)

(assert (=> b!3097544 (= lt!1055045 (lemmaMoveElementToOtherListKeepsConcatEq!1088 Nil!35292 (h!40712 s!11993) (t!234481 s!11993) s!11993))))

(declare-fun e!1936047 () Option!6838)

(assert (=> b!3097544 (= e!1936047 (findConcatSeparation!1232 lt!1054973 lt!1054966 (++!8493 Nil!35292 (Cons!35292 (h!40712 s!11993) Nil!35292)) (t!234481 s!11993) s!11993))))

(declare-fun b!3097545 () Bool)

(assert (=> b!3097545 (= e!1936045 (matchR!4433 lt!1054966 s!11993))))

(declare-fun b!3097546 () Bool)

(declare-fun res!1268905 () Bool)

(assert (=> b!3097546 (=> (not res!1268905) (not e!1936044))))

(assert (=> b!3097546 (= res!1268905 (matchR!4433 lt!1054966 (_2!20238 (get!11079 lt!1055046))))))

(declare-fun b!3097547 () Bool)

(assert (=> b!3097547 (= e!1936044 (= (++!8493 (_1!20238 (get!11079 lt!1055046)) (_2!20238 (get!11079 lt!1055046))) s!11993))))

(declare-fun b!3097548 () Bool)

(assert (=> b!3097548 (= e!1936046 e!1936047)))

(declare-fun c!517328 () Bool)

(assert (=> b!3097548 (= c!517328 ((_ is Nil!35292) s!11993))))

(declare-fun b!3097549 () Bool)

(assert (=> b!3097549 (= e!1936047 None!6837)))

(declare-fun b!3097550 () Bool)

(assert (=> b!3097550 (= e!1936043 (not (isDefined!5389 lt!1055046)))))

(declare-fun b!3097551 () Bool)

(declare-fun res!1268904 () Bool)

(assert (=> b!3097551 (=> (not res!1268904) (not e!1936044))))

(assert (=> b!3097551 (= res!1268904 (matchR!4433 lt!1054973 (_1!20238 (get!11079 lt!1055046))))))

(assert (= (and d!860595 res!1268903) b!3097545))

(assert (= (and d!860595 c!517327) b!3097543))

(assert (= (and d!860595 (not c!517327)) b!3097548))

(assert (= (and b!3097548 c!517328) b!3097549))

(assert (= (and b!3097548 (not c!517328)) b!3097544))

(assert (= (and d!860595 res!1268907) b!3097551))

(assert (= (and b!3097551 res!1268904) b!3097546))

(assert (= (and b!3097546 res!1268905) b!3097547))

(assert (= (and d!860595 (not res!1268906)) b!3097550))

(declare-fun m!3399283 () Bool)

(assert (=> b!3097546 m!3399283))

(declare-fun m!3399285 () Bool)

(assert (=> b!3097546 m!3399285))

(assert (=> b!3097547 m!3399283))

(declare-fun m!3399287 () Bool)

(assert (=> b!3097547 m!3399287))

(assert (=> b!3097551 m!3399283))

(declare-fun m!3399289 () Bool)

(assert (=> b!3097551 m!3399289))

(declare-fun m!3399291 () Bool)

(assert (=> b!3097545 m!3399291))

(declare-fun m!3399293 () Bool)

(assert (=> d!860595 m!3399293))

(declare-fun m!3399295 () Bool)

(assert (=> d!860595 m!3399295))

(assert (=> d!860595 m!3399275))

(declare-fun m!3399297 () Bool)

(assert (=> b!3097544 m!3399297))

(assert (=> b!3097544 m!3399297))

(declare-fun m!3399299 () Bool)

(assert (=> b!3097544 m!3399299))

(declare-fun m!3399301 () Bool)

(assert (=> b!3097544 m!3399301))

(assert (=> b!3097544 m!3399297))

(declare-fun m!3399303 () Bool)

(assert (=> b!3097544 m!3399303))

(assert (=> b!3097550 m!3399293))

(assert (=> b!3097016 d!860595))

(declare-fun d!860597 () Bool)

(assert (=> d!860597 (= (matchR!4433 lt!1054969 s!11993) (matchRSpec!1688 lt!1054969 s!11993))))

(declare-fun lt!1055048 () Unit!49541)

(assert (=> d!860597 (= lt!1055048 (choose!18309 lt!1054969 s!11993))))

(assert (=> d!860597 (validRegex!4284 lt!1054969)))

(assert (=> d!860597 (= (mainMatchTheorem!1688 lt!1054969 s!11993) lt!1055048)))

(declare-fun bs!535475 () Bool)

(assert (= bs!535475 d!860597))

(assert (=> bs!535475 m!3399011))

(assert (=> bs!535475 m!3399027))

(declare-fun m!3399305 () Bool)

(assert (=> bs!535475 m!3399305))

(declare-fun m!3399307 () Bool)

(assert (=> bs!535475 m!3399307))

(assert (=> b!3097016 d!860597))

(declare-fun d!860599 () Bool)

(declare-fun isEmpty!19637 (Option!6838) Bool)

(assert (=> d!860599 (= (isDefined!5389 lt!1054972) (not (isEmpty!19637 lt!1054972)))))

(declare-fun bs!535476 () Bool)

(assert (= bs!535476 d!860599))

(declare-fun m!3399309 () Bool)

(assert (=> bs!535476 m!3399309))

(assert (=> b!3097016 d!860599))

(declare-fun d!860601 () Bool)

(assert (=> d!860601 (= (Exists!1814 lambda!114684) (choose!18310 lambda!114684))))

(declare-fun bs!535477 () Bool)

(assert (= bs!535477 d!860601))

(declare-fun m!3399311 () Bool)

(assert (=> bs!535477 m!3399311))

(assert (=> b!3097016 d!860601))

(declare-fun bs!535478 () Bool)

(declare-fun b!3097560 () Bool)

(assert (= bs!535478 (and b!3097560 b!3097307)))

(declare-fun lambda!114711 () Int)

(assert (=> bs!535478 (= (and (= (reg!9880 lt!1054969) (reg!9880 r!17423)) (= lt!1054969 r!17423)) (= lambda!114711 lambda!114689))))

(declare-fun bs!535479 () Bool)

(assert (= bs!535479 (and b!3097560 b!3097016)))

(assert (=> bs!535479 (not (= lambda!114711 lambda!114684))))

(assert (=> bs!535479 (not (= lambda!114711 lambda!114683))))

(declare-fun bs!535480 () Bool)

(assert (= bs!535480 (and b!3097560 b!3097303)))

(assert (=> bs!535480 (not (= lambda!114711 lambda!114690))))

(declare-fun bs!535481 () Bool)

(assert (= bs!535481 (and b!3097560 d!860593)))

(assert (=> bs!535481 (not (= lambda!114711 lambda!114710))))

(assert (=> b!3097560 true))

(assert (=> b!3097560 true))

(declare-fun bs!535482 () Bool)

(declare-fun b!3097556 () Bool)

(assert (= bs!535482 (and b!3097556 b!3097307)))

(declare-fun lambda!114712 () Int)

(assert (=> bs!535482 (not (= lambda!114712 lambda!114689))))

(declare-fun bs!535483 () Bool)

(assert (= bs!535483 (and b!3097556 b!3097016)))

(assert (=> bs!535483 (= (and (= (regOne!19614 lt!1054969) lt!1054973) (= (regTwo!19614 lt!1054969) lt!1054966)) (= lambda!114712 lambda!114684))))

(assert (=> bs!535483 (not (= lambda!114712 lambda!114683))))

(declare-fun bs!535484 () Bool)

(assert (= bs!535484 (and b!3097556 b!3097303)))

(assert (=> bs!535484 (= (and (= (regOne!19614 lt!1054969) (regOne!19614 r!17423)) (= (regTwo!19614 lt!1054969) (regTwo!19614 r!17423))) (= lambda!114712 lambda!114690))))

(declare-fun bs!535485 () Bool)

(assert (= bs!535485 (and b!3097556 d!860593)))

(assert (=> bs!535485 (not (= lambda!114712 lambda!114710))))

(declare-fun bs!535486 () Bool)

(assert (= bs!535486 (and b!3097556 b!3097560)))

(assert (=> bs!535486 (not (= lambda!114712 lambda!114711))))

(assert (=> b!3097556 true))

(assert (=> b!3097556 true))

(declare-fun bm!218099 () Bool)

(declare-fun call!218104 () Bool)

(declare-fun c!517329 () Bool)

(assert (=> bm!218099 (= call!218104 (Exists!1814 (ite c!517329 lambda!114711 lambda!114712)))))

(declare-fun b!3097552 () Bool)

(declare-fun e!1936054 () Bool)

(declare-fun e!1936048 () Bool)

(assert (=> b!3097552 (= e!1936054 e!1936048)))

(declare-fun res!1268910 () Bool)

(assert (=> b!3097552 (= res!1268910 (matchRSpec!1688 (regOne!19615 lt!1054969) s!11993))))

(assert (=> b!3097552 (=> res!1268910 e!1936048)))

(declare-fun b!3097553 () Bool)

(declare-fun e!1936050 () Bool)

(declare-fun e!1936053 () Bool)

(assert (=> b!3097553 (= e!1936050 e!1936053)))

(declare-fun res!1268909 () Bool)

(assert (=> b!3097553 (= res!1268909 (not ((_ is EmptyLang!9551) lt!1054969)))))

(assert (=> b!3097553 (=> (not res!1268909) (not e!1936053))))

(declare-fun b!3097554 () Bool)

(assert (=> b!3097554 (= e!1936048 (matchRSpec!1688 (regTwo!19615 lt!1054969) s!11993))))

(declare-fun d!860603 () Bool)

(declare-fun c!517331 () Bool)

(assert (=> d!860603 (= c!517331 ((_ is EmptyExpr!9551) lt!1054969))))

(assert (=> d!860603 (= (matchRSpec!1688 lt!1054969 s!11993) e!1936050)))

(declare-fun b!3097555 () Bool)

(declare-fun res!1268908 () Bool)

(declare-fun e!1936052 () Bool)

(assert (=> b!3097555 (=> res!1268908 e!1936052)))

(declare-fun call!218105 () Bool)

(assert (=> b!3097555 (= res!1268908 call!218105)))

(declare-fun e!1936051 () Bool)

(assert (=> b!3097555 (= e!1936051 e!1936052)))

(assert (=> b!3097556 (= e!1936051 call!218104)))

(declare-fun b!3097557 () Bool)

(declare-fun c!517332 () Bool)

(assert (=> b!3097557 (= c!517332 ((_ is Union!9551) lt!1054969))))

(declare-fun e!1936049 () Bool)

(assert (=> b!3097557 (= e!1936049 e!1936054)))

(declare-fun b!3097558 () Bool)

(declare-fun c!517330 () Bool)

(assert (=> b!3097558 (= c!517330 ((_ is ElementMatch!9551) lt!1054969))))

(assert (=> b!3097558 (= e!1936053 e!1936049)))

(declare-fun b!3097559 () Bool)

(assert (=> b!3097559 (= e!1936049 (= s!11993 (Cons!35292 (c!517195 lt!1054969) Nil!35292)))))

(assert (=> b!3097560 (= e!1936052 call!218104)))

(declare-fun b!3097561 () Bool)

(assert (=> b!3097561 (= e!1936050 call!218105)))

(declare-fun b!3097562 () Bool)

(assert (=> b!3097562 (= e!1936054 e!1936051)))

(assert (=> b!3097562 (= c!517329 ((_ is Star!9551) lt!1054969))))

(declare-fun bm!218100 () Bool)

(assert (=> bm!218100 (= call!218105 (isEmpty!19636 s!11993))))

(assert (= (and d!860603 c!517331) b!3097561))

(assert (= (and d!860603 (not c!517331)) b!3097553))

(assert (= (and b!3097553 res!1268909) b!3097558))

(assert (= (and b!3097558 c!517330) b!3097559))

(assert (= (and b!3097558 (not c!517330)) b!3097557))

(assert (= (and b!3097557 c!517332) b!3097552))

(assert (= (and b!3097557 (not c!517332)) b!3097562))

(assert (= (and b!3097552 (not res!1268910)) b!3097554))

(assert (= (and b!3097562 c!517329) b!3097555))

(assert (= (and b!3097562 (not c!517329)) b!3097556))

(assert (= (and b!3097555 (not res!1268908)) b!3097560))

(assert (= (or b!3097560 b!3097556) bm!218099))

(assert (= (or b!3097561 b!3097555) bm!218100))

(declare-fun m!3399313 () Bool)

(assert (=> bm!218099 m!3399313))

(declare-fun m!3399315 () Bool)

(assert (=> b!3097552 m!3399315))

(declare-fun m!3399317 () Bool)

(assert (=> b!3097554 m!3399317))

(assert (=> bm!218100 m!3399039))

(assert (=> b!3097016 d!860603))

(declare-fun bs!535487 () Bool)

(declare-fun d!860605 () Bool)

(assert (= bs!535487 (and d!860605 b!3097307)))

(declare-fun lambda!114717 () Int)

(assert (=> bs!535487 (not (= lambda!114717 lambda!114689))))

(declare-fun bs!535488 () Bool)

(assert (= bs!535488 (and d!860605 b!3097016)))

(assert (=> bs!535488 (not (= lambda!114717 lambda!114684))))

(declare-fun bs!535489 () Bool)

(assert (= bs!535489 (and d!860605 b!3097556)))

(assert (=> bs!535489 (not (= lambda!114717 lambda!114712))))

(assert (=> bs!535488 (= lambda!114717 lambda!114683)))

(declare-fun bs!535490 () Bool)

(assert (= bs!535490 (and d!860605 b!3097303)))

(assert (=> bs!535490 (not (= lambda!114717 lambda!114690))))

(declare-fun bs!535491 () Bool)

(assert (= bs!535491 (and d!860605 d!860593)))

(assert (=> bs!535491 (= lambda!114717 lambda!114710)))

(declare-fun bs!535492 () Bool)

(assert (= bs!535492 (and d!860605 b!3097560)))

(assert (=> bs!535492 (not (= lambda!114717 lambda!114711))))

(assert (=> d!860605 true))

(assert (=> d!860605 true))

(assert (=> d!860605 true))

(declare-fun lambda!114718 () Int)

(assert (=> bs!535487 (not (= lambda!114718 lambda!114689))))

(assert (=> bs!535488 (= lambda!114718 lambda!114684)))

(assert (=> bs!535489 (= (and (= lt!1054973 (regOne!19614 lt!1054969)) (= lt!1054966 (regTwo!19614 lt!1054969))) (= lambda!114718 lambda!114712))))

(assert (=> bs!535488 (not (= lambda!114718 lambda!114683))))

(assert (=> bs!535490 (= (and (= lt!1054973 (regOne!19614 r!17423)) (= lt!1054966 (regTwo!19614 r!17423))) (= lambda!114718 lambda!114690))))

(assert (=> bs!535491 (not (= lambda!114718 lambda!114710))))

(declare-fun bs!535493 () Bool)

(assert (= bs!535493 d!860605))

(assert (=> bs!535493 (not (= lambda!114718 lambda!114717))))

(assert (=> bs!535492 (not (= lambda!114718 lambda!114711))))

(assert (=> d!860605 true))

(assert (=> d!860605 true))

(assert (=> d!860605 true))

(assert (=> d!860605 (= (Exists!1814 lambda!114717) (Exists!1814 lambda!114718))))

(declare-fun lt!1055051 () Unit!49541)

(declare-fun choose!18316 (Regex!9551 Regex!9551 List!35416) Unit!49541)

(assert (=> d!860605 (= lt!1055051 (choose!18316 lt!1054973 lt!1054966 s!11993))))

(assert (=> d!860605 (validRegex!4284 lt!1054973)))

(assert (=> d!860605 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!568 lt!1054973 lt!1054966 s!11993) lt!1055051)))

(declare-fun m!3399319 () Bool)

(assert (=> bs!535493 m!3399319))

(declare-fun m!3399321 () Bool)

(assert (=> bs!535493 m!3399321))

(declare-fun m!3399323 () Bool)

(assert (=> bs!535493 m!3399323))

(assert (=> bs!535493 m!3399275))

(assert (=> b!3097016 d!860605))

(declare-fun d!860607 () Bool)

(assert (=> d!860607 (= (isEmptyExpr!608 lt!1054966) ((_ is EmptyExpr!9551) lt!1054966))))

(assert (=> b!3097005 d!860607))

(declare-fun b!3097571 () Bool)

(declare-fun res!1268923 () Bool)

(declare-fun e!1936063 () Bool)

(assert (=> b!3097571 (=> (not res!1268923) (not e!1936063))))

(declare-fun call!218106 () Bool)

(assert (=> b!3097571 (= res!1268923 call!218106)))

(declare-fun e!1936061 () Bool)

(assert (=> b!3097571 (= e!1936061 e!1936063)))

(declare-fun b!3097572 () Bool)

(declare-fun e!1936060 () Bool)

(declare-fun e!1936064 () Bool)

(assert (=> b!3097572 (= e!1936060 e!1936064)))

(declare-fun res!1268920 () Bool)

(assert (=> b!3097572 (=> (not res!1268920) (not e!1936064))))

(declare-fun call!218108 () Bool)

(assert (=> b!3097572 (= res!1268920 call!218108)))

(declare-fun b!3097573 () Bool)

(assert (=> b!3097573 (= e!1936064 call!218106)))

(declare-fun bm!218101 () Bool)

(declare-fun c!517334 () Bool)

(assert (=> bm!218101 (= call!218108 (validRegex!4284 (ite c!517334 (regTwo!19615 (regOne!19614 r!17423)) (regOne!19614 (regOne!19614 r!17423)))))))

(declare-fun bm!218102 () Bool)

(declare-fun call!218107 () Bool)

(assert (=> bm!218102 (= call!218106 call!218107)))

(declare-fun b!3097574 () Bool)

(declare-fun e!1936065 () Bool)

(assert (=> b!3097574 (= e!1936065 e!1936061)))

(assert (=> b!3097574 (= c!517334 ((_ is Union!9551) (regOne!19614 r!17423)))))

(declare-fun b!3097575 () Bool)

(declare-fun e!1936062 () Bool)

(assert (=> b!3097575 (= e!1936062 e!1936065)))

(declare-fun c!517333 () Bool)

(assert (=> b!3097575 (= c!517333 ((_ is Star!9551) (regOne!19614 r!17423)))))

(declare-fun b!3097576 () Bool)

(declare-fun e!1936059 () Bool)

(assert (=> b!3097576 (= e!1936059 call!218107)))

(declare-fun b!3097577 () Bool)

(assert (=> b!3097577 (= e!1936063 call!218108)))

(declare-fun b!3097578 () Bool)

(declare-fun res!1268922 () Bool)

(assert (=> b!3097578 (=> res!1268922 e!1936060)))

(assert (=> b!3097578 (= res!1268922 (not ((_ is Concat!14872) (regOne!19614 r!17423))))))

(assert (=> b!3097578 (= e!1936061 e!1936060)))

(declare-fun b!3097579 () Bool)

(assert (=> b!3097579 (= e!1936065 e!1936059)))

(declare-fun res!1268919 () Bool)

(assert (=> b!3097579 (= res!1268919 (not (nullable!3197 (reg!9880 (regOne!19614 r!17423)))))))

(assert (=> b!3097579 (=> (not res!1268919) (not e!1936059))))

(declare-fun d!860609 () Bool)

(declare-fun res!1268921 () Bool)

(assert (=> d!860609 (=> res!1268921 e!1936062)))

(assert (=> d!860609 (= res!1268921 ((_ is ElementMatch!9551) (regOne!19614 r!17423)))))

(assert (=> d!860609 (= (validRegex!4284 (regOne!19614 r!17423)) e!1936062)))

(declare-fun bm!218103 () Bool)

(assert (=> bm!218103 (= call!218107 (validRegex!4284 (ite c!517333 (reg!9880 (regOne!19614 r!17423)) (ite c!517334 (regOne!19615 (regOne!19614 r!17423)) (regTwo!19614 (regOne!19614 r!17423))))))))

(assert (= (and d!860609 (not res!1268921)) b!3097575))

(assert (= (and b!3097575 c!517333) b!3097579))

(assert (= (and b!3097575 (not c!517333)) b!3097574))

(assert (= (and b!3097579 res!1268919) b!3097576))

(assert (= (and b!3097574 c!517334) b!3097571))

(assert (= (and b!3097574 (not c!517334)) b!3097578))

(assert (= (and b!3097571 res!1268923) b!3097577))

(assert (= (and b!3097578 (not res!1268922)) b!3097572))

(assert (= (and b!3097572 res!1268920) b!3097573))

(assert (= (or b!3097571 b!3097573) bm!218102))

(assert (= (or b!3097577 b!3097572) bm!218101))

(assert (= (or b!3097576 bm!218102) bm!218103))

(declare-fun m!3399325 () Bool)

(assert (=> bm!218101 m!3399325))

(declare-fun m!3399327 () Bool)

(assert (=> b!3097579 m!3399327))

(declare-fun m!3399329 () Bool)

(assert (=> bm!218103 m!3399329))

(assert (=> b!3097018 d!860609))

(declare-fun d!860611 () Bool)

(declare-fun e!1936070 () Bool)

(assert (=> d!860611 e!1936070))

(declare-fun c!517337 () Bool)

(assert (=> d!860611 (= c!517337 ((_ is EmptyExpr!9551) lt!1054973))))

(declare-fun lt!1055052 () Bool)

(declare-fun e!1936068 () Bool)

(assert (=> d!860611 (= lt!1055052 e!1936068)))

(declare-fun c!517335 () Bool)

(assert (=> d!860611 (= c!517335 (isEmpty!19636 (_1!20238 lt!1054971)))))

(assert (=> d!860611 (validRegex!4284 lt!1054973)))

(assert (=> d!860611 (= (matchR!4433 lt!1054973 (_1!20238 lt!1054971)) lt!1055052)))

(declare-fun b!3097580 () Bool)

(declare-fun res!1268927 () Bool)

(declare-fun e!1936071 () Bool)

(assert (=> b!3097580 (=> (not res!1268927) (not e!1936071))))

(assert (=> b!3097580 (= res!1268927 (isEmpty!19636 (tail!5077 (_1!20238 lt!1054971))))))

(declare-fun b!3097581 () Bool)

(declare-fun res!1268925 () Bool)

(assert (=> b!3097581 (=> (not res!1268925) (not e!1936071))))

(declare-fun call!218109 () Bool)

(assert (=> b!3097581 (= res!1268925 (not call!218109))))

(declare-fun b!3097582 () Bool)

(assert (=> b!3097582 (= e!1936070 (= lt!1055052 call!218109))))

(declare-fun b!3097583 () Bool)

(assert (=> b!3097583 (= e!1936068 (nullable!3197 lt!1054973))))

(declare-fun b!3097584 () Bool)

(declare-fun res!1268931 () Bool)

(declare-fun e!1936066 () Bool)

(assert (=> b!3097584 (=> res!1268931 e!1936066)))

(assert (=> b!3097584 (= res!1268931 (not ((_ is ElementMatch!9551) lt!1054973)))))

(declare-fun e!1936069 () Bool)

(assert (=> b!3097584 (= e!1936069 e!1936066)))

(declare-fun b!3097585 () Bool)

(declare-fun e!1936072 () Bool)

(declare-fun e!1936067 () Bool)

(assert (=> b!3097585 (= e!1936072 e!1936067)))

(declare-fun res!1268929 () Bool)

(assert (=> b!3097585 (=> res!1268929 e!1936067)))

(assert (=> b!3097585 (= res!1268929 call!218109)))

(declare-fun b!3097586 () Bool)

(assert (=> b!3097586 (= e!1936068 (matchR!4433 (derivativeStep!2792 lt!1054973 (head!6851 (_1!20238 lt!1054971))) (tail!5077 (_1!20238 lt!1054971))))))

(declare-fun b!3097587 () Bool)

(assert (=> b!3097587 (= e!1936069 (not lt!1055052))))

(declare-fun b!3097588 () Bool)

(assert (=> b!3097588 (= e!1936067 (not (= (head!6851 (_1!20238 lt!1054971)) (c!517195 lt!1054973))))))

(declare-fun b!3097589 () Bool)

(assert (=> b!3097589 (= e!1936071 (= (head!6851 (_1!20238 lt!1054971)) (c!517195 lt!1054973)))))

(declare-fun b!3097590 () Bool)

(declare-fun res!1268924 () Bool)

(assert (=> b!3097590 (=> res!1268924 e!1936067)))

(assert (=> b!3097590 (= res!1268924 (not (isEmpty!19636 (tail!5077 (_1!20238 lt!1054971)))))))

(declare-fun b!3097591 () Bool)

(assert (=> b!3097591 (= e!1936070 e!1936069)))

(declare-fun c!517336 () Bool)

(assert (=> b!3097591 (= c!517336 ((_ is EmptyLang!9551) lt!1054973))))

(declare-fun b!3097592 () Bool)

(assert (=> b!3097592 (= e!1936066 e!1936072)))

(declare-fun res!1268926 () Bool)

(assert (=> b!3097592 (=> (not res!1268926) (not e!1936072))))

(assert (=> b!3097592 (= res!1268926 (not lt!1055052))))

(declare-fun bm!218104 () Bool)

(assert (=> bm!218104 (= call!218109 (isEmpty!19636 (_1!20238 lt!1054971)))))

(declare-fun b!3097593 () Bool)

(declare-fun res!1268928 () Bool)

(assert (=> b!3097593 (=> res!1268928 e!1936066)))

(assert (=> b!3097593 (= res!1268928 e!1936071)))

(declare-fun res!1268930 () Bool)

(assert (=> b!3097593 (=> (not res!1268930) (not e!1936071))))

(assert (=> b!3097593 (= res!1268930 lt!1055052)))

(assert (= (and d!860611 c!517335) b!3097583))

(assert (= (and d!860611 (not c!517335)) b!3097586))

(assert (= (and d!860611 c!517337) b!3097582))

(assert (= (and d!860611 (not c!517337)) b!3097591))

(assert (= (and b!3097591 c!517336) b!3097587))

(assert (= (and b!3097591 (not c!517336)) b!3097584))

(assert (= (and b!3097584 (not res!1268931)) b!3097593))

(assert (= (and b!3097593 res!1268930) b!3097581))

(assert (= (and b!3097581 res!1268925) b!3097580))

(assert (= (and b!3097580 res!1268927) b!3097589))

(assert (= (and b!3097593 (not res!1268928)) b!3097592))

(assert (= (and b!3097592 res!1268926) b!3097585))

(assert (= (and b!3097585 (not res!1268929)) b!3097590))

(assert (= (and b!3097590 (not res!1268924)) b!3097588))

(assert (= (or b!3097582 b!3097581 b!3097585) bm!218104))

(declare-fun m!3399331 () Bool)

(assert (=> b!3097583 m!3399331))

(declare-fun m!3399333 () Bool)

(assert (=> b!3097589 m!3399333))

(assert (=> b!3097588 m!3399333))

(assert (=> b!3097586 m!3399333))

(assert (=> b!3097586 m!3399333))

(declare-fun m!3399335 () Bool)

(assert (=> b!3097586 m!3399335))

(declare-fun m!3399337 () Bool)

(assert (=> b!3097586 m!3399337))

(assert (=> b!3097586 m!3399335))

(assert (=> b!3097586 m!3399337))

(declare-fun m!3399339 () Bool)

(assert (=> b!3097586 m!3399339))

(assert (=> b!3097590 m!3399337))

(assert (=> b!3097590 m!3399337))

(declare-fun m!3399341 () Bool)

(assert (=> b!3097590 m!3399341))

(declare-fun m!3399343 () Bool)

(assert (=> d!860611 m!3399343))

(assert (=> d!860611 m!3399275))

(assert (=> b!3097580 m!3399337))

(assert (=> b!3097580 m!3399337))

(assert (=> b!3097580 m!3399341))

(assert (=> bm!218104 m!3399343))

(assert (=> b!3097018 d!860611))

(declare-fun d!860613 () Bool)

(assert (=> d!860613 (= (matchR!4433 (regTwo!19614 r!17423) (_2!20238 lt!1054971)) (matchR!4433 (simplify!506 (regTwo!19614 r!17423)) (_2!20238 lt!1054971)))))

(declare-fun lt!1055055 () Unit!49541)

(declare-fun choose!18317 (Regex!9551 List!35416) Unit!49541)

(assert (=> d!860613 (= lt!1055055 (choose!18317 (regTwo!19614 r!17423) (_2!20238 lt!1054971)))))

(assert (=> d!860613 (validRegex!4284 (regTwo!19614 r!17423))))

(assert (=> d!860613 (= (lemmaSimplifySound!320 (regTwo!19614 r!17423) (_2!20238 lt!1054971)) lt!1055055)))

(declare-fun bs!535494 () Bool)

(assert (= bs!535494 d!860613))

(declare-fun m!3399345 () Bool)

(assert (=> bs!535494 m!3399345))

(assert (=> bs!535494 m!3399061))

(assert (=> bs!535494 m!3399013))

(assert (=> bs!535494 m!3399061))

(declare-fun m!3399347 () Bool)

(assert (=> bs!535494 m!3399347))

(assert (=> bs!535494 m!3399041))

(assert (=> b!3097018 d!860613))

(declare-fun d!860615 () Bool)

(assert (=> d!860615 (= (matchR!4433 (regOne!19614 r!17423) (_1!20238 lt!1054971)) (matchR!4433 (simplify!506 (regOne!19614 r!17423)) (_1!20238 lt!1054971)))))

(declare-fun lt!1055056 () Unit!49541)

(assert (=> d!860615 (= lt!1055056 (choose!18317 (regOne!19614 r!17423) (_1!20238 lt!1054971)))))

(assert (=> d!860615 (validRegex!4284 (regOne!19614 r!17423))))

(assert (=> d!860615 (= (lemmaSimplifySound!320 (regOne!19614 r!17423) (_1!20238 lt!1054971)) lt!1055056)))

(declare-fun bs!535495 () Bool)

(assert (= bs!535495 d!860615))

(declare-fun m!3399349 () Bool)

(assert (=> bs!535495 m!3399349))

(assert (=> bs!535495 m!3399063))

(assert (=> bs!535495 m!3399055))

(assert (=> bs!535495 m!3399063))

(declare-fun m!3399351 () Bool)

(assert (=> bs!535495 m!3399351))

(assert (=> bs!535495 m!3399053))

(assert (=> b!3097018 d!860615))

(declare-fun d!860617 () Bool)

(declare-fun e!1936077 () Bool)

(assert (=> d!860617 e!1936077))

(declare-fun c!517340 () Bool)

(assert (=> d!860617 (= c!517340 ((_ is EmptyExpr!9551) (regOne!19614 r!17423)))))

(declare-fun lt!1055057 () Bool)

(declare-fun e!1936075 () Bool)

(assert (=> d!860617 (= lt!1055057 e!1936075)))

(declare-fun c!517338 () Bool)

(assert (=> d!860617 (= c!517338 (isEmpty!19636 (_1!20238 lt!1054971)))))

(assert (=> d!860617 (validRegex!4284 (regOne!19614 r!17423))))

(assert (=> d!860617 (= (matchR!4433 (regOne!19614 r!17423) (_1!20238 lt!1054971)) lt!1055057)))

(declare-fun b!3097594 () Bool)

(declare-fun res!1268935 () Bool)

(declare-fun e!1936078 () Bool)

(assert (=> b!3097594 (=> (not res!1268935) (not e!1936078))))

(assert (=> b!3097594 (= res!1268935 (isEmpty!19636 (tail!5077 (_1!20238 lt!1054971))))))

(declare-fun b!3097595 () Bool)

(declare-fun res!1268933 () Bool)

(assert (=> b!3097595 (=> (not res!1268933) (not e!1936078))))

(declare-fun call!218110 () Bool)

(assert (=> b!3097595 (= res!1268933 (not call!218110))))

(declare-fun b!3097596 () Bool)

(assert (=> b!3097596 (= e!1936077 (= lt!1055057 call!218110))))

(declare-fun b!3097597 () Bool)

(assert (=> b!3097597 (= e!1936075 (nullable!3197 (regOne!19614 r!17423)))))

(declare-fun b!3097598 () Bool)

(declare-fun res!1268939 () Bool)

(declare-fun e!1936073 () Bool)

(assert (=> b!3097598 (=> res!1268939 e!1936073)))

(assert (=> b!3097598 (= res!1268939 (not ((_ is ElementMatch!9551) (regOne!19614 r!17423))))))

(declare-fun e!1936076 () Bool)

(assert (=> b!3097598 (= e!1936076 e!1936073)))

(declare-fun b!3097599 () Bool)

(declare-fun e!1936079 () Bool)

(declare-fun e!1936074 () Bool)

(assert (=> b!3097599 (= e!1936079 e!1936074)))

(declare-fun res!1268937 () Bool)

(assert (=> b!3097599 (=> res!1268937 e!1936074)))

(assert (=> b!3097599 (= res!1268937 call!218110)))

(declare-fun b!3097600 () Bool)

(assert (=> b!3097600 (= e!1936075 (matchR!4433 (derivativeStep!2792 (regOne!19614 r!17423) (head!6851 (_1!20238 lt!1054971))) (tail!5077 (_1!20238 lt!1054971))))))

(declare-fun b!3097601 () Bool)

(assert (=> b!3097601 (= e!1936076 (not lt!1055057))))

(declare-fun b!3097602 () Bool)

(assert (=> b!3097602 (= e!1936074 (not (= (head!6851 (_1!20238 lt!1054971)) (c!517195 (regOne!19614 r!17423)))))))

(declare-fun b!3097603 () Bool)

(assert (=> b!3097603 (= e!1936078 (= (head!6851 (_1!20238 lt!1054971)) (c!517195 (regOne!19614 r!17423))))))

(declare-fun b!3097604 () Bool)

(declare-fun res!1268932 () Bool)

(assert (=> b!3097604 (=> res!1268932 e!1936074)))

(assert (=> b!3097604 (= res!1268932 (not (isEmpty!19636 (tail!5077 (_1!20238 lt!1054971)))))))

(declare-fun b!3097605 () Bool)

(assert (=> b!3097605 (= e!1936077 e!1936076)))

(declare-fun c!517339 () Bool)

(assert (=> b!3097605 (= c!517339 ((_ is EmptyLang!9551) (regOne!19614 r!17423)))))

(declare-fun b!3097606 () Bool)

(assert (=> b!3097606 (= e!1936073 e!1936079)))

(declare-fun res!1268934 () Bool)

(assert (=> b!3097606 (=> (not res!1268934) (not e!1936079))))

(assert (=> b!3097606 (= res!1268934 (not lt!1055057))))

(declare-fun bm!218105 () Bool)

(assert (=> bm!218105 (= call!218110 (isEmpty!19636 (_1!20238 lt!1054971)))))

(declare-fun b!3097607 () Bool)

(declare-fun res!1268936 () Bool)

(assert (=> b!3097607 (=> res!1268936 e!1936073)))

(assert (=> b!3097607 (= res!1268936 e!1936078)))

(declare-fun res!1268938 () Bool)

(assert (=> b!3097607 (=> (not res!1268938) (not e!1936078))))

(assert (=> b!3097607 (= res!1268938 lt!1055057)))

(assert (= (and d!860617 c!517338) b!3097597))

(assert (= (and d!860617 (not c!517338)) b!3097600))

(assert (= (and d!860617 c!517340) b!3097596))

(assert (= (and d!860617 (not c!517340)) b!3097605))

(assert (= (and b!3097605 c!517339) b!3097601))

(assert (= (and b!3097605 (not c!517339)) b!3097598))

(assert (= (and b!3097598 (not res!1268939)) b!3097607))

(assert (= (and b!3097607 res!1268938) b!3097595))

(assert (= (and b!3097595 res!1268933) b!3097594))

(assert (= (and b!3097594 res!1268935) b!3097603))

(assert (= (and b!3097607 (not res!1268936)) b!3097606))

(assert (= (and b!3097606 res!1268934) b!3097599))

(assert (= (and b!3097599 (not res!1268937)) b!3097604))

(assert (= (and b!3097604 (not res!1268932)) b!3097602))

(assert (= (or b!3097596 b!3097595 b!3097599) bm!218105))

(declare-fun m!3399353 () Bool)

(assert (=> b!3097597 m!3399353))

(assert (=> b!3097603 m!3399333))

(assert (=> b!3097602 m!3399333))

(assert (=> b!3097600 m!3399333))

(assert (=> b!3097600 m!3399333))

(declare-fun m!3399355 () Bool)

(assert (=> b!3097600 m!3399355))

(assert (=> b!3097600 m!3399337))

(assert (=> b!3097600 m!3399355))

(assert (=> b!3097600 m!3399337))

(declare-fun m!3399357 () Bool)

(assert (=> b!3097600 m!3399357))

(assert (=> b!3097604 m!3399337))

(assert (=> b!3097604 m!3399337))

(assert (=> b!3097604 m!3399341))

(assert (=> d!860617 m!3399343))

(assert (=> d!860617 m!3399055))

(assert (=> b!3097594 m!3399337))

(assert (=> b!3097594 m!3399337))

(assert (=> b!3097594 m!3399341))

(assert (=> bm!218105 m!3399343))

(assert (=> b!3097018 d!860617))

(declare-fun d!860619 () Bool)

(declare-fun e!1936084 () Bool)

(assert (=> d!860619 e!1936084))

(declare-fun c!517343 () Bool)

(assert (=> d!860619 (= c!517343 ((_ is EmptyExpr!9551) (regTwo!19614 r!17423)))))

(declare-fun lt!1055058 () Bool)

(declare-fun e!1936082 () Bool)

(assert (=> d!860619 (= lt!1055058 e!1936082)))

(declare-fun c!517341 () Bool)

(assert (=> d!860619 (= c!517341 (isEmpty!19636 (_2!20238 lt!1054971)))))

(assert (=> d!860619 (validRegex!4284 (regTwo!19614 r!17423))))

(assert (=> d!860619 (= (matchR!4433 (regTwo!19614 r!17423) (_2!20238 lt!1054971)) lt!1055058)))

(declare-fun b!3097608 () Bool)

(declare-fun res!1268943 () Bool)

(declare-fun e!1936085 () Bool)

(assert (=> b!3097608 (=> (not res!1268943) (not e!1936085))))

(assert (=> b!3097608 (= res!1268943 (isEmpty!19636 (tail!5077 (_2!20238 lt!1054971))))))

(declare-fun b!3097609 () Bool)

(declare-fun res!1268941 () Bool)

(assert (=> b!3097609 (=> (not res!1268941) (not e!1936085))))

(declare-fun call!218111 () Bool)

(assert (=> b!3097609 (= res!1268941 (not call!218111))))

(declare-fun b!3097610 () Bool)

(assert (=> b!3097610 (= e!1936084 (= lt!1055058 call!218111))))

(declare-fun b!3097611 () Bool)

(assert (=> b!3097611 (= e!1936082 (nullable!3197 (regTwo!19614 r!17423)))))

(declare-fun b!3097612 () Bool)

(declare-fun res!1268947 () Bool)

(declare-fun e!1936080 () Bool)

(assert (=> b!3097612 (=> res!1268947 e!1936080)))

(assert (=> b!3097612 (= res!1268947 (not ((_ is ElementMatch!9551) (regTwo!19614 r!17423))))))

(declare-fun e!1936083 () Bool)

(assert (=> b!3097612 (= e!1936083 e!1936080)))

(declare-fun b!3097613 () Bool)

(declare-fun e!1936086 () Bool)

(declare-fun e!1936081 () Bool)

(assert (=> b!3097613 (= e!1936086 e!1936081)))

(declare-fun res!1268945 () Bool)

(assert (=> b!3097613 (=> res!1268945 e!1936081)))

(assert (=> b!3097613 (= res!1268945 call!218111)))

(declare-fun b!3097614 () Bool)

(assert (=> b!3097614 (= e!1936082 (matchR!4433 (derivativeStep!2792 (regTwo!19614 r!17423) (head!6851 (_2!20238 lt!1054971))) (tail!5077 (_2!20238 lt!1054971))))))

(declare-fun b!3097615 () Bool)

(assert (=> b!3097615 (= e!1936083 (not lt!1055058))))

(declare-fun b!3097616 () Bool)

(assert (=> b!3097616 (= e!1936081 (not (= (head!6851 (_2!20238 lt!1054971)) (c!517195 (regTwo!19614 r!17423)))))))

(declare-fun b!3097617 () Bool)

(assert (=> b!3097617 (= e!1936085 (= (head!6851 (_2!20238 lt!1054971)) (c!517195 (regTwo!19614 r!17423))))))

(declare-fun b!3097618 () Bool)

(declare-fun res!1268940 () Bool)

(assert (=> b!3097618 (=> res!1268940 e!1936081)))

(assert (=> b!3097618 (= res!1268940 (not (isEmpty!19636 (tail!5077 (_2!20238 lt!1054971)))))))

(declare-fun b!3097619 () Bool)

(assert (=> b!3097619 (= e!1936084 e!1936083)))

(declare-fun c!517342 () Bool)

(assert (=> b!3097619 (= c!517342 ((_ is EmptyLang!9551) (regTwo!19614 r!17423)))))

(declare-fun b!3097620 () Bool)

(assert (=> b!3097620 (= e!1936080 e!1936086)))

(declare-fun res!1268942 () Bool)

(assert (=> b!3097620 (=> (not res!1268942) (not e!1936086))))

(assert (=> b!3097620 (= res!1268942 (not lt!1055058))))

(declare-fun bm!218106 () Bool)

(assert (=> bm!218106 (= call!218111 (isEmpty!19636 (_2!20238 lt!1054971)))))

(declare-fun b!3097621 () Bool)

(declare-fun res!1268944 () Bool)

(assert (=> b!3097621 (=> res!1268944 e!1936080)))

(assert (=> b!3097621 (= res!1268944 e!1936085)))

(declare-fun res!1268946 () Bool)

(assert (=> b!3097621 (=> (not res!1268946) (not e!1936085))))

(assert (=> b!3097621 (= res!1268946 lt!1055058)))

(assert (= (and d!860619 c!517341) b!3097611))

(assert (= (and d!860619 (not c!517341)) b!3097614))

(assert (= (and d!860619 c!517343) b!3097610))

(assert (= (and d!860619 (not c!517343)) b!3097619))

(assert (= (and b!3097619 c!517342) b!3097615))

(assert (= (and b!3097619 (not c!517342)) b!3097612))

(assert (= (and b!3097612 (not res!1268947)) b!3097621))

(assert (= (and b!3097621 res!1268946) b!3097609))

(assert (= (and b!3097609 res!1268941) b!3097608))

(assert (= (and b!3097608 res!1268943) b!3097617))

(assert (= (and b!3097621 (not res!1268944)) b!3097620))

(assert (= (and b!3097620 res!1268942) b!3097613))

(assert (= (and b!3097613 (not res!1268945)) b!3097618))

(assert (= (and b!3097618 (not res!1268940)) b!3097616))

(assert (= (or b!3097610 b!3097609 b!3097613) bm!218106))

(declare-fun m!3399359 () Bool)

(assert (=> b!3097611 m!3399359))

(declare-fun m!3399361 () Bool)

(assert (=> b!3097617 m!3399361))

(assert (=> b!3097616 m!3399361))

(assert (=> b!3097614 m!3399361))

(assert (=> b!3097614 m!3399361))

(declare-fun m!3399363 () Bool)

(assert (=> b!3097614 m!3399363))

(declare-fun m!3399365 () Bool)

(assert (=> b!3097614 m!3399365))

(assert (=> b!3097614 m!3399363))

(assert (=> b!3097614 m!3399365))

(declare-fun m!3399367 () Bool)

(assert (=> b!3097614 m!3399367))

(assert (=> b!3097618 m!3399365))

(assert (=> b!3097618 m!3399365))

(declare-fun m!3399369 () Bool)

(assert (=> b!3097618 m!3399369))

(declare-fun m!3399371 () Bool)

(assert (=> d!860619 m!3399371))

(assert (=> d!860619 m!3399013))

(assert (=> b!3097608 m!3399365))

(assert (=> b!3097608 m!3399365))

(assert (=> b!3097608 m!3399369))

(assert (=> bm!218106 m!3399371))

(assert (=> b!3097018 d!860619))

(declare-fun d!860621 () Bool)

(assert (=> d!860621 (= (get!11079 lt!1054972) (v!34971 lt!1054972))))

(assert (=> b!3097018 d!860621))

(declare-fun d!860623 () Bool)

(declare-fun e!1936091 () Bool)

(assert (=> d!860623 e!1936091))

(declare-fun c!517346 () Bool)

(assert (=> d!860623 (= c!517346 ((_ is EmptyExpr!9551) lt!1054966))))

(declare-fun lt!1055059 () Bool)

(declare-fun e!1936089 () Bool)

(assert (=> d!860623 (= lt!1055059 e!1936089)))

(declare-fun c!517344 () Bool)

(assert (=> d!860623 (= c!517344 (isEmpty!19636 (_2!20238 lt!1054971)))))

(assert (=> d!860623 (validRegex!4284 lt!1054966)))

(assert (=> d!860623 (= (matchR!4433 lt!1054966 (_2!20238 lt!1054971)) lt!1055059)))

(declare-fun b!3097622 () Bool)

(declare-fun res!1268951 () Bool)

(declare-fun e!1936092 () Bool)

(assert (=> b!3097622 (=> (not res!1268951) (not e!1936092))))

(assert (=> b!3097622 (= res!1268951 (isEmpty!19636 (tail!5077 (_2!20238 lt!1054971))))))

(declare-fun b!3097623 () Bool)

(declare-fun res!1268949 () Bool)

(assert (=> b!3097623 (=> (not res!1268949) (not e!1936092))))

(declare-fun call!218112 () Bool)

(assert (=> b!3097623 (= res!1268949 (not call!218112))))

(declare-fun b!3097624 () Bool)

(assert (=> b!3097624 (= e!1936091 (= lt!1055059 call!218112))))

(declare-fun b!3097625 () Bool)

(assert (=> b!3097625 (= e!1936089 (nullable!3197 lt!1054966))))

(declare-fun b!3097626 () Bool)

(declare-fun res!1268955 () Bool)

(declare-fun e!1936087 () Bool)

(assert (=> b!3097626 (=> res!1268955 e!1936087)))

(assert (=> b!3097626 (= res!1268955 (not ((_ is ElementMatch!9551) lt!1054966)))))

(declare-fun e!1936090 () Bool)

(assert (=> b!3097626 (= e!1936090 e!1936087)))

(declare-fun b!3097627 () Bool)

(declare-fun e!1936093 () Bool)

(declare-fun e!1936088 () Bool)

(assert (=> b!3097627 (= e!1936093 e!1936088)))

(declare-fun res!1268953 () Bool)

(assert (=> b!3097627 (=> res!1268953 e!1936088)))

(assert (=> b!3097627 (= res!1268953 call!218112)))

(declare-fun b!3097628 () Bool)

(assert (=> b!3097628 (= e!1936089 (matchR!4433 (derivativeStep!2792 lt!1054966 (head!6851 (_2!20238 lt!1054971))) (tail!5077 (_2!20238 lt!1054971))))))

(declare-fun b!3097629 () Bool)

(assert (=> b!3097629 (= e!1936090 (not lt!1055059))))

(declare-fun b!3097630 () Bool)

(assert (=> b!3097630 (= e!1936088 (not (= (head!6851 (_2!20238 lt!1054971)) (c!517195 lt!1054966))))))

(declare-fun b!3097631 () Bool)

(assert (=> b!3097631 (= e!1936092 (= (head!6851 (_2!20238 lt!1054971)) (c!517195 lt!1054966)))))

(declare-fun b!3097632 () Bool)

(declare-fun res!1268948 () Bool)

(assert (=> b!3097632 (=> res!1268948 e!1936088)))

(assert (=> b!3097632 (= res!1268948 (not (isEmpty!19636 (tail!5077 (_2!20238 lt!1054971)))))))

(declare-fun b!3097633 () Bool)

(assert (=> b!3097633 (= e!1936091 e!1936090)))

(declare-fun c!517345 () Bool)

(assert (=> b!3097633 (= c!517345 ((_ is EmptyLang!9551) lt!1054966))))

(declare-fun b!3097634 () Bool)

(assert (=> b!3097634 (= e!1936087 e!1936093)))

(declare-fun res!1268950 () Bool)

(assert (=> b!3097634 (=> (not res!1268950) (not e!1936093))))

(assert (=> b!3097634 (= res!1268950 (not lt!1055059))))

(declare-fun bm!218107 () Bool)

(assert (=> bm!218107 (= call!218112 (isEmpty!19636 (_2!20238 lt!1054971)))))

(declare-fun b!3097635 () Bool)

(declare-fun res!1268952 () Bool)

(assert (=> b!3097635 (=> res!1268952 e!1936087)))

(assert (=> b!3097635 (= res!1268952 e!1936092)))

(declare-fun res!1268954 () Bool)

(assert (=> b!3097635 (=> (not res!1268954) (not e!1936092))))

(assert (=> b!3097635 (= res!1268954 lt!1055059)))

(assert (= (and d!860623 c!517344) b!3097625))

(assert (= (and d!860623 (not c!517344)) b!3097628))

(assert (= (and d!860623 c!517346) b!3097624))

(assert (= (and d!860623 (not c!517346)) b!3097633))

(assert (= (and b!3097633 c!517345) b!3097629))

(assert (= (and b!3097633 (not c!517345)) b!3097626))

(assert (= (and b!3097626 (not res!1268955)) b!3097635))

(assert (= (and b!3097635 res!1268954) b!3097623))

(assert (= (and b!3097623 res!1268949) b!3097622))

(assert (= (and b!3097622 res!1268951) b!3097631))

(assert (= (and b!3097635 (not res!1268952)) b!3097634))

(assert (= (and b!3097634 res!1268950) b!3097627))

(assert (= (and b!3097627 (not res!1268953)) b!3097632))

(assert (= (and b!3097632 (not res!1268948)) b!3097630))

(assert (= (or b!3097624 b!3097623 b!3097627) bm!218107))

(declare-fun m!3399373 () Bool)

(assert (=> b!3097625 m!3399373))

(assert (=> b!3097631 m!3399361))

(assert (=> b!3097630 m!3399361))

(assert (=> b!3097628 m!3399361))

(assert (=> b!3097628 m!3399361))

(declare-fun m!3399375 () Bool)

(assert (=> b!3097628 m!3399375))

(assert (=> b!3097628 m!3399365))

(assert (=> b!3097628 m!3399375))

(assert (=> b!3097628 m!3399365))

(declare-fun m!3399377 () Bool)

(assert (=> b!3097628 m!3399377))

(assert (=> b!3097632 m!3399365))

(assert (=> b!3097632 m!3399365))

(assert (=> b!3097632 m!3399369))

(assert (=> d!860623 m!3399371))

(declare-fun m!3399379 () Bool)

(assert (=> d!860623 m!3399379))

(assert (=> b!3097622 m!3399365))

(assert (=> b!3097622 m!3399365))

(assert (=> b!3097622 m!3399369))

(assert (=> bm!218107 m!3399371))

(assert (=> b!3097018 d!860623))

(declare-fun d!860625 () Bool)

(declare-fun e!1936098 () Bool)

(assert (=> d!860625 e!1936098))

(declare-fun c!517349 () Bool)

(assert (=> d!860625 (= c!517349 ((_ is EmptyExpr!9551) lt!1054969))))

(declare-fun lt!1055060 () Bool)

(declare-fun e!1936096 () Bool)

(assert (=> d!860625 (= lt!1055060 e!1936096)))

(declare-fun c!517347 () Bool)

(assert (=> d!860625 (= c!517347 (isEmpty!19636 s!11993))))

(assert (=> d!860625 (validRegex!4284 lt!1054969)))

(assert (=> d!860625 (= (matchR!4433 lt!1054969 s!11993) lt!1055060)))

(declare-fun b!3097636 () Bool)

(declare-fun res!1268959 () Bool)

(declare-fun e!1936099 () Bool)

(assert (=> b!3097636 (=> (not res!1268959) (not e!1936099))))

(assert (=> b!3097636 (= res!1268959 (isEmpty!19636 (tail!5077 s!11993)))))

(declare-fun b!3097637 () Bool)

(declare-fun res!1268957 () Bool)

(assert (=> b!3097637 (=> (not res!1268957) (not e!1936099))))

(declare-fun call!218113 () Bool)

(assert (=> b!3097637 (= res!1268957 (not call!218113))))

(declare-fun b!3097638 () Bool)

(assert (=> b!3097638 (= e!1936098 (= lt!1055060 call!218113))))

(declare-fun b!3097639 () Bool)

(assert (=> b!3097639 (= e!1936096 (nullable!3197 lt!1054969))))

(declare-fun b!3097640 () Bool)

(declare-fun res!1268963 () Bool)

(declare-fun e!1936094 () Bool)

(assert (=> b!3097640 (=> res!1268963 e!1936094)))

(assert (=> b!3097640 (= res!1268963 (not ((_ is ElementMatch!9551) lt!1054969)))))

(declare-fun e!1936097 () Bool)

(assert (=> b!3097640 (= e!1936097 e!1936094)))

(declare-fun b!3097641 () Bool)

(declare-fun e!1936100 () Bool)

(declare-fun e!1936095 () Bool)

(assert (=> b!3097641 (= e!1936100 e!1936095)))

(declare-fun res!1268961 () Bool)

(assert (=> b!3097641 (=> res!1268961 e!1936095)))

(assert (=> b!3097641 (= res!1268961 call!218113)))

(declare-fun b!3097642 () Bool)

(assert (=> b!3097642 (= e!1936096 (matchR!4433 (derivativeStep!2792 lt!1054969 (head!6851 s!11993)) (tail!5077 s!11993)))))

(declare-fun b!3097643 () Bool)

(assert (=> b!3097643 (= e!1936097 (not lt!1055060))))

(declare-fun b!3097644 () Bool)

(assert (=> b!3097644 (= e!1936095 (not (= (head!6851 s!11993) (c!517195 lt!1054969))))))

(declare-fun b!3097645 () Bool)

(assert (=> b!3097645 (= e!1936099 (= (head!6851 s!11993) (c!517195 lt!1054969)))))

(declare-fun b!3097646 () Bool)

(declare-fun res!1268956 () Bool)

(assert (=> b!3097646 (=> res!1268956 e!1936095)))

(assert (=> b!3097646 (= res!1268956 (not (isEmpty!19636 (tail!5077 s!11993))))))

(declare-fun b!3097647 () Bool)

(assert (=> b!3097647 (= e!1936098 e!1936097)))

(declare-fun c!517348 () Bool)

(assert (=> b!3097647 (= c!517348 ((_ is EmptyLang!9551) lt!1054969))))

(declare-fun b!3097648 () Bool)

(assert (=> b!3097648 (= e!1936094 e!1936100)))

(declare-fun res!1268958 () Bool)

(assert (=> b!3097648 (=> (not res!1268958) (not e!1936100))))

(assert (=> b!3097648 (= res!1268958 (not lt!1055060))))

(declare-fun bm!218108 () Bool)

(assert (=> bm!218108 (= call!218113 (isEmpty!19636 s!11993))))

(declare-fun b!3097649 () Bool)

(declare-fun res!1268960 () Bool)

(assert (=> b!3097649 (=> res!1268960 e!1936094)))

(assert (=> b!3097649 (= res!1268960 e!1936099)))

(declare-fun res!1268962 () Bool)

(assert (=> b!3097649 (=> (not res!1268962) (not e!1936099))))

(assert (=> b!3097649 (= res!1268962 lt!1055060)))

(assert (= (and d!860625 c!517347) b!3097639))

(assert (= (and d!860625 (not c!517347)) b!3097642))

(assert (= (and d!860625 c!517349) b!3097638))

(assert (= (and d!860625 (not c!517349)) b!3097647))

(assert (= (and b!3097647 c!517348) b!3097643))

(assert (= (and b!3097647 (not c!517348)) b!3097640))

(assert (= (and b!3097640 (not res!1268963)) b!3097649))

(assert (= (and b!3097649 res!1268962) b!3097637))

(assert (= (and b!3097637 res!1268957) b!3097636))

(assert (= (and b!3097636 res!1268959) b!3097645))

(assert (= (and b!3097649 (not res!1268960)) b!3097648))

(assert (= (and b!3097648 res!1268958) b!3097641))

(assert (= (and b!3097641 (not res!1268961)) b!3097646))

(assert (= (and b!3097646 (not res!1268956)) b!3097644))

(assert (= (or b!3097638 b!3097637 b!3097641) bm!218108))

(declare-fun m!3399381 () Bool)

(assert (=> b!3097639 m!3399381))

(assert (=> b!3097645 m!3399229))

(assert (=> b!3097644 m!3399229))

(assert (=> b!3097642 m!3399229))

(assert (=> b!3097642 m!3399229))

(declare-fun m!3399383 () Bool)

(assert (=> b!3097642 m!3399383))

(assert (=> b!3097642 m!3399233))

(assert (=> b!3097642 m!3399383))

(assert (=> b!3097642 m!3399233))

(declare-fun m!3399385 () Bool)

(assert (=> b!3097642 m!3399385))

(assert (=> b!3097646 m!3399233))

(assert (=> b!3097646 m!3399233))

(assert (=> b!3097646 m!3399237))

(assert (=> d!860625 m!3399039))

(assert (=> d!860625 m!3399307))

(assert (=> b!3097636 m!3399233))

(assert (=> b!3097636 m!3399233))

(assert (=> b!3097636 m!3399237))

(assert (=> bm!218108 m!3399039))

(assert (=> b!3097007 d!860625))

(declare-fun d!860627 () Bool)

(assert (=> d!860627 (= (isEmptyLang!602 lt!1054973) ((_ is EmptyLang!9551) lt!1054973))))

(assert (=> b!3097012 d!860627))

(declare-fun b!3097700 () Bool)

(declare-fun e!1936130 () Bool)

(declare-fun lt!1055078 () Regex!9551)

(assert (=> b!3097700 (= e!1936130 (= (nullable!3197 lt!1055078) (nullable!3197 (regTwo!19614 r!17423))))))

(declare-fun b!3097701 () Bool)

(declare-fun c!517380 () Bool)

(declare-fun call!218129 () Bool)

(assert (=> b!3097701 (= c!517380 call!218129)))

(declare-fun e!1936140 () Regex!9551)

(declare-fun e!1936141 () Regex!9551)

(assert (=> b!3097701 (= e!1936140 e!1936141)))

(declare-fun b!3097702 () Bool)

(declare-fun e!1936133 () Regex!9551)

(assert (=> b!3097702 (= e!1936133 e!1936140)))

(declare-fun lt!1055075 () Regex!9551)

(declare-fun call!218133 () Regex!9551)

(assert (=> b!3097702 (= lt!1055075 call!218133)))

(declare-fun lt!1055073 () Regex!9551)

(declare-fun call!218130 () Regex!9551)

(assert (=> b!3097702 (= lt!1055073 call!218130)))

(declare-fun c!517373 () Bool)

(declare-fun call!218132 () Bool)

(assert (=> b!3097702 (= c!517373 call!218132)))

(declare-fun b!3097703 () Bool)

(declare-fun e!1936139 () Regex!9551)

(declare-fun lt!1055077 () Regex!9551)

(assert (=> b!3097703 (= e!1936139 (Star!9551 lt!1055077))))

(declare-fun bm!218123 () Bool)

(declare-fun call!218128 () Regex!9551)

(declare-fun c!517377 () Bool)

(declare-fun c!517378 () Bool)

(assert (=> bm!218123 (= call!218128 (simplify!506 (ite c!517377 (reg!9880 (regTwo!19614 r!17423)) (ite c!517378 (regOne!19615 (regTwo!19614 r!17423)) (regTwo!19614 (regTwo!19614 r!17423))))))))

(declare-fun call!218134 () Bool)

(declare-fun bm!218124 () Bool)

(declare-fun lt!1055074 () Regex!9551)

(assert (=> bm!218124 (= call!218134 (isEmptyExpr!608 (ite c!517377 lt!1055077 lt!1055074)))))

(declare-fun b!3097704 () Bool)

(assert (=> b!3097704 (= e!1936141 lt!1055075)))

(declare-fun b!3097705 () Bool)

(declare-fun e!1936137 () Regex!9551)

(assert (=> b!3097705 (= e!1936137 EmptyExpr!9551)))

(declare-fun b!3097706 () Bool)

(declare-fun c!517381 () Bool)

(assert (=> b!3097706 (= c!517381 ((_ is EmptyExpr!9551) (regTwo!19614 r!17423)))))

(declare-fun e!1936134 () Regex!9551)

(assert (=> b!3097706 (= e!1936134 e!1936137)))

(declare-fun b!3097707 () Bool)

(assert (=> b!3097707 (= e!1936139 EmptyExpr!9551)))

(declare-fun bm!218125 () Bool)

(assert (=> bm!218125 (= call!218130 (simplify!506 (ite c!517378 (regTwo!19615 (regTwo!19614 r!17423)) (regOne!19614 (regTwo!19614 r!17423)))))))

(declare-fun b!3097708 () Bool)

(declare-fun e!1936136 () Regex!9551)

(assert (=> b!3097708 (= e!1936137 e!1936136)))

(assert (=> b!3097708 (= c!517377 ((_ is Star!9551) (regTwo!19614 r!17423)))))

(declare-fun b!3097709 () Bool)

(declare-fun e!1936129 () Regex!9551)

(assert (=> b!3097709 (= e!1936129 EmptyLang!9551)))

(declare-fun b!3097710 () Bool)

(assert (=> b!3097710 (= e!1936134 (regTwo!19614 r!17423))))

(declare-fun bm!218126 () Bool)

(assert (=> bm!218126 (= call!218129 (isEmptyLang!602 (ite c!517378 lt!1055073 lt!1055074)))))

(declare-fun d!860629 () Bool)

(assert (=> d!860629 e!1936130))

(declare-fun res!1268971 () Bool)

(assert (=> d!860629 (=> (not res!1268971) (not e!1936130))))

(assert (=> d!860629 (= res!1268971 (validRegex!4284 lt!1055078))))

(declare-fun e!1936142 () Regex!9551)

(assert (=> d!860629 (= lt!1055078 e!1936142)))

(declare-fun c!517382 () Bool)

(assert (=> d!860629 (= c!517382 ((_ is EmptyLang!9551) (regTwo!19614 r!17423)))))

(assert (=> d!860629 (validRegex!4284 (regTwo!19614 r!17423))))

(assert (=> d!860629 (= (simplify!506 (regTwo!19614 r!17423)) lt!1055078)))

(declare-fun b!3097711 () Bool)

(assert (=> b!3097711 (= e!1936142 e!1936134)))

(declare-fun c!517375 () Bool)

(assert (=> b!3097711 (= c!517375 ((_ is ElementMatch!9551) (regTwo!19614 r!17423)))))

(declare-fun lt!1055076 () Regex!9551)

(declare-fun bm!218127 () Bool)

(declare-fun call!218131 () Bool)

(assert (=> bm!218127 (= call!218131 (isEmptyLang!602 (ite c!517377 lt!1055077 (ite c!517378 lt!1055075 lt!1055076))))))

(declare-fun b!3097712 () Bool)

(assert (=> b!3097712 (= e!1936141 (Union!9551 lt!1055075 lt!1055073))))

(declare-fun b!3097713 () Bool)

(declare-fun e!1936132 () Regex!9551)

(assert (=> b!3097713 (= e!1936132 (Concat!14872 lt!1055076 lt!1055074))))

(declare-fun b!3097714 () Bool)

(declare-fun e!1936135 () Regex!9551)

(assert (=> b!3097714 (= e!1936135 lt!1055074)))

(declare-fun b!3097715 () Bool)

(declare-fun c!517379 () Bool)

(assert (=> b!3097715 (= c!517379 (isEmptyExpr!608 lt!1055076))))

(assert (=> b!3097715 (= e!1936129 e!1936135)))

(declare-fun bm!218128 () Bool)

(assert (=> bm!218128 (= call!218133 call!218128)))

(declare-fun b!3097716 () Bool)

(declare-fun e!1936131 () Bool)

(assert (=> b!3097716 (= e!1936131 call!218134)))

(declare-fun b!3097717 () Bool)

(assert (=> b!3097717 (= c!517378 ((_ is Union!9551) (regTwo!19614 r!17423)))))

(assert (=> b!3097717 (= e!1936136 e!1936133)))

(declare-fun bm!218129 () Bool)

(assert (=> bm!218129 (= call!218132 call!218131)))

(declare-fun b!3097718 () Bool)

(assert (=> b!3097718 (= e!1936132 lt!1055076)))

(declare-fun b!3097719 () Bool)

(assert (=> b!3097719 (= e!1936142 EmptyLang!9551)))

(declare-fun b!3097720 () Bool)

(assert (=> b!3097720 (= e!1936133 e!1936129)))

(assert (=> b!3097720 (= lt!1055076 call!218130)))

(assert (=> b!3097720 (= lt!1055074 call!218133)))

(declare-fun res!1268972 () Bool)

(assert (=> b!3097720 (= res!1268972 call!218132)))

(declare-fun e!1936138 () Bool)

(assert (=> b!3097720 (=> res!1268972 e!1936138)))

(declare-fun c!517372 () Bool)

(assert (=> b!3097720 (= c!517372 e!1936138)))

(declare-fun b!3097721 () Bool)

(assert (=> b!3097721 (= e!1936138 call!218129)))

(declare-fun b!3097722 () Bool)

(assert (=> b!3097722 (= e!1936135 e!1936132)))

(declare-fun c!517374 () Bool)

(assert (=> b!3097722 (= c!517374 call!218134)))

(declare-fun b!3097723 () Bool)

(declare-fun c!517376 () Bool)

(assert (=> b!3097723 (= c!517376 e!1936131)))

(declare-fun res!1268970 () Bool)

(assert (=> b!3097723 (=> res!1268970 e!1936131)))

(assert (=> b!3097723 (= res!1268970 call!218131)))

(assert (=> b!3097723 (= lt!1055077 call!218128)))

(assert (=> b!3097723 (= e!1936136 e!1936139)))

(declare-fun b!3097724 () Bool)

(assert (=> b!3097724 (= e!1936140 lt!1055073)))

(assert (= (and d!860629 c!517382) b!3097719))

(assert (= (and d!860629 (not c!517382)) b!3097711))

(assert (= (and b!3097711 c!517375) b!3097710))

(assert (= (and b!3097711 (not c!517375)) b!3097706))

(assert (= (and b!3097706 c!517381) b!3097705))

(assert (= (and b!3097706 (not c!517381)) b!3097708))

(assert (= (and b!3097708 c!517377) b!3097723))

(assert (= (and b!3097708 (not c!517377)) b!3097717))

(assert (= (and b!3097723 (not res!1268970)) b!3097716))

(assert (= (and b!3097723 c!517376) b!3097707))

(assert (= (and b!3097723 (not c!517376)) b!3097703))

(assert (= (and b!3097717 c!517378) b!3097702))

(assert (= (and b!3097717 (not c!517378)) b!3097720))

(assert (= (and b!3097702 c!517373) b!3097724))

(assert (= (and b!3097702 (not c!517373)) b!3097701))

(assert (= (and b!3097701 c!517380) b!3097704))

(assert (= (and b!3097701 (not c!517380)) b!3097712))

(assert (= (and b!3097720 (not res!1268972)) b!3097721))

(assert (= (and b!3097720 c!517372) b!3097709))

(assert (= (and b!3097720 (not c!517372)) b!3097715))

(assert (= (and b!3097715 c!517379) b!3097714))

(assert (= (and b!3097715 (not c!517379)) b!3097722))

(assert (= (and b!3097722 c!517374) b!3097718))

(assert (= (and b!3097722 (not c!517374)) b!3097713))

(assert (= (or b!3097702 b!3097720) bm!218128))

(assert (= (or b!3097702 b!3097720) bm!218125))

(assert (= (or b!3097701 b!3097721) bm!218126))

(assert (= (or b!3097702 b!3097720) bm!218129))

(assert (= (or b!3097716 b!3097722) bm!218124))

(assert (= (or b!3097723 bm!218128) bm!218123))

(assert (= (or b!3097723 bm!218129) bm!218127))

(assert (= (and d!860629 res!1268971) b!3097700))

(declare-fun m!3399387 () Bool)

(assert (=> bm!218124 m!3399387))

(declare-fun m!3399389 () Bool)

(assert (=> bm!218126 m!3399389))

(declare-fun m!3399391 () Bool)

(assert (=> bm!218123 m!3399391))

(declare-fun m!3399393 () Bool)

(assert (=> b!3097715 m!3399393))

(declare-fun m!3399395 () Bool)

(assert (=> b!3097700 m!3399395))

(assert (=> b!3097700 m!3399359))

(declare-fun m!3399397 () Bool)

(assert (=> d!860629 m!3399397))

(assert (=> d!860629 m!3399013))

(declare-fun m!3399399 () Bool)

(assert (=> bm!218127 m!3399399))

(declare-fun m!3399401 () Bool)

(assert (=> bm!218125 m!3399401))

(assert (=> b!3097012 d!860629))

(declare-fun b!3097725 () Bool)

(declare-fun e!1936144 () Bool)

(declare-fun lt!1055084 () Regex!9551)

(assert (=> b!3097725 (= e!1936144 (= (nullable!3197 lt!1055084) (nullable!3197 (regOne!19614 r!17423))))))

(declare-fun b!3097726 () Bool)

(declare-fun c!517391 () Bool)

(declare-fun call!218136 () Bool)

(assert (=> b!3097726 (= c!517391 call!218136)))

(declare-fun e!1936154 () Regex!9551)

(declare-fun e!1936155 () Regex!9551)

(assert (=> b!3097726 (= e!1936154 e!1936155)))

(declare-fun b!3097727 () Bool)

(declare-fun e!1936147 () Regex!9551)

(assert (=> b!3097727 (= e!1936147 e!1936154)))

(declare-fun lt!1055081 () Regex!9551)

(declare-fun call!218140 () Regex!9551)

(assert (=> b!3097727 (= lt!1055081 call!218140)))

(declare-fun lt!1055079 () Regex!9551)

(declare-fun call!218137 () Regex!9551)

(assert (=> b!3097727 (= lt!1055079 call!218137)))

(declare-fun c!517384 () Bool)

(declare-fun call!218139 () Bool)

(assert (=> b!3097727 (= c!517384 call!218139)))

(declare-fun b!3097728 () Bool)

(declare-fun e!1936153 () Regex!9551)

(declare-fun lt!1055083 () Regex!9551)

(assert (=> b!3097728 (= e!1936153 (Star!9551 lt!1055083))))

(declare-fun c!517389 () Bool)

(declare-fun c!517388 () Bool)

(declare-fun call!218135 () Regex!9551)

(declare-fun bm!218130 () Bool)

(assert (=> bm!218130 (= call!218135 (simplify!506 (ite c!517388 (reg!9880 (regOne!19614 r!17423)) (ite c!517389 (regOne!19615 (regOne!19614 r!17423)) (regTwo!19614 (regOne!19614 r!17423))))))))

(declare-fun call!218141 () Bool)

(declare-fun bm!218131 () Bool)

(declare-fun lt!1055080 () Regex!9551)

(assert (=> bm!218131 (= call!218141 (isEmptyExpr!608 (ite c!517388 lt!1055083 lt!1055080)))))

(declare-fun b!3097729 () Bool)

(assert (=> b!3097729 (= e!1936155 lt!1055081)))

(declare-fun b!3097730 () Bool)

(declare-fun e!1936151 () Regex!9551)

(assert (=> b!3097730 (= e!1936151 EmptyExpr!9551)))

(declare-fun b!3097731 () Bool)

(declare-fun c!517392 () Bool)

(assert (=> b!3097731 (= c!517392 ((_ is EmptyExpr!9551) (regOne!19614 r!17423)))))

(declare-fun e!1936148 () Regex!9551)

(assert (=> b!3097731 (= e!1936148 e!1936151)))

(declare-fun b!3097732 () Bool)

(assert (=> b!3097732 (= e!1936153 EmptyExpr!9551)))

(declare-fun bm!218132 () Bool)

(assert (=> bm!218132 (= call!218137 (simplify!506 (ite c!517389 (regTwo!19615 (regOne!19614 r!17423)) (regOne!19614 (regOne!19614 r!17423)))))))

(declare-fun b!3097733 () Bool)

(declare-fun e!1936150 () Regex!9551)

(assert (=> b!3097733 (= e!1936151 e!1936150)))

(assert (=> b!3097733 (= c!517388 ((_ is Star!9551) (regOne!19614 r!17423)))))

(declare-fun b!3097734 () Bool)

(declare-fun e!1936143 () Regex!9551)

(assert (=> b!3097734 (= e!1936143 EmptyLang!9551)))

(declare-fun b!3097735 () Bool)

(assert (=> b!3097735 (= e!1936148 (regOne!19614 r!17423))))

(declare-fun bm!218133 () Bool)

(assert (=> bm!218133 (= call!218136 (isEmptyLang!602 (ite c!517389 lt!1055079 lt!1055080)))))

(declare-fun d!860631 () Bool)

(assert (=> d!860631 e!1936144))

(declare-fun res!1268974 () Bool)

(assert (=> d!860631 (=> (not res!1268974) (not e!1936144))))

(assert (=> d!860631 (= res!1268974 (validRegex!4284 lt!1055084))))

(declare-fun e!1936156 () Regex!9551)

(assert (=> d!860631 (= lt!1055084 e!1936156)))

(declare-fun c!517393 () Bool)

(assert (=> d!860631 (= c!517393 ((_ is EmptyLang!9551) (regOne!19614 r!17423)))))

(assert (=> d!860631 (validRegex!4284 (regOne!19614 r!17423))))

(assert (=> d!860631 (= (simplify!506 (regOne!19614 r!17423)) lt!1055084)))

(declare-fun b!3097736 () Bool)

(assert (=> b!3097736 (= e!1936156 e!1936148)))

(declare-fun c!517386 () Bool)

(assert (=> b!3097736 (= c!517386 ((_ is ElementMatch!9551) (regOne!19614 r!17423)))))

(declare-fun lt!1055082 () Regex!9551)

(declare-fun call!218138 () Bool)

(declare-fun bm!218134 () Bool)

(assert (=> bm!218134 (= call!218138 (isEmptyLang!602 (ite c!517388 lt!1055083 (ite c!517389 lt!1055081 lt!1055082))))))

(declare-fun b!3097737 () Bool)

(assert (=> b!3097737 (= e!1936155 (Union!9551 lt!1055081 lt!1055079))))

(declare-fun b!3097738 () Bool)

(declare-fun e!1936146 () Regex!9551)

(assert (=> b!3097738 (= e!1936146 (Concat!14872 lt!1055082 lt!1055080))))

(declare-fun b!3097739 () Bool)

(declare-fun e!1936149 () Regex!9551)

(assert (=> b!3097739 (= e!1936149 lt!1055080)))

(declare-fun b!3097740 () Bool)

(declare-fun c!517390 () Bool)

(assert (=> b!3097740 (= c!517390 (isEmptyExpr!608 lt!1055082))))

(assert (=> b!3097740 (= e!1936143 e!1936149)))

(declare-fun bm!218135 () Bool)

(assert (=> bm!218135 (= call!218140 call!218135)))

(declare-fun b!3097741 () Bool)

(declare-fun e!1936145 () Bool)

(assert (=> b!3097741 (= e!1936145 call!218141)))

(declare-fun b!3097742 () Bool)

(assert (=> b!3097742 (= c!517389 ((_ is Union!9551) (regOne!19614 r!17423)))))

(assert (=> b!3097742 (= e!1936150 e!1936147)))

(declare-fun bm!218136 () Bool)

(assert (=> bm!218136 (= call!218139 call!218138)))

(declare-fun b!3097743 () Bool)

(assert (=> b!3097743 (= e!1936146 lt!1055082)))

(declare-fun b!3097744 () Bool)

(assert (=> b!3097744 (= e!1936156 EmptyLang!9551)))

(declare-fun b!3097745 () Bool)

(assert (=> b!3097745 (= e!1936147 e!1936143)))

(assert (=> b!3097745 (= lt!1055082 call!218137)))

(assert (=> b!3097745 (= lt!1055080 call!218140)))

(declare-fun res!1268975 () Bool)

(assert (=> b!3097745 (= res!1268975 call!218139)))

(declare-fun e!1936152 () Bool)

(assert (=> b!3097745 (=> res!1268975 e!1936152)))

(declare-fun c!517383 () Bool)

(assert (=> b!3097745 (= c!517383 e!1936152)))

(declare-fun b!3097746 () Bool)

(assert (=> b!3097746 (= e!1936152 call!218136)))

(declare-fun b!3097747 () Bool)

(assert (=> b!3097747 (= e!1936149 e!1936146)))

(declare-fun c!517385 () Bool)

(assert (=> b!3097747 (= c!517385 call!218141)))

(declare-fun b!3097748 () Bool)

(declare-fun c!517387 () Bool)

(assert (=> b!3097748 (= c!517387 e!1936145)))

(declare-fun res!1268973 () Bool)

(assert (=> b!3097748 (=> res!1268973 e!1936145)))

(assert (=> b!3097748 (= res!1268973 call!218138)))

(assert (=> b!3097748 (= lt!1055083 call!218135)))

(assert (=> b!3097748 (= e!1936150 e!1936153)))

(declare-fun b!3097749 () Bool)

(assert (=> b!3097749 (= e!1936154 lt!1055079)))

(assert (= (and d!860631 c!517393) b!3097744))

(assert (= (and d!860631 (not c!517393)) b!3097736))

(assert (= (and b!3097736 c!517386) b!3097735))

(assert (= (and b!3097736 (not c!517386)) b!3097731))

(assert (= (and b!3097731 c!517392) b!3097730))

(assert (= (and b!3097731 (not c!517392)) b!3097733))

(assert (= (and b!3097733 c!517388) b!3097748))

(assert (= (and b!3097733 (not c!517388)) b!3097742))

(assert (= (and b!3097748 (not res!1268973)) b!3097741))

(assert (= (and b!3097748 c!517387) b!3097732))

(assert (= (and b!3097748 (not c!517387)) b!3097728))

(assert (= (and b!3097742 c!517389) b!3097727))

(assert (= (and b!3097742 (not c!517389)) b!3097745))

(assert (= (and b!3097727 c!517384) b!3097749))

(assert (= (and b!3097727 (not c!517384)) b!3097726))

(assert (= (and b!3097726 c!517391) b!3097729))

(assert (= (and b!3097726 (not c!517391)) b!3097737))

(assert (= (and b!3097745 (not res!1268975)) b!3097746))

(assert (= (and b!3097745 c!517383) b!3097734))

(assert (= (and b!3097745 (not c!517383)) b!3097740))

(assert (= (and b!3097740 c!517390) b!3097739))

(assert (= (and b!3097740 (not c!517390)) b!3097747))

(assert (= (and b!3097747 c!517385) b!3097743))

(assert (= (and b!3097747 (not c!517385)) b!3097738))

(assert (= (or b!3097727 b!3097745) bm!218135))

(assert (= (or b!3097727 b!3097745) bm!218132))

(assert (= (or b!3097726 b!3097746) bm!218133))

(assert (= (or b!3097727 b!3097745) bm!218136))

(assert (= (or b!3097741 b!3097747) bm!218131))

(assert (= (or b!3097748 bm!218135) bm!218130))

(assert (= (or b!3097748 bm!218136) bm!218134))

(assert (= (and d!860631 res!1268974) b!3097725))

(declare-fun m!3399403 () Bool)

(assert (=> bm!218131 m!3399403))

(declare-fun m!3399405 () Bool)

(assert (=> bm!218133 m!3399405))

(declare-fun m!3399407 () Bool)

(assert (=> bm!218130 m!3399407))

(declare-fun m!3399409 () Bool)

(assert (=> b!3097740 m!3399409))

(declare-fun m!3399411 () Bool)

(assert (=> b!3097725 m!3399411))

(assert (=> b!3097725 m!3399353))

(declare-fun m!3399413 () Bool)

(assert (=> d!860631 m!3399413))

(assert (=> d!860631 m!3399055))

(declare-fun m!3399415 () Bool)

(assert (=> bm!218134 m!3399415))

(declare-fun m!3399417 () Bool)

(assert (=> bm!218132 m!3399417))

(assert (=> b!3097012 d!860631))

(declare-fun b!3097750 () Bool)

(declare-fun res!1268980 () Bool)

(declare-fun e!1936161 () Bool)

(assert (=> b!3097750 (=> (not res!1268980) (not e!1936161))))

(declare-fun call!218142 () Bool)

(assert (=> b!3097750 (= res!1268980 call!218142)))

(declare-fun e!1936159 () Bool)

(assert (=> b!3097750 (= e!1936159 e!1936161)))

(declare-fun b!3097751 () Bool)

(declare-fun e!1936158 () Bool)

(declare-fun e!1936162 () Bool)

(assert (=> b!3097751 (= e!1936158 e!1936162)))

(declare-fun res!1268977 () Bool)

(assert (=> b!3097751 (=> (not res!1268977) (not e!1936162))))

(declare-fun call!218144 () Bool)

(assert (=> b!3097751 (= res!1268977 call!218144)))

(declare-fun b!3097752 () Bool)

(assert (=> b!3097752 (= e!1936162 call!218142)))

(declare-fun bm!218137 () Bool)

(declare-fun c!517395 () Bool)

(assert (=> bm!218137 (= call!218144 (validRegex!4284 (ite c!517395 (regTwo!19615 r!17423) (regOne!19614 r!17423))))))

(declare-fun bm!218138 () Bool)

(declare-fun call!218143 () Bool)

(assert (=> bm!218138 (= call!218142 call!218143)))

(declare-fun b!3097753 () Bool)

(declare-fun e!1936163 () Bool)

(assert (=> b!3097753 (= e!1936163 e!1936159)))

(assert (=> b!3097753 (= c!517395 ((_ is Union!9551) r!17423))))

(declare-fun b!3097754 () Bool)

(declare-fun e!1936160 () Bool)

(assert (=> b!3097754 (= e!1936160 e!1936163)))

(declare-fun c!517394 () Bool)

(assert (=> b!3097754 (= c!517394 ((_ is Star!9551) r!17423))))

(declare-fun b!3097755 () Bool)

(declare-fun e!1936157 () Bool)

(assert (=> b!3097755 (= e!1936157 call!218143)))

(declare-fun b!3097756 () Bool)

(assert (=> b!3097756 (= e!1936161 call!218144)))

(declare-fun b!3097757 () Bool)

(declare-fun res!1268979 () Bool)

(assert (=> b!3097757 (=> res!1268979 e!1936158)))

(assert (=> b!3097757 (= res!1268979 (not ((_ is Concat!14872) r!17423)))))

(assert (=> b!3097757 (= e!1936159 e!1936158)))

(declare-fun b!3097758 () Bool)

(assert (=> b!3097758 (= e!1936163 e!1936157)))

(declare-fun res!1268976 () Bool)

(assert (=> b!3097758 (= res!1268976 (not (nullable!3197 (reg!9880 r!17423))))))

(assert (=> b!3097758 (=> (not res!1268976) (not e!1936157))))

(declare-fun d!860633 () Bool)

(declare-fun res!1268978 () Bool)

(assert (=> d!860633 (=> res!1268978 e!1936160)))

(assert (=> d!860633 (= res!1268978 ((_ is ElementMatch!9551) r!17423))))

(assert (=> d!860633 (= (validRegex!4284 r!17423) e!1936160)))

(declare-fun bm!218139 () Bool)

(assert (=> bm!218139 (= call!218143 (validRegex!4284 (ite c!517394 (reg!9880 r!17423) (ite c!517395 (regOne!19615 r!17423) (regTwo!19614 r!17423)))))))

(assert (= (and d!860633 (not res!1268978)) b!3097754))

(assert (= (and b!3097754 c!517394) b!3097758))

(assert (= (and b!3097754 (not c!517394)) b!3097753))

(assert (= (and b!3097758 res!1268976) b!3097755))

(assert (= (and b!3097753 c!517395) b!3097750))

(assert (= (and b!3097753 (not c!517395)) b!3097757))

(assert (= (and b!3097750 res!1268980) b!3097756))

(assert (= (and b!3097757 (not res!1268979)) b!3097751))

(assert (= (and b!3097751 res!1268977) b!3097752))

(assert (= (or b!3097750 b!3097752) bm!218138))

(assert (= (or b!3097756 b!3097751) bm!218137))

(assert (= (or b!3097755 bm!218138) bm!218139))

(declare-fun m!3399419 () Bool)

(assert (=> bm!218137 m!3399419))

(declare-fun m!3399421 () Bool)

(assert (=> b!3097758 m!3399421))

(declare-fun m!3399423 () Bool)

(assert (=> bm!218139 m!3399423))

(assert (=> start!293952 d!860633))

(declare-fun d!860635 () Bool)

(assert (=> d!860635 (= (isEmptyExpr!608 lt!1054973) ((_ is EmptyExpr!9551) lt!1054973))))

(assert (=> b!3097017 d!860635))

(declare-fun d!860637 () Bool)

(assert (=> d!860637 (= (isEmpty!19636 s!11993) ((_ is Nil!35292) s!11993))))

(assert (=> b!3097014 d!860637))

(declare-fun b!3097772 () Bool)

(declare-fun e!1936166 () Bool)

(declare-fun tp!974225 () Bool)

(declare-fun tp!974222 () Bool)

(assert (=> b!3097772 (= e!1936166 (and tp!974225 tp!974222))))

(declare-fun b!3097771 () Bool)

(declare-fun tp!974224 () Bool)

(assert (=> b!3097771 (= e!1936166 tp!974224)))

(declare-fun b!3097769 () Bool)

(assert (=> b!3097769 (= e!1936166 tp_is_empty!16665)))

(assert (=> b!3097010 (= tp!974171 e!1936166)))

(declare-fun b!3097770 () Bool)

(declare-fun tp!974226 () Bool)

(declare-fun tp!974223 () Bool)

(assert (=> b!3097770 (= e!1936166 (and tp!974226 tp!974223))))

(assert (= (and b!3097010 ((_ is ElementMatch!9551) (reg!9880 r!17423))) b!3097769))

(assert (= (and b!3097010 ((_ is Concat!14872) (reg!9880 r!17423))) b!3097770))

(assert (= (and b!3097010 ((_ is Star!9551) (reg!9880 r!17423))) b!3097771))

(assert (= (and b!3097010 ((_ is Union!9551) (reg!9880 r!17423))) b!3097772))

(declare-fun b!3097777 () Bool)

(declare-fun e!1936169 () Bool)

(declare-fun tp!974229 () Bool)

(assert (=> b!3097777 (= e!1936169 (and tp_is_empty!16665 tp!974229))))

(assert (=> b!3097019 (= tp!974168 e!1936169)))

(assert (= (and b!3097019 ((_ is Cons!35292) (t!234481 s!11993))) b!3097777))

(declare-fun b!3097781 () Bool)

(declare-fun e!1936170 () Bool)

(declare-fun tp!974233 () Bool)

(declare-fun tp!974230 () Bool)

(assert (=> b!3097781 (= e!1936170 (and tp!974233 tp!974230))))

(declare-fun b!3097780 () Bool)

(declare-fun tp!974232 () Bool)

(assert (=> b!3097780 (= e!1936170 tp!974232)))

(declare-fun b!3097778 () Bool)

(assert (=> b!3097778 (= e!1936170 tp_is_empty!16665)))

(assert (=> b!3097008 (= tp!974172 e!1936170)))

(declare-fun b!3097779 () Bool)

(declare-fun tp!974234 () Bool)

(declare-fun tp!974231 () Bool)

(assert (=> b!3097779 (= e!1936170 (and tp!974234 tp!974231))))

(assert (= (and b!3097008 ((_ is ElementMatch!9551) (regOne!19615 r!17423))) b!3097778))

(assert (= (and b!3097008 ((_ is Concat!14872) (regOne!19615 r!17423))) b!3097779))

(assert (= (and b!3097008 ((_ is Star!9551) (regOne!19615 r!17423))) b!3097780))

(assert (= (and b!3097008 ((_ is Union!9551) (regOne!19615 r!17423))) b!3097781))

(declare-fun b!3097785 () Bool)

(declare-fun e!1936171 () Bool)

(declare-fun tp!974238 () Bool)

(declare-fun tp!974235 () Bool)

(assert (=> b!3097785 (= e!1936171 (and tp!974238 tp!974235))))

(declare-fun b!3097784 () Bool)

(declare-fun tp!974237 () Bool)

(assert (=> b!3097784 (= e!1936171 tp!974237)))

(declare-fun b!3097782 () Bool)

(assert (=> b!3097782 (= e!1936171 tp_is_empty!16665)))

(assert (=> b!3097008 (= tp!974173 e!1936171)))

(declare-fun b!3097783 () Bool)

(declare-fun tp!974239 () Bool)

(declare-fun tp!974236 () Bool)

(assert (=> b!3097783 (= e!1936171 (and tp!974239 tp!974236))))

(assert (= (and b!3097008 ((_ is ElementMatch!9551) (regTwo!19615 r!17423))) b!3097782))

(assert (= (and b!3097008 ((_ is Concat!14872) (regTwo!19615 r!17423))) b!3097783))

(assert (= (and b!3097008 ((_ is Star!9551) (regTwo!19615 r!17423))) b!3097784))

(assert (= (and b!3097008 ((_ is Union!9551) (regTwo!19615 r!17423))) b!3097785))

(declare-fun b!3097789 () Bool)

(declare-fun e!1936172 () Bool)

(declare-fun tp!974243 () Bool)

(declare-fun tp!974240 () Bool)

(assert (=> b!3097789 (= e!1936172 (and tp!974243 tp!974240))))

(declare-fun b!3097788 () Bool)

(declare-fun tp!974242 () Bool)

(assert (=> b!3097788 (= e!1936172 tp!974242)))

(declare-fun b!3097786 () Bool)

(assert (=> b!3097786 (= e!1936172 tp_is_empty!16665)))

(assert (=> b!3097013 (= tp!974170 e!1936172)))

(declare-fun b!3097787 () Bool)

(declare-fun tp!974244 () Bool)

(declare-fun tp!974241 () Bool)

(assert (=> b!3097787 (= e!1936172 (and tp!974244 tp!974241))))

(assert (= (and b!3097013 ((_ is ElementMatch!9551) (regOne!19614 r!17423))) b!3097786))

(assert (= (and b!3097013 ((_ is Concat!14872) (regOne!19614 r!17423))) b!3097787))

(assert (= (and b!3097013 ((_ is Star!9551) (regOne!19614 r!17423))) b!3097788))

(assert (= (and b!3097013 ((_ is Union!9551) (regOne!19614 r!17423))) b!3097789))

(declare-fun b!3097793 () Bool)

(declare-fun e!1936173 () Bool)

(declare-fun tp!974248 () Bool)

(declare-fun tp!974245 () Bool)

(assert (=> b!3097793 (= e!1936173 (and tp!974248 tp!974245))))

(declare-fun b!3097792 () Bool)

(declare-fun tp!974247 () Bool)

(assert (=> b!3097792 (= e!1936173 tp!974247)))

(declare-fun b!3097790 () Bool)

(assert (=> b!3097790 (= e!1936173 tp_is_empty!16665)))

(assert (=> b!3097013 (= tp!974169 e!1936173)))

(declare-fun b!3097791 () Bool)

(declare-fun tp!974249 () Bool)

(declare-fun tp!974246 () Bool)

(assert (=> b!3097791 (= e!1936173 (and tp!974249 tp!974246))))

(assert (= (and b!3097013 ((_ is ElementMatch!9551) (regTwo!19614 r!17423))) b!3097790))

(assert (= (and b!3097013 ((_ is Concat!14872) (regTwo!19614 r!17423))) b!3097791))

(assert (= (and b!3097013 ((_ is Star!9551) (regTwo!19614 r!17423))) b!3097792))

(assert (= (and b!3097013 ((_ is Union!9551) (regTwo!19614 r!17423))) b!3097793))

(check-sat (not d!860617) (not b!3097622) (not b!3097779) (not b!3097583) (not b!3097789) (not b!3097603) (not d!860631) (not b!3097771) (not bm!218107) (not d!860601) (not d!860563) (not b!3097614) (not b!3097785) (not b!3097780) (not d!860629) (not b!3097600) (not b!3097772) (not bm!218076) (not b!3097546) (not b!3097632) (not b!3097552) (not b!3097387) (not b!3097590) (not b!3097597) (not b!3097485) (not bm!218100) (not b!3097547) (not b!3097579) (not b!3097589) (not b!3097700) (not d!860595) (not b!3097385) (not bm!218137) (not b!3097604) (not d!860591) (not b!3097788) (not b!3097545) (not b!3097616) (not b!3097758) (not b!3097386) (not b!3097380) (not b!3097645) (not d!860597) (not bm!218103) (not b!3097602) (not d!860599) (not b!3097740) (not bm!218132) (not b!3097787) (not bm!218101) (not d!860619) (not b!3097644) (not b!3097377) (not d!860623) (not b!3097617) (not b!3097588) (not b!3097725) (not bm!218131) (not b!3097792) (not b!3097580) (not b!3097781) (not bm!218104) (not b!3097544) (not b!3097784) (not bm!218127) (not bm!218096) (not b!3097618) (not bm!218133) (not bm!218077) (not bm!218098) (not bm!218126) tp_is_empty!16665 (not b!3097793) (not b!3097628) (not bm!218080) (not d!860613) (not b!3097783) (not bm!218105) (not b!3097642) (not b!3097586) (not b!3097770) (not b!3097791) (not b!3097299) (not bm!218106) (not d!860593) (not b!3097301) (not bm!218130) (not d!860573) (not bm!218139) (not bm!218134) (not d!860605) (not b!3097594) (not b!3097636) (not b!3097625) (not bm!218099) (not bm!218125) (not bm!218123) (not b!3097777) (not b!3097715) (not b!3097611) (not b!3097383) (not b!3097631) (not b!3097630) (not d!860615) (not d!860611) (not b!3097608) (not b!3097646) (not b!3097639) (not bm!218124) (not bm!218108) (not d!860625) (not b!3097551) (not b!3097550) (not b!3097554))
(check-sat)
