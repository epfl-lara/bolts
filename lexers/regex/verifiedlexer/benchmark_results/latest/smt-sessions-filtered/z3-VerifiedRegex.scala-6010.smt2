; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294388 () Bool)

(assert start!294388)

(declare-fun b!3103915 () Bool)

(declare-fun e!1939488 () Bool)

(declare-fun tp!975214 () Bool)

(assert (=> b!3103915 (= e!1939488 tp!975214)))

(declare-fun b!3103916 () Bool)

(declare-fun tp!975216 () Bool)

(declare-fun tp!975212 () Bool)

(assert (=> b!3103916 (= e!1939488 (and tp!975216 tp!975212))))

(declare-fun b!3103917 () Bool)

(declare-fun tp_is_empty!16705 () Bool)

(assert (=> b!3103917 (= e!1939488 tp_is_empty!16705)))

(declare-fun b!3103918 () Bool)

(declare-fun e!1939489 () Bool)

(declare-fun e!1939487 () Bool)

(assert (=> b!3103918 (= e!1939489 e!1939487)))

(declare-fun res!1271258 () Bool)

(assert (=> b!3103918 (=> res!1271258 e!1939487)))

(declare-datatypes ((C!19328 0))(
  ( (C!19329 (val!11700 Int)) )
))
(declare-datatypes ((Regex!9571 0))(
  ( (ElementMatch!9571 (c!518879 C!19328)) (Concat!14892 (regOne!19654 Regex!9571) (regTwo!19654 Regex!9571)) (EmptyExpr!9571) (Star!9571 (reg!9900 Regex!9571)) (EmptyLang!9571) (Union!9571 (regOne!19655 Regex!9571) (regTwo!19655 Regex!9571)) )
))
(declare-fun lt!1056288 () Regex!9571)

(declare-fun isEmptyLang!622 (Regex!9571) Bool)

(assert (=> b!3103918 (= res!1271258 (not (isEmptyLang!622 lt!1056288)))))

(declare-fun lt!1056286 () Regex!9571)

(declare-fun r!17423 () Regex!9571)

(declare-fun simplify!526 (Regex!9571) Regex!9571)

(assert (=> b!3103918 (= lt!1056286 (simplify!526 (regTwo!19655 r!17423)))))

(assert (=> b!3103918 (= lt!1056288 (simplify!526 (regOne!19655 r!17423)))))

(declare-fun res!1271255 () Bool)

(declare-fun e!1939486 () Bool)

(assert (=> start!294388 (=> (not res!1271255) (not e!1939486))))

(declare-fun validRegex!4304 (Regex!9571) Bool)

(assert (=> start!294388 (= res!1271255 (validRegex!4304 r!17423))))

(assert (=> start!294388 e!1939486))

(assert (=> start!294388 e!1939488))

(declare-fun e!1939484 () Bool)

(assert (=> start!294388 e!1939484))

(declare-fun b!3103919 () Bool)

(declare-fun tp!975213 () Bool)

(declare-fun tp!975217 () Bool)

(assert (=> b!3103919 (= e!1939488 (and tp!975213 tp!975217))))

(declare-fun b!3103920 () Bool)

(assert (=> b!3103920 (= e!1939486 (not e!1939489))))

(declare-fun res!1271256 () Bool)

(assert (=> b!3103920 (=> res!1271256 e!1939489)))

(declare-fun lt!1056285 () Bool)

(get-info :version)

(assert (=> b!3103920 (= res!1271256 (or lt!1056285 ((_ is Concat!14892) r!17423) (not ((_ is Union!9571) r!17423))))))

(declare-datatypes ((List!35436 0))(
  ( (Nil!35312) (Cons!35312 (h!40732 C!19328) (t!234501 List!35436)) )
))
(declare-fun s!11993 () List!35436)

(declare-fun matchRSpec!1708 (Regex!9571 List!35436) Bool)

(assert (=> b!3103920 (= lt!1056285 (matchRSpec!1708 r!17423 s!11993))))

(declare-fun matchR!4453 (Regex!9571 List!35436) Bool)

(assert (=> b!3103920 (= lt!1056285 (matchR!4453 r!17423 s!11993))))

(declare-datatypes ((Unit!49581 0))(
  ( (Unit!49582) )
))
(declare-fun lt!1056290 () Unit!49581)

(declare-fun mainMatchTheorem!1708 (Regex!9571 List!35436) Unit!49581)

(assert (=> b!3103920 (= lt!1056290 (mainMatchTheorem!1708 r!17423 s!11993))))

(declare-fun b!3103921 () Bool)

(declare-fun tp!975215 () Bool)

(assert (=> b!3103921 (= e!1939484 (and tp_is_empty!16705 tp!975215))))

(declare-fun b!3103922 () Bool)

(declare-fun e!1939485 () Bool)

(assert (=> b!3103922 (= e!1939487 e!1939485)))

(declare-fun res!1271257 () Bool)

(assert (=> b!3103922 (=> res!1271257 e!1939485)))

(declare-fun lt!1056287 () Bool)

(assert (=> b!3103922 (= res!1271257 lt!1056287)))

(assert (=> b!3103922 (= lt!1056287 (matchR!4453 lt!1056286 s!11993))))

(assert (=> b!3103922 (= lt!1056287 (matchR!4453 (regTwo!19655 r!17423) s!11993))))

(declare-fun lt!1056289 () Unit!49581)

(declare-fun lemmaSimplifySound!334 (Regex!9571 List!35436) Unit!49581)

(assert (=> b!3103922 (= lt!1056289 (lemmaSimplifySound!334 (regTwo!19655 r!17423) s!11993))))

(declare-fun b!3103923 () Bool)

(assert (=> b!3103923 (= e!1939485 (not (matchR!4453 (simplify!526 r!17423) s!11993)))))

(assert (= (and start!294388 res!1271255) b!3103920))

(assert (= (and b!3103920 (not res!1271256)) b!3103918))

(assert (= (and b!3103918 (not res!1271258)) b!3103922))

(assert (= (and b!3103922 (not res!1271257)) b!3103923))

(assert (= (and start!294388 ((_ is ElementMatch!9571) r!17423)) b!3103917))

(assert (= (and start!294388 ((_ is Concat!14892) r!17423)) b!3103919))

(assert (= (and start!294388 ((_ is Star!9571) r!17423)) b!3103915))

(assert (= (and start!294388 ((_ is Union!9571) r!17423)) b!3103916))

(assert (= (and start!294388 ((_ is Cons!35312) s!11993)) b!3103921))

(declare-fun m!3402125 () Bool)

(assert (=> b!3103918 m!3402125))

(declare-fun m!3402127 () Bool)

(assert (=> b!3103918 m!3402127))

(declare-fun m!3402129 () Bool)

(assert (=> b!3103918 m!3402129))

(declare-fun m!3402131 () Bool)

(assert (=> b!3103922 m!3402131))

(declare-fun m!3402133 () Bool)

(assert (=> b!3103922 m!3402133))

(declare-fun m!3402135 () Bool)

(assert (=> b!3103922 m!3402135))

(declare-fun m!3402137 () Bool)

(assert (=> start!294388 m!3402137))

(declare-fun m!3402139 () Bool)

(assert (=> b!3103923 m!3402139))

(assert (=> b!3103923 m!3402139))

(declare-fun m!3402141 () Bool)

(assert (=> b!3103923 m!3402141))

(declare-fun m!3402143 () Bool)

(assert (=> b!3103920 m!3402143))

(declare-fun m!3402145 () Bool)

(assert (=> b!3103920 m!3402145))

(declare-fun m!3402147 () Bool)

(assert (=> b!3103920 m!3402147))

(check-sat (not b!3103922) (not b!3103920) (not b!3103919) (not start!294388) (not b!3103915) tp_is_empty!16705 (not b!3103921) (not b!3103916) (not b!3103923) (not b!3103918))
(check-sat)
(get-model)

(declare-fun b!3104206 () Bool)

(assert (=> b!3104206 true))

(assert (=> b!3104206 true))

(declare-fun bs!535721 () Bool)

(declare-fun b!3104205 () Bool)

(assert (= bs!535721 (and b!3104205 b!3104206)))

(declare-fun lambda!114934 () Int)

(declare-fun lambda!114933 () Int)

(assert (=> bs!535721 (not (= lambda!114934 lambda!114933))))

(assert (=> b!3104205 true))

(assert (=> b!3104205 true))

(declare-fun d!861237 () Bool)

(declare-fun c!518973 () Bool)

(assert (=> d!861237 (= c!518973 ((_ is EmptyExpr!9571) r!17423))))

(declare-fun e!1939652 () Bool)

(assert (=> d!861237 (= (matchRSpec!1708 r!17423 s!11993) e!1939652)))

(declare-fun b!3104200 () Bool)

(declare-fun call!219122 () Bool)

(assert (=> b!3104200 (= e!1939652 call!219122)))

(declare-fun b!3104201 () Bool)

(declare-fun e!1939649 () Bool)

(declare-fun e!1939648 () Bool)

(assert (=> b!3104201 (= e!1939649 e!1939648)))

(declare-fun c!518974 () Bool)

(assert (=> b!3104201 (= c!518974 ((_ is Star!9571) r!17423))))

(declare-fun b!3104202 () Bool)

(declare-fun e!1939654 () Bool)

(assert (=> b!3104202 (= e!1939652 e!1939654)))

(declare-fun res!1271351 () Bool)

(assert (=> b!3104202 (= res!1271351 (not ((_ is EmptyLang!9571) r!17423)))))

(assert (=> b!3104202 (=> (not res!1271351) (not e!1939654))))

(declare-fun b!3104203 () Bool)

(declare-fun c!518975 () Bool)

(assert (=> b!3104203 (= c!518975 ((_ is ElementMatch!9571) r!17423))))

(declare-fun e!1939651 () Bool)

(assert (=> b!3104203 (= e!1939654 e!1939651)))

(declare-fun b!3104204 () Bool)

(declare-fun res!1271353 () Bool)

(declare-fun e!1939650 () Bool)

(assert (=> b!3104204 (=> res!1271353 e!1939650)))

(assert (=> b!3104204 (= res!1271353 call!219122)))

(assert (=> b!3104204 (= e!1939648 e!1939650)))

(declare-fun call!219123 () Bool)

(assert (=> b!3104205 (= e!1939648 call!219123)))

(assert (=> b!3104206 (= e!1939650 call!219123)))

(declare-fun b!3104207 () Bool)

(declare-fun c!518972 () Bool)

(assert (=> b!3104207 (= c!518972 ((_ is Union!9571) r!17423))))

(assert (=> b!3104207 (= e!1939651 e!1939649)))

(declare-fun bm!219117 () Bool)

(declare-fun Exists!1831 (Int) Bool)

(assert (=> bm!219117 (= call!219123 (Exists!1831 (ite c!518974 lambda!114933 lambda!114934)))))

(declare-fun bm!219118 () Bool)

(declare-fun isEmpty!19660 (List!35436) Bool)

(assert (=> bm!219118 (= call!219122 (isEmpty!19660 s!11993))))

(declare-fun b!3104208 () Bool)

(declare-fun e!1939653 () Bool)

(assert (=> b!3104208 (= e!1939649 e!1939653)))

(declare-fun res!1271352 () Bool)

(assert (=> b!3104208 (= res!1271352 (matchRSpec!1708 (regOne!19655 r!17423) s!11993))))

(assert (=> b!3104208 (=> res!1271352 e!1939653)))

(declare-fun b!3104209 () Bool)

(assert (=> b!3104209 (= e!1939653 (matchRSpec!1708 (regTwo!19655 r!17423) s!11993))))

(declare-fun b!3104210 () Bool)

(assert (=> b!3104210 (= e!1939651 (= s!11993 (Cons!35312 (c!518879 r!17423) Nil!35312)))))

(assert (= (and d!861237 c!518973) b!3104200))

(assert (= (and d!861237 (not c!518973)) b!3104202))

(assert (= (and b!3104202 res!1271351) b!3104203))

(assert (= (and b!3104203 c!518975) b!3104210))

(assert (= (and b!3104203 (not c!518975)) b!3104207))

(assert (= (and b!3104207 c!518972) b!3104208))

(assert (= (and b!3104207 (not c!518972)) b!3104201))

(assert (= (and b!3104208 (not res!1271352)) b!3104209))

(assert (= (and b!3104201 c!518974) b!3104204))

(assert (= (and b!3104201 (not c!518974)) b!3104205))

(assert (= (and b!3104204 (not res!1271353)) b!3104206))

(assert (= (or b!3104206 b!3104205) bm!219117))

(assert (= (or b!3104200 b!3104204) bm!219118))

(declare-fun m!3402245 () Bool)

(assert (=> bm!219117 m!3402245))

(declare-fun m!3402247 () Bool)

(assert (=> bm!219118 m!3402247))

(declare-fun m!3402249 () Bool)

(assert (=> b!3104208 m!3402249))

(declare-fun m!3402251 () Bool)

(assert (=> b!3104209 m!3402251))

(assert (=> b!3103920 d!861237))

(declare-fun b!3104243 () Bool)

(declare-fun e!1939669 () Bool)

(declare-fun lt!1056331 () Bool)

(declare-fun call!219126 () Bool)

(assert (=> b!3104243 (= e!1939669 (= lt!1056331 call!219126))))

(declare-fun b!3104244 () Bool)

(declare-fun res!1271373 () Bool)

(declare-fun e!1939672 () Bool)

(assert (=> b!3104244 (=> res!1271373 e!1939672)))

(declare-fun tail!5094 (List!35436) List!35436)

(assert (=> b!3104244 (= res!1271373 (not (isEmpty!19660 (tail!5094 s!11993))))))

(declare-fun b!3104245 () Bool)

(declare-fun res!1271371 () Bool)

(declare-fun e!1939675 () Bool)

(assert (=> b!3104245 (=> res!1271371 e!1939675)))

(assert (=> b!3104245 (= res!1271371 (not ((_ is ElementMatch!9571) r!17423)))))

(declare-fun e!1939674 () Bool)

(assert (=> b!3104245 (= e!1939674 e!1939675)))

(declare-fun b!3104246 () Bool)

(declare-fun e!1939671 () Bool)

(declare-fun head!6868 (List!35436) C!19328)

(assert (=> b!3104246 (= e!1939671 (= (head!6868 s!11993) (c!518879 r!17423)))))

(declare-fun bm!219121 () Bool)

(assert (=> bm!219121 (= call!219126 (isEmpty!19660 s!11993))))

(declare-fun b!3104247 () Bool)

(declare-fun res!1271370 () Bool)

(assert (=> b!3104247 (=> res!1271370 e!1939675)))

(assert (=> b!3104247 (= res!1271370 e!1939671)))

(declare-fun res!1271372 () Bool)

(assert (=> b!3104247 (=> (not res!1271372) (not e!1939671))))

(assert (=> b!3104247 (= res!1271372 lt!1056331)))

(declare-fun b!3104248 () Bool)

(assert (=> b!3104248 (= e!1939669 e!1939674)))

(declare-fun c!518982 () Bool)

(assert (=> b!3104248 (= c!518982 ((_ is EmptyLang!9571) r!17423))))

(declare-fun d!861259 () Bool)

(assert (=> d!861259 e!1939669))

(declare-fun c!518984 () Bool)

(assert (=> d!861259 (= c!518984 ((_ is EmptyExpr!9571) r!17423))))

(declare-fun e!1939670 () Bool)

(assert (=> d!861259 (= lt!1056331 e!1939670)))

(declare-fun c!518983 () Bool)

(assert (=> d!861259 (= c!518983 (isEmpty!19660 s!11993))))

(assert (=> d!861259 (validRegex!4304 r!17423)))

(assert (=> d!861259 (= (matchR!4453 r!17423 s!11993) lt!1056331)))

(declare-fun b!3104249 () Bool)

(declare-fun nullable!3215 (Regex!9571) Bool)

(assert (=> b!3104249 (= e!1939670 (nullable!3215 r!17423))))

(declare-fun b!3104250 () Bool)

(declare-fun res!1271377 () Bool)

(assert (=> b!3104250 (=> (not res!1271377) (not e!1939671))))

(assert (=> b!3104250 (= res!1271377 (not call!219126))))

(declare-fun b!3104251 () Bool)

(declare-fun res!1271376 () Bool)

(assert (=> b!3104251 (=> (not res!1271376) (not e!1939671))))

(assert (=> b!3104251 (= res!1271376 (isEmpty!19660 (tail!5094 s!11993)))))

(declare-fun b!3104252 () Bool)

(assert (=> b!3104252 (= e!1939674 (not lt!1056331))))

(declare-fun b!3104253 () Bool)

(declare-fun e!1939673 () Bool)

(assert (=> b!3104253 (= e!1939675 e!1939673)))

(declare-fun res!1271374 () Bool)

(assert (=> b!3104253 (=> (not res!1271374) (not e!1939673))))

(assert (=> b!3104253 (= res!1271374 (not lt!1056331))))

(declare-fun b!3104254 () Bool)

(assert (=> b!3104254 (= e!1939673 e!1939672)))

(declare-fun res!1271375 () Bool)

(assert (=> b!3104254 (=> res!1271375 e!1939672)))

(assert (=> b!3104254 (= res!1271375 call!219126)))

(declare-fun b!3104255 () Bool)

(assert (=> b!3104255 (= e!1939672 (not (= (head!6868 s!11993) (c!518879 r!17423))))))

(declare-fun b!3104256 () Bool)

(declare-fun derivativeStep!2809 (Regex!9571 C!19328) Regex!9571)

(assert (=> b!3104256 (= e!1939670 (matchR!4453 (derivativeStep!2809 r!17423 (head!6868 s!11993)) (tail!5094 s!11993)))))

(assert (= (and d!861259 c!518983) b!3104249))

(assert (= (and d!861259 (not c!518983)) b!3104256))

(assert (= (and d!861259 c!518984) b!3104243))

(assert (= (and d!861259 (not c!518984)) b!3104248))

(assert (= (and b!3104248 c!518982) b!3104252))

(assert (= (and b!3104248 (not c!518982)) b!3104245))

(assert (= (and b!3104245 (not res!1271371)) b!3104247))

(assert (= (and b!3104247 res!1271372) b!3104250))

(assert (= (and b!3104250 res!1271377) b!3104251))

(assert (= (and b!3104251 res!1271376) b!3104246))

(assert (= (and b!3104247 (not res!1271370)) b!3104253))

(assert (= (and b!3104253 res!1271374) b!3104254))

(assert (= (and b!3104254 (not res!1271375)) b!3104244))

(assert (= (and b!3104244 (not res!1271373)) b!3104255))

(assert (= (or b!3104243 b!3104250 b!3104254) bm!219121))

(declare-fun m!3402253 () Bool)

(assert (=> b!3104256 m!3402253))

(assert (=> b!3104256 m!3402253))

(declare-fun m!3402255 () Bool)

(assert (=> b!3104256 m!3402255))

(declare-fun m!3402257 () Bool)

(assert (=> b!3104256 m!3402257))

(assert (=> b!3104256 m!3402255))

(assert (=> b!3104256 m!3402257))

(declare-fun m!3402259 () Bool)

(assert (=> b!3104256 m!3402259))

(declare-fun m!3402261 () Bool)

(assert (=> b!3104249 m!3402261))

(assert (=> b!3104244 m!3402257))

(assert (=> b!3104244 m!3402257))

(declare-fun m!3402263 () Bool)

(assert (=> b!3104244 m!3402263))

(assert (=> b!3104255 m!3402253))

(assert (=> d!861259 m!3402247))

(assert (=> d!861259 m!3402137))

(assert (=> b!3104251 m!3402257))

(assert (=> b!3104251 m!3402257))

(assert (=> b!3104251 m!3402263))

(assert (=> b!3104246 m!3402253))

(assert (=> bm!219121 m!3402247))

(assert (=> b!3103920 d!861259))

(declare-fun d!861261 () Bool)

(assert (=> d!861261 (= (matchR!4453 r!17423 s!11993) (matchRSpec!1708 r!17423 s!11993))))

(declare-fun lt!1056334 () Unit!49581)

(declare-fun choose!18364 (Regex!9571 List!35436) Unit!49581)

(assert (=> d!861261 (= lt!1056334 (choose!18364 r!17423 s!11993))))

(assert (=> d!861261 (validRegex!4304 r!17423)))

(assert (=> d!861261 (= (mainMatchTheorem!1708 r!17423 s!11993) lt!1056334)))

(declare-fun bs!535722 () Bool)

(assert (= bs!535722 d!861261))

(assert (=> bs!535722 m!3402145))

(assert (=> bs!535722 m!3402143))

(declare-fun m!3402265 () Bool)

(assert (=> bs!535722 m!3402265))

(assert (=> bs!535722 m!3402137))

(assert (=> b!3103920 d!861261))

(declare-fun b!3104263 () Bool)

(declare-fun e!1939678 () Bool)

(declare-fun lt!1056335 () Bool)

(declare-fun call!219127 () Bool)

(assert (=> b!3104263 (= e!1939678 (= lt!1056335 call!219127))))

(declare-fun b!3104264 () Bool)

(declare-fun res!1271387 () Bool)

(declare-fun e!1939681 () Bool)

(assert (=> b!3104264 (=> res!1271387 e!1939681)))

(assert (=> b!3104264 (= res!1271387 (not (isEmpty!19660 (tail!5094 s!11993))))))

(declare-fun b!3104265 () Bool)

(declare-fun res!1271385 () Bool)

(declare-fun e!1939684 () Bool)

(assert (=> b!3104265 (=> res!1271385 e!1939684)))

(assert (=> b!3104265 (= res!1271385 (not ((_ is ElementMatch!9571) lt!1056286)))))

(declare-fun e!1939683 () Bool)

(assert (=> b!3104265 (= e!1939683 e!1939684)))

(declare-fun b!3104266 () Bool)

(declare-fun e!1939680 () Bool)

(assert (=> b!3104266 (= e!1939680 (= (head!6868 s!11993) (c!518879 lt!1056286)))))

(declare-fun bm!219122 () Bool)

(assert (=> bm!219122 (= call!219127 (isEmpty!19660 s!11993))))

(declare-fun b!3104267 () Bool)

(declare-fun res!1271384 () Bool)

(assert (=> b!3104267 (=> res!1271384 e!1939684)))

(assert (=> b!3104267 (= res!1271384 e!1939680)))

(declare-fun res!1271386 () Bool)

(assert (=> b!3104267 (=> (not res!1271386) (not e!1939680))))

(assert (=> b!3104267 (= res!1271386 lt!1056335)))

(declare-fun b!3104268 () Bool)

(assert (=> b!3104268 (= e!1939678 e!1939683)))

(declare-fun c!518985 () Bool)

(assert (=> b!3104268 (= c!518985 ((_ is EmptyLang!9571) lt!1056286))))

(declare-fun d!861263 () Bool)

(assert (=> d!861263 e!1939678))

(declare-fun c!518987 () Bool)

(assert (=> d!861263 (= c!518987 ((_ is EmptyExpr!9571) lt!1056286))))

(declare-fun e!1939679 () Bool)

(assert (=> d!861263 (= lt!1056335 e!1939679)))

(declare-fun c!518986 () Bool)

(assert (=> d!861263 (= c!518986 (isEmpty!19660 s!11993))))

(assert (=> d!861263 (validRegex!4304 lt!1056286)))

(assert (=> d!861263 (= (matchR!4453 lt!1056286 s!11993) lt!1056335)))

(declare-fun b!3104269 () Bool)

(assert (=> b!3104269 (= e!1939679 (nullable!3215 lt!1056286))))

(declare-fun b!3104270 () Bool)

(declare-fun res!1271391 () Bool)

(assert (=> b!3104270 (=> (not res!1271391) (not e!1939680))))

(assert (=> b!3104270 (= res!1271391 (not call!219127))))

(declare-fun b!3104271 () Bool)

(declare-fun res!1271390 () Bool)

(assert (=> b!3104271 (=> (not res!1271390) (not e!1939680))))

(assert (=> b!3104271 (= res!1271390 (isEmpty!19660 (tail!5094 s!11993)))))

(declare-fun b!3104272 () Bool)

(assert (=> b!3104272 (= e!1939683 (not lt!1056335))))

(declare-fun b!3104273 () Bool)

(declare-fun e!1939682 () Bool)

(assert (=> b!3104273 (= e!1939684 e!1939682)))

(declare-fun res!1271388 () Bool)

(assert (=> b!3104273 (=> (not res!1271388) (not e!1939682))))

(assert (=> b!3104273 (= res!1271388 (not lt!1056335))))

(declare-fun b!3104274 () Bool)

(assert (=> b!3104274 (= e!1939682 e!1939681)))

(declare-fun res!1271389 () Bool)

(assert (=> b!3104274 (=> res!1271389 e!1939681)))

(assert (=> b!3104274 (= res!1271389 call!219127)))

(declare-fun b!3104275 () Bool)

(assert (=> b!3104275 (= e!1939681 (not (= (head!6868 s!11993) (c!518879 lt!1056286))))))

(declare-fun b!3104276 () Bool)

(assert (=> b!3104276 (= e!1939679 (matchR!4453 (derivativeStep!2809 lt!1056286 (head!6868 s!11993)) (tail!5094 s!11993)))))

(assert (= (and d!861263 c!518986) b!3104269))

(assert (= (and d!861263 (not c!518986)) b!3104276))

(assert (= (and d!861263 c!518987) b!3104263))

(assert (= (and d!861263 (not c!518987)) b!3104268))

(assert (= (and b!3104268 c!518985) b!3104272))

(assert (= (and b!3104268 (not c!518985)) b!3104265))

(assert (= (and b!3104265 (not res!1271385)) b!3104267))

(assert (= (and b!3104267 res!1271386) b!3104270))

(assert (= (and b!3104270 res!1271391) b!3104271))

(assert (= (and b!3104271 res!1271390) b!3104266))

(assert (= (and b!3104267 (not res!1271384)) b!3104273))

(assert (= (and b!3104273 res!1271388) b!3104274))

(assert (= (and b!3104274 (not res!1271389)) b!3104264))

(assert (= (and b!3104264 (not res!1271387)) b!3104275))

(assert (= (or b!3104263 b!3104270 b!3104274) bm!219122))

(assert (=> b!3104276 m!3402253))

(assert (=> b!3104276 m!3402253))

(declare-fun m!3402267 () Bool)

(assert (=> b!3104276 m!3402267))

(assert (=> b!3104276 m!3402257))

(assert (=> b!3104276 m!3402267))

(assert (=> b!3104276 m!3402257))

(declare-fun m!3402269 () Bool)

(assert (=> b!3104276 m!3402269))

(declare-fun m!3402271 () Bool)

(assert (=> b!3104269 m!3402271))

(assert (=> b!3104264 m!3402257))

(assert (=> b!3104264 m!3402257))

(assert (=> b!3104264 m!3402263))

(assert (=> b!3104275 m!3402253))

(assert (=> d!861263 m!3402247))

(declare-fun m!3402273 () Bool)

(assert (=> d!861263 m!3402273))

(assert (=> b!3104271 m!3402257))

(assert (=> b!3104271 m!3402257))

(assert (=> b!3104271 m!3402263))

(assert (=> b!3104266 m!3402253))

(assert (=> bm!219122 m!3402247))

(assert (=> b!3103922 d!861263))

(declare-fun b!3104281 () Bool)

(declare-fun e!1939687 () Bool)

(declare-fun lt!1056336 () Bool)

(declare-fun call!219128 () Bool)

(assert (=> b!3104281 (= e!1939687 (= lt!1056336 call!219128))))

(declare-fun b!3104282 () Bool)

(declare-fun res!1271399 () Bool)

(declare-fun e!1939690 () Bool)

(assert (=> b!3104282 (=> res!1271399 e!1939690)))

(assert (=> b!3104282 (= res!1271399 (not (isEmpty!19660 (tail!5094 s!11993))))))

(declare-fun b!3104283 () Bool)

(declare-fun res!1271397 () Bool)

(declare-fun e!1939693 () Bool)

(assert (=> b!3104283 (=> res!1271397 e!1939693)))

(assert (=> b!3104283 (= res!1271397 (not ((_ is ElementMatch!9571) (regTwo!19655 r!17423))))))

(declare-fun e!1939692 () Bool)

(assert (=> b!3104283 (= e!1939692 e!1939693)))

(declare-fun b!3104284 () Bool)

(declare-fun e!1939689 () Bool)

(assert (=> b!3104284 (= e!1939689 (= (head!6868 s!11993) (c!518879 (regTwo!19655 r!17423))))))

(declare-fun bm!219123 () Bool)

(assert (=> bm!219123 (= call!219128 (isEmpty!19660 s!11993))))

(declare-fun b!3104285 () Bool)

(declare-fun res!1271396 () Bool)

(assert (=> b!3104285 (=> res!1271396 e!1939693)))

(assert (=> b!3104285 (= res!1271396 e!1939689)))

(declare-fun res!1271398 () Bool)

(assert (=> b!3104285 (=> (not res!1271398) (not e!1939689))))

(assert (=> b!3104285 (= res!1271398 lt!1056336)))

(declare-fun b!3104286 () Bool)

(assert (=> b!3104286 (= e!1939687 e!1939692)))

(declare-fun c!518988 () Bool)

(assert (=> b!3104286 (= c!518988 ((_ is EmptyLang!9571) (regTwo!19655 r!17423)))))

(declare-fun d!861265 () Bool)

(assert (=> d!861265 e!1939687))

(declare-fun c!518990 () Bool)

(assert (=> d!861265 (= c!518990 ((_ is EmptyExpr!9571) (regTwo!19655 r!17423)))))

(declare-fun e!1939688 () Bool)

(assert (=> d!861265 (= lt!1056336 e!1939688)))

(declare-fun c!518989 () Bool)

(assert (=> d!861265 (= c!518989 (isEmpty!19660 s!11993))))

(assert (=> d!861265 (validRegex!4304 (regTwo!19655 r!17423))))

(assert (=> d!861265 (= (matchR!4453 (regTwo!19655 r!17423) s!11993) lt!1056336)))

(declare-fun b!3104287 () Bool)

(assert (=> b!3104287 (= e!1939688 (nullable!3215 (regTwo!19655 r!17423)))))

(declare-fun b!3104288 () Bool)

(declare-fun res!1271403 () Bool)

(assert (=> b!3104288 (=> (not res!1271403) (not e!1939689))))

(assert (=> b!3104288 (= res!1271403 (not call!219128))))

(declare-fun b!3104289 () Bool)

(declare-fun res!1271402 () Bool)

(assert (=> b!3104289 (=> (not res!1271402) (not e!1939689))))

(assert (=> b!3104289 (= res!1271402 (isEmpty!19660 (tail!5094 s!11993)))))

(declare-fun b!3104290 () Bool)

(assert (=> b!3104290 (= e!1939692 (not lt!1056336))))

(declare-fun b!3104291 () Bool)

(declare-fun e!1939691 () Bool)

(assert (=> b!3104291 (= e!1939693 e!1939691)))

(declare-fun res!1271400 () Bool)

(assert (=> b!3104291 (=> (not res!1271400) (not e!1939691))))

(assert (=> b!3104291 (= res!1271400 (not lt!1056336))))

(declare-fun b!3104292 () Bool)

(assert (=> b!3104292 (= e!1939691 e!1939690)))

(declare-fun res!1271401 () Bool)

(assert (=> b!3104292 (=> res!1271401 e!1939690)))

(assert (=> b!3104292 (= res!1271401 call!219128)))

(declare-fun b!3104293 () Bool)

(assert (=> b!3104293 (= e!1939690 (not (= (head!6868 s!11993) (c!518879 (regTwo!19655 r!17423)))))))

(declare-fun b!3104294 () Bool)

(assert (=> b!3104294 (= e!1939688 (matchR!4453 (derivativeStep!2809 (regTwo!19655 r!17423) (head!6868 s!11993)) (tail!5094 s!11993)))))

(assert (= (and d!861265 c!518989) b!3104287))

(assert (= (and d!861265 (not c!518989)) b!3104294))

(assert (= (and d!861265 c!518990) b!3104281))

(assert (= (and d!861265 (not c!518990)) b!3104286))

(assert (= (and b!3104286 c!518988) b!3104290))

(assert (= (and b!3104286 (not c!518988)) b!3104283))

(assert (= (and b!3104283 (not res!1271397)) b!3104285))

(assert (= (and b!3104285 res!1271398) b!3104288))

(assert (= (and b!3104288 res!1271403) b!3104289))

(assert (= (and b!3104289 res!1271402) b!3104284))

(assert (= (and b!3104285 (not res!1271396)) b!3104291))

(assert (= (and b!3104291 res!1271400) b!3104292))

(assert (= (and b!3104292 (not res!1271401)) b!3104282))

(assert (= (and b!3104282 (not res!1271399)) b!3104293))

(assert (= (or b!3104281 b!3104288 b!3104292) bm!219123))

(assert (=> b!3104294 m!3402253))

(assert (=> b!3104294 m!3402253))

(declare-fun m!3402275 () Bool)

(assert (=> b!3104294 m!3402275))

(assert (=> b!3104294 m!3402257))

(assert (=> b!3104294 m!3402275))

(assert (=> b!3104294 m!3402257))

(declare-fun m!3402277 () Bool)

(assert (=> b!3104294 m!3402277))

(declare-fun m!3402279 () Bool)

(assert (=> b!3104287 m!3402279))

(assert (=> b!3104282 m!3402257))

(assert (=> b!3104282 m!3402257))

(assert (=> b!3104282 m!3402263))

(assert (=> b!3104293 m!3402253))

(assert (=> d!861265 m!3402247))

(declare-fun m!3402281 () Bool)

(assert (=> d!861265 m!3402281))

(assert (=> b!3104289 m!3402257))

(assert (=> b!3104289 m!3402257))

(assert (=> b!3104289 m!3402263))

(assert (=> b!3104284 m!3402253))

(assert (=> bm!219123 m!3402247))

(assert (=> b!3103922 d!861265))

(declare-fun d!861267 () Bool)

(assert (=> d!861267 (= (matchR!4453 (regTwo!19655 r!17423) s!11993) (matchR!4453 (simplify!526 (regTwo!19655 r!17423)) s!11993))))

(declare-fun lt!1056339 () Unit!49581)

(declare-fun choose!18365 (Regex!9571 List!35436) Unit!49581)

(assert (=> d!861267 (= lt!1056339 (choose!18365 (regTwo!19655 r!17423) s!11993))))

(assert (=> d!861267 (validRegex!4304 (regTwo!19655 r!17423))))

(assert (=> d!861267 (= (lemmaSimplifySound!334 (regTwo!19655 r!17423) s!11993) lt!1056339)))

(declare-fun bs!535723 () Bool)

(assert (= bs!535723 d!861267))

(declare-fun m!3402283 () Bool)

(assert (=> bs!535723 m!3402283))

(assert (=> bs!535723 m!3402127))

(declare-fun m!3402285 () Bool)

(assert (=> bs!535723 m!3402285))

(assert (=> bs!535723 m!3402133))

(assert (=> bs!535723 m!3402281))

(assert (=> bs!535723 m!3402127))

(assert (=> b!3103922 d!861267))

(declare-fun b!3104295 () Bool)

(declare-fun e!1939694 () Bool)

(declare-fun lt!1056340 () Bool)

(declare-fun call!219133 () Bool)

(assert (=> b!3104295 (= e!1939694 (= lt!1056340 call!219133))))

(declare-fun b!3104296 () Bool)

(declare-fun res!1271407 () Bool)

(declare-fun e!1939697 () Bool)

(assert (=> b!3104296 (=> res!1271407 e!1939697)))

(assert (=> b!3104296 (= res!1271407 (not (isEmpty!19660 (tail!5094 s!11993))))))

(declare-fun b!3104297 () Bool)

(declare-fun res!1271405 () Bool)

(declare-fun e!1939700 () Bool)

(assert (=> b!3104297 (=> res!1271405 e!1939700)))

(assert (=> b!3104297 (= res!1271405 (not ((_ is ElementMatch!9571) (simplify!526 r!17423))))))

(declare-fun e!1939699 () Bool)

(assert (=> b!3104297 (= e!1939699 e!1939700)))

(declare-fun b!3104298 () Bool)

(declare-fun e!1939696 () Bool)

(assert (=> b!3104298 (= e!1939696 (= (head!6868 s!11993) (c!518879 (simplify!526 r!17423))))))

(declare-fun bm!219128 () Bool)

(assert (=> bm!219128 (= call!219133 (isEmpty!19660 s!11993))))

(declare-fun b!3104299 () Bool)

(declare-fun res!1271404 () Bool)

(assert (=> b!3104299 (=> res!1271404 e!1939700)))

(assert (=> b!3104299 (= res!1271404 e!1939696)))

(declare-fun res!1271406 () Bool)

(assert (=> b!3104299 (=> (not res!1271406) (not e!1939696))))

(assert (=> b!3104299 (= res!1271406 lt!1056340)))

(declare-fun b!3104300 () Bool)

(assert (=> b!3104300 (= e!1939694 e!1939699)))

(declare-fun c!518991 () Bool)

(assert (=> b!3104300 (= c!518991 ((_ is EmptyLang!9571) (simplify!526 r!17423)))))

(declare-fun d!861269 () Bool)

(assert (=> d!861269 e!1939694))

(declare-fun c!518993 () Bool)

(assert (=> d!861269 (= c!518993 ((_ is EmptyExpr!9571) (simplify!526 r!17423)))))

(declare-fun e!1939695 () Bool)

(assert (=> d!861269 (= lt!1056340 e!1939695)))

(declare-fun c!518992 () Bool)

(assert (=> d!861269 (= c!518992 (isEmpty!19660 s!11993))))

(assert (=> d!861269 (validRegex!4304 (simplify!526 r!17423))))

(assert (=> d!861269 (= (matchR!4453 (simplify!526 r!17423) s!11993) lt!1056340)))

(declare-fun b!3104301 () Bool)

(assert (=> b!3104301 (= e!1939695 (nullable!3215 (simplify!526 r!17423)))))

(declare-fun b!3104302 () Bool)

(declare-fun res!1271411 () Bool)

(assert (=> b!3104302 (=> (not res!1271411) (not e!1939696))))

(assert (=> b!3104302 (= res!1271411 (not call!219133))))

(declare-fun b!3104303 () Bool)

(declare-fun res!1271410 () Bool)

(assert (=> b!3104303 (=> (not res!1271410) (not e!1939696))))

(assert (=> b!3104303 (= res!1271410 (isEmpty!19660 (tail!5094 s!11993)))))

(declare-fun b!3104304 () Bool)

(assert (=> b!3104304 (= e!1939699 (not lt!1056340))))

(declare-fun b!3104305 () Bool)

(declare-fun e!1939698 () Bool)

(assert (=> b!3104305 (= e!1939700 e!1939698)))

(declare-fun res!1271408 () Bool)

(assert (=> b!3104305 (=> (not res!1271408) (not e!1939698))))

(assert (=> b!3104305 (= res!1271408 (not lt!1056340))))

(declare-fun b!3104306 () Bool)

(assert (=> b!3104306 (= e!1939698 e!1939697)))

(declare-fun res!1271409 () Bool)

(assert (=> b!3104306 (=> res!1271409 e!1939697)))

(assert (=> b!3104306 (= res!1271409 call!219133)))

(declare-fun b!3104307 () Bool)

(assert (=> b!3104307 (= e!1939697 (not (= (head!6868 s!11993) (c!518879 (simplify!526 r!17423)))))))

(declare-fun b!3104308 () Bool)

(assert (=> b!3104308 (= e!1939695 (matchR!4453 (derivativeStep!2809 (simplify!526 r!17423) (head!6868 s!11993)) (tail!5094 s!11993)))))

(assert (= (and d!861269 c!518992) b!3104301))

(assert (= (and d!861269 (not c!518992)) b!3104308))

(assert (= (and d!861269 c!518993) b!3104295))

(assert (= (and d!861269 (not c!518993)) b!3104300))

(assert (= (and b!3104300 c!518991) b!3104304))

(assert (= (and b!3104300 (not c!518991)) b!3104297))

(assert (= (and b!3104297 (not res!1271405)) b!3104299))

(assert (= (and b!3104299 res!1271406) b!3104302))

(assert (= (and b!3104302 res!1271411) b!3104303))

(assert (= (and b!3104303 res!1271410) b!3104298))

(assert (= (and b!3104299 (not res!1271404)) b!3104305))

(assert (= (and b!3104305 res!1271408) b!3104306))

(assert (= (and b!3104306 (not res!1271409)) b!3104296))

(assert (= (and b!3104296 (not res!1271407)) b!3104307))

(assert (= (or b!3104295 b!3104302 b!3104306) bm!219128))

(assert (=> b!3104308 m!3402253))

(assert (=> b!3104308 m!3402139))

(assert (=> b!3104308 m!3402253))

(declare-fun m!3402287 () Bool)

(assert (=> b!3104308 m!3402287))

(assert (=> b!3104308 m!3402257))

(assert (=> b!3104308 m!3402287))

(assert (=> b!3104308 m!3402257))

(declare-fun m!3402289 () Bool)

(assert (=> b!3104308 m!3402289))

(assert (=> b!3104301 m!3402139))

(declare-fun m!3402291 () Bool)

(assert (=> b!3104301 m!3402291))

(assert (=> b!3104296 m!3402257))

(assert (=> b!3104296 m!3402257))

(assert (=> b!3104296 m!3402263))

(assert (=> b!3104307 m!3402253))

(assert (=> d!861269 m!3402247))

(assert (=> d!861269 m!3402139))

(declare-fun m!3402293 () Bool)

(assert (=> d!861269 m!3402293))

(assert (=> b!3104303 m!3402257))

(assert (=> b!3104303 m!3402257))

(assert (=> b!3104303 m!3402263))

(assert (=> b!3104298 m!3402253))

(assert (=> bm!219128 m!3402247))

(assert (=> b!3103923 d!861269))

(declare-fun b!3104423 () Bool)

(declare-fun e!1939753 () Regex!9571)

(declare-fun lt!1056361 () Regex!9571)

(declare-fun lt!1056362 () Regex!9571)

(assert (=> b!3104423 (= e!1939753 (Concat!14892 lt!1056361 lt!1056362))))

(declare-fun b!3104424 () Bool)

(declare-fun e!1939765 () Regex!9571)

(declare-fun e!1939761 () Regex!9571)

(assert (=> b!3104424 (= e!1939765 e!1939761)))

(declare-fun call!219152 () Regex!9571)

(assert (=> b!3104424 (= lt!1056361 call!219152)))

(declare-fun call!219153 () Regex!9571)

(assert (=> b!3104424 (= lt!1056362 call!219153)))

(declare-fun res!1271430 () Bool)

(declare-fun call!219156 () Bool)

(assert (=> b!3104424 (= res!1271430 call!219156)))

(declare-fun e!1939757 () Bool)

(assert (=> b!3104424 (=> res!1271430 e!1939757)))

(declare-fun c!519033 () Bool)

(assert (=> b!3104424 (= c!519033 e!1939757)))

(declare-fun lt!1056360 () Regex!9571)

(declare-fun bm!219146 () Bool)

(declare-fun c!519023 () Bool)

(assert (=> bm!219146 (= call!219156 (isEmptyLang!622 (ite c!519023 lt!1056360 lt!1056361)))))

(declare-fun call!219151 () Bool)

(declare-fun lt!1056358 () Regex!9571)

(declare-fun lt!1056359 () Regex!9571)

(declare-fun bm!219147 () Bool)

(declare-fun c!519029 () Bool)

(assert (=> bm!219147 (= call!219151 (isEmptyLang!622 (ite c!519029 lt!1056358 (ite c!519023 lt!1056359 lt!1056362))))))

(declare-fun b!3104425 () Bool)

(assert (=> b!3104425 (= c!519023 ((_ is Union!9571) r!17423))))

(declare-fun e!1939755 () Regex!9571)

(assert (=> b!3104425 (= e!1939755 e!1939765)))

(declare-fun b!3104426 () Bool)

(declare-fun e!1939766 () Regex!9571)

(assert (=> b!3104426 (= e!1939766 e!1939755)))

(assert (=> b!3104426 (= c!519029 ((_ is Star!9571) r!17423))))

(declare-fun b!3104427 () Bool)

(declare-fun e!1939760 () Regex!9571)

(assert (=> b!3104427 (= e!1939760 lt!1056360)))

(declare-fun b!3104428 () Bool)

(declare-fun c!519026 () Bool)

(assert (=> b!3104428 (= c!519026 ((_ is EmptyExpr!9571) r!17423))))

(declare-fun e!1939754 () Regex!9571)

(assert (=> b!3104428 (= e!1939754 e!1939766)))

(declare-fun b!3104429 () Bool)

(declare-fun e!1939764 () Regex!9571)

(assert (=> b!3104429 (= e!1939765 e!1939764)))

(assert (=> b!3104429 (= lt!1056360 call!219153)))

(assert (=> b!3104429 (= lt!1056359 call!219152)))

(declare-fun c!519024 () Bool)

(assert (=> b!3104429 (= c!519024 call!219156)))

(declare-fun b!3104430 () Bool)

(declare-fun e!1939756 () Regex!9571)

(assert (=> b!3104430 (= e!1939756 e!1939754)))

(declare-fun c!519031 () Bool)

(assert (=> b!3104430 (= c!519031 ((_ is ElementMatch!9571) r!17423))))

(declare-fun bm!219148 () Bool)

(declare-fun call!219157 () Bool)

(assert (=> bm!219148 (= call!219157 call!219151)))

(declare-fun b!3104431 () Bool)

(declare-fun e!1939759 () Bool)

(declare-fun lt!1056357 () Regex!9571)

(assert (=> b!3104431 (= e!1939759 (= (nullable!3215 lt!1056357) (nullable!3215 r!17423)))))

(declare-fun bm!219149 () Bool)

(assert (=> bm!219149 (= call!219153 (simplify!526 (ite c!519023 (regOne!19655 r!17423) (regTwo!19654 r!17423))))))

(declare-fun b!3104432 () Bool)

(assert (=> b!3104432 (= e!1939754 r!17423)))

(declare-fun b!3104433 () Bool)

(assert (=> b!3104433 (= e!1939761 EmptyLang!9571)))

(declare-fun b!3104434 () Bool)

(declare-fun c!519027 () Bool)

(declare-fun call!219154 () Bool)

(assert (=> b!3104434 (= c!519027 call!219154)))

(declare-fun e!1939762 () Regex!9571)

(assert (=> b!3104434 (= e!1939761 e!1939762)))

(declare-fun b!3104435 () Bool)

(declare-fun e!1939758 () Regex!9571)

(assert (=> b!3104435 (= e!1939758 (Star!9571 lt!1056358))))

(declare-fun b!3104436 () Bool)

(assert (=> b!3104436 (= e!1939764 lt!1056359)))

(declare-fun b!3104437 () Bool)

(assert (=> b!3104437 (= e!1939762 lt!1056362)))

(declare-fun b!3104438 () Bool)

(assert (=> b!3104438 (= e!1939756 EmptyLang!9571)))

(declare-fun b!3104439 () Bool)

(assert (=> b!3104439 (= e!1939760 (Union!9571 lt!1056360 lt!1056359))))

(declare-fun b!3104440 () Bool)

(assert (=> b!3104440 (= e!1939762 e!1939753)))

(declare-fun c!519032 () Bool)

(declare-fun isEmptyExpr!626 (Regex!9571) Bool)

(assert (=> b!3104440 (= c!519032 (isEmptyExpr!626 lt!1056362))))

(declare-fun b!3104441 () Bool)

(assert (=> b!3104441 (= e!1939757 call!219157)))

(declare-fun call!219155 () Regex!9571)

(declare-fun bm!219150 () Bool)

(assert (=> bm!219150 (= call!219155 (simplify!526 (ite c!519029 (reg!9900 r!17423) (ite c!519023 (regTwo!19655 r!17423) (regOne!19654 r!17423)))))))

(declare-fun bm!219151 () Bool)

(assert (=> bm!219151 (= call!219154 (isEmptyExpr!626 (ite c!519029 lt!1056358 lt!1056361)))))

(declare-fun b!3104442 () Bool)

(declare-fun c!519025 () Bool)

(declare-fun e!1939763 () Bool)

(assert (=> b!3104442 (= c!519025 e!1939763)))

(declare-fun res!1271429 () Bool)

(assert (=> b!3104442 (=> res!1271429 e!1939763)))

(assert (=> b!3104442 (= res!1271429 call!219151)))

(assert (=> b!3104442 (= lt!1056358 call!219155)))

(assert (=> b!3104442 (= e!1939755 e!1939758)))

(declare-fun b!3104443 () Bool)

(assert (=> b!3104443 (= e!1939766 EmptyExpr!9571)))

(declare-fun b!3104444 () Bool)

(declare-fun c!519030 () Bool)

(assert (=> b!3104444 (= c!519030 call!219157)))

(assert (=> b!3104444 (= e!1939764 e!1939760)))

(declare-fun b!3104445 () Bool)

(assert (=> b!3104445 (= e!1939758 EmptyExpr!9571)))

(declare-fun d!861271 () Bool)

(assert (=> d!861271 e!1939759))

(declare-fun res!1271431 () Bool)

(assert (=> d!861271 (=> (not res!1271431) (not e!1939759))))

(assert (=> d!861271 (= res!1271431 (validRegex!4304 lt!1056357))))

(assert (=> d!861271 (= lt!1056357 e!1939756)))

(declare-fun c!519028 () Bool)

(assert (=> d!861271 (= c!519028 ((_ is EmptyLang!9571) r!17423))))

(assert (=> d!861271 (validRegex!4304 r!17423)))

(assert (=> d!861271 (= (simplify!526 r!17423) lt!1056357)))

(declare-fun bm!219152 () Bool)

(assert (=> bm!219152 (= call!219152 call!219155)))

(declare-fun b!3104446 () Bool)

(assert (=> b!3104446 (= e!1939753 lt!1056361)))

(declare-fun b!3104447 () Bool)

(assert (=> b!3104447 (= e!1939763 call!219154)))

(assert (= (and d!861271 c!519028) b!3104438))

(assert (= (and d!861271 (not c!519028)) b!3104430))

(assert (= (and b!3104430 c!519031) b!3104432))

(assert (= (and b!3104430 (not c!519031)) b!3104428))

(assert (= (and b!3104428 c!519026) b!3104443))

(assert (= (and b!3104428 (not c!519026)) b!3104426))

(assert (= (and b!3104426 c!519029) b!3104442))

(assert (= (and b!3104426 (not c!519029)) b!3104425))

(assert (= (and b!3104442 (not res!1271429)) b!3104447))

(assert (= (and b!3104442 c!519025) b!3104445))

(assert (= (and b!3104442 (not c!519025)) b!3104435))

(assert (= (and b!3104425 c!519023) b!3104429))

(assert (= (and b!3104425 (not c!519023)) b!3104424))

(assert (= (and b!3104429 c!519024) b!3104436))

(assert (= (and b!3104429 (not c!519024)) b!3104444))

(assert (= (and b!3104444 c!519030) b!3104427))

(assert (= (and b!3104444 (not c!519030)) b!3104439))

(assert (= (and b!3104424 (not res!1271430)) b!3104441))

(assert (= (and b!3104424 c!519033) b!3104433))

(assert (= (and b!3104424 (not c!519033)) b!3104434))

(assert (= (and b!3104434 c!519027) b!3104437))

(assert (= (and b!3104434 (not c!519027)) b!3104440))

(assert (= (and b!3104440 c!519032) b!3104446))

(assert (= (and b!3104440 (not c!519032)) b!3104423))

(assert (= (or b!3104429 b!3104424) bm!219149))

(assert (= (or b!3104429 b!3104424) bm!219152))

(assert (= (or b!3104429 b!3104424) bm!219146))

(assert (= (or b!3104444 b!3104441) bm!219148))

(assert (= (or b!3104447 b!3104434) bm!219151))

(assert (= (or b!3104442 bm!219152) bm!219150))

(assert (= (or b!3104442 bm!219148) bm!219147))

(assert (= (and d!861271 res!1271431) b!3104431))

(declare-fun m!3402307 () Bool)

(assert (=> bm!219147 m!3402307))

(declare-fun m!3402309 () Bool)

(assert (=> b!3104440 m!3402309))

(declare-fun m!3402311 () Bool)

(assert (=> bm!219150 m!3402311))

(declare-fun m!3402313 () Bool)

(assert (=> d!861271 m!3402313))

(assert (=> d!861271 m!3402137))

(declare-fun m!3402315 () Bool)

(assert (=> b!3104431 m!3402315))

(assert (=> b!3104431 m!3402261))

(declare-fun m!3402317 () Bool)

(assert (=> bm!219151 m!3402317))

(declare-fun m!3402319 () Bool)

(assert (=> bm!219146 m!3402319))

(declare-fun m!3402321 () Bool)

(assert (=> bm!219149 m!3402321))

(assert (=> b!3103923 d!861271))

(declare-fun d!861277 () Bool)

(assert (=> d!861277 (= (isEmptyLang!622 lt!1056288) ((_ is EmptyLang!9571) lt!1056288))))

(assert (=> b!3103918 d!861277))

(declare-fun b!3104448 () Bool)

(declare-fun e!1939767 () Regex!9571)

(declare-fun lt!1056367 () Regex!9571)

(declare-fun lt!1056368 () Regex!9571)

(assert (=> b!3104448 (= e!1939767 (Concat!14892 lt!1056367 lt!1056368))))

(declare-fun b!3104449 () Bool)

(declare-fun e!1939779 () Regex!9571)

(declare-fun e!1939775 () Regex!9571)

(assert (=> b!3104449 (= e!1939779 e!1939775)))

(declare-fun call!219159 () Regex!9571)

(assert (=> b!3104449 (= lt!1056367 call!219159)))

(declare-fun call!219160 () Regex!9571)

(assert (=> b!3104449 (= lt!1056368 call!219160)))

(declare-fun res!1271433 () Bool)

(declare-fun call!219163 () Bool)

(assert (=> b!3104449 (= res!1271433 call!219163)))

(declare-fun e!1939771 () Bool)

(assert (=> b!3104449 (=> res!1271433 e!1939771)))

(declare-fun c!519044 () Bool)

(assert (=> b!3104449 (= c!519044 e!1939771)))

(declare-fun bm!219153 () Bool)

(declare-fun lt!1056366 () Regex!9571)

(declare-fun c!519034 () Bool)

(assert (=> bm!219153 (= call!219163 (isEmptyLang!622 (ite c!519034 lt!1056366 lt!1056367)))))

(declare-fun lt!1056365 () Regex!9571)

(declare-fun bm!219154 () Bool)

(declare-fun call!219158 () Bool)

(declare-fun lt!1056364 () Regex!9571)

(declare-fun c!519040 () Bool)

(assert (=> bm!219154 (= call!219158 (isEmptyLang!622 (ite c!519040 lt!1056364 (ite c!519034 lt!1056365 lt!1056368))))))

(declare-fun b!3104450 () Bool)

(assert (=> b!3104450 (= c!519034 ((_ is Union!9571) (regTwo!19655 r!17423)))))

(declare-fun e!1939769 () Regex!9571)

(assert (=> b!3104450 (= e!1939769 e!1939779)))

(declare-fun b!3104451 () Bool)

(declare-fun e!1939780 () Regex!9571)

(assert (=> b!3104451 (= e!1939780 e!1939769)))

(assert (=> b!3104451 (= c!519040 ((_ is Star!9571) (regTwo!19655 r!17423)))))

(declare-fun b!3104452 () Bool)

(declare-fun e!1939774 () Regex!9571)

(assert (=> b!3104452 (= e!1939774 lt!1056366)))

(declare-fun b!3104453 () Bool)

(declare-fun c!519037 () Bool)

(assert (=> b!3104453 (= c!519037 ((_ is EmptyExpr!9571) (regTwo!19655 r!17423)))))

(declare-fun e!1939768 () Regex!9571)

(assert (=> b!3104453 (= e!1939768 e!1939780)))

(declare-fun b!3104454 () Bool)

(declare-fun e!1939778 () Regex!9571)

(assert (=> b!3104454 (= e!1939779 e!1939778)))

(assert (=> b!3104454 (= lt!1056366 call!219160)))

(assert (=> b!3104454 (= lt!1056365 call!219159)))

(declare-fun c!519035 () Bool)

(assert (=> b!3104454 (= c!519035 call!219163)))

(declare-fun b!3104455 () Bool)

(declare-fun e!1939770 () Regex!9571)

(assert (=> b!3104455 (= e!1939770 e!1939768)))

(declare-fun c!519042 () Bool)

(assert (=> b!3104455 (= c!519042 ((_ is ElementMatch!9571) (regTwo!19655 r!17423)))))

(declare-fun bm!219155 () Bool)

(declare-fun call!219164 () Bool)

(assert (=> bm!219155 (= call!219164 call!219158)))

(declare-fun b!3104456 () Bool)

(declare-fun e!1939773 () Bool)

(declare-fun lt!1056363 () Regex!9571)

(assert (=> b!3104456 (= e!1939773 (= (nullable!3215 lt!1056363) (nullable!3215 (regTwo!19655 r!17423))))))

(declare-fun bm!219156 () Bool)

(assert (=> bm!219156 (= call!219160 (simplify!526 (ite c!519034 (regOne!19655 (regTwo!19655 r!17423)) (regTwo!19654 (regTwo!19655 r!17423)))))))

(declare-fun b!3104457 () Bool)

(assert (=> b!3104457 (= e!1939768 (regTwo!19655 r!17423))))

(declare-fun b!3104458 () Bool)

(assert (=> b!3104458 (= e!1939775 EmptyLang!9571)))

(declare-fun b!3104459 () Bool)

(declare-fun c!519038 () Bool)

(declare-fun call!219161 () Bool)

(assert (=> b!3104459 (= c!519038 call!219161)))

(declare-fun e!1939776 () Regex!9571)

(assert (=> b!3104459 (= e!1939775 e!1939776)))

(declare-fun b!3104460 () Bool)

(declare-fun e!1939772 () Regex!9571)

(assert (=> b!3104460 (= e!1939772 (Star!9571 lt!1056364))))

(declare-fun b!3104461 () Bool)

(assert (=> b!3104461 (= e!1939778 lt!1056365)))

(declare-fun b!3104462 () Bool)

(assert (=> b!3104462 (= e!1939776 lt!1056368)))

(declare-fun b!3104463 () Bool)

(assert (=> b!3104463 (= e!1939770 EmptyLang!9571)))

(declare-fun b!3104464 () Bool)

(assert (=> b!3104464 (= e!1939774 (Union!9571 lt!1056366 lt!1056365))))

(declare-fun b!3104465 () Bool)

(assert (=> b!3104465 (= e!1939776 e!1939767)))

(declare-fun c!519043 () Bool)

(assert (=> b!3104465 (= c!519043 (isEmptyExpr!626 lt!1056368))))

(declare-fun b!3104466 () Bool)

(assert (=> b!3104466 (= e!1939771 call!219164)))

(declare-fun call!219162 () Regex!9571)

(declare-fun bm!219157 () Bool)

(assert (=> bm!219157 (= call!219162 (simplify!526 (ite c!519040 (reg!9900 (regTwo!19655 r!17423)) (ite c!519034 (regTwo!19655 (regTwo!19655 r!17423)) (regOne!19654 (regTwo!19655 r!17423))))))))

(declare-fun bm!219158 () Bool)

(assert (=> bm!219158 (= call!219161 (isEmptyExpr!626 (ite c!519040 lt!1056364 lt!1056367)))))

(declare-fun b!3104467 () Bool)

(declare-fun c!519036 () Bool)

(declare-fun e!1939777 () Bool)

(assert (=> b!3104467 (= c!519036 e!1939777)))

(declare-fun res!1271432 () Bool)

(assert (=> b!3104467 (=> res!1271432 e!1939777)))

(assert (=> b!3104467 (= res!1271432 call!219158)))

(assert (=> b!3104467 (= lt!1056364 call!219162)))

(assert (=> b!3104467 (= e!1939769 e!1939772)))

(declare-fun b!3104468 () Bool)

(assert (=> b!3104468 (= e!1939780 EmptyExpr!9571)))

(declare-fun b!3104469 () Bool)

(declare-fun c!519041 () Bool)

(assert (=> b!3104469 (= c!519041 call!219164)))

(assert (=> b!3104469 (= e!1939778 e!1939774)))

(declare-fun b!3104470 () Bool)

(assert (=> b!3104470 (= e!1939772 EmptyExpr!9571)))

(declare-fun d!861279 () Bool)

(assert (=> d!861279 e!1939773))

(declare-fun res!1271434 () Bool)

(assert (=> d!861279 (=> (not res!1271434) (not e!1939773))))

(assert (=> d!861279 (= res!1271434 (validRegex!4304 lt!1056363))))

(assert (=> d!861279 (= lt!1056363 e!1939770)))

(declare-fun c!519039 () Bool)

(assert (=> d!861279 (= c!519039 ((_ is EmptyLang!9571) (regTwo!19655 r!17423)))))

(assert (=> d!861279 (validRegex!4304 (regTwo!19655 r!17423))))

(assert (=> d!861279 (= (simplify!526 (regTwo!19655 r!17423)) lt!1056363)))

(declare-fun bm!219159 () Bool)

(assert (=> bm!219159 (= call!219159 call!219162)))

(declare-fun b!3104471 () Bool)

(assert (=> b!3104471 (= e!1939767 lt!1056367)))

(declare-fun b!3104472 () Bool)

(assert (=> b!3104472 (= e!1939777 call!219161)))

(assert (= (and d!861279 c!519039) b!3104463))

(assert (= (and d!861279 (not c!519039)) b!3104455))

(assert (= (and b!3104455 c!519042) b!3104457))

(assert (= (and b!3104455 (not c!519042)) b!3104453))

(assert (= (and b!3104453 c!519037) b!3104468))

(assert (= (and b!3104453 (not c!519037)) b!3104451))

(assert (= (and b!3104451 c!519040) b!3104467))

(assert (= (and b!3104451 (not c!519040)) b!3104450))

(assert (= (and b!3104467 (not res!1271432)) b!3104472))

(assert (= (and b!3104467 c!519036) b!3104470))

(assert (= (and b!3104467 (not c!519036)) b!3104460))

(assert (= (and b!3104450 c!519034) b!3104454))

(assert (= (and b!3104450 (not c!519034)) b!3104449))

(assert (= (and b!3104454 c!519035) b!3104461))

(assert (= (and b!3104454 (not c!519035)) b!3104469))

(assert (= (and b!3104469 c!519041) b!3104452))

(assert (= (and b!3104469 (not c!519041)) b!3104464))

(assert (= (and b!3104449 (not res!1271433)) b!3104466))

(assert (= (and b!3104449 c!519044) b!3104458))

(assert (= (and b!3104449 (not c!519044)) b!3104459))

(assert (= (and b!3104459 c!519038) b!3104462))

(assert (= (and b!3104459 (not c!519038)) b!3104465))

(assert (= (and b!3104465 c!519043) b!3104471))

(assert (= (and b!3104465 (not c!519043)) b!3104448))

(assert (= (or b!3104454 b!3104449) bm!219156))

(assert (= (or b!3104454 b!3104449) bm!219159))

(assert (= (or b!3104454 b!3104449) bm!219153))

(assert (= (or b!3104469 b!3104466) bm!219155))

(assert (= (or b!3104472 b!3104459) bm!219158))

(assert (= (or b!3104467 bm!219159) bm!219157))

(assert (= (or b!3104467 bm!219155) bm!219154))

(assert (= (and d!861279 res!1271434) b!3104456))

(declare-fun m!3402323 () Bool)

(assert (=> bm!219154 m!3402323))

(declare-fun m!3402325 () Bool)

(assert (=> b!3104465 m!3402325))

(declare-fun m!3402327 () Bool)

(assert (=> bm!219157 m!3402327))

(declare-fun m!3402329 () Bool)

(assert (=> d!861279 m!3402329))

(assert (=> d!861279 m!3402281))

(declare-fun m!3402331 () Bool)

(assert (=> b!3104456 m!3402331))

(assert (=> b!3104456 m!3402279))

(declare-fun m!3402333 () Bool)

(assert (=> bm!219158 m!3402333))

(declare-fun m!3402335 () Bool)

(assert (=> bm!219153 m!3402335))

(declare-fun m!3402337 () Bool)

(assert (=> bm!219156 m!3402337))

(assert (=> b!3103918 d!861279))

(declare-fun b!3104473 () Bool)

(declare-fun e!1939781 () Regex!9571)

(declare-fun lt!1056373 () Regex!9571)

(declare-fun lt!1056374 () Regex!9571)

(assert (=> b!3104473 (= e!1939781 (Concat!14892 lt!1056373 lt!1056374))))

(declare-fun b!3104474 () Bool)

(declare-fun e!1939793 () Regex!9571)

(declare-fun e!1939789 () Regex!9571)

(assert (=> b!3104474 (= e!1939793 e!1939789)))

(declare-fun call!219166 () Regex!9571)

(assert (=> b!3104474 (= lt!1056373 call!219166)))

(declare-fun call!219167 () Regex!9571)

(assert (=> b!3104474 (= lt!1056374 call!219167)))

(declare-fun res!1271436 () Bool)

(declare-fun call!219170 () Bool)

(assert (=> b!3104474 (= res!1271436 call!219170)))

(declare-fun e!1939785 () Bool)

(assert (=> b!3104474 (=> res!1271436 e!1939785)))

(declare-fun c!519055 () Bool)

(assert (=> b!3104474 (= c!519055 e!1939785)))

(declare-fun lt!1056372 () Regex!9571)

(declare-fun bm!219160 () Bool)

(declare-fun c!519045 () Bool)

(assert (=> bm!219160 (= call!219170 (isEmptyLang!622 (ite c!519045 lt!1056372 lt!1056373)))))

(declare-fun bm!219161 () Bool)

(declare-fun c!519051 () Bool)

(declare-fun lt!1056370 () Regex!9571)

(declare-fun lt!1056371 () Regex!9571)

(declare-fun call!219165 () Bool)

(assert (=> bm!219161 (= call!219165 (isEmptyLang!622 (ite c!519051 lt!1056370 (ite c!519045 lt!1056371 lt!1056374))))))

(declare-fun b!3104475 () Bool)

(assert (=> b!3104475 (= c!519045 ((_ is Union!9571) (regOne!19655 r!17423)))))

(declare-fun e!1939783 () Regex!9571)

(assert (=> b!3104475 (= e!1939783 e!1939793)))

(declare-fun b!3104476 () Bool)

(declare-fun e!1939794 () Regex!9571)

(assert (=> b!3104476 (= e!1939794 e!1939783)))

(assert (=> b!3104476 (= c!519051 ((_ is Star!9571) (regOne!19655 r!17423)))))

(declare-fun b!3104477 () Bool)

(declare-fun e!1939788 () Regex!9571)

(assert (=> b!3104477 (= e!1939788 lt!1056372)))

(declare-fun b!3104478 () Bool)

(declare-fun c!519048 () Bool)

(assert (=> b!3104478 (= c!519048 ((_ is EmptyExpr!9571) (regOne!19655 r!17423)))))

(declare-fun e!1939782 () Regex!9571)

(assert (=> b!3104478 (= e!1939782 e!1939794)))

(declare-fun b!3104479 () Bool)

(declare-fun e!1939792 () Regex!9571)

(assert (=> b!3104479 (= e!1939793 e!1939792)))

(assert (=> b!3104479 (= lt!1056372 call!219167)))

(assert (=> b!3104479 (= lt!1056371 call!219166)))

(declare-fun c!519046 () Bool)

(assert (=> b!3104479 (= c!519046 call!219170)))

(declare-fun b!3104480 () Bool)

(declare-fun e!1939784 () Regex!9571)

(assert (=> b!3104480 (= e!1939784 e!1939782)))

(declare-fun c!519053 () Bool)

(assert (=> b!3104480 (= c!519053 ((_ is ElementMatch!9571) (regOne!19655 r!17423)))))

(declare-fun bm!219162 () Bool)

(declare-fun call!219171 () Bool)

(assert (=> bm!219162 (= call!219171 call!219165)))

(declare-fun b!3104481 () Bool)

(declare-fun e!1939787 () Bool)

(declare-fun lt!1056369 () Regex!9571)

(assert (=> b!3104481 (= e!1939787 (= (nullable!3215 lt!1056369) (nullable!3215 (regOne!19655 r!17423))))))

(declare-fun bm!219163 () Bool)

(assert (=> bm!219163 (= call!219167 (simplify!526 (ite c!519045 (regOne!19655 (regOne!19655 r!17423)) (regTwo!19654 (regOne!19655 r!17423)))))))

(declare-fun b!3104482 () Bool)

(assert (=> b!3104482 (= e!1939782 (regOne!19655 r!17423))))

(declare-fun b!3104483 () Bool)

(assert (=> b!3104483 (= e!1939789 EmptyLang!9571)))

(declare-fun b!3104484 () Bool)

(declare-fun c!519049 () Bool)

(declare-fun call!219168 () Bool)

(assert (=> b!3104484 (= c!519049 call!219168)))

(declare-fun e!1939790 () Regex!9571)

(assert (=> b!3104484 (= e!1939789 e!1939790)))

(declare-fun b!3104485 () Bool)

(declare-fun e!1939786 () Regex!9571)

(assert (=> b!3104485 (= e!1939786 (Star!9571 lt!1056370))))

(declare-fun b!3104486 () Bool)

(assert (=> b!3104486 (= e!1939792 lt!1056371)))

(declare-fun b!3104487 () Bool)

(assert (=> b!3104487 (= e!1939790 lt!1056374)))

(declare-fun b!3104488 () Bool)

(assert (=> b!3104488 (= e!1939784 EmptyLang!9571)))

(declare-fun b!3104489 () Bool)

(assert (=> b!3104489 (= e!1939788 (Union!9571 lt!1056372 lt!1056371))))

(declare-fun b!3104490 () Bool)

(assert (=> b!3104490 (= e!1939790 e!1939781)))

(declare-fun c!519054 () Bool)

(assert (=> b!3104490 (= c!519054 (isEmptyExpr!626 lt!1056374))))

(declare-fun b!3104491 () Bool)

(assert (=> b!3104491 (= e!1939785 call!219171)))

(declare-fun call!219169 () Regex!9571)

(declare-fun bm!219164 () Bool)

(assert (=> bm!219164 (= call!219169 (simplify!526 (ite c!519051 (reg!9900 (regOne!19655 r!17423)) (ite c!519045 (regTwo!19655 (regOne!19655 r!17423)) (regOne!19654 (regOne!19655 r!17423))))))))

(declare-fun bm!219165 () Bool)

(assert (=> bm!219165 (= call!219168 (isEmptyExpr!626 (ite c!519051 lt!1056370 lt!1056373)))))

(declare-fun b!3104492 () Bool)

(declare-fun c!519047 () Bool)

(declare-fun e!1939791 () Bool)

(assert (=> b!3104492 (= c!519047 e!1939791)))

(declare-fun res!1271435 () Bool)

(assert (=> b!3104492 (=> res!1271435 e!1939791)))

(assert (=> b!3104492 (= res!1271435 call!219165)))

(assert (=> b!3104492 (= lt!1056370 call!219169)))

(assert (=> b!3104492 (= e!1939783 e!1939786)))

(declare-fun b!3104493 () Bool)

(assert (=> b!3104493 (= e!1939794 EmptyExpr!9571)))

(declare-fun b!3104494 () Bool)

(declare-fun c!519052 () Bool)

(assert (=> b!3104494 (= c!519052 call!219171)))

(assert (=> b!3104494 (= e!1939792 e!1939788)))

(declare-fun b!3104495 () Bool)

(assert (=> b!3104495 (= e!1939786 EmptyExpr!9571)))

(declare-fun d!861281 () Bool)

(assert (=> d!861281 e!1939787))

(declare-fun res!1271437 () Bool)

(assert (=> d!861281 (=> (not res!1271437) (not e!1939787))))

(assert (=> d!861281 (= res!1271437 (validRegex!4304 lt!1056369))))

(assert (=> d!861281 (= lt!1056369 e!1939784)))

(declare-fun c!519050 () Bool)

(assert (=> d!861281 (= c!519050 ((_ is EmptyLang!9571) (regOne!19655 r!17423)))))

(assert (=> d!861281 (validRegex!4304 (regOne!19655 r!17423))))

(assert (=> d!861281 (= (simplify!526 (regOne!19655 r!17423)) lt!1056369)))

(declare-fun bm!219166 () Bool)

(assert (=> bm!219166 (= call!219166 call!219169)))

(declare-fun b!3104496 () Bool)

(assert (=> b!3104496 (= e!1939781 lt!1056373)))

(declare-fun b!3104497 () Bool)

(assert (=> b!3104497 (= e!1939791 call!219168)))

(assert (= (and d!861281 c!519050) b!3104488))

(assert (= (and d!861281 (not c!519050)) b!3104480))

(assert (= (and b!3104480 c!519053) b!3104482))

(assert (= (and b!3104480 (not c!519053)) b!3104478))

(assert (= (and b!3104478 c!519048) b!3104493))

(assert (= (and b!3104478 (not c!519048)) b!3104476))

(assert (= (and b!3104476 c!519051) b!3104492))

(assert (= (and b!3104476 (not c!519051)) b!3104475))

(assert (= (and b!3104492 (not res!1271435)) b!3104497))

(assert (= (and b!3104492 c!519047) b!3104495))

(assert (= (and b!3104492 (not c!519047)) b!3104485))

(assert (= (and b!3104475 c!519045) b!3104479))

(assert (= (and b!3104475 (not c!519045)) b!3104474))

(assert (= (and b!3104479 c!519046) b!3104486))

(assert (= (and b!3104479 (not c!519046)) b!3104494))

(assert (= (and b!3104494 c!519052) b!3104477))

(assert (= (and b!3104494 (not c!519052)) b!3104489))

(assert (= (and b!3104474 (not res!1271436)) b!3104491))

(assert (= (and b!3104474 c!519055) b!3104483))

(assert (= (and b!3104474 (not c!519055)) b!3104484))

(assert (= (and b!3104484 c!519049) b!3104487))

(assert (= (and b!3104484 (not c!519049)) b!3104490))

(assert (= (and b!3104490 c!519054) b!3104496))

(assert (= (and b!3104490 (not c!519054)) b!3104473))

(assert (= (or b!3104479 b!3104474) bm!219163))

(assert (= (or b!3104479 b!3104474) bm!219166))

(assert (= (or b!3104479 b!3104474) bm!219160))

(assert (= (or b!3104494 b!3104491) bm!219162))

(assert (= (or b!3104497 b!3104484) bm!219165))

(assert (= (or b!3104492 bm!219166) bm!219164))

(assert (= (or b!3104492 bm!219162) bm!219161))

(assert (= (and d!861281 res!1271437) b!3104481))

(declare-fun m!3402339 () Bool)

(assert (=> bm!219161 m!3402339))

(declare-fun m!3402341 () Bool)

(assert (=> b!3104490 m!3402341))

(declare-fun m!3402343 () Bool)

(assert (=> bm!219164 m!3402343))

(declare-fun m!3402345 () Bool)

(assert (=> d!861281 m!3402345))

(declare-fun m!3402347 () Bool)

(assert (=> d!861281 m!3402347))

(declare-fun m!3402349 () Bool)

(assert (=> b!3104481 m!3402349))

(declare-fun m!3402351 () Bool)

(assert (=> b!3104481 m!3402351))

(declare-fun m!3402353 () Bool)

(assert (=> bm!219165 m!3402353))

(declare-fun m!3402355 () Bool)

(assert (=> bm!219160 m!3402355))

(declare-fun m!3402357 () Bool)

(assert (=> bm!219163 m!3402357))

(assert (=> b!3103918 d!861281))

(declare-fun b!3104516 () Bool)

(declare-fun e!1939815 () Bool)

(declare-fun e!1939809 () Bool)

(assert (=> b!3104516 (= e!1939815 e!1939809)))

(declare-fun res!1271450 () Bool)

(assert (=> b!3104516 (=> (not res!1271450) (not e!1939809))))

(declare-fun call!219178 () Bool)

(assert (=> b!3104516 (= res!1271450 call!219178)))

(declare-fun b!3104517 () Bool)

(declare-fun call!219180 () Bool)

(assert (=> b!3104517 (= e!1939809 call!219180)))

(declare-fun b!3104518 () Bool)

(declare-fun e!1939810 () Bool)

(declare-fun e!1939812 () Bool)

(assert (=> b!3104518 (= e!1939810 e!1939812)))

(declare-fun res!1271448 () Bool)

(assert (=> b!3104518 (= res!1271448 (not (nullable!3215 (reg!9900 r!17423))))))

(assert (=> b!3104518 (=> (not res!1271448) (not e!1939812))))

(declare-fun b!3104519 () Bool)

(declare-fun e!1939811 () Bool)

(assert (=> b!3104519 (= e!1939811 call!219178)))

(declare-fun b!3104520 () Bool)

(declare-fun e!1939813 () Bool)

(assert (=> b!3104520 (= e!1939810 e!1939813)))

(declare-fun c!519060 () Bool)

(assert (=> b!3104520 (= c!519060 ((_ is Union!9571) r!17423))))

(declare-fun bm!219174 () Bool)

(assert (=> bm!219174 (= call!219178 (validRegex!4304 (ite c!519060 (regTwo!19655 r!17423) (regOne!19654 r!17423))))))

(declare-fun b!3104521 () Bool)

(declare-fun res!1271449 () Bool)

(assert (=> b!3104521 (=> (not res!1271449) (not e!1939811))))

(assert (=> b!3104521 (= res!1271449 call!219180)))

(assert (=> b!3104521 (= e!1939813 e!1939811)))

(declare-fun b!3104522 () Bool)

(declare-fun call!219179 () Bool)

(assert (=> b!3104522 (= e!1939812 call!219179)))

(declare-fun b!3104523 () Bool)

(declare-fun res!1271451 () Bool)

(assert (=> b!3104523 (=> res!1271451 e!1939815)))

(assert (=> b!3104523 (= res!1271451 (not ((_ is Concat!14892) r!17423)))))

(assert (=> b!3104523 (= e!1939813 e!1939815)))

(declare-fun c!519061 () Bool)

(declare-fun bm!219175 () Bool)

(assert (=> bm!219175 (= call!219179 (validRegex!4304 (ite c!519061 (reg!9900 r!17423) (ite c!519060 (regOne!19655 r!17423) (regTwo!19654 r!17423)))))))

(declare-fun b!3104524 () Bool)

(declare-fun e!1939814 () Bool)

(assert (=> b!3104524 (= e!1939814 e!1939810)))

(assert (=> b!3104524 (= c!519061 ((_ is Star!9571) r!17423))))

(declare-fun bm!219173 () Bool)

(assert (=> bm!219173 (= call!219180 call!219179)))

(declare-fun d!861283 () Bool)

(declare-fun res!1271452 () Bool)

(assert (=> d!861283 (=> res!1271452 e!1939814)))

(assert (=> d!861283 (= res!1271452 ((_ is ElementMatch!9571) r!17423))))

(assert (=> d!861283 (= (validRegex!4304 r!17423) e!1939814)))

(assert (= (and d!861283 (not res!1271452)) b!3104524))

(assert (= (and b!3104524 c!519061) b!3104518))

(assert (= (and b!3104524 (not c!519061)) b!3104520))

(assert (= (and b!3104518 res!1271448) b!3104522))

(assert (= (and b!3104520 c!519060) b!3104521))

(assert (= (and b!3104520 (not c!519060)) b!3104523))

(assert (= (and b!3104521 res!1271449) b!3104519))

(assert (= (and b!3104523 (not res!1271451)) b!3104516))

(assert (= (and b!3104516 res!1271450) b!3104517))

(assert (= (or b!3104521 b!3104517) bm!219173))

(assert (= (or b!3104519 b!3104516) bm!219174))

(assert (= (or b!3104522 bm!219173) bm!219175))

(declare-fun m!3402359 () Bool)

(assert (=> b!3104518 m!3402359))

(declare-fun m!3402361 () Bool)

(assert (=> bm!219174 m!3402361))

(declare-fun m!3402363 () Bool)

(assert (=> bm!219175 m!3402363))

(assert (=> start!294388 d!861283))

(declare-fun b!3104535 () Bool)

(declare-fun e!1939818 () Bool)

(assert (=> b!3104535 (= e!1939818 tp_is_empty!16705)))

(declare-fun b!3104536 () Bool)

(declare-fun tp!975270 () Bool)

(declare-fun tp!975267 () Bool)

(assert (=> b!3104536 (= e!1939818 (and tp!975270 tp!975267))))

(declare-fun b!3104538 () Bool)

(declare-fun tp!975269 () Bool)

(declare-fun tp!975266 () Bool)

(assert (=> b!3104538 (= e!1939818 (and tp!975269 tp!975266))))

(declare-fun b!3104537 () Bool)

(declare-fun tp!975268 () Bool)

(assert (=> b!3104537 (= e!1939818 tp!975268)))

(assert (=> b!3103915 (= tp!975214 e!1939818)))

(assert (= (and b!3103915 ((_ is ElementMatch!9571) (reg!9900 r!17423))) b!3104535))

(assert (= (and b!3103915 ((_ is Concat!14892) (reg!9900 r!17423))) b!3104536))

(assert (= (and b!3103915 ((_ is Star!9571) (reg!9900 r!17423))) b!3104537))

(assert (= (and b!3103915 ((_ is Union!9571) (reg!9900 r!17423))) b!3104538))

(declare-fun b!3104543 () Bool)

(declare-fun e!1939821 () Bool)

(declare-fun tp!975273 () Bool)

(assert (=> b!3104543 (= e!1939821 (and tp_is_empty!16705 tp!975273))))

(assert (=> b!3103921 (= tp!975215 e!1939821)))

(assert (= (and b!3103921 ((_ is Cons!35312) (t!234501 s!11993))) b!3104543))

(declare-fun b!3104544 () Bool)

(declare-fun e!1939822 () Bool)

(assert (=> b!3104544 (= e!1939822 tp_is_empty!16705)))

(declare-fun b!3104545 () Bool)

(declare-fun tp!975278 () Bool)

(declare-fun tp!975275 () Bool)

(assert (=> b!3104545 (= e!1939822 (and tp!975278 tp!975275))))

(declare-fun b!3104547 () Bool)

(declare-fun tp!975277 () Bool)

(declare-fun tp!975274 () Bool)

(assert (=> b!3104547 (= e!1939822 (and tp!975277 tp!975274))))

(declare-fun b!3104546 () Bool)

(declare-fun tp!975276 () Bool)

(assert (=> b!3104546 (= e!1939822 tp!975276)))

(assert (=> b!3103916 (= tp!975216 e!1939822)))

(assert (= (and b!3103916 ((_ is ElementMatch!9571) (regOne!19655 r!17423))) b!3104544))

(assert (= (and b!3103916 ((_ is Concat!14892) (regOne!19655 r!17423))) b!3104545))

(assert (= (and b!3103916 ((_ is Star!9571) (regOne!19655 r!17423))) b!3104546))

(assert (= (and b!3103916 ((_ is Union!9571) (regOne!19655 r!17423))) b!3104547))

(declare-fun b!3104548 () Bool)

(declare-fun e!1939823 () Bool)

(assert (=> b!3104548 (= e!1939823 tp_is_empty!16705)))

(declare-fun b!3104549 () Bool)

(declare-fun tp!975283 () Bool)

(declare-fun tp!975280 () Bool)

(assert (=> b!3104549 (= e!1939823 (and tp!975283 tp!975280))))

(declare-fun b!3104551 () Bool)

(declare-fun tp!975282 () Bool)

(declare-fun tp!975279 () Bool)

(assert (=> b!3104551 (= e!1939823 (and tp!975282 tp!975279))))

(declare-fun b!3104550 () Bool)

(declare-fun tp!975281 () Bool)

(assert (=> b!3104550 (= e!1939823 tp!975281)))

(assert (=> b!3103916 (= tp!975212 e!1939823)))

(assert (= (and b!3103916 ((_ is ElementMatch!9571) (regTwo!19655 r!17423))) b!3104548))

(assert (= (and b!3103916 ((_ is Concat!14892) (regTwo!19655 r!17423))) b!3104549))

(assert (= (and b!3103916 ((_ is Star!9571) (regTwo!19655 r!17423))) b!3104550))

(assert (= (and b!3103916 ((_ is Union!9571) (regTwo!19655 r!17423))) b!3104551))

(declare-fun b!3104552 () Bool)

(declare-fun e!1939824 () Bool)

(assert (=> b!3104552 (= e!1939824 tp_is_empty!16705)))

(declare-fun b!3104553 () Bool)

(declare-fun tp!975288 () Bool)

(declare-fun tp!975285 () Bool)

(assert (=> b!3104553 (= e!1939824 (and tp!975288 tp!975285))))

(declare-fun b!3104555 () Bool)

(declare-fun tp!975287 () Bool)

(declare-fun tp!975284 () Bool)

(assert (=> b!3104555 (= e!1939824 (and tp!975287 tp!975284))))

(declare-fun b!3104554 () Bool)

(declare-fun tp!975286 () Bool)

(assert (=> b!3104554 (= e!1939824 tp!975286)))

(assert (=> b!3103919 (= tp!975213 e!1939824)))

(assert (= (and b!3103919 ((_ is ElementMatch!9571) (regOne!19654 r!17423))) b!3104552))

(assert (= (and b!3103919 ((_ is Concat!14892) (regOne!19654 r!17423))) b!3104553))

(assert (= (and b!3103919 ((_ is Star!9571) (regOne!19654 r!17423))) b!3104554))

(assert (= (and b!3103919 ((_ is Union!9571) (regOne!19654 r!17423))) b!3104555))

(declare-fun b!3104556 () Bool)

(declare-fun e!1939825 () Bool)

(assert (=> b!3104556 (= e!1939825 tp_is_empty!16705)))

(declare-fun b!3104557 () Bool)

(declare-fun tp!975293 () Bool)

(declare-fun tp!975290 () Bool)

(assert (=> b!3104557 (= e!1939825 (and tp!975293 tp!975290))))

(declare-fun b!3104559 () Bool)

(declare-fun tp!975292 () Bool)

(declare-fun tp!975289 () Bool)

(assert (=> b!3104559 (= e!1939825 (and tp!975292 tp!975289))))

(declare-fun b!3104558 () Bool)

(declare-fun tp!975291 () Bool)

(assert (=> b!3104558 (= e!1939825 tp!975291)))

(assert (=> b!3103919 (= tp!975217 e!1939825)))

(assert (= (and b!3103919 ((_ is ElementMatch!9571) (regTwo!19654 r!17423))) b!3104556))

(assert (= (and b!3103919 ((_ is Concat!14892) (regTwo!19654 r!17423))) b!3104557))

(assert (= (and b!3103919 ((_ is Star!9571) (regTwo!19654 r!17423))) b!3104558))

(assert (= (and b!3103919 ((_ is Union!9571) (regTwo!19654 r!17423))) b!3104559))

(check-sat (not bm!219158) (not b!3104275) (not b!3104209) (not b!3104553) (not b!3104536) (not b!3104284) (not b!3104550) (not b!3104538) (not b!3104287) (not b!3104294) (not b!3104244) (not b!3104266) (not bm!219157) (not b!3104255) (not bm!219146) (not b!3104298) (not b!3104256) (not b!3104282) (not d!861263) (not bm!219128) (not d!861281) (not bm!219123) (not b!3104557) (not bm!219121) (not bm!219147) (not b!3104289) (not bm!219153) (not bm!219174) (not bm!219156) (not b!3104558) (not b!3104264) (not bm!219160) (not d!861279) (not b!3104543) (not d!861271) (not b!3104308) (not d!861267) (not b!3104555) (not bm!219163) (not bm!219149) (not d!861269) (not bm!219165) (not b!3104537) (not b!3104547) (not bm!219118) (not d!861265) (not b!3104551) (not b!3104251) (not bm!219117) (not b!3104307) (not bm!219154) (not b!3104276) (not b!3104246) (not bm!219150) (not bm!219161) (not b!3104546) (not b!3104269) (not bm!219122) (not b!3104559) (not b!3104249) (not b!3104296) (not b!3104431) (not d!861259) (not b!3104545) (not b!3104208) (not d!861261) (not b!3104518) (not b!3104465) (not b!3104293) (not bm!219164) (not b!3104490) (not b!3104271) (not b!3104301) (not bm!219151) (not b!3104456) (not b!3104549) (not bm!219175) tp_is_empty!16705 (not b!3104303) (not b!3104440) (not b!3104554) (not b!3104481))
(check-sat)
