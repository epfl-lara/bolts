; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292780 () Bool)

(assert start!292780)

(declare-fun b!3069759 () Bool)

(declare-fun e!1921335 () Bool)

(declare-fun e!1921336 () Bool)

(assert (=> b!3069759 (= e!1921335 (not e!1921336))))

(declare-fun res!1259878 () Bool)

(assert (=> b!3069759 (=> res!1259878 e!1921336)))

(declare-fun lt!1051364 () Bool)

(declare-datatypes ((C!19208 0))(
  ( (C!19209 (val!11640 Int)) )
))
(declare-datatypes ((Regex!9511 0))(
  ( (ElementMatch!9511 (c!510303 C!19208)) (Concat!14832 (regOne!19534 Regex!9511) (regTwo!19534 Regex!9511)) (EmptyExpr!9511) (Star!9511 (reg!9840 Regex!9511)) (EmptyLang!9511) (Union!9511 (regOne!19535 Regex!9511) (regTwo!19535 Regex!9511)) )
))
(declare-fun r!17423 () Regex!9511)

(get-info :version)

(assert (=> b!3069759 (= res!1259878 (or lt!1051364 (not ((_ is Concat!14832) r!17423))))))

(declare-datatypes ((List!35376 0))(
  ( (Nil!35252) (Cons!35252 (h!40672 C!19208) (t!234441 List!35376)) )
))
(declare-fun s!11993 () List!35376)

(declare-fun matchRSpec!1648 (Regex!9511 List!35376) Bool)

(assert (=> b!3069759 (= lt!1051364 (matchRSpec!1648 r!17423 s!11993))))

(declare-fun matchR!4393 (Regex!9511 List!35376) Bool)

(assert (=> b!3069759 (= lt!1051364 (matchR!4393 r!17423 s!11993))))

(declare-datatypes ((Unit!49461 0))(
  ( (Unit!49462) )
))
(declare-fun lt!1051363 () Unit!49461)

(declare-fun mainMatchTheorem!1648 (Regex!9511 List!35376) Unit!49461)

(assert (=> b!3069759 (= lt!1051363 (mainMatchTheorem!1648 r!17423 s!11993))))

(declare-fun res!1259872 () Bool)

(assert (=> start!292780 (=> (not res!1259872) (not e!1921335))))

(declare-fun validRegex!4244 (Regex!9511) Bool)

(assert (=> start!292780 (= res!1259872 (validRegex!4244 r!17423))))

(assert (=> start!292780 e!1921335))

(declare-fun e!1921337 () Bool)

(assert (=> start!292780 e!1921337))

(declare-fun e!1921334 () Bool)

(assert (=> start!292780 e!1921334))

(declare-fun b!3069760 () Bool)

(declare-fun tp!968668 () Bool)

(declare-fun tp!968672 () Bool)

(assert (=> b!3069760 (= e!1921337 (and tp!968668 tp!968672))))

(declare-fun b!3069761 () Bool)

(declare-fun e!1921339 () Bool)

(assert (=> b!3069761 (= e!1921339 (validRegex!4244 (regOne!19534 r!17423)))))

(declare-fun b!3069762 () Bool)

(declare-fun res!1259873 () Bool)

(assert (=> b!3069762 (=> res!1259873 e!1921336)))

(declare-fun isEmpty!19577 (List!35376) Bool)

(assert (=> b!3069762 (= res!1259873 (isEmpty!19577 s!11993))))

(declare-fun b!3069763 () Bool)

(declare-fun e!1921338 () Bool)

(assert (=> b!3069763 (= e!1921336 e!1921338)))

(declare-fun res!1259871 () Bool)

(assert (=> b!3069763 (=> res!1259871 e!1921338)))

(declare-fun lt!1051361 () Regex!9511)

(declare-fun isEmptyLang!562 (Regex!9511) Bool)

(assert (=> b!3069763 (= res!1259871 (isEmptyLang!562 lt!1051361))))

(declare-fun lt!1051358 () Regex!9511)

(declare-fun simplify!466 (Regex!9511) Regex!9511)

(assert (=> b!3069763 (= lt!1051358 (simplify!466 (regTwo!19534 r!17423)))))

(assert (=> b!3069763 (= lt!1051361 (simplify!466 (regOne!19534 r!17423)))))

(declare-fun b!3069764 () Bool)

(declare-fun res!1259874 () Bool)

(assert (=> b!3069764 (=> res!1259874 e!1921338)))

(declare-fun isEmptyExpr!568 (Regex!9511) Bool)

(assert (=> b!3069764 (= res!1259874 (not (isEmptyExpr!568 lt!1051358)))))

(declare-fun b!3069765 () Bool)

(declare-fun res!1259877 () Bool)

(assert (=> b!3069765 (=> res!1259877 e!1921338)))

(assert (=> b!3069765 (= res!1259877 (isEmptyExpr!568 lt!1051361))))

(declare-fun b!3069766 () Bool)

(declare-fun tp_is_empty!16585 () Bool)

(declare-fun tp!968671 () Bool)

(assert (=> b!3069766 (= e!1921334 (and tp_is_empty!16585 tp!968671))))

(declare-fun b!3069767 () Bool)

(assert (=> b!3069767 (= e!1921337 tp_is_empty!16585)))

(declare-fun b!3069768 () Bool)

(declare-fun tp!968670 () Bool)

(declare-fun tp!968673 () Bool)

(assert (=> b!3069768 (= e!1921337 (and tp!968670 tp!968673))))

(declare-fun b!3069769 () Bool)

(declare-fun res!1259876 () Bool)

(assert (=> b!3069769 (=> res!1259876 e!1921338)))

(assert (=> b!3069769 (= res!1259876 (isEmptyLang!562 lt!1051358))))

(declare-fun b!3069770 () Bool)

(declare-fun tp!968669 () Bool)

(assert (=> b!3069770 (= e!1921337 tp!968669)))

(declare-fun b!3069771 () Bool)

(assert (=> b!3069771 (= e!1921338 e!1921339)))

(declare-fun res!1259875 () Bool)

(assert (=> b!3069771 (=> res!1259875 e!1921339)))

(declare-fun lt!1051362 () Bool)

(assert (=> b!3069771 (= res!1259875 (not lt!1051362))))

(assert (=> b!3069771 (= (matchR!4393 (regTwo!19534 r!17423) Nil!35252) (matchR!4393 lt!1051358 Nil!35252))))

(declare-fun lt!1051360 () Unit!49461)

(declare-fun lemmaSimplifySound!292 (Regex!9511 List!35376) Unit!49461)

(assert (=> b!3069771 (= lt!1051360 (lemmaSimplifySound!292 (regTwo!19534 r!17423) Nil!35252))))

(assert (=> b!3069771 (= lt!1051362 (matchR!4393 lt!1051361 s!11993))))

(assert (=> b!3069771 (= lt!1051362 (matchR!4393 (regOne!19534 r!17423) s!11993))))

(declare-fun lt!1051359 () Unit!49461)

(assert (=> b!3069771 (= lt!1051359 (lemmaSimplifySound!292 (regOne!19534 r!17423) s!11993))))

(assert (= (and start!292780 res!1259872) b!3069759))

(assert (= (and b!3069759 (not res!1259878)) b!3069762))

(assert (= (and b!3069762 (not res!1259873)) b!3069763))

(assert (= (and b!3069763 (not res!1259871)) b!3069769))

(assert (= (and b!3069769 (not res!1259876)) b!3069765))

(assert (= (and b!3069765 (not res!1259877)) b!3069764))

(assert (= (and b!3069764 (not res!1259874)) b!3069771))

(assert (= (and b!3069771 (not res!1259875)) b!3069761))

(assert (= (and start!292780 ((_ is ElementMatch!9511) r!17423)) b!3069767))

(assert (= (and start!292780 ((_ is Concat!14832) r!17423)) b!3069768))

(assert (= (and start!292780 ((_ is Star!9511) r!17423)) b!3069770))

(assert (= (and start!292780 ((_ is Union!9511) r!17423)) b!3069760))

(assert (= (and start!292780 ((_ is Cons!35252) s!11993)) b!3069766))

(declare-fun m!3385077 () Bool)

(assert (=> start!292780 m!3385077))

(declare-fun m!3385079 () Bool)

(assert (=> b!3069763 m!3385079))

(declare-fun m!3385081 () Bool)

(assert (=> b!3069763 m!3385081))

(declare-fun m!3385083 () Bool)

(assert (=> b!3069763 m!3385083))

(declare-fun m!3385085 () Bool)

(assert (=> b!3069769 m!3385085))

(declare-fun m!3385087 () Bool)

(assert (=> b!3069761 m!3385087))

(declare-fun m!3385089 () Bool)

(assert (=> b!3069762 m!3385089))

(declare-fun m!3385091 () Bool)

(assert (=> b!3069765 m!3385091))

(declare-fun m!3385093 () Bool)

(assert (=> b!3069764 m!3385093))

(declare-fun m!3385095 () Bool)

(assert (=> b!3069759 m!3385095))

(declare-fun m!3385097 () Bool)

(assert (=> b!3069759 m!3385097))

(declare-fun m!3385099 () Bool)

(assert (=> b!3069759 m!3385099))

(declare-fun m!3385101 () Bool)

(assert (=> b!3069771 m!3385101))

(declare-fun m!3385103 () Bool)

(assert (=> b!3069771 m!3385103))

(declare-fun m!3385105 () Bool)

(assert (=> b!3069771 m!3385105))

(declare-fun m!3385107 () Bool)

(assert (=> b!3069771 m!3385107))

(declare-fun m!3385109 () Bool)

(assert (=> b!3069771 m!3385109))

(declare-fun m!3385111 () Bool)

(assert (=> b!3069771 m!3385111))

(check-sat (not b!3069763) (not b!3069766) (not b!3069764) (not b!3069762) (not b!3069760) (not b!3069768) (not b!3069769) (not b!3069761) (not b!3069765) (not b!3069759) (not b!3069771) tp_is_empty!16585 (not b!3069770) (not start!292780))
(check-sat)
(get-model)

(declare-fun d!856113 () Bool)

(assert (=> d!856113 (= (isEmptyLang!562 lt!1051358) ((_ is EmptyLang!9511) lt!1051358))))

(assert (=> b!3069769 d!856113))

(declare-fun d!856115 () Bool)

(assert (=> d!856115 (= (isEmptyLang!562 lt!1051361) ((_ is EmptyLang!9511) lt!1051361))))

(assert (=> b!3069763 d!856115))

(declare-fun b!3069844 () Bool)

(declare-fun c!510341 () Bool)

(declare-fun call!213097 () Bool)

(assert (=> b!3069844 (= c!510341 call!213097)))

(declare-fun e!1921391 () Regex!9511)

(declare-fun e!1921392 () Regex!9511)

(assert (=> b!3069844 (= e!1921391 e!1921392)))

(declare-fun call!213095 () Regex!9511)

(declare-fun c!510340 () Bool)

(declare-fun c!510337 () Bool)

(declare-fun bm!213086 () Bool)

(assert (=> bm!213086 (= call!213095 (simplify!466 (ite c!510337 (reg!9840 (regTwo!19534 r!17423)) (ite c!510340 (regTwo!19535 (regTwo!19534 r!17423)) (regOne!19534 (regTwo!19534 r!17423))))))))

(declare-fun bm!213087 () Bool)

(declare-fun lt!1051379 () Regex!9511)

(declare-fun lt!1051378 () Regex!9511)

(assert (=> bm!213087 (= call!213097 (isEmptyExpr!568 (ite c!510337 lt!1051378 lt!1051379)))))

(declare-fun b!3069845 () Bool)

(declare-fun e!1921382 () Bool)

(assert (=> b!3069845 (= e!1921382 call!213097)))

(declare-fun b!3069846 () Bool)

(declare-fun e!1921390 () Regex!9511)

(declare-fun lt!1051382 () Regex!9511)

(assert (=> b!3069846 (= e!1921390 lt!1051382)))

(declare-fun bm!213088 () Bool)

(declare-fun call!213094 () Bool)

(declare-fun call!213096 () Bool)

(assert (=> bm!213088 (= call!213094 call!213096)))

(declare-fun b!3069847 () Bool)

(declare-fun e!1921384 () Regex!9511)

(assert (=> b!3069847 (= e!1921384 (regTwo!19534 r!17423))))

(declare-fun b!3069848 () Bool)

(declare-fun e!1921393 () Regex!9511)

(declare-fun lt!1051377 () Regex!9511)

(assert (=> b!3069848 (= e!1921393 (Concat!14832 lt!1051379 lt!1051377))))

(declare-fun bm!213089 () Bool)

(declare-fun call!213093 () Regex!9511)

(assert (=> bm!213089 (= call!213093 call!213095)))

(declare-fun b!3069849 () Bool)

(declare-fun c!510338 () Bool)

(assert (=> b!3069849 (= c!510338 call!213094)))

(declare-fun e!1921388 () Regex!9511)

(assert (=> b!3069849 (= e!1921388 e!1921390)))

(declare-fun b!3069850 () Bool)

(assert (=> b!3069850 (= e!1921392 e!1921393)))

(declare-fun c!510339 () Bool)

(assert (=> b!3069850 (= c!510339 (isEmptyExpr!568 lt!1051377))))

(declare-fun d!856117 () Bool)

(declare-fun e!1921387 () Bool)

(assert (=> d!856117 e!1921387))

(declare-fun res!1259893 () Bool)

(assert (=> d!856117 (=> (not res!1259893) (not e!1921387))))

(declare-fun lt!1051380 () Regex!9511)

(assert (=> d!856117 (= res!1259893 (validRegex!4244 lt!1051380))))

(declare-fun e!1921386 () Regex!9511)

(assert (=> d!856117 (= lt!1051380 e!1921386)))

(declare-fun c!510334 () Bool)

(assert (=> d!856117 (= c!510334 ((_ is EmptyLang!9511) (regTwo!19534 r!17423)))))

(assert (=> d!856117 (validRegex!4244 (regTwo!19534 r!17423))))

(assert (=> d!856117 (= (simplify!466 (regTwo!19534 r!17423)) lt!1051380)))

(declare-fun b!3069851 () Bool)

(declare-fun e!1921389 () Regex!9511)

(assert (=> b!3069851 (= e!1921389 e!1921391)))

(assert (=> b!3069851 (= lt!1051379 call!213093)))

(declare-fun call!213091 () Regex!9511)

(assert (=> b!3069851 (= lt!1051377 call!213091)))

(declare-fun res!1259891 () Bool)

(declare-fun call!213092 () Bool)

(assert (=> b!3069851 (= res!1259891 call!213092)))

(declare-fun e!1921383 () Bool)

(assert (=> b!3069851 (=> res!1259891 e!1921383)))

(declare-fun c!510344 () Bool)

(assert (=> b!3069851 (= c!510344 e!1921383)))

(declare-fun b!3069852 () Bool)

(assert (=> b!3069852 (= c!510340 ((_ is Union!9511) (regTwo!19534 r!17423)))))

(declare-fun e!1921385 () Regex!9511)

(assert (=> b!3069852 (= e!1921385 e!1921389)))

(declare-fun b!3069853 () Bool)

(declare-fun nullable!3157 (Regex!9511) Bool)

(assert (=> b!3069853 (= e!1921387 (= (nullable!3157 lt!1051380) (nullable!3157 (regTwo!19534 r!17423))))))

(declare-fun b!3069854 () Bool)

(declare-fun c!510343 () Bool)

(assert (=> b!3069854 (= c!510343 ((_ is EmptyExpr!9511) (regTwo!19534 r!17423)))))

(declare-fun e!1921394 () Regex!9511)

(assert (=> b!3069854 (= e!1921384 e!1921394)))

(declare-fun b!3069855 () Bool)

(assert (=> b!3069855 (= e!1921394 e!1921385)))

(assert (=> b!3069855 (= c!510337 ((_ is Star!9511) (regTwo!19534 r!17423)))))

(declare-fun b!3069856 () Bool)

(assert (=> b!3069856 (= e!1921386 EmptyLang!9511)))

(declare-fun bm!213090 () Bool)

(assert (=> bm!213090 (= call!213092 (isEmptyLang!562 (ite c!510340 lt!1051382 lt!1051379)))))

(declare-fun b!3069857 () Bool)

(declare-fun e!1921395 () Regex!9511)

(assert (=> b!3069857 (= e!1921395 (Star!9511 lt!1051378))))

(declare-fun b!3069858 () Bool)

(declare-fun lt!1051381 () Regex!9511)

(assert (=> b!3069858 (= e!1921388 lt!1051381)))

(declare-fun b!3069859 () Bool)

(assert (=> b!3069859 (= e!1921386 e!1921384)))

(declare-fun c!510336 () Bool)

(assert (=> b!3069859 (= c!510336 ((_ is ElementMatch!9511) (regTwo!19534 r!17423)))))

(declare-fun b!3069860 () Bool)

(assert (=> b!3069860 (= e!1921383 call!213094)))

(declare-fun bm!213091 () Bool)

(assert (=> bm!213091 (= call!213096 (isEmptyLang!562 (ite c!510337 lt!1051378 (ite c!510340 lt!1051381 lt!1051377))))))

(declare-fun b!3069861 () Bool)

(assert (=> b!3069861 (= e!1921394 EmptyExpr!9511)))

(declare-fun b!3069862 () Bool)

(assert (=> b!3069862 (= e!1921390 (Union!9511 lt!1051382 lt!1051381))))

(declare-fun bm!213092 () Bool)

(assert (=> bm!213092 (= call!213091 (simplify!466 (ite c!510340 (regOne!19535 (regTwo!19534 r!17423)) (regTwo!19534 (regTwo!19534 r!17423)))))))

(declare-fun b!3069863 () Bool)

(assert (=> b!3069863 (= e!1921391 EmptyLang!9511)))

(declare-fun b!3069864 () Bool)

(assert (=> b!3069864 (= e!1921393 lt!1051379)))

(declare-fun b!3069865 () Bool)

(assert (=> b!3069865 (= e!1921395 EmptyExpr!9511)))

(declare-fun b!3069866 () Bool)

(declare-fun c!510335 () Bool)

(assert (=> b!3069866 (= c!510335 e!1921382)))

(declare-fun res!1259892 () Bool)

(assert (=> b!3069866 (=> res!1259892 e!1921382)))

(assert (=> b!3069866 (= res!1259892 call!213096)))

(assert (=> b!3069866 (= lt!1051378 call!213095)))

(assert (=> b!3069866 (= e!1921385 e!1921395)))

(declare-fun b!3069867 () Bool)

(assert (=> b!3069867 (= e!1921389 e!1921388)))

(assert (=> b!3069867 (= lt!1051382 call!213091)))

(assert (=> b!3069867 (= lt!1051381 call!213093)))

(declare-fun c!510342 () Bool)

(assert (=> b!3069867 (= c!510342 call!213092)))

(declare-fun b!3069868 () Bool)

(assert (=> b!3069868 (= e!1921392 lt!1051377)))

(assert (= (and d!856117 c!510334) b!3069856))

(assert (= (and d!856117 (not c!510334)) b!3069859))

(assert (= (and b!3069859 c!510336) b!3069847))

(assert (= (and b!3069859 (not c!510336)) b!3069854))

(assert (= (and b!3069854 c!510343) b!3069861))

(assert (= (and b!3069854 (not c!510343)) b!3069855))

(assert (= (and b!3069855 c!510337) b!3069866))

(assert (= (and b!3069855 (not c!510337)) b!3069852))

(assert (= (and b!3069866 (not res!1259892)) b!3069845))

(assert (= (and b!3069866 c!510335) b!3069865))

(assert (= (and b!3069866 (not c!510335)) b!3069857))

(assert (= (and b!3069852 c!510340) b!3069867))

(assert (= (and b!3069852 (not c!510340)) b!3069851))

(assert (= (and b!3069867 c!510342) b!3069858))

(assert (= (and b!3069867 (not c!510342)) b!3069849))

(assert (= (and b!3069849 c!510338) b!3069846))

(assert (= (and b!3069849 (not c!510338)) b!3069862))

(assert (= (and b!3069851 (not res!1259891)) b!3069860))

(assert (= (and b!3069851 c!510344) b!3069863))

(assert (= (and b!3069851 (not c!510344)) b!3069844))

(assert (= (and b!3069844 c!510341) b!3069868))

(assert (= (and b!3069844 (not c!510341)) b!3069850))

(assert (= (and b!3069850 c!510339) b!3069864))

(assert (= (and b!3069850 (not c!510339)) b!3069848))

(assert (= (or b!3069867 b!3069851) bm!213092))

(assert (= (or b!3069867 b!3069851) bm!213089))

(assert (= (or b!3069867 b!3069851) bm!213090))

(assert (= (or b!3069849 b!3069860) bm!213088))

(assert (= (or b!3069845 b!3069844) bm!213087))

(assert (= (or b!3069866 bm!213089) bm!213086))

(assert (= (or b!3069866 bm!213088) bm!213091))

(assert (= (and d!856117 res!1259893) b!3069853))

(declare-fun m!3385113 () Bool)

(assert (=> bm!213092 m!3385113))

(declare-fun m!3385115 () Bool)

(assert (=> b!3069850 m!3385115))

(declare-fun m!3385117 () Bool)

(assert (=> bm!213087 m!3385117))

(declare-fun m!3385119 () Bool)

(assert (=> b!3069853 m!3385119))

(declare-fun m!3385121 () Bool)

(assert (=> b!3069853 m!3385121))

(declare-fun m!3385123 () Bool)

(assert (=> bm!213091 m!3385123))

(declare-fun m!3385125 () Bool)

(assert (=> d!856117 m!3385125))

(declare-fun m!3385127 () Bool)

(assert (=> d!856117 m!3385127))

(declare-fun m!3385129 () Bool)

(assert (=> bm!213086 m!3385129))

(declare-fun m!3385131 () Bool)

(assert (=> bm!213090 m!3385131))

(assert (=> b!3069763 d!856117))

(declare-fun b!3069869 () Bool)

(declare-fun c!510352 () Bool)

(declare-fun call!213104 () Bool)

(assert (=> b!3069869 (= c!510352 call!213104)))

(declare-fun e!1921405 () Regex!9511)

(declare-fun e!1921406 () Regex!9511)

(assert (=> b!3069869 (= e!1921405 e!1921406)))

(declare-fun call!213102 () Regex!9511)

(declare-fun c!510351 () Bool)

(declare-fun c!510348 () Bool)

(declare-fun bm!213093 () Bool)

(assert (=> bm!213093 (= call!213102 (simplify!466 (ite c!510348 (reg!9840 (regOne!19534 r!17423)) (ite c!510351 (regTwo!19535 (regOne!19534 r!17423)) (regOne!19534 (regOne!19534 r!17423))))))))

(declare-fun bm!213094 () Bool)

(declare-fun lt!1051385 () Regex!9511)

(declare-fun lt!1051384 () Regex!9511)

(assert (=> bm!213094 (= call!213104 (isEmptyExpr!568 (ite c!510348 lt!1051384 lt!1051385)))))

(declare-fun b!3069870 () Bool)

(declare-fun e!1921396 () Bool)

(assert (=> b!3069870 (= e!1921396 call!213104)))

(declare-fun b!3069871 () Bool)

(declare-fun e!1921404 () Regex!9511)

(declare-fun lt!1051388 () Regex!9511)

(assert (=> b!3069871 (= e!1921404 lt!1051388)))

(declare-fun bm!213095 () Bool)

(declare-fun call!213101 () Bool)

(declare-fun call!213103 () Bool)

(assert (=> bm!213095 (= call!213101 call!213103)))

(declare-fun b!3069872 () Bool)

(declare-fun e!1921398 () Regex!9511)

(assert (=> b!3069872 (= e!1921398 (regOne!19534 r!17423))))

(declare-fun b!3069873 () Bool)

(declare-fun e!1921407 () Regex!9511)

(declare-fun lt!1051383 () Regex!9511)

(assert (=> b!3069873 (= e!1921407 (Concat!14832 lt!1051385 lt!1051383))))

(declare-fun bm!213096 () Bool)

(declare-fun call!213100 () Regex!9511)

(assert (=> bm!213096 (= call!213100 call!213102)))

(declare-fun b!3069874 () Bool)

(declare-fun c!510349 () Bool)

(assert (=> b!3069874 (= c!510349 call!213101)))

(declare-fun e!1921402 () Regex!9511)

(assert (=> b!3069874 (= e!1921402 e!1921404)))

(declare-fun b!3069875 () Bool)

(assert (=> b!3069875 (= e!1921406 e!1921407)))

(declare-fun c!510350 () Bool)

(assert (=> b!3069875 (= c!510350 (isEmptyExpr!568 lt!1051383))))

(declare-fun d!856119 () Bool)

(declare-fun e!1921401 () Bool)

(assert (=> d!856119 e!1921401))

(declare-fun res!1259896 () Bool)

(assert (=> d!856119 (=> (not res!1259896) (not e!1921401))))

(declare-fun lt!1051386 () Regex!9511)

(assert (=> d!856119 (= res!1259896 (validRegex!4244 lt!1051386))))

(declare-fun e!1921400 () Regex!9511)

(assert (=> d!856119 (= lt!1051386 e!1921400)))

(declare-fun c!510345 () Bool)

(assert (=> d!856119 (= c!510345 ((_ is EmptyLang!9511) (regOne!19534 r!17423)))))

(assert (=> d!856119 (validRegex!4244 (regOne!19534 r!17423))))

(assert (=> d!856119 (= (simplify!466 (regOne!19534 r!17423)) lt!1051386)))

(declare-fun b!3069876 () Bool)

(declare-fun e!1921403 () Regex!9511)

(assert (=> b!3069876 (= e!1921403 e!1921405)))

(assert (=> b!3069876 (= lt!1051385 call!213100)))

(declare-fun call!213098 () Regex!9511)

(assert (=> b!3069876 (= lt!1051383 call!213098)))

(declare-fun res!1259894 () Bool)

(declare-fun call!213099 () Bool)

(assert (=> b!3069876 (= res!1259894 call!213099)))

(declare-fun e!1921397 () Bool)

(assert (=> b!3069876 (=> res!1259894 e!1921397)))

(declare-fun c!510355 () Bool)

(assert (=> b!3069876 (= c!510355 e!1921397)))

(declare-fun b!3069877 () Bool)

(assert (=> b!3069877 (= c!510351 ((_ is Union!9511) (regOne!19534 r!17423)))))

(declare-fun e!1921399 () Regex!9511)

(assert (=> b!3069877 (= e!1921399 e!1921403)))

(declare-fun b!3069878 () Bool)

(assert (=> b!3069878 (= e!1921401 (= (nullable!3157 lt!1051386) (nullable!3157 (regOne!19534 r!17423))))))

(declare-fun b!3069879 () Bool)

(declare-fun c!510354 () Bool)

(assert (=> b!3069879 (= c!510354 ((_ is EmptyExpr!9511) (regOne!19534 r!17423)))))

(declare-fun e!1921408 () Regex!9511)

(assert (=> b!3069879 (= e!1921398 e!1921408)))

(declare-fun b!3069880 () Bool)

(assert (=> b!3069880 (= e!1921408 e!1921399)))

(assert (=> b!3069880 (= c!510348 ((_ is Star!9511) (regOne!19534 r!17423)))))

(declare-fun b!3069881 () Bool)

(assert (=> b!3069881 (= e!1921400 EmptyLang!9511)))

(declare-fun bm!213097 () Bool)

(assert (=> bm!213097 (= call!213099 (isEmptyLang!562 (ite c!510351 lt!1051388 lt!1051385)))))

(declare-fun b!3069882 () Bool)

(declare-fun e!1921409 () Regex!9511)

(assert (=> b!3069882 (= e!1921409 (Star!9511 lt!1051384))))

(declare-fun b!3069883 () Bool)

(declare-fun lt!1051387 () Regex!9511)

(assert (=> b!3069883 (= e!1921402 lt!1051387)))

(declare-fun b!3069884 () Bool)

(assert (=> b!3069884 (= e!1921400 e!1921398)))

(declare-fun c!510347 () Bool)

(assert (=> b!3069884 (= c!510347 ((_ is ElementMatch!9511) (regOne!19534 r!17423)))))

(declare-fun b!3069885 () Bool)

(assert (=> b!3069885 (= e!1921397 call!213101)))

(declare-fun bm!213098 () Bool)

(assert (=> bm!213098 (= call!213103 (isEmptyLang!562 (ite c!510348 lt!1051384 (ite c!510351 lt!1051387 lt!1051383))))))

(declare-fun b!3069886 () Bool)

(assert (=> b!3069886 (= e!1921408 EmptyExpr!9511)))

(declare-fun b!3069887 () Bool)

(assert (=> b!3069887 (= e!1921404 (Union!9511 lt!1051388 lt!1051387))))

(declare-fun bm!213099 () Bool)

(assert (=> bm!213099 (= call!213098 (simplify!466 (ite c!510351 (regOne!19535 (regOne!19534 r!17423)) (regTwo!19534 (regOne!19534 r!17423)))))))

(declare-fun b!3069888 () Bool)

(assert (=> b!3069888 (= e!1921405 EmptyLang!9511)))

(declare-fun b!3069889 () Bool)

(assert (=> b!3069889 (= e!1921407 lt!1051385)))

(declare-fun b!3069890 () Bool)

(assert (=> b!3069890 (= e!1921409 EmptyExpr!9511)))

(declare-fun b!3069891 () Bool)

(declare-fun c!510346 () Bool)

(assert (=> b!3069891 (= c!510346 e!1921396)))

(declare-fun res!1259895 () Bool)

(assert (=> b!3069891 (=> res!1259895 e!1921396)))

(assert (=> b!3069891 (= res!1259895 call!213103)))

(assert (=> b!3069891 (= lt!1051384 call!213102)))

(assert (=> b!3069891 (= e!1921399 e!1921409)))

(declare-fun b!3069892 () Bool)

(assert (=> b!3069892 (= e!1921403 e!1921402)))

(assert (=> b!3069892 (= lt!1051388 call!213098)))

(assert (=> b!3069892 (= lt!1051387 call!213100)))

(declare-fun c!510353 () Bool)

(assert (=> b!3069892 (= c!510353 call!213099)))

(declare-fun b!3069893 () Bool)

(assert (=> b!3069893 (= e!1921406 lt!1051383)))

(assert (= (and d!856119 c!510345) b!3069881))

(assert (= (and d!856119 (not c!510345)) b!3069884))

(assert (= (and b!3069884 c!510347) b!3069872))

(assert (= (and b!3069884 (not c!510347)) b!3069879))

(assert (= (and b!3069879 c!510354) b!3069886))

(assert (= (and b!3069879 (not c!510354)) b!3069880))

(assert (= (and b!3069880 c!510348) b!3069891))

(assert (= (and b!3069880 (not c!510348)) b!3069877))

(assert (= (and b!3069891 (not res!1259895)) b!3069870))

(assert (= (and b!3069891 c!510346) b!3069890))

(assert (= (and b!3069891 (not c!510346)) b!3069882))

(assert (= (and b!3069877 c!510351) b!3069892))

(assert (= (and b!3069877 (not c!510351)) b!3069876))

(assert (= (and b!3069892 c!510353) b!3069883))

(assert (= (and b!3069892 (not c!510353)) b!3069874))

(assert (= (and b!3069874 c!510349) b!3069871))

(assert (= (and b!3069874 (not c!510349)) b!3069887))

(assert (= (and b!3069876 (not res!1259894)) b!3069885))

(assert (= (and b!3069876 c!510355) b!3069888))

(assert (= (and b!3069876 (not c!510355)) b!3069869))

(assert (= (and b!3069869 c!510352) b!3069893))

(assert (= (and b!3069869 (not c!510352)) b!3069875))

(assert (= (and b!3069875 c!510350) b!3069889))

(assert (= (and b!3069875 (not c!510350)) b!3069873))

(assert (= (or b!3069892 b!3069876) bm!213099))

(assert (= (or b!3069892 b!3069876) bm!213096))

(assert (= (or b!3069892 b!3069876) bm!213097))

(assert (= (or b!3069874 b!3069885) bm!213095))

(assert (= (or b!3069870 b!3069869) bm!213094))

(assert (= (or b!3069891 bm!213096) bm!213093))

(assert (= (or b!3069891 bm!213095) bm!213098))

(assert (= (and d!856119 res!1259896) b!3069878))

(declare-fun m!3385133 () Bool)

(assert (=> bm!213099 m!3385133))

(declare-fun m!3385135 () Bool)

(assert (=> b!3069875 m!3385135))

(declare-fun m!3385137 () Bool)

(assert (=> bm!213094 m!3385137))

(declare-fun m!3385139 () Bool)

(assert (=> b!3069878 m!3385139))

(declare-fun m!3385141 () Bool)

(assert (=> b!3069878 m!3385141))

(declare-fun m!3385143 () Bool)

(assert (=> bm!213098 m!3385143))

(declare-fun m!3385145 () Bool)

(assert (=> d!856119 m!3385145))

(assert (=> d!856119 m!3385087))

(declare-fun m!3385147 () Bool)

(assert (=> bm!213093 m!3385147))

(declare-fun m!3385149 () Bool)

(assert (=> bm!213097 m!3385149))

(assert (=> b!3069763 d!856119))

(declare-fun d!856121 () Bool)

(assert (=> d!856121 (= (isEmpty!19577 s!11993) ((_ is Nil!35252) s!11993))))

(assert (=> b!3069762 d!856121))

(declare-fun b!3069912 () Bool)

(declare-fun e!1921430 () Bool)

(declare-fun e!1921427 () Bool)

(assert (=> b!3069912 (= e!1921430 e!1921427)))

(declare-fun res!1259910 () Bool)

(assert (=> b!3069912 (=> (not res!1259910) (not e!1921427))))

(declare-fun call!213113 () Bool)

(assert (=> b!3069912 (= res!1259910 call!213113)))

(declare-fun b!3069913 () Bool)

(declare-fun res!1259911 () Bool)

(assert (=> b!3069913 (=> res!1259911 e!1921430)))

(assert (=> b!3069913 (= res!1259911 (not ((_ is Concat!14832) (regOne!19534 r!17423))))))

(declare-fun e!1921426 () Bool)

(assert (=> b!3069913 (= e!1921426 e!1921430)))

(declare-fun bm!213106 () Bool)

(declare-fun call!213112 () Bool)

(assert (=> bm!213106 (= call!213113 call!213112)))

(declare-fun b!3069914 () Bool)

(declare-fun e!1921424 () Bool)

(assert (=> b!3069914 (= e!1921424 call!213113)))

(declare-fun b!3069915 () Bool)

(declare-fun e!1921429 () Bool)

(assert (=> b!3069915 (= e!1921429 e!1921426)))

(declare-fun c!510361 () Bool)

(assert (=> b!3069915 (= c!510361 ((_ is Union!9511) (regOne!19534 r!17423)))))

(declare-fun b!3069916 () Bool)

(declare-fun e!1921428 () Bool)

(assert (=> b!3069916 (= e!1921429 e!1921428)))

(declare-fun res!1259909 () Bool)

(assert (=> b!3069916 (= res!1259909 (not (nullable!3157 (reg!9840 (regOne!19534 r!17423)))))))

(assert (=> b!3069916 (=> (not res!1259909) (not e!1921428))))

(declare-fun b!3069917 () Bool)

(declare-fun res!1259908 () Bool)

(assert (=> b!3069917 (=> (not res!1259908) (not e!1921424))))

(declare-fun call!213111 () Bool)

(assert (=> b!3069917 (= res!1259908 call!213111)))

(assert (=> b!3069917 (= e!1921426 e!1921424)))

(declare-fun b!3069918 () Bool)

(assert (=> b!3069918 (= e!1921428 call!213112)))

(declare-fun bm!213107 () Bool)

(declare-fun c!510360 () Bool)

(assert (=> bm!213107 (= call!213112 (validRegex!4244 (ite c!510360 (reg!9840 (regOne!19534 r!17423)) (ite c!510361 (regTwo!19535 (regOne!19534 r!17423)) (regOne!19534 (regOne!19534 r!17423))))))))

(declare-fun b!3069919 () Bool)

(assert (=> b!3069919 (= e!1921427 call!213111)))

(declare-fun d!856123 () Bool)

(declare-fun res!1259907 () Bool)

(declare-fun e!1921425 () Bool)

(assert (=> d!856123 (=> res!1259907 e!1921425)))

(assert (=> d!856123 (= res!1259907 ((_ is ElementMatch!9511) (regOne!19534 r!17423)))))

(assert (=> d!856123 (= (validRegex!4244 (regOne!19534 r!17423)) e!1921425)))

(declare-fun b!3069920 () Bool)

(assert (=> b!3069920 (= e!1921425 e!1921429)))

(assert (=> b!3069920 (= c!510360 ((_ is Star!9511) (regOne!19534 r!17423)))))

(declare-fun bm!213108 () Bool)

(assert (=> bm!213108 (= call!213111 (validRegex!4244 (ite c!510361 (regOne!19535 (regOne!19534 r!17423)) (regTwo!19534 (regOne!19534 r!17423)))))))

(assert (= (and d!856123 (not res!1259907)) b!3069920))

(assert (= (and b!3069920 c!510360) b!3069916))

(assert (= (and b!3069920 (not c!510360)) b!3069915))

(assert (= (and b!3069916 res!1259909) b!3069918))

(assert (= (and b!3069915 c!510361) b!3069917))

(assert (= (and b!3069915 (not c!510361)) b!3069913))

(assert (= (and b!3069917 res!1259908) b!3069914))

(assert (= (and b!3069913 (not res!1259911)) b!3069912))

(assert (= (and b!3069912 res!1259910) b!3069919))

(assert (= (or b!3069917 b!3069919) bm!213108))

(assert (= (or b!3069914 b!3069912) bm!213106))

(assert (= (or b!3069918 bm!213106) bm!213107))

(declare-fun m!3385151 () Bool)

(assert (=> b!3069916 m!3385151))

(declare-fun m!3385153 () Bool)

(assert (=> bm!213107 m!3385153))

(declare-fun m!3385155 () Bool)

(assert (=> bm!213108 m!3385155))

(assert (=> b!3069761 d!856123))

(declare-fun b!3069921 () Bool)

(declare-fun e!1921437 () Bool)

(declare-fun e!1921434 () Bool)

(assert (=> b!3069921 (= e!1921437 e!1921434)))

(declare-fun res!1259915 () Bool)

(assert (=> b!3069921 (=> (not res!1259915) (not e!1921434))))

(declare-fun call!213116 () Bool)

(assert (=> b!3069921 (= res!1259915 call!213116)))

(declare-fun b!3069922 () Bool)

(declare-fun res!1259916 () Bool)

(assert (=> b!3069922 (=> res!1259916 e!1921437)))

(assert (=> b!3069922 (= res!1259916 (not ((_ is Concat!14832) r!17423)))))

(declare-fun e!1921433 () Bool)

(assert (=> b!3069922 (= e!1921433 e!1921437)))

(declare-fun bm!213109 () Bool)

(declare-fun call!213115 () Bool)

(assert (=> bm!213109 (= call!213116 call!213115)))

(declare-fun b!3069923 () Bool)

(declare-fun e!1921431 () Bool)

(assert (=> b!3069923 (= e!1921431 call!213116)))

(declare-fun b!3069924 () Bool)

(declare-fun e!1921436 () Bool)

(assert (=> b!3069924 (= e!1921436 e!1921433)))

(declare-fun c!510363 () Bool)

(assert (=> b!3069924 (= c!510363 ((_ is Union!9511) r!17423))))

(declare-fun b!3069925 () Bool)

(declare-fun e!1921435 () Bool)

(assert (=> b!3069925 (= e!1921436 e!1921435)))

(declare-fun res!1259914 () Bool)

(assert (=> b!3069925 (= res!1259914 (not (nullable!3157 (reg!9840 r!17423))))))

(assert (=> b!3069925 (=> (not res!1259914) (not e!1921435))))

(declare-fun b!3069926 () Bool)

(declare-fun res!1259913 () Bool)

(assert (=> b!3069926 (=> (not res!1259913) (not e!1921431))))

(declare-fun call!213114 () Bool)

(assert (=> b!3069926 (= res!1259913 call!213114)))

(assert (=> b!3069926 (= e!1921433 e!1921431)))

(declare-fun b!3069927 () Bool)

(assert (=> b!3069927 (= e!1921435 call!213115)))

(declare-fun c!510362 () Bool)

(declare-fun bm!213110 () Bool)

(assert (=> bm!213110 (= call!213115 (validRegex!4244 (ite c!510362 (reg!9840 r!17423) (ite c!510363 (regTwo!19535 r!17423) (regOne!19534 r!17423)))))))

(declare-fun b!3069928 () Bool)

(assert (=> b!3069928 (= e!1921434 call!213114)))

(declare-fun d!856125 () Bool)

(declare-fun res!1259912 () Bool)

(declare-fun e!1921432 () Bool)

(assert (=> d!856125 (=> res!1259912 e!1921432)))

(assert (=> d!856125 (= res!1259912 ((_ is ElementMatch!9511) r!17423))))

(assert (=> d!856125 (= (validRegex!4244 r!17423) e!1921432)))

(declare-fun b!3069929 () Bool)

(assert (=> b!3069929 (= e!1921432 e!1921436)))

(assert (=> b!3069929 (= c!510362 ((_ is Star!9511) r!17423))))

(declare-fun bm!213111 () Bool)

(assert (=> bm!213111 (= call!213114 (validRegex!4244 (ite c!510363 (regOne!19535 r!17423) (regTwo!19534 r!17423))))))

(assert (= (and d!856125 (not res!1259912)) b!3069929))

(assert (= (and b!3069929 c!510362) b!3069925))

(assert (= (and b!3069929 (not c!510362)) b!3069924))

(assert (= (and b!3069925 res!1259914) b!3069927))

(assert (= (and b!3069924 c!510363) b!3069926))

(assert (= (and b!3069924 (not c!510363)) b!3069922))

(assert (= (and b!3069926 res!1259913) b!3069923))

(assert (= (and b!3069922 (not res!1259916)) b!3069921))

(assert (= (and b!3069921 res!1259915) b!3069928))

(assert (= (or b!3069926 b!3069928) bm!213111))

(assert (= (or b!3069923 b!3069921) bm!213109))

(assert (= (or b!3069927 bm!213109) bm!213110))

(declare-fun m!3385157 () Bool)

(assert (=> b!3069925 m!3385157))

(declare-fun m!3385159 () Bool)

(assert (=> bm!213110 m!3385159))

(declare-fun m!3385161 () Bool)

(assert (=> bm!213111 m!3385161))

(assert (=> start!292780 d!856125))

(declare-fun b!3069958 () Bool)

(declare-fun e!1921452 () Bool)

(declare-fun e!1921455 () Bool)

(assert (=> b!3069958 (= e!1921452 e!1921455)))

(declare-fun c!510370 () Bool)

(assert (=> b!3069958 (= c!510370 ((_ is EmptyLang!9511) lt!1051361))))

(declare-fun bm!213114 () Bool)

(declare-fun call!213119 () Bool)

(assert (=> bm!213114 (= call!213119 (isEmpty!19577 s!11993))))

(declare-fun b!3069959 () Bool)

(declare-fun res!1259933 () Bool)

(declare-fun e!1921457 () Bool)

(assert (=> b!3069959 (=> res!1259933 e!1921457)))

(declare-fun e!1921458 () Bool)

(assert (=> b!3069959 (= res!1259933 e!1921458)))

(declare-fun res!1259936 () Bool)

(assert (=> b!3069959 (=> (not res!1259936) (not e!1921458))))

(declare-fun lt!1051391 () Bool)

(assert (=> b!3069959 (= res!1259936 lt!1051391)))

(declare-fun b!3069960 () Bool)

(declare-fun res!1259935 () Bool)

(declare-fun e!1921453 () Bool)

(assert (=> b!3069960 (=> res!1259935 e!1921453)))

(declare-fun tail!5038 (List!35376) List!35376)

(assert (=> b!3069960 (= res!1259935 (not (isEmpty!19577 (tail!5038 s!11993))))))

(declare-fun b!3069961 () Bool)

(assert (=> b!3069961 (= e!1921452 (= lt!1051391 call!213119))))

(declare-fun b!3069962 () Bool)

(declare-fun e!1921456 () Bool)

(assert (=> b!3069962 (= e!1921456 (nullable!3157 lt!1051361))))

(declare-fun b!3069963 () Bool)

(assert (=> b!3069963 (= e!1921455 (not lt!1051391))))

(declare-fun d!856127 () Bool)

(assert (=> d!856127 e!1921452))

(declare-fun c!510372 () Bool)

(assert (=> d!856127 (= c!510372 ((_ is EmptyExpr!9511) lt!1051361))))

(assert (=> d!856127 (= lt!1051391 e!1921456)))

(declare-fun c!510371 () Bool)

(assert (=> d!856127 (= c!510371 (isEmpty!19577 s!11993))))

(assert (=> d!856127 (validRegex!4244 lt!1051361)))

(assert (=> d!856127 (= (matchR!4393 lt!1051361 s!11993) lt!1051391)))

(declare-fun b!3069964 () Bool)

(declare-fun e!1921454 () Bool)

(assert (=> b!3069964 (= e!1921454 e!1921453)))

(declare-fun res!1259938 () Bool)

(assert (=> b!3069964 (=> res!1259938 e!1921453)))

(assert (=> b!3069964 (= res!1259938 call!213119)))

(declare-fun b!3069965 () Bool)

(declare-fun head!6812 (List!35376) C!19208)

(assert (=> b!3069965 (= e!1921453 (not (= (head!6812 s!11993) (c!510303 lt!1051361))))))

(declare-fun b!3069966 () Bool)

(declare-fun res!1259934 () Bool)

(assert (=> b!3069966 (=> res!1259934 e!1921457)))

(assert (=> b!3069966 (= res!1259934 (not ((_ is ElementMatch!9511) lt!1051361)))))

(assert (=> b!3069966 (= e!1921455 e!1921457)))

(declare-fun b!3069967 () Bool)

(declare-fun res!1259939 () Bool)

(assert (=> b!3069967 (=> (not res!1259939) (not e!1921458))))

(assert (=> b!3069967 (= res!1259939 (isEmpty!19577 (tail!5038 s!11993)))))

(declare-fun b!3069968 () Bool)

(assert (=> b!3069968 (= e!1921457 e!1921454)))

(declare-fun res!1259937 () Bool)

(assert (=> b!3069968 (=> (not res!1259937) (not e!1921454))))

(assert (=> b!3069968 (= res!1259937 (not lt!1051391))))

(declare-fun b!3069969 () Bool)

(declare-fun derivativeStep!2753 (Regex!9511 C!19208) Regex!9511)

(assert (=> b!3069969 (= e!1921456 (matchR!4393 (derivativeStep!2753 lt!1051361 (head!6812 s!11993)) (tail!5038 s!11993)))))

(declare-fun b!3069970 () Bool)

(declare-fun res!1259940 () Bool)

(assert (=> b!3069970 (=> (not res!1259940) (not e!1921458))))

(assert (=> b!3069970 (= res!1259940 (not call!213119))))

(declare-fun b!3069971 () Bool)

(assert (=> b!3069971 (= e!1921458 (= (head!6812 s!11993) (c!510303 lt!1051361)))))

(assert (= (and d!856127 c!510371) b!3069962))

(assert (= (and d!856127 (not c!510371)) b!3069969))

(assert (= (and d!856127 c!510372) b!3069961))

(assert (= (and d!856127 (not c!510372)) b!3069958))

(assert (= (and b!3069958 c!510370) b!3069963))

(assert (= (and b!3069958 (not c!510370)) b!3069966))

(assert (= (and b!3069966 (not res!1259934)) b!3069959))

(assert (= (and b!3069959 res!1259936) b!3069970))

(assert (= (and b!3069970 res!1259940) b!3069967))

(assert (= (and b!3069967 res!1259939) b!3069971))

(assert (= (and b!3069959 (not res!1259933)) b!3069968))

(assert (= (and b!3069968 res!1259937) b!3069964))

(assert (= (and b!3069964 (not res!1259938)) b!3069960))

(assert (= (and b!3069960 (not res!1259935)) b!3069965))

(assert (= (or b!3069961 b!3069964 b!3069970) bm!213114))

(declare-fun m!3385163 () Bool)

(assert (=> b!3069962 m!3385163))

(declare-fun m!3385165 () Bool)

(assert (=> b!3069960 m!3385165))

(assert (=> b!3069960 m!3385165))

(declare-fun m!3385167 () Bool)

(assert (=> b!3069960 m!3385167))

(assert (=> bm!213114 m!3385089))

(declare-fun m!3385169 () Bool)

(assert (=> b!3069965 m!3385169))

(assert (=> d!856127 m!3385089))

(declare-fun m!3385171 () Bool)

(assert (=> d!856127 m!3385171))

(assert (=> b!3069969 m!3385169))

(assert (=> b!3069969 m!3385169))

(declare-fun m!3385173 () Bool)

(assert (=> b!3069969 m!3385173))

(assert (=> b!3069969 m!3385165))

(assert (=> b!3069969 m!3385173))

(assert (=> b!3069969 m!3385165))

(declare-fun m!3385175 () Bool)

(assert (=> b!3069969 m!3385175))

(assert (=> b!3069967 m!3385165))

(assert (=> b!3069967 m!3385165))

(assert (=> b!3069967 m!3385167))

(assert (=> b!3069971 m!3385169))

(assert (=> b!3069771 d!856127))

(declare-fun d!856129 () Bool)

(assert (=> d!856129 (= (matchR!4393 (regTwo!19534 r!17423) Nil!35252) (matchR!4393 (simplify!466 (regTwo!19534 r!17423)) Nil!35252))))

(declare-fun lt!1051394 () Unit!49461)

(declare-fun choose!18191 (Regex!9511 List!35376) Unit!49461)

(assert (=> d!856129 (= lt!1051394 (choose!18191 (regTwo!19534 r!17423) Nil!35252))))

(assert (=> d!856129 (validRegex!4244 (regTwo!19534 r!17423))))

(assert (=> d!856129 (= (lemmaSimplifySound!292 (regTwo!19534 r!17423) Nil!35252) lt!1051394)))

(declare-fun bs!532634 () Bool)

(assert (= bs!532634 d!856129))

(assert (=> bs!532634 m!3385127))

(assert (=> bs!532634 m!3385081))

(declare-fun m!3385177 () Bool)

(assert (=> bs!532634 m!3385177))

(declare-fun m!3385179 () Bool)

(assert (=> bs!532634 m!3385179))

(assert (=> bs!532634 m!3385111))

(assert (=> bs!532634 m!3385081))

(assert (=> b!3069771 d!856129))

(declare-fun d!856131 () Bool)

(assert (=> d!856131 (= (matchR!4393 (regOne!19534 r!17423) s!11993) (matchR!4393 (simplify!466 (regOne!19534 r!17423)) s!11993))))

(declare-fun lt!1051395 () Unit!49461)

(assert (=> d!856131 (= lt!1051395 (choose!18191 (regOne!19534 r!17423) s!11993))))

(assert (=> d!856131 (validRegex!4244 (regOne!19534 r!17423))))

(assert (=> d!856131 (= (lemmaSimplifySound!292 (regOne!19534 r!17423) s!11993) lt!1051395)))

(declare-fun bs!532635 () Bool)

(assert (= bs!532635 d!856131))

(assert (=> bs!532635 m!3385087))

(assert (=> bs!532635 m!3385083))

(declare-fun m!3385181 () Bool)

(assert (=> bs!532635 m!3385181))

(declare-fun m!3385183 () Bool)

(assert (=> bs!532635 m!3385183))

(assert (=> bs!532635 m!3385103))

(assert (=> bs!532635 m!3385083))

(assert (=> b!3069771 d!856131))

(declare-fun b!3069972 () Bool)

(declare-fun e!1921459 () Bool)

(declare-fun e!1921462 () Bool)

(assert (=> b!3069972 (= e!1921459 e!1921462)))

(declare-fun c!510373 () Bool)

(assert (=> b!3069972 (= c!510373 ((_ is EmptyLang!9511) (regOne!19534 r!17423)))))

(declare-fun bm!213115 () Bool)

(declare-fun call!213120 () Bool)

(assert (=> bm!213115 (= call!213120 (isEmpty!19577 s!11993))))

(declare-fun b!3069973 () Bool)

(declare-fun res!1259941 () Bool)

(declare-fun e!1921464 () Bool)

(assert (=> b!3069973 (=> res!1259941 e!1921464)))

(declare-fun e!1921465 () Bool)

(assert (=> b!3069973 (= res!1259941 e!1921465)))

(declare-fun res!1259944 () Bool)

(assert (=> b!3069973 (=> (not res!1259944) (not e!1921465))))

(declare-fun lt!1051396 () Bool)

(assert (=> b!3069973 (= res!1259944 lt!1051396)))

(declare-fun b!3069974 () Bool)

(declare-fun res!1259943 () Bool)

(declare-fun e!1921460 () Bool)

(assert (=> b!3069974 (=> res!1259943 e!1921460)))

(assert (=> b!3069974 (= res!1259943 (not (isEmpty!19577 (tail!5038 s!11993))))))

(declare-fun b!3069975 () Bool)

(assert (=> b!3069975 (= e!1921459 (= lt!1051396 call!213120))))

(declare-fun b!3069976 () Bool)

(declare-fun e!1921463 () Bool)

(assert (=> b!3069976 (= e!1921463 (nullable!3157 (regOne!19534 r!17423)))))

(declare-fun b!3069977 () Bool)

(assert (=> b!3069977 (= e!1921462 (not lt!1051396))))

(declare-fun d!856133 () Bool)

(assert (=> d!856133 e!1921459))

(declare-fun c!510375 () Bool)

(assert (=> d!856133 (= c!510375 ((_ is EmptyExpr!9511) (regOne!19534 r!17423)))))

(assert (=> d!856133 (= lt!1051396 e!1921463)))

(declare-fun c!510374 () Bool)

(assert (=> d!856133 (= c!510374 (isEmpty!19577 s!11993))))

(assert (=> d!856133 (validRegex!4244 (regOne!19534 r!17423))))

(assert (=> d!856133 (= (matchR!4393 (regOne!19534 r!17423) s!11993) lt!1051396)))

(declare-fun b!3069978 () Bool)

(declare-fun e!1921461 () Bool)

(assert (=> b!3069978 (= e!1921461 e!1921460)))

(declare-fun res!1259946 () Bool)

(assert (=> b!3069978 (=> res!1259946 e!1921460)))

(assert (=> b!3069978 (= res!1259946 call!213120)))

(declare-fun b!3069979 () Bool)

(assert (=> b!3069979 (= e!1921460 (not (= (head!6812 s!11993) (c!510303 (regOne!19534 r!17423)))))))

(declare-fun b!3069980 () Bool)

(declare-fun res!1259942 () Bool)

(assert (=> b!3069980 (=> res!1259942 e!1921464)))

(assert (=> b!3069980 (= res!1259942 (not ((_ is ElementMatch!9511) (regOne!19534 r!17423))))))

(assert (=> b!3069980 (= e!1921462 e!1921464)))

(declare-fun b!3069981 () Bool)

(declare-fun res!1259947 () Bool)

(assert (=> b!3069981 (=> (not res!1259947) (not e!1921465))))

(assert (=> b!3069981 (= res!1259947 (isEmpty!19577 (tail!5038 s!11993)))))

(declare-fun b!3069982 () Bool)

(assert (=> b!3069982 (= e!1921464 e!1921461)))

(declare-fun res!1259945 () Bool)

(assert (=> b!3069982 (=> (not res!1259945) (not e!1921461))))

(assert (=> b!3069982 (= res!1259945 (not lt!1051396))))

(declare-fun b!3069983 () Bool)

(assert (=> b!3069983 (= e!1921463 (matchR!4393 (derivativeStep!2753 (regOne!19534 r!17423) (head!6812 s!11993)) (tail!5038 s!11993)))))

(declare-fun b!3069984 () Bool)

(declare-fun res!1259948 () Bool)

(assert (=> b!3069984 (=> (not res!1259948) (not e!1921465))))

(assert (=> b!3069984 (= res!1259948 (not call!213120))))

(declare-fun b!3069985 () Bool)

(assert (=> b!3069985 (= e!1921465 (= (head!6812 s!11993) (c!510303 (regOne!19534 r!17423))))))

(assert (= (and d!856133 c!510374) b!3069976))

(assert (= (and d!856133 (not c!510374)) b!3069983))

(assert (= (and d!856133 c!510375) b!3069975))

(assert (= (and d!856133 (not c!510375)) b!3069972))

(assert (= (and b!3069972 c!510373) b!3069977))

(assert (= (and b!3069972 (not c!510373)) b!3069980))

(assert (= (and b!3069980 (not res!1259942)) b!3069973))

(assert (= (and b!3069973 res!1259944) b!3069984))

(assert (= (and b!3069984 res!1259948) b!3069981))

(assert (= (and b!3069981 res!1259947) b!3069985))

(assert (= (and b!3069973 (not res!1259941)) b!3069982))

(assert (= (and b!3069982 res!1259945) b!3069978))

(assert (= (and b!3069978 (not res!1259946)) b!3069974))

(assert (= (and b!3069974 (not res!1259943)) b!3069979))

(assert (= (or b!3069975 b!3069978 b!3069984) bm!213115))

(assert (=> b!3069976 m!3385141))

(assert (=> b!3069974 m!3385165))

(assert (=> b!3069974 m!3385165))

(assert (=> b!3069974 m!3385167))

(assert (=> bm!213115 m!3385089))

(assert (=> b!3069979 m!3385169))

(assert (=> d!856133 m!3385089))

(assert (=> d!856133 m!3385087))

(assert (=> b!3069983 m!3385169))

(assert (=> b!3069983 m!3385169))

(declare-fun m!3385185 () Bool)

(assert (=> b!3069983 m!3385185))

(assert (=> b!3069983 m!3385165))

(assert (=> b!3069983 m!3385185))

(assert (=> b!3069983 m!3385165))

(declare-fun m!3385187 () Bool)

(assert (=> b!3069983 m!3385187))

(assert (=> b!3069981 m!3385165))

(assert (=> b!3069981 m!3385165))

(assert (=> b!3069981 m!3385167))

(assert (=> b!3069985 m!3385169))

(assert (=> b!3069771 d!856133))

(declare-fun b!3069986 () Bool)

(declare-fun e!1921466 () Bool)

(declare-fun e!1921469 () Bool)

(assert (=> b!3069986 (= e!1921466 e!1921469)))

(declare-fun c!510376 () Bool)

(assert (=> b!3069986 (= c!510376 ((_ is EmptyLang!9511) lt!1051358))))

(declare-fun bm!213116 () Bool)

(declare-fun call!213121 () Bool)

(assert (=> bm!213116 (= call!213121 (isEmpty!19577 Nil!35252))))

(declare-fun b!3069987 () Bool)

(declare-fun res!1259949 () Bool)

(declare-fun e!1921471 () Bool)

(assert (=> b!3069987 (=> res!1259949 e!1921471)))

(declare-fun e!1921472 () Bool)

(assert (=> b!3069987 (= res!1259949 e!1921472)))

(declare-fun res!1259952 () Bool)

(assert (=> b!3069987 (=> (not res!1259952) (not e!1921472))))

(declare-fun lt!1051397 () Bool)

(assert (=> b!3069987 (= res!1259952 lt!1051397)))

(declare-fun b!3069988 () Bool)

(declare-fun res!1259951 () Bool)

(declare-fun e!1921467 () Bool)

(assert (=> b!3069988 (=> res!1259951 e!1921467)))

(assert (=> b!3069988 (= res!1259951 (not (isEmpty!19577 (tail!5038 Nil!35252))))))

(declare-fun b!3069989 () Bool)

(assert (=> b!3069989 (= e!1921466 (= lt!1051397 call!213121))))

(declare-fun b!3069990 () Bool)

(declare-fun e!1921470 () Bool)

(assert (=> b!3069990 (= e!1921470 (nullable!3157 lt!1051358))))

(declare-fun b!3069991 () Bool)

(assert (=> b!3069991 (= e!1921469 (not lt!1051397))))

(declare-fun d!856135 () Bool)

(assert (=> d!856135 e!1921466))

(declare-fun c!510378 () Bool)

(assert (=> d!856135 (= c!510378 ((_ is EmptyExpr!9511) lt!1051358))))

(assert (=> d!856135 (= lt!1051397 e!1921470)))

(declare-fun c!510377 () Bool)

(assert (=> d!856135 (= c!510377 (isEmpty!19577 Nil!35252))))

(assert (=> d!856135 (validRegex!4244 lt!1051358)))

(assert (=> d!856135 (= (matchR!4393 lt!1051358 Nil!35252) lt!1051397)))

(declare-fun b!3069992 () Bool)

(declare-fun e!1921468 () Bool)

(assert (=> b!3069992 (= e!1921468 e!1921467)))

(declare-fun res!1259954 () Bool)

(assert (=> b!3069992 (=> res!1259954 e!1921467)))

(assert (=> b!3069992 (= res!1259954 call!213121)))

(declare-fun b!3069993 () Bool)

(assert (=> b!3069993 (= e!1921467 (not (= (head!6812 Nil!35252) (c!510303 lt!1051358))))))

(declare-fun b!3069994 () Bool)

(declare-fun res!1259950 () Bool)

(assert (=> b!3069994 (=> res!1259950 e!1921471)))

(assert (=> b!3069994 (= res!1259950 (not ((_ is ElementMatch!9511) lt!1051358)))))

(assert (=> b!3069994 (= e!1921469 e!1921471)))

(declare-fun b!3069995 () Bool)

(declare-fun res!1259955 () Bool)

(assert (=> b!3069995 (=> (not res!1259955) (not e!1921472))))

(assert (=> b!3069995 (= res!1259955 (isEmpty!19577 (tail!5038 Nil!35252)))))

(declare-fun b!3069996 () Bool)

(assert (=> b!3069996 (= e!1921471 e!1921468)))

(declare-fun res!1259953 () Bool)

(assert (=> b!3069996 (=> (not res!1259953) (not e!1921468))))

(assert (=> b!3069996 (= res!1259953 (not lt!1051397))))

(declare-fun b!3069997 () Bool)

(assert (=> b!3069997 (= e!1921470 (matchR!4393 (derivativeStep!2753 lt!1051358 (head!6812 Nil!35252)) (tail!5038 Nil!35252)))))

(declare-fun b!3069998 () Bool)

(declare-fun res!1259956 () Bool)

(assert (=> b!3069998 (=> (not res!1259956) (not e!1921472))))

(assert (=> b!3069998 (= res!1259956 (not call!213121))))

(declare-fun b!3069999 () Bool)

(assert (=> b!3069999 (= e!1921472 (= (head!6812 Nil!35252) (c!510303 lt!1051358)))))

(assert (= (and d!856135 c!510377) b!3069990))

(assert (= (and d!856135 (not c!510377)) b!3069997))

(assert (= (and d!856135 c!510378) b!3069989))

(assert (= (and d!856135 (not c!510378)) b!3069986))

(assert (= (and b!3069986 c!510376) b!3069991))

(assert (= (and b!3069986 (not c!510376)) b!3069994))

(assert (= (and b!3069994 (not res!1259950)) b!3069987))

(assert (= (and b!3069987 res!1259952) b!3069998))

(assert (= (and b!3069998 res!1259956) b!3069995))

(assert (= (and b!3069995 res!1259955) b!3069999))

(assert (= (and b!3069987 (not res!1259949)) b!3069996))

(assert (= (and b!3069996 res!1259953) b!3069992))

(assert (= (and b!3069992 (not res!1259954)) b!3069988))

(assert (= (and b!3069988 (not res!1259951)) b!3069993))

(assert (= (or b!3069989 b!3069992 b!3069998) bm!213116))

(declare-fun m!3385189 () Bool)

(assert (=> b!3069990 m!3385189))

(declare-fun m!3385191 () Bool)

(assert (=> b!3069988 m!3385191))

(assert (=> b!3069988 m!3385191))

(declare-fun m!3385193 () Bool)

(assert (=> b!3069988 m!3385193))

(declare-fun m!3385195 () Bool)

(assert (=> bm!213116 m!3385195))

(declare-fun m!3385197 () Bool)

(assert (=> b!3069993 m!3385197))

(assert (=> d!856135 m!3385195))

(declare-fun m!3385199 () Bool)

(assert (=> d!856135 m!3385199))

(assert (=> b!3069997 m!3385197))

(assert (=> b!3069997 m!3385197))

(declare-fun m!3385201 () Bool)

(assert (=> b!3069997 m!3385201))

(assert (=> b!3069997 m!3385191))

(assert (=> b!3069997 m!3385201))

(assert (=> b!3069997 m!3385191))

(declare-fun m!3385203 () Bool)

(assert (=> b!3069997 m!3385203))

(assert (=> b!3069995 m!3385191))

(assert (=> b!3069995 m!3385191))

(assert (=> b!3069995 m!3385193))

(assert (=> b!3069999 m!3385197))

(assert (=> b!3069771 d!856135))

(declare-fun b!3070000 () Bool)

(declare-fun e!1921473 () Bool)

(declare-fun e!1921476 () Bool)

(assert (=> b!3070000 (= e!1921473 e!1921476)))

(declare-fun c!510379 () Bool)

(assert (=> b!3070000 (= c!510379 ((_ is EmptyLang!9511) (regTwo!19534 r!17423)))))

(declare-fun bm!213117 () Bool)

(declare-fun call!213122 () Bool)

(assert (=> bm!213117 (= call!213122 (isEmpty!19577 Nil!35252))))

(declare-fun b!3070001 () Bool)

(declare-fun res!1259957 () Bool)

(declare-fun e!1921478 () Bool)

(assert (=> b!3070001 (=> res!1259957 e!1921478)))

(declare-fun e!1921479 () Bool)

(assert (=> b!3070001 (= res!1259957 e!1921479)))

(declare-fun res!1259960 () Bool)

(assert (=> b!3070001 (=> (not res!1259960) (not e!1921479))))

(declare-fun lt!1051398 () Bool)

(assert (=> b!3070001 (= res!1259960 lt!1051398)))

(declare-fun b!3070002 () Bool)

(declare-fun res!1259959 () Bool)

(declare-fun e!1921474 () Bool)

(assert (=> b!3070002 (=> res!1259959 e!1921474)))

(assert (=> b!3070002 (= res!1259959 (not (isEmpty!19577 (tail!5038 Nil!35252))))))

(declare-fun b!3070003 () Bool)

(assert (=> b!3070003 (= e!1921473 (= lt!1051398 call!213122))))

(declare-fun b!3070004 () Bool)

(declare-fun e!1921477 () Bool)

(assert (=> b!3070004 (= e!1921477 (nullable!3157 (regTwo!19534 r!17423)))))

(declare-fun b!3070005 () Bool)

(assert (=> b!3070005 (= e!1921476 (not lt!1051398))))

(declare-fun d!856137 () Bool)

(assert (=> d!856137 e!1921473))

(declare-fun c!510381 () Bool)

(assert (=> d!856137 (= c!510381 ((_ is EmptyExpr!9511) (regTwo!19534 r!17423)))))

(assert (=> d!856137 (= lt!1051398 e!1921477)))

(declare-fun c!510380 () Bool)

(assert (=> d!856137 (= c!510380 (isEmpty!19577 Nil!35252))))

(assert (=> d!856137 (validRegex!4244 (regTwo!19534 r!17423))))

(assert (=> d!856137 (= (matchR!4393 (regTwo!19534 r!17423) Nil!35252) lt!1051398)))

(declare-fun b!3070006 () Bool)

(declare-fun e!1921475 () Bool)

(assert (=> b!3070006 (= e!1921475 e!1921474)))

(declare-fun res!1259962 () Bool)

(assert (=> b!3070006 (=> res!1259962 e!1921474)))

(assert (=> b!3070006 (= res!1259962 call!213122)))

(declare-fun b!3070007 () Bool)

(assert (=> b!3070007 (= e!1921474 (not (= (head!6812 Nil!35252) (c!510303 (regTwo!19534 r!17423)))))))

(declare-fun b!3070008 () Bool)

(declare-fun res!1259958 () Bool)

(assert (=> b!3070008 (=> res!1259958 e!1921478)))

(assert (=> b!3070008 (= res!1259958 (not ((_ is ElementMatch!9511) (regTwo!19534 r!17423))))))

(assert (=> b!3070008 (= e!1921476 e!1921478)))

(declare-fun b!3070009 () Bool)

(declare-fun res!1259963 () Bool)

(assert (=> b!3070009 (=> (not res!1259963) (not e!1921479))))

(assert (=> b!3070009 (= res!1259963 (isEmpty!19577 (tail!5038 Nil!35252)))))

(declare-fun b!3070010 () Bool)

(assert (=> b!3070010 (= e!1921478 e!1921475)))

(declare-fun res!1259961 () Bool)

(assert (=> b!3070010 (=> (not res!1259961) (not e!1921475))))

(assert (=> b!3070010 (= res!1259961 (not lt!1051398))))

(declare-fun b!3070011 () Bool)

(assert (=> b!3070011 (= e!1921477 (matchR!4393 (derivativeStep!2753 (regTwo!19534 r!17423) (head!6812 Nil!35252)) (tail!5038 Nil!35252)))))

(declare-fun b!3070012 () Bool)

(declare-fun res!1259964 () Bool)

(assert (=> b!3070012 (=> (not res!1259964) (not e!1921479))))

(assert (=> b!3070012 (= res!1259964 (not call!213122))))

(declare-fun b!3070013 () Bool)

(assert (=> b!3070013 (= e!1921479 (= (head!6812 Nil!35252) (c!510303 (regTwo!19534 r!17423))))))

(assert (= (and d!856137 c!510380) b!3070004))

(assert (= (and d!856137 (not c!510380)) b!3070011))

(assert (= (and d!856137 c!510381) b!3070003))

(assert (= (and d!856137 (not c!510381)) b!3070000))

(assert (= (and b!3070000 c!510379) b!3070005))

(assert (= (and b!3070000 (not c!510379)) b!3070008))

(assert (= (and b!3070008 (not res!1259958)) b!3070001))

(assert (= (and b!3070001 res!1259960) b!3070012))

(assert (= (and b!3070012 res!1259964) b!3070009))

(assert (= (and b!3070009 res!1259963) b!3070013))

(assert (= (and b!3070001 (not res!1259957)) b!3070010))

(assert (= (and b!3070010 res!1259961) b!3070006))

(assert (= (and b!3070006 (not res!1259962)) b!3070002))

(assert (= (and b!3070002 (not res!1259959)) b!3070007))

(assert (= (or b!3070003 b!3070006 b!3070012) bm!213117))

(assert (=> b!3070004 m!3385121))

(assert (=> b!3070002 m!3385191))

(assert (=> b!3070002 m!3385191))

(assert (=> b!3070002 m!3385193))

(assert (=> bm!213117 m!3385195))

(assert (=> b!3070007 m!3385197))

(assert (=> d!856137 m!3385195))

(assert (=> d!856137 m!3385127))

(assert (=> b!3070011 m!3385197))

(assert (=> b!3070011 m!3385197))

(declare-fun m!3385205 () Bool)

(assert (=> b!3070011 m!3385205))

(assert (=> b!3070011 m!3385191))

(assert (=> b!3070011 m!3385205))

(assert (=> b!3070011 m!3385191))

(declare-fun m!3385207 () Bool)

(assert (=> b!3070011 m!3385207))

(assert (=> b!3070009 m!3385191))

(assert (=> b!3070009 m!3385191))

(assert (=> b!3070009 m!3385193))

(assert (=> b!3070013 m!3385197))

(assert (=> b!3069771 d!856137))

(declare-fun d!856139 () Bool)

(assert (=> d!856139 (= (isEmptyExpr!568 lt!1051361) ((_ is EmptyExpr!9511) lt!1051361))))

(assert (=> b!3069765 d!856139))

(declare-fun d!856141 () Bool)

(assert (=> d!856141 (= (isEmptyExpr!568 lt!1051358) ((_ is EmptyExpr!9511) lt!1051358))))

(assert (=> b!3069764 d!856141))

(declare-fun b!3070347 () Bool)

(assert (=> b!3070347 true))

(assert (=> b!3070347 true))

(declare-fun bs!532640 () Bool)

(declare-fun b!3070340 () Bool)

(assert (= bs!532640 (and b!3070340 b!3070347)))

(declare-fun lambda!114088 () Int)

(declare-fun lambda!114087 () Int)

(assert (=> bs!532640 (not (= lambda!114088 lambda!114087))))

(assert (=> b!3070340 true))

(assert (=> b!3070340 true))

(declare-fun e!1921652 () Bool)

(declare-fun call!213181 () Bool)

(assert (=> b!3070340 (= e!1921652 call!213181)))

(declare-fun bm!213175 () Bool)

(declare-fun call!213180 () Bool)

(assert (=> bm!213175 (= call!213180 (isEmpty!19577 s!11993))))

(declare-fun b!3070341 () Bool)

(declare-fun res!1260084 () Bool)

(declare-fun e!1921656 () Bool)

(assert (=> b!3070341 (=> res!1260084 e!1921656)))

(assert (=> b!3070341 (= res!1260084 call!213180)))

(assert (=> b!3070341 (= e!1921652 e!1921656)))

(declare-fun c!510470 () Bool)

(declare-fun bm!213176 () Bool)

(declare-fun Exists!1774 (Int) Bool)

(assert (=> bm!213176 (= call!213181 (Exists!1774 (ite c!510470 lambda!114087 lambda!114088)))))

(declare-fun b!3070342 () Bool)

(declare-fun e!1921655 () Bool)

(assert (=> b!3070342 (= e!1921655 (matchRSpec!1648 (regTwo!19535 r!17423) s!11993))))

(declare-fun b!3070344 () Bool)

(declare-fun c!510468 () Bool)

(assert (=> b!3070344 (= c!510468 ((_ is ElementMatch!9511) r!17423))))

(declare-fun e!1921657 () Bool)

(declare-fun e!1921658 () Bool)

(assert (=> b!3070344 (= e!1921657 e!1921658)))

(declare-fun b!3070345 () Bool)

(assert (=> b!3070345 (= e!1921658 (= s!11993 (Cons!35252 (c!510303 r!17423) Nil!35252)))))

(declare-fun b!3070346 () Bool)

(declare-fun e!1921653 () Bool)

(assert (=> b!3070346 (= e!1921653 e!1921655)))

(declare-fun res!1260083 () Bool)

(assert (=> b!3070346 (= res!1260083 (matchRSpec!1648 (regOne!19535 r!17423) s!11993))))

(assert (=> b!3070346 (=> res!1260083 e!1921655)))

(assert (=> b!3070347 (= e!1921656 call!213181)))

(declare-fun b!3070348 () Bool)

(assert (=> b!3070348 (= e!1921653 e!1921652)))

(assert (=> b!3070348 (= c!510470 ((_ is Star!9511) r!17423))))

(declare-fun b!3070349 () Bool)

(declare-fun c!510469 () Bool)

(assert (=> b!3070349 (= c!510469 ((_ is Union!9511) r!17423))))

(assert (=> b!3070349 (= e!1921658 e!1921653)))

(declare-fun b!3070350 () Bool)

(declare-fun e!1921654 () Bool)

(assert (=> b!3070350 (= e!1921654 call!213180)))

(declare-fun d!856143 () Bool)

(declare-fun c!510467 () Bool)

(assert (=> d!856143 (= c!510467 ((_ is EmptyExpr!9511) r!17423))))

(assert (=> d!856143 (= (matchRSpec!1648 r!17423 s!11993) e!1921654)))

(declare-fun b!3070343 () Bool)

(assert (=> b!3070343 (= e!1921654 e!1921657)))

(declare-fun res!1260082 () Bool)

(assert (=> b!3070343 (= res!1260082 (not ((_ is EmptyLang!9511) r!17423)))))

(assert (=> b!3070343 (=> (not res!1260082) (not e!1921657))))

(assert (= (and d!856143 c!510467) b!3070350))

(assert (= (and d!856143 (not c!510467)) b!3070343))

(assert (= (and b!3070343 res!1260082) b!3070344))

(assert (= (and b!3070344 c!510468) b!3070345))

(assert (= (and b!3070344 (not c!510468)) b!3070349))

(assert (= (and b!3070349 c!510469) b!3070346))

(assert (= (and b!3070349 (not c!510469)) b!3070348))

(assert (= (and b!3070346 (not res!1260083)) b!3070342))

(assert (= (and b!3070348 c!510470) b!3070341))

(assert (= (and b!3070348 (not c!510470)) b!3070340))

(assert (= (and b!3070341 (not res!1260084)) b!3070347))

(assert (= (or b!3070347 b!3070340) bm!213176))

(assert (= (or b!3070350 b!3070341) bm!213175))

(assert (=> bm!213175 m!3385089))

(declare-fun m!3385319 () Bool)

(assert (=> bm!213176 m!3385319))

(declare-fun m!3385321 () Bool)

(assert (=> b!3070342 m!3385321))

(declare-fun m!3385323 () Bool)

(assert (=> b!3070346 m!3385323))

(assert (=> b!3069759 d!856143))

(declare-fun b!3070355 () Bool)

(declare-fun e!1921659 () Bool)

(declare-fun e!1921662 () Bool)

(assert (=> b!3070355 (= e!1921659 e!1921662)))

(declare-fun c!510471 () Bool)

(assert (=> b!3070355 (= c!510471 ((_ is EmptyLang!9511) r!17423))))

(declare-fun bm!213177 () Bool)

(declare-fun call!213182 () Bool)

(assert (=> bm!213177 (= call!213182 (isEmpty!19577 s!11993))))

(declare-fun b!3070356 () Bool)

(declare-fun res!1260085 () Bool)

(declare-fun e!1921664 () Bool)

(assert (=> b!3070356 (=> res!1260085 e!1921664)))

(declare-fun e!1921665 () Bool)

(assert (=> b!3070356 (= res!1260085 e!1921665)))

(declare-fun res!1260088 () Bool)

(assert (=> b!3070356 (=> (not res!1260088) (not e!1921665))))

(declare-fun lt!1051437 () Bool)

(assert (=> b!3070356 (= res!1260088 lt!1051437)))

(declare-fun b!3070357 () Bool)

(declare-fun res!1260087 () Bool)

(declare-fun e!1921660 () Bool)

(assert (=> b!3070357 (=> res!1260087 e!1921660)))

(assert (=> b!3070357 (= res!1260087 (not (isEmpty!19577 (tail!5038 s!11993))))))

(declare-fun b!3070358 () Bool)

(assert (=> b!3070358 (= e!1921659 (= lt!1051437 call!213182))))

(declare-fun b!3070359 () Bool)

(declare-fun e!1921663 () Bool)

(assert (=> b!3070359 (= e!1921663 (nullable!3157 r!17423))))

(declare-fun b!3070360 () Bool)

(assert (=> b!3070360 (= e!1921662 (not lt!1051437))))

(declare-fun d!856179 () Bool)

(assert (=> d!856179 e!1921659))

(declare-fun c!510473 () Bool)

(assert (=> d!856179 (= c!510473 ((_ is EmptyExpr!9511) r!17423))))

(assert (=> d!856179 (= lt!1051437 e!1921663)))

(declare-fun c!510472 () Bool)

(assert (=> d!856179 (= c!510472 (isEmpty!19577 s!11993))))

(assert (=> d!856179 (validRegex!4244 r!17423)))

(assert (=> d!856179 (= (matchR!4393 r!17423 s!11993) lt!1051437)))

(declare-fun b!3070361 () Bool)

(declare-fun e!1921661 () Bool)

(assert (=> b!3070361 (= e!1921661 e!1921660)))

(declare-fun res!1260090 () Bool)

(assert (=> b!3070361 (=> res!1260090 e!1921660)))

(assert (=> b!3070361 (= res!1260090 call!213182)))

(declare-fun b!3070362 () Bool)

(assert (=> b!3070362 (= e!1921660 (not (= (head!6812 s!11993) (c!510303 r!17423))))))

(declare-fun b!3070363 () Bool)

(declare-fun res!1260086 () Bool)

(assert (=> b!3070363 (=> res!1260086 e!1921664)))

(assert (=> b!3070363 (= res!1260086 (not ((_ is ElementMatch!9511) r!17423)))))

(assert (=> b!3070363 (= e!1921662 e!1921664)))

(declare-fun b!3070364 () Bool)

(declare-fun res!1260091 () Bool)

(assert (=> b!3070364 (=> (not res!1260091) (not e!1921665))))

(assert (=> b!3070364 (= res!1260091 (isEmpty!19577 (tail!5038 s!11993)))))

(declare-fun b!3070365 () Bool)

(assert (=> b!3070365 (= e!1921664 e!1921661)))

(declare-fun res!1260089 () Bool)

(assert (=> b!3070365 (=> (not res!1260089) (not e!1921661))))

(assert (=> b!3070365 (= res!1260089 (not lt!1051437))))

(declare-fun b!3070366 () Bool)

(assert (=> b!3070366 (= e!1921663 (matchR!4393 (derivativeStep!2753 r!17423 (head!6812 s!11993)) (tail!5038 s!11993)))))

(declare-fun b!3070367 () Bool)

(declare-fun res!1260092 () Bool)

(assert (=> b!3070367 (=> (not res!1260092) (not e!1921665))))

(assert (=> b!3070367 (= res!1260092 (not call!213182))))

(declare-fun b!3070368 () Bool)

(assert (=> b!3070368 (= e!1921665 (= (head!6812 s!11993) (c!510303 r!17423)))))

(assert (= (and d!856179 c!510472) b!3070359))

(assert (= (and d!856179 (not c!510472)) b!3070366))

(assert (= (and d!856179 c!510473) b!3070358))

(assert (= (and d!856179 (not c!510473)) b!3070355))

(assert (= (and b!3070355 c!510471) b!3070360))

(assert (= (and b!3070355 (not c!510471)) b!3070363))

(assert (= (and b!3070363 (not res!1260086)) b!3070356))

(assert (= (and b!3070356 res!1260088) b!3070367))

(assert (= (and b!3070367 res!1260092) b!3070364))

(assert (= (and b!3070364 res!1260091) b!3070368))

(assert (= (and b!3070356 (not res!1260085)) b!3070365))

(assert (= (and b!3070365 res!1260089) b!3070361))

(assert (= (and b!3070361 (not res!1260090)) b!3070357))

(assert (= (and b!3070357 (not res!1260087)) b!3070362))

(assert (= (or b!3070358 b!3070361 b!3070367) bm!213177))

(declare-fun m!3385325 () Bool)

(assert (=> b!3070359 m!3385325))

(assert (=> b!3070357 m!3385165))

(assert (=> b!3070357 m!3385165))

(assert (=> b!3070357 m!3385167))

(assert (=> bm!213177 m!3385089))

(assert (=> b!3070362 m!3385169))

(assert (=> d!856179 m!3385089))

(assert (=> d!856179 m!3385077))

(assert (=> b!3070366 m!3385169))

(assert (=> b!3070366 m!3385169))

(declare-fun m!3385327 () Bool)

(assert (=> b!3070366 m!3385327))

(assert (=> b!3070366 m!3385165))

(assert (=> b!3070366 m!3385327))

(assert (=> b!3070366 m!3385165))

(declare-fun m!3385329 () Bool)

(assert (=> b!3070366 m!3385329))

(assert (=> b!3070364 m!3385165))

(assert (=> b!3070364 m!3385165))

(assert (=> b!3070364 m!3385167))

(assert (=> b!3070368 m!3385169))

(assert (=> b!3069759 d!856179))

(declare-fun d!856181 () Bool)

(assert (=> d!856181 (= (matchR!4393 r!17423 s!11993) (matchRSpec!1648 r!17423 s!11993))))

(declare-fun lt!1051440 () Unit!49461)

(declare-fun choose!18192 (Regex!9511 List!35376) Unit!49461)

(assert (=> d!856181 (= lt!1051440 (choose!18192 r!17423 s!11993))))

(assert (=> d!856181 (validRegex!4244 r!17423)))

(assert (=> d!856181 (= (mainMatchTheorem!1648 r!17423 s!11993) lt!1051440)))

(declare-fun bs!532641 () Bool)

(assert (= bs!532641 d!856181))

(assert (=> bs!532641 m!3385097))

(assert (=> bs!532641 m!3385095))

(declare-fun m!3385331 () Bool)

(assert (=> bs!532641 m!3385331))

(assert (=> bs!532641 m!3385077))

(assert (=> b!3069759 d!856181))

(declare-fun b!3070381 () Bool)

(declare-fun e!1921668 () Bool)

(declare-fun tp!968725 () Bool)

(assert (=> b!3070381 (= e!1921668 tp!968725)))

(declare-fun b!3070380 () Bool)

(declare-fun tp!968723 () Bool)

(declare-fun tp!968724 () Bool)

(assert (=> b!3070380 (= e!1921668 (and tp!968723 tp!968724))))

(declare-fun b!3070379 () Bool)

(assert (=> b!3070379 (= e!1921668 tp_is_empty!16585)))

(assert (=> b!3069768 (= tp!968670 e!1921668)))

(declare-fun b!3070382 () Bool)

(declare-fun tp!968726 () Bool)

(declare-fun tp!968722 () Bool)

(assert (=> b!3070382 (= e!1921668 (and tp!968726 tp!968722))))

(assert (= (and b!3069768 ((_ is ElementMatch!9511) (regOne!19534 r!17423))) b!3070379))

(assert (= (and b!3069768 ((_ is Concat!14832) (regOne!19534 r!17423))) b!3070380))

(assert (= (and b!3069768 ((_ is Star!9511) (regOne!19534 r!17423))) b!3070381))

(assert (= (and b!3069768 ((_ is Union!9511) (regOne!19534 r!17423))) b!3070382))

(declare-fun b!3070385 () Bool)

(declare-fun e!1921669 () Bool)

(declare-fun tp!968730 () Bool)

(assert (=> b!3070385 (= e!1921669 tp!968730)))

(declare-fun b!3070384 () Bool)

(declare-fun tp!968728 () Bool)

(declare-fun tp!968729 () Bool)

(assert (=> b!3070384 (= e!1921669 (and tp!968728 tp!968729))))

(declare-fun b!3070383 () Bool)

(assert (=> b!3070383 (= e!1921669 tp_is_empty!16585)))

(assert (=> b!3069768 (= tp!968673 e!1921669)))

(declare-fun b!3070386 () Bool)

(declare-fun tp!968731 () Bool)

(declare-fun tp!968727 () Bool)

(assert (=> b!3070386 (= e!1921669 (and tp!968731 tp!968727))))

(assert (= (and b!3069768 ((_ is ElementMatch!9511) (regTwo!19534 r!17423))) b!3070383))

(assert (= (and b!3069768 ((_ is Concat!14832) (regTwo!19534 r!17423))) b!3070384))

(assert (= (and b!3069768 ((_ is Star!9511) (regTwo!19534 r!17423))) b!3070385))

(assert (= (and b!3069768 ((_ is Union!9511) (regTwo!19534 r!17423))) b!3070386))

(declare-fun b!3070391 () Bool)

(declare-fun e!1921672 () Bool)

(declare-fun tp!968734 () Bool)

(assert (=> b!3070391 (= e!1921672 (and tp_is_empty!16585 tp!968734))))

(assert (=> b!3069766 (= tp!968671 e!1921672)))

(assert (= (and b!3069766 ((_ is Cons!35252) (t!234441 s!11993))) b!3070391))

(declare-fun b!3070394 () Bool)

(declare-fun e!1921673 () Bool)

(declare-fun tp!968738 () Bool)

(assert (=> b!3070394 (= e!1921673 tp!968738)))

(declare-fun b!3070393 () Bool)

(declare-fun tp!968736 () Bool)

(declare-fun tp!968737 () Bool)

(assert (=> b!3070393 (= e!1921673 (and tp!968736 tp!968737))))

(declare-fun b!3070392 () Bool)

(assert (=> b!3070392 (= e!1921673 tp_is_empty!16585)))

(assert (=> b!3069760 (= tp!968668 e!1921673)))

(declare-fun b!3070395 () Bool)

(declare-fun tp!968739 () Bool)

(declare-fun tp!968735 () Bool)

(assert (=> b!3070395 (= e!1921673 (and tp!968739 tp!968735))))

(assert (= (and b!3069760 ((_ is ElementMatch!9511) (regOne!19535 r!17423))) b!3070392))

(assert (= (and b!3069760 ((_ is Concat!14832) (regOne!19535 r!17423))) b!3070393))

(assert (= (and b!3069760 ((_ is Star!9511) (regOne!19535 r!17423))) b!3070394))

(assert (= (and b!3069760 ((_ is Union!9511) (regOne!19535 r!17423))) b!3070395))

(declare-fun b!3070398 () Bool)

(declare-fun e!1921674 () Bool)

(declare-fun tp!968743 () Bool)

(assert (=> b!3070398 (= e!1921674 tp!968743)))

(declare-fun b!3070397 () Bool)

(declare-fun tp!968741 () Bool)

(declare-fun tp!968742 () Bool)

(assert (=> b!3070397 (= e!1921674 (and tp!968741 tp!968742))))

(declare-fun b!3070396 () Bool)

(assert (=> b!3070396 (= e!1921674 tp_is_empty!16585)))

(assert (=> b!3069760 (= tp!968672 e!1921674)))

(declare-fun b!3070399 () Bool)

(declare-fun tp!968744 () Bool)

(declare-fun tp!968740 () Bool)

(assert (=> b!3070399 (= e!1921674 (and tp!968744 tp!968740))))

(assert (= (and b!3069760 ((_ is ElementMatch!9511) (regTwo!19535 r!17423))) b!3070396))

(assert (= (and b!3069760 ((_ is Concat!14832) (regTwo!19535 r!17423))) b!3070397))

(assert (= (and b!3069760 ((_ is Star!9511) (regTwo!19535 r!17423))) b!3070398))

(assert (= (and b!3069760 ((_ is Union!9511) (regTwo!19535 r!17423))) b!3070399))

(declare-fun b!3070402 () Bool)

(declare-fun e!1921675 () Bool)

(declare-fun tp!968748 () Bool)

(assert (=> b!3070402 (= e!1921675 tp!968748)))

(declare-fun b!3070401 () Bool)

(declare-fun tp!968746 () Bool)

(declare-fun tp!968747 () Bool)

(assert (=> b!3070401 (= e!1921675 (and tp!968746 tp!968747))))

(declare-fun b!3070400 () Bool)

(assert (=> b!3070400 (= e!1921675 tp_is_empty!16585)))

(assert (=> b!3069770 (= tp!968669 e!1921675)))

(declare-fun b!3070403 () Bool)

(declare-fun tp!968749 () Bool)

(declare-fun tp!968745 () Bool)

(assert (=> b!3070403 (= e!1921675 (and tp!968749 tp!968745))))

(assert (= (and b!3069770 ((_ is ElementMatch!9511) (reg!9840 r!17423))) b!3070400))

(assert (= (and b!3069770 ((_ is Concat!14832) (reg!9840 r!17423))) b!3070401))

(assert (= (and b!3069770 ((_ is Star!9511) (reg!9840 r!17423))) b!3070402))

(assert (= (and b!3069770 ((_ is Union!9511) (reg!9840 r!17423))) b!3070403))

(check-sat (not b!3070403) (not bm!213093) (not b!3069981) (not b!3070004) (not b!3070380) (not b!3069979) (not b!3069853) (not b!3070011) (not b!3069976) (not b!3069988) (not b!3069878) (not b!3070007) (not d!856179) (not b!3069990) (not b!3070359) (not bm!213092) (not b!3070384) (not b!3070009) (not b!3070393) (not b!3070391) (not b!3069983) (not bm!213097) (not b!3070346) (not b!3070394) (not d!856135) (not d!856129) (not b!3069850) (not bm!213176) (not b!3069997) (not bm!213175) (not b!3070364) (not bm!213177) (not bm!213116) (not b!3069916) (not bm!213108) (not d!856181) (not b!3070366) (not d!856131) (not d!856117) (not bm!213117) (not b!3070399) (not bm!213099) (not b!3070402) (not b!3069965) (not b!3069995) (not b!3070362) (not b!3070385) (not b!3069969) (not bm!213090) (not b!3069962) (not b!3070401) (not bm!213110) (not b!3069967) (not b!3069925) (not b!3070013) (not bm!213086) (not d!856119) (not bm!213091) (not bm!213107) (not b!3070395) (not d!856133) (not b!3069999) (not b!3070381) (not b!3070397) (not d!856127) (not b!3070368) (not b!3069974) (not b!3070386) (not b!3070382) (not d!856137) (not b!3070002) (not b!3069875) (not b!3069971) (not b!3069993) (not b!3069960) (not bm!213094) (not bm!213098) (not bm!213114) (not b!3070357) (not b!3070342) (not b!3070398) (not b!3069985) (not bm!213111) (not bm!213115) tp_is_empty!16585 (not bm!213087))
(check-sat)
