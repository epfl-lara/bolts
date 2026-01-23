; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294868 () Bool)

(assert start!294868)

(declare-fun b!3114023 () Bool)

(declare-fun e!1945001 () Bool)

(declare-fun tp!976856 () Bool)

(assert (=> b!3114023 (= e!1945001 tp!976856)))

(declare-fun b!3114024 () Bool)

(declare-fun tp!976853 () Bool)

(declare-fun tp!976857 () Bool)

(assert (=> b!3114024 (= e!1945001 (and tp!976853 tp!976857))))

(declare-fun b!3114025 () Bool)

(declare-fun tp!976854 () Bool)

(declare-fun tp!976855 () Bool)

(assert (=> b!3114025 (= e!1945001 (and tp!976854 tp!976855))))

(declare-fun b!3114026 () Bool)

(declare-fun e!1945003 () Bool)

(declare-datatypes ((C!19392 0))(
  ( (C!19393 (val!11732 Int)) )
))
(declare-datatypes ((Regex!9603 0))(
  ( (ElementMatch!9603 (c!521437 C!19392)) (Concat!14924 (regOne!19718 Regex!9603) (regTwo!19718 Regex!9603)) (EmptyExpr!9603) (Star!9603 (reg!9932 Regex!9603)) (EmptyLang!9603) (Union!9603 (regOne!19719 Regex!9603) (regTwo!19719 Regex!9603)) )
))
(declare-fun r!17423 () Regex!9603)

(declare-fun validRegex!4336 (Regex!9603) Bool)

(assert (=> b!3114026 (= e!1945003 (validRegex!4336 (reg!9932 r!17423)))))

(declare-fun b!3114027 () Bool)

(declare-fun tp_is_empty!16769 () Bool)

(assert (=> b!3114027 (= e!1945001 tp_is_empty!16769)))

(declare-fun b!3114028 () Bool)

(declare-fun e!1945000 () Bool)

(assert (=> b!3114028 (= e!1945000 (not e!1945003))))

(declare-fun res!1274739 () Bool)

(assert (=> b!3114028 (=> res!1274739 e!1945003)))

(declare-fun lt!1057982 () Bool)

(get-info :version)

(assert (=> b!3114028 (= res!1274739 (or lt!1057982 ((_ is Concat!14924) r!17423) ((_ is Union!9603) r!17423) (not ((_ is Star!9603) r!17423))))))

(declare-datatypes ((List!35468 0))(
  ( (Nil!35344) (Cons!35344 (h!40764 C!19392) (t!234533 List!35468)) )
))
(declare-fun s!11993 () List!35468)

(declare-fun matchRSpec!1740 (Regex!9603 List!35468) Bool)

(assert (=> b!3114028 (= lt!1057982 (matchRSpec!1740 r!17423 s!11993))))

(declare-fun matchR!4485 (Regex!9603 List!35468) Bool)

(assert (=> b!3114028 (= lt!1057982 (matchR!4485 r!17423 s!11993))))

(declare-datatypes ((Unit!49645 0))(
  ( (Unit!49646) )
))
(declare-fun lt!1057981 () Unit!49645)

(declare-fun mainMatchTheorem!1740 (Regex!9603 List!35468) Unit!49645)

(assert (=> b!3114028 (= lt!1057981 (mainMatchTheorem!1740 r!17423 s!11993))))

(declare-fun b!3114029 () Bool)

(declare-fun e!1945002 () Bool)

(declare-fun tp!976852 () Bool)

(assert (=> b!3114029 (= e!1945002 (and tp_is_empty!16769 tp!976852))))

(declare-fun b!3114022 () Bool)

(declare-fun res!1274738 () Bool)

(assert (=> b!3114022 (=> res!1274738 e!1945003)))

(declare-fun isEmptyLang!654 (Regex!9603) Bool)

(declare-fun simplify!558 (Regex!9603) Regex!9603)

(assert (=> b!3114022 (= res!1274738 (not (isEmptyLang!654 (simplify!558 (reg!9932 r!17423)))))))

(declare-fun res!1274740 () Bool)

(assert (=> start!294868 (=> (not res!1274740) (not e!1945000))))

(assert (=> start!294868 (= res!1274740 (validRegex!4336 r!17423))))

(assert (=> start!294868 e!1945000))

(assert (=> start!294868 e!1945001))

(assert (=> start!294868 e!1945002))

(assert (= (and start!294868 res!1274740) b!3114028))

(assert (= (and b!3114028 (not res!1274739)) b!3114022))

(assert (= (and b!3114022 (not res!1274738)) b!3114026))

(assert (= (and start!294868 ((_ is ElementMatch!9603) r!17423)) b!3114027))

(assert (= (and start!294868 ((_ is Concat!14924) r!17423)) b!3114024))

(assert (= (and start!294868 ((_ is Star!9603) r!17423)) b!3114023))

(assert (= (and start!294868 ((_ is Union!9603) r!17423)) b!3114025))

(assert (= (and start!294868 ((_ is Cons!35344) s!11993)) b!3114029))

(declare-fun m!3405871 () Bool)

(assert (=> b!3114026 m!3405871))

(declare-fun m!3405873 () Bool)

(assert (=> b!3114028 m!3405873))

(declare-fun m!3405875 () Bool)

(assert (=> b!3114028 m!3405875))

(declare-fun m!3405877 () Bool)

(assert (=> b!3114028 m!3405877))

(declare-fun m!3405879 () Bool)

(assert (=> b!3114022 m!3405879))

(assert (=> b!3114022 m!3405879))

(declare-fun m!3405881 () Bool)

(assert (=> b!3114022 m!3405881))

(declare-fun m!3405883 () Bool)

(assert (=> start!294868 m!3405883))

(check-sat (not b!3114026) (not b!3114025) (not start!294868) (not b!3114023) tp_is_empty!16769 (not b!3114028) (not b!3114029) (not b!3114022) (not b!3114024))
(check-sat)
(get-model)

(declare-fun b!3114202 () Bool)

(assert (=> b!3114202 true))

(assert (=> b!3114202 true))

(declare-fun bs!535822 () Bool)

(declare-fun b!3114207 () Bool)

(assert (= bs!535822 (and b!3114207 b!3114202)))

(declare-fun lambda!115108 () Int)

(declare-fun lambda!115107 () Int)

(assert (=> bs!535822 (not (= lambda!115108 lambda!115107))))

(assert (=> b!3114207 true))

(assert (=> b!3114207 true))

(declare-fun b!3114201 () Bool)

(declare-fun c!521491 () Bool)

(assert (=> b!3114201 (= c!521491 ((_ is Union!9603) r!17423))))

(declare-fun e!1945096 () Bool)

(declare-fun e!1945102 () Bool)

(assert (=> b!3114201 (= e!1945096 e!1945102)))

(declare-fun e!1945099 () Bool)

(declare-fun call!220787 () Bool)

(assert (=> b!3114202 (= e!1945099 call!220787)))

(declare-fun b!3114203 () Bool)

(declare-fun c!521492 () Bool)

(assert (=> b!3114203 (= c!521492 ((_ is ElementMatch!9603) r!17423))))

(declare-fun e!1945100 () Bool)

(assert (=> b!3114203 (= e!1945100 e!1945096)))

(declare-fun b!3114204 () Bool)

(declare-fun e!1945101 () Bool)

(assert (=> b!3114204 (= e!1945101 (matchRSpec!1740 (regTwo!19719 r!17423) s!11993))))

(declare-fun b!3114205 () Bool)

(assert (=> b!3114205 (= e!1945102 e!1945101)))

(declare-fun res!1274806 () Bool)

(assert (=> b!3114205 (= res!1274806 (matchRSpec!1740 (regOne!19719 r!17423) s!11993))))

(assert (=> b!3114205 (=> res!1274806 e!1945101)))

(declare-fun bm!220781 () Bool)

(declare-fun c!521489 () Bool)

(declare-fun Exists!1859 (Int) Bool)

(assert (=> bm!220781 (= call!220787 (Exists!1859 (ite c!521489 lambda!115107 lambda!115108)))))

(declare-fun b!3114206 () Bool)

(declare-fun res!1274808 () Bool)

(assert (=> b!3114206 (=> res!1274808 e!1945099)))

(declare-fun call!220786 () Bool)

(assert (=> b!3114206 (= res!1274808 call!220786)))

(declare-fun e!1945097 () Bool)

(assert (=> b!3114206 (= e!1945097 e!1945099)))

(assert (=> b!3114207 (= e!1945097 call!220787)))

(declare-fun b!3114208 () Bool)

(declare-fun e!1945098 () Bool)

(assert (=> b!3114208 (= e!1945098 call!220786)))

(declare-fun d!862011 () Bool)

(declare-fun c!521490 () Bool)

(assert (=> d!862011 (= c!521490 ((_ is EmptyExpr!9603) r!17423))))

(assert (=> d!862011 (= (matchRSpec!1740 r!17423 s!11993) e!1945098)))

(declare-fun b!3114209 () Bool)

(assert (=> b!3114209 (= e!1945096 (= s!11993 (Cons!35344 (c!521437 r!17423) Nil!35344)))))

(declare-fun b!3114210 () Bool)

(assert (=> b!3114210 (= e!1945098 e!1945100)))

(declare-fun res!1274807 () Bool)

(assert (=> b!3114210 (= res!1274807 (not ((_ is EmptyLang!9603) r!17423)))))

(assert (=> b!3114210 (=> (not res!1274807) (not e!1945100))))

(declare-fun b!3114211 () Bool)

(assert (=> b!3114211 (= e!1945102 e!1945097)))

(assert (=> b!3114211 (= c!521489 ((_ is Star!9603) r!17423))))

(declare-fun bm!220782 () Bool)

(declare-fun isEmpty!19689 (List!35468) Bool)

(assert (=> bm!220782 (= call!220786 (isEmpty!19689 s!11993))))

(assert (= (and d!862011 c!521490) b!3114208))

(assert (= (and d!862011 (not c!521490)) b!3114210))

(assert (= (and b!3114210 res!1274807) b!3114203))

(assert (= (and b!3114203 c!521492) b!3114209))

(assert (= (and b!3114203 (not c!521492)) b!3114201))

(assert (= (and b!3114201 c!521491) b!3114205))

(assert (= (and b!3114201 (not c!521491)) b!3114211))

(assert (= (and b!3114205 (not res!1274806)) b!3114204))

(assert (= (and b!3114211 c!521489) b!3114206))

(assert (= (and b!3114211 (not c!521489)) b!3114207))

(assert (= (and b!3114206 (not res!1274808)) b!3114202))

(assert (= (or b!3114202 b!3114207) bm!220781))

(assert (= (or b!3114208 b!3114206) bm!220782))

(declare-fun m!3405907 () Bool)

(assert (=> b!3114204 m!3405907))

(declare-fun m!3405909 () Bool)

(assert (=> b!3114205 m!3405909))

(declare-fun m!3405911 () Bool)

(assert (=> bm!220781 m!3405911))

(declare-fun m!3405913 () Bool)

(assert (=> bm!220782 m!3405913))

(assert (=> b!3114028 d!862011))

(declare-fun b!3114340 () Bool)

(declare-fun res!1274848 () Bool)

(declare-fun e!1945170 () Bool)

(assert (=> b!3114340 (=> res!1274848 e!1945170)))

(declare-fun tail!5123 (List!35468) List!35468)

(assert (=> b!3114340 (= res!1274848 (not (isEmpty!19689 (tail!5123 s!11993))))))

(declare-fun b!3114342 () Bool)

(declare-fun e!1945174 () Bool)

(declare-fun e!1945173 () Bool)

(assert (=> b!3114342 (= e!1945174 e!1945173)))

(declare-fun c!521520 () Bool)

(assert (=> b!3114342 (= c!521520 ((_ is EmptyLang!9603) r!17423))))

(declare-fun b!3114343 () Bool)

(declare-fun lt!1058009 () Bool)

(declare-fun call!220809 () Bool)

(assert (=> b!3114343 (= e!1945174 (= lt!1058009 call!220809))))

(declare-fun b!3114344 () Bool)

(declare-fun res!1274850 () Bool)

(declare-fun e!1945175 () Bool)

(assert (=> b!3114344 (=> (not res!1274850) (not e!1945175))))

(assert (=> b!3114344 (= res!1274850 (not call!220809))))

(declare-fun b!3114345 () Bool)

(declare-fun res!1274855 () Bool)

(declare-fun e!1945172 () Bool)

(assert (=> b!3114345 (=> res!1274855 e!1945172)))

(assert (=> b!3114345 (= res!1274855 e!1945175)))

(declare-fun res!1274853 () Bool)

(assert (=> b!3114345 (=> (not res!1274853) (not e!1945175))))

(assert (=> b!3114345 (= res!1274853 lt!1058009)))

(declare-fun b!3114346 () Bool)

(declare-fun head!6897 (List!35468) C!19392)

(assert (=> b!3114346 (= e!1945170 (not (= (head!6897 s!11993) (c!521437 r!17423))))))

(declare-fun b!3114347 () Bool)

(declare-fun res!1274852 () Bool)

(assert (=> b!3114347 (=> res!1274852 e!1945172)))

(assert (=> b!3114347 (= res!1274852 (not ((_ is ElementMatch!9603) r!17423)))))

(assert (=> b!3114347 (= e!1945173 e!1945172)))

(declare-fun bm!220804 () Bool)

(assert (=> bm!220804 (= call!220809 (isEmpty!19689 s!11993))))

(declare-fun d!862021 () Bool)

(assert (=> d!862021 e!1945174))

(declare-fun c!521518 () Bool)

(assert (=> d!862021 (= c!521518 ((_ is EmptyExpr!9603) r!17423))))

(declare-fun e!1945169 () Bool)

(assert (=> d!862021 (= lt!1058009 e!1945169)))

(declare-fun c!521519 () Bool)

(assert (=> d!862021 (= c!521519 (isEmpty!19689 s!11993))))

(assert (=> d!862021 (validRegex!4336 r!17423)))

(assert (=> d!862021 (= (matchR!4485 r!17423 s!11993) lt!1058009)))

(declare-fun b!3114341 () Bool)

(assert (=> b!3114341 (= e!1945173 (not lt!1058009))))

(declare-fun b!3114348 () Bool)

(declare-fun res!1274854 () Bool)

(assert (=> b!3114348 (=> (not res!1274854) (not e!1945175))))

(assert (=> b!3114348 (= res!1274854 (isEmpty!19689 (tail!5123 s!11993)))))

(declare-fun b!3114349 () Bool)

(declare-fun nullable!3243 (Regex!9603) Bool)

(assert (=> b!3114349 (= e!1945169 (nullable!3243 r!17423))))

(declare-fun b!3114350 () Bool)

(declare-fun e!1945171 () Bool)

(assert (=> b!3114350 (= e!1945172 e!1945171)))

(declare-fun res!1274849 () Bool)

(assert (=> b!3114350 (=> (not res!1274849) (not e!1945171))))

(assert (=> b!3114350 (= res!1274849 (not lt!1058009))))

(declare-fun b!3114351 () Bool)

(assert (=> b!3114351 (= e!1945171 e!1945170)))

(declare-fun res!1274851 () Bool)

(assert (=> b!3114351 (=> res!1274851 e!1945170)))

(assert (=> b!3114351 (= res!1274851 call!220809)))

(declare-fun b!3114352 () Bool)

(declare-fun derivativeStep!2838 (Regex!9603 C!19392) Regex!9603)

(assert (=> b!3114352 (= e!1945169 (matchR!4485 (derivativeStep!2838 r!17423 (head!6897 s!11993)) (tail!5123 s!11993)))))

(declare-fun b!3114353 () Bool)

(assert (=> b!3114353 (= e!1945175 (= (head!6897 s!11993) (c!521437 r!17423)))))

(assert (= (and d!862021 c!521519) b!3114349))

(assert (= (and d!862021 (not c!521519)) b!3114352))

(assert (= (and d!862021 c!521518) b!3114343))

(assert (= (and d!862021 (not c!521518)) b!3114342))

(assert (= (and b!3114342 c!521520) b!3114341))

(assert (= (and b!3114342 (not c!521520)) b!3114347))

(assert (= (and b!3114347 (not res!1274852)) b!3114345))

(assert (= (and b!3114345 res!1274853) b!3114344))

(assert (= (and b!3114344 res!1274850) b!3114348))

(assert (= (and b!3114348 res!1274854) b!3114353))

(assert (= (and b!3114345 (not res!1274855)) b!3114350))

(assert (= (and b!3114350 res!1274849) b!3114351))

(assert (= (and b!3114351 (not res!1274851)) b!3114340))

(assert (= (and b!3114340 (not res!1274848)) b!3114346))

(assert (= (or b!3114343 b!3114344 b!3114351) bm!220804))

(assert (=> bm!220804 m!3405913))

(declare-fun m!3405943 () Bool)

(assert (=> b!3114349 m!3405943))

(declare-fun m!3405945 () Bool)

(assert (=> b!3114352 m!3405945))

(assert (=> b!3114352 m!3405945))

(declare-fun m!3405947 () Bool)

(assert (=> b!3114352 m!3405947))

(declare-fun m!3405949 () Bool)

(assert (=> b!3114352 m!3405949))

(assert (=> b!3114352 m!3405947))

(assert (=> b!3114352 m!3405949))

(declare-fun m!3405951 () Bool)

(assert (=> b!3114352 m!3405951))

(assert (=> b!3114346 m!3405945))

(assert (=> b!3114353 m!3405945))

(assert (=> d!862021 m!3405913))

(assert (=> d!862021 m!3405883))

(assert (=> b!3114348 m!3405949))

(assert (=> b!3114348 m!3405949))

(declare-fun m!3405953 () Bool)

(assert (=> b!3114348 m!3405953))

(assert (=> b!3114340 m!3405949))

(assert (=> b!3114340 m!3405949))

(assert (=> b!3114340 m!3405953))

(assert (=> b!3114028 d!862021))

(declare-fun d!862027 () Bool)

(assert (=> d!862027 (= (matchR!4485 r!17423 s!11993) (matchRSpec!1740 r!17423 s!11993))))

(declare-fun lt!1058012 () Unit!49645)

(declare-fun choose!18420 (Regex!9603 List!35468) Unit!49645)

(assert (=> d!862027 (= lt!1058012 (choose!18420 r!17423 s!11993))))

(assert (=> d!862027 (validRegex!4336 r!17423)))

(assert (=> d!862027 (= (mainMatchTheorem!1740 r!17423 s!11993) lt!1058012)))

(declare-fun bs!535823 () Bool)

(assert (= bs!535823 d!862027))

(assert (=> bs!535823 m!3405875))

(assert (=> bs!535823 m!3405873))

(declare-fun m!3405955 () Bool)

(assert (=> bs!535823 m!3405955))

(assert (=> bs!535823 m!3405883))

(assert (=> b!3114028 d!862027))

(declare-fun d!862029 () Bool)

(assert (=> d!862029 (= (isEmptyLang!654 (simplify!558 (reg!9932 r!17423))) ((_ is EmptyLang!9603) (simplify!558 (reg!9932 r!17423))))))

(assert (=> b!3114022 d!862029))

(declare-fun b!3114404 () Bool)

(declare-fun c!521550 () Bool)

(declare-fun e!1945217 () Bool)

(assert (=> b!3114404 (= c!521550 e!1945217)))

(declare-fun res!1274864 () Bool)

(assert (=> b!3114404 (=> res!1274864 e!1945217)))

(declare-fun call!220830 () Bool)

(assert (=> b!3114404 (= res!1274864 call!220830)))

(declare-fun lt!1058030 () Regex!9603)

(declare-fun call!220829 () Regex!9603)

(assert (=> b!3114404 (= lt!1058030 call!220829)))

(declare-fun e!1945215 () Regex!9603)

(declare-fun e!1945216 () Regex!9603)

(assert (=> b!3114404 (= e!1945215 e!1945216)))

(declare-fun b!3114405 () Bool)

(declare-fun call!220828 () Bool)

(assert (=> b!3114405 (= e!1945217 call!220828)))

(declare-fun d!862031 () Bool)

(declare-fun e!1945214 () Bool)

(assert (=> d!862031 e!1945214))

(declare-fun res!1274862 () Bool)

(assert (=> d!862031 (=> (not res!1274862) (not e!1945214))))

(declare-fun lt!1058027 () Regex!9603)

(assert (=> d!862031 (= res!1274862 (validRegex!4336 lt!1058027))))

(declare-fun e!1945212 () Regex!9603)

(assert (=> d!862031 (= lt!1058027 e!1945212)))

(declare-fun c!521546 () Bool)

(assert (=> d!862031 (= c!521546 ((_ is EmptyLang!9603) (reg!9932 r!17423)))))

(assert (=> d!862031 (validRegex!4336 (reg!9932 r!17423))))

(assert (=> d!862031 (= (simplify!558 (reg!9932 r!17423)) lt!1058027)))

(declare-fun b!3114406 () Bool)

(declare-fun e!1945206 () Regex!9603)

(assert (=> b!3114406 (= e!1945206 EmptyExpr!9603)))

(declare-fun bm!220819 () Bool)

(declare-fun call!220827 () Regex!9603)

(declare-fun c!521553 () Bool)

(assert (=> bm!220819 (= call!220827 (simplify!558 (ite c!521553 (regOne!19719 (reg!9932 r!17423)) (regTwo!19718 (reg!9932 r!17423)))))))

(declare-fun b!3114407 () Bool)

(assert (=> b!3114407 (= c!521553 ((_ is Union!9603) (reg!9932 r!17423)))))

(declare-fun e!1945213 () Regex!9603)

(assert (=> b!3114407 (= e!1945215 e!1945213)))

(declare-fun b!3114408 () Bool)

(declare-fun c!521544 () Bool)

(declare-fun call!220826 () Bool)

(assert (=> b!3114408 (= c!521544 call!220826)))

(declare-fun e!1945209 () Regex!9603)

(declare-fun e!1945210 () Regex!9603)

(assert (=> b!3114408 (= e!1945209 e!1945210)))

(declare-fun b!3114409 () Bool)

(assert (=> b!3114409 (= e!1945214 (= (nullable!3243 lt!1058027) (nullable!3243 (reg!9932 r!17423))))))

(declare-fun b!3114410 () Bool)

(declare-fun e!1945211 () Regex!9603)

(declare-fun lt!1058025 () Regex!9603)

(assert (=> b!3114410 (= e!1945211 lt!1058025)))

(declare-fun lt!1058026 () Regex!9603)

(declare-fun c!521545 () Bool)

(declare-fun bm!220820 () Bool)

(declare-fun isEmptyExpr!654 (Regex!9603) Bool)

(assert (=> bm!220820 (= call!220828 (isEmptyExpr!654 (ite c!521545 lt!1058030 lt!1058026)))))

(declare-fun b!3114411 () Bool)

(assert (=> b!3114411 (= e!1945212 EmptyLang!9603)))

(declare-fun b!3114412 () Bool)

(assert (=> b!3114412 (= e!1945216 (Star!9603 lt!1058030))))

(declare-fun b!3114413 () Bool)

(declare-fun e!1945207 () Bool)

(assert (=> b!3114413 (= e!1945207 call!220826)))

(declare-fun b!3114414 () Bool)

(declare-fun lt!1058028 () Regex!9603)

(declare-fun lt!1058029 () Regex!9603)

(assert (=> b!3114414 (= e!1945210 (Union!9603 lt!1058028 lt!1058029))))

(declare-fun bm!220821 () Bool)

(assert (=> bm!220821 (= call!220826 call!220830)))

(declare-fun b!3114415 () Bool)

(declare-fun c!521551 () Bool)

(assert (=> b!3114415 (= c!521551 call!220828)))

(declare-fun e!1945208 () Regex!9603)

(assert (=> b!3114415 (= e!1945208 e!1945211)))

(declare-fun b!3114416 () Bool)

(assert (=> b!3114416 (= e!1945210 lt!1058028)))

(declare-fun b!3114417 () Bool)

(assert (=> b!3114417 (= e!1945216 EmptyExpr!9603)))

(declare-fun b!3114418 () Bool)

(assert (=> b!3114418 (= e!1945209 lt!1058029)))

(declare-fun bm!220822 () Bool)

(declare-fun call!220824 () Regex!9603)

(assert (=> bm!220822 (= call!220824 call!220829)))

(declare-fun b!3114419 () Bool)

(assert (=> b!3114419 (= e!1945208 EmptyLang!9603)))

(declare-fun b!3114420 () Bool)

(declare-fun e!1945205 () Regex!9603)

(assert (=> b!3114420 (= e!1945205 (reg!9932 r!17423))))

(declare-fun b!3114421 () Bool)

(assert (=> b!3114421 (= e!1945206 e!1945215)))

(assert (=> b!3114421 (= c!521545 ((_ is Star!9603) (reg!9932 r!17423)))))

(declare-fun bm!220823 () Bool)

(assert (=> bm!220823 (= call!220830 (isEmptyLang!654 (ite c!521545 lt!1058030 (ite c!521553 lt!1058029 lt!1058025))))))

(declare-fun call!220825 () Bool)

(declare-fun bm!220824 () Bool)

(assert (=> bm!220824 (= call!220825 (isEmptyLang!654 (ite c!521553 lt!1058028 lt!1058026)))))

(declare-fun b!3114422 () Bool)

(assert (=> b!3114422 (= e!1945213 e!1945209)))

(assert (=> b!3114422 (= lt!1058028 call!220827)))

(assert (=> b!3114422 (= lt!1058029 call!220824)))

(declare-fun c!521549 () Bool)

(assert (=> b!3114422 (= c!521549 call!220825)))

(declare-fun b!3114423 () Bool)

(assert (=> b!3114423 (= e!1945212 e!1945205)))

(declare-fun c!521547 () Bool)

(assert (=> b!3114423 (= c!521547 ((_ is ElementMatch!9603) (reg!9932 r!17423)))))

(declare-fun b!3114424 () Bool)

(declare-fun e!1945204 () Regex!9603)

(assert (=> b!3114424 (= e!1945204 (Concat!14924 lt!1058026 lt!1058025))))

(declare-fun b!3114425 () Bool)

(assert (=> b!3114425 (= e!1945213 e!1945208)))

(assert (=> b!3114425 (= lt!1058026 call!220824)))

(assert (=> b!3114425 (= lt!1058025 call!220827)))

(declare-fun res!1274863 () Bool)

(assert (=> b!3114425 (= res!1274863 call!220825)))

(assert (=> b!3114425 (=> res!1274863 e!1945207)))

(declare-fun c!521543 () Bool)

(assert (=> b!3114425 (= c!521543 e!1945207)))

(declare-fun b!3114426 () Bool)

(declare-fun c!521552 () Bool)

(assert (=> b!3114426 (= c!521552 ((_ is EmptyExpr!9603) (reg!9932 r!17423)))))

(assert (=> b!3114426 (= e!1945205 e!1945206)))

(declare-fun bm!220825 () Bool)

(assert (=> bm!220825 (= call!220829 (simplify!558 (ite c!521545 (reg!9932 (reg!9932 r!17423)) (ite c!521553 (regTwo!19719 (reg!9932 r!17423)) (regOne!19718 (reg!9932 r!17423))))))))

(declare-fun b!3114427 () Bool)

(assert (=> b!3114427 (= e!1945204 lt!1058026)))

(declare-fun b!3114428 () Bool)

(assert (=> b!3114428 (= e!1945211 e!1945204)))

(declare-fun c!521548 () Bool)

(assert (=> b!3114428 (= c!521548 (isEmptyExpr!654 lt!1058025))))

(assert (= (and d!862031 c!521546) b!3114411))

(assert (= (and d!862031 (not c!521546)) b!3114423))

(assert (= (and b!3114423 c!521547) b!3114420))

(assert (= (and b!3114423 (not c!521547)) b!3114426))

(assert (= (and b!3114426 c!521552) b!3114406))

(assert (= (and b!3114426 (not c!521552)) b!3114421))

(assert (= (and b!3114421 c!521545) b!3114404))

(assert (= (and b!3114421 (not c!521545)) b!3114407))

(assert (= (and b!3114404 (not res!1274864)) b!3114405))

(assert (= (and b!3114404 c!521550) b!3114417))

(assert (= (and b!3114404 (not c!521550)) b!3114412))

(assert (= (and b!3114407 c!521553) b!3114422))

(assert (= (and b!3114407 (not c!521553)) b!3114425))

(assert (= (and b!3114422 c!521549) b!3114418))

(assert (= (and b!3114422 (not c!521549)) b!3114408))

(assert (= (and b!3114408 c!521544) b!3114416))

(assert (= (and b!3114408 (not c!521544)) b!3114414))

(assert (= (and b!3114425 (not res!1274863)) b!3114413))

(assert (= (and b!3114425 c!521543) b!3114419))

(assert (= (and b!3114425 (not c!521543)) b!3114415))

(assert (= (and b!3114415 c!521551) b!3114410))

(assert (= (and b!3114415 (not c!521551)) b!3114428))

(assert (= (and b!3114428 c!521548) b!3114427))

(assert (= (and b!3114428 (not c!521548)) b!3114424))

(assert (= (or b!3114422 b!3114425) bm!220819))

(assert (= (or b!3114422 b!3114425) bm!220822))

(assert (= (or b!3114408 b!3114413) bm!220821))

(assert (= (or b!3114422 b!3114425) bm!220824))

(assert (= (or b!3114405 b!3114415) bm!220820))

(assert (= (or b!3114404 bm!220822) bm!220825))

(assert (= (or b!3114404 bm!220821) bm!220823))

(assert (= (and d!862031 res!1274862) b!3114409))

(declare-fun m!3405957 () Bool)

(assert (=> bm!220819 m!3405957))

(declare-fun m!3405959 () Bool)

(assert (=> bm!220824 m!3405959))

(declare-fun m!3405961 () Bool)

(assert (=> d!862031 m!3405961))

(assert (=> d!862031 m!3405871))

(declare-fun m!3405963 () Bool)

(assert (=> bm!220823 m!3405963))

(declare-fun m!3405965 () Bool)

(assert (=> bm!220820 m!3405965))

(declare-fun m!3405967 () Bool)

(assert (=> bm!220825 m!3405967))

(declare-fun m!3405969 () Bool)

(assert (=> b!3114428 m!3405969))

(declare-fun m!3405971 () Bool)

(assert (=> b!3114409 m!3405971))

(declare-fun m!3405973 () Bool)

(assert (=> b!3114409 m!3405973))

(assert (=> b!3114022 d!862031))

(declare-fun b!3114447 () Bool)

(declare-fun e!1945235 () Bool)

(declare-fun e!1945238 () Bool)

(assert (=> b!3114447 (= e!1945235 e!1945238)))

(declare-fun c!521559 () Bool)

(assert (=> b!3114447 (= c!521559 ((_ is Star!9603) r!17423))))

(declare-fun b!3114448 () Bool)

(declare-fun e!1945236 () Bool)

(declare-fun call!220837 () Bool)

(assert (=> b!3114448 (= e!1945236 call!220837)))

(declare-fun b!3114449 () Bool)

(declare-fun e!1945233 () Bool)

(assert (=> b!3114449 (= e!1945238 e!1945233)))

(declare-fun res!1274877 () Bool)

(assert (=> b!3114449 (= res!1274877 (not (nullable!3243 (reg!9932 r!17423))))))

(assert (=> b!3114449 (=> (not res!1274877) (not e!1945233))))

(declare-fun b!3114450 () Bool)

(declare-fun e!1945237 () Bool)

(declare-fun call!220838 () Bool)

(assert (=> b!3114450 (= e!1945237 call!220838)))

(declare-fun c!521558 () Bool)

(declare-fun bm!220832 () Bool)

(declare-fun call!220839 () Bool)

(assert (=> bm!220832 (= call!220839 (validRegex!4336 (ite c!521559 (reg!9932 r!17423) (ite c!521558 (regTwo!19719 r!17423) (regOne!19718 r!17423)))))))

(declare-fun b!3114451 () Bool)

(assert (=> b!3114451 (= e!1945233 call!220839)))

(declare-fun b!3114452 () Bool)

(declare-fun res!1274875 () Bool)

(declare-fun e!1945232 () Bool)

(assert (=> b!3114452 (=> res!1274875 e!1945232)))

(assert (=> b!3114452 (= res!1274875 (not ((_ is Concat!14924) r!17423)))))

(declare-fun e!1945234 () Bool)

(assert (=> b!3114452 (= e!1945234 e!1945232)))

(declare-fun b!3114453 () Bool)

(declare-fun res!1274876 () Bool)

(assert (=> b!3114453 (=> (not res!1274876) (not e!1945236))))

(assert (=> b!3114453 (= res!1274876 call!220838)))

(assert (=> b!3114453 (= e!1945234 e!1945236)))

(declare-fun b!3114454 () Bool)

(assert (=> b!3114454 (= e!1945232 e!1945237)))

(declare-fun res!1274879 () Bool)

(assert (=> b!3114454 (=> (not res!1274879) (not e!1945237))))

(assert (=> b!3114454 (= res!1274879 call!220837)))

(declare-fun d!862033 () Bool)

(declare-fun res!1274878 () Bool)

(assert (=> d!862033 (=> res!1274878 e!1945235)))

(assert (=> d!862033 (= res!1274878 ((_ is ElementMatch!9603) r!17423))))

(assert (=> d!862033 (= (validRegex!4336 r!17423) e!1945235)))

(declare-fun bm!220833 () Bool)

(assert (=> bm!220833 (= call!220837 call!220839)))

(declare-fun bm!220834 () Bool)

(assert (=> bm!220834 (= call!220838 (validRegex!4336 (ite c!521558 (regOne!19719 r!17423) (regTwo!19718 r!17423))))))

(declare-fun b!3114455 () Bool)

(assert (=> b!3114455 (= e!1945238 e!1945234)))

(assert (=> b!3114455 (= c!521558 ((_ is Union!9603) r!17423))))

(assert (= (and d!862033 (not res!1274878)) b!3114447))

(assert (= (and b!3114447 c!521559) b!3114449))

(assert (= (and b!3114447 (not c!521559)) b!3114455))

(assert (= (and b!3114449 res!1274877) b!3114451))

(assert (= (and b!3114455 c!521558) b!3114453))

(assert (= (and b!3114455 (not c!521558)) b!3114452))

(assert (= (and b!3114453 res!1274876) b!3114448))

(assert (= (and b!3114452 (not res!1274875)) b!3114454))

(assert (= (and b!3114454 res!1274879) b!3114450))

(assert (= (or b!3114453 b!3114450) bm!220834))

(assert (= (or b!3114448 b!3114454) bm!220833))

(assert (= (or b!3114451 bm!220833) bm!220832))

(assert (=> b!3114449 m!3405973))

(declare-fun m!3405975 () Bool)

(assert (=> bm!220832 m!3405975))

(declare-fun m!3405977 () Bool)

(assert (=> bm!220834 m!3405977))

(assert (=> start!294868 d!862033))

(declare-fun b!3114456 () Bool)

(declare-fun e!1945242 () Bool)

(declare-fun e!1945245 () Bool)

(assert (=> b!3114456 (= e!1945242 e!1945245)))

(declare-fun c!521561 () Bool)

(assert (=> b!3114456 (= c!521561 ((_ is Star!9603) (reg!9932 r!17423)))))

(declare-fun b!3114457 () Bool)

(declare-fun e!1945243 () Bool)

(declare-fun call!220840 () Bool)

(assert (=> b!3114457 (= e!1945243 call!220840)))

(declare-fun b!3114458 () Bool)

(declare-fun e!1945240 () Bool)

(assert (=> b!3114458 (= e!1945245 e!1945240)))

(declare-fun res!1274882 () Bool)

(assert (=> b!3114458 (= res!1274882 (not (nullable!3243 (reg!9932 (reg!9932 r!17423)))))))

(assert (=> b!3114458 (=> (not res!1274882) (not e!1945240))))

(declare-fun b!3114459 () Bool)

(declare-fun e!1945244 () Bool)

(declare-fun call!220841 () Bool)

(assert (=> b!3114459 (= e!1945244 call!220841)))

(declare-fun bm!220835 () Bool)

(declare-fun c!521560 () Bool)

(declare-fun call!220842 () Bool)

(assert (=> bm!220835 (= call!220842 (validRegex!4336 (ite c!521561 (reg!9932 (reg!9932 r!17423)) (ite c!521560 (regTwo!19719 (reg!9932 r!17423)) (regOne!19718 (reg!9932 r!17423))))))))

(declare-fun b!3114460 () Bool)

(assert (=> b!3114460 (= e!1945240 call!220842)))

(declare-fun b!3114461 () Bool)

(declare-fun res!1274880 () Bool)

(declare-fun e!1945239 () Bool)

(assert (=> b!3114461 (=> res!1274880 e!1945239)))

(assert (=> b!3114461 (= res!1274880 (not ((_ is Concat!14924) (reg!9932 r!17423))))))

(declare-fun e!1945241 () Bool)

(assert (=> b!3114461 (= e!1945241 e!1945239)))

(declare-fun b!3114462 () Bool)

(declare-fun res!1274881 () Bool)

(assert (=> b!3114462 (=> (not res!1274881) (not e!1945243))))

(assert (=> b!3114462 (= res!1274881 call!220841)))

(assert (=> b!3114462 (= e!1945241 e!1945243)))

(declare-fun b!3114463 () Bool)

(assert (=> b!3114463 (= e!1945239 e!1945244)))

(declare-fun res!1274884 () Bool)

(assert (=> b!3114463 (=> (not res!1274884) (not e!1945244))))

(assert (=> b!3114463 (= res!1274884 call!220840)))

(declare-fun d!862035 () Bool)

(declare-fun res!1274883 () Bool)

(assert (=> d!862035 (=> res!1274883 e!1945242)))

(assert (=> d!862035 (= res!1274883 ((_ is ElementMatch!9603) (reg!9932 r!17423)))))

(assert (=> d!862035 (= (validRegex!4336 (reg!9932 r!17423)) e!1945242)))

(declare-fun bm!220836 () Bool)

(assert (=> bm!220836 (= call!220840 call!220842)))

(declare-fun bm!220837 () Bool)

(assert (=> bm!220837 (= call!220841 (validRegex!4336 (ite c!521560 (regOne!19719 (reg!9932 r!17423)) (regTwo!19718 (reg!9932 r!17423)))))))

(declare-fun b!3114464 () Bool)

(assert (=> b!3114464 (= e!1945245 e!1945241)))

(assert (=> b!3114464 (= c!521560 ((_ is Union!9603) (reg!9932 r!17423)))))

(assert (= (and d!862035 (not res!1274883)) b!3114456))

(assert (= (and b!3114456 c!521561) b!3114458))

(assert (= (and b!3114456 (not c!521561)) b!3114464))

(assert (= (and b!3114458 res!1274882) b!3114460))

(assert (= (and b!3114464 c!521560) b!3114462))

(assert (= (and b!3114464 (not c!521560)) b!3114461))

(assert (= (and b!3114462 res!1274881) b!3114457))

(assert (= (and b!3114461 (not res!1274880)) b!3114463))

(assert (= (and b!3114463 res!1274884) b!3114459))

(assert (= (or b!3114462 b!3114459) bm!220837))

(assert (= (or b!3114457 b!3114463) bm!220836))

(assert (= (or b!3114460 bm!220836) bm!220835))

(declare-fun m!3405979 () Bool)

(assert (=> b!3114458 m!3405979))

(declare-fun m!3405981 () Bool)

(assert (=> bm!220835 m!3405981))

(declare-fun m!3405983 () Bool)

(assert (=> bm!220837 m!3405983))

(assert (=> b!3114026 d!862035))

(declare-fun b!3114477 () Bool)

(declare-fun e!1945248 () Bool)

(declare-fun tp!976909 () Bool)

(assert (=> b!3114477 (= e!1945248 tp!976909)))

(declare-fun b!3114475 () Bool)

(assert (=> b!3114475 (= e!1945248 tp_is_empty!16769)))

(declare-fun b!3114478 () Bool)

(declare-fun tp!976910 () Bool)

(declare-fun tp!976906 () Bool)

(assert (=> b!3114478 (= e!1945248 (and tp!976910 tp!976906))))

(declare-fun b!3114476 () Bool)

(declare-fun tp!976907 () Bool)

(declare-fun tp!976908 () Bool)

(assert (=> b!3114476 (= e!1945248 (and tp!976907 tp!976908))))

(assert (=> b!3114024 (= tp!976853 e!1945248)))

(assert (= (and b!3114024 ((_ is ElementMatch!9603) (regOne!19718 r!17423))) b!3114475))

(assert (= (and b!3114024 ((_ is Concat!14924) (regOne!19718 r!17423))) b!3114476))

(assert (= (and b!3114024 ((_ is Star!9603) (regOne!19718 r!17423))) b!3114477))

(assert (= (and b!3114024 ((_ is Union!9603) (regOne!19718 r!17423))) b!3114478))

(declare-fun b!3114481 () Bool)

(declare-fun e!1945249 () Bool)

(declare-fun tp!976914 () Bool)

(assert (=> b!3114481 (= e!1945249 tp!976914)))

(declare-fun b!3114479 () Bool)

(assert (=> b!3114479 (= e!1945249 tp_is_empty!16769)))

(declare-fun b!3114482 () Bool)

(declare-fun tp!976915 () Bool)

(declare-fun tp!976911 () Bool)

(assert (=> b!3114482 (= e!1945249 (and tp!976915 tp!976911))))

(declare-fun b!3114480 () Bool)

(declare-fun tp!976912 () Bool)

(declare-fun tp!976913 () Bool)

(assert (=> b!3114480 (= e!1945249 (and tp!976912 tp!976913))))

(assert (=> b!3114024 (= tp!976857 e!1945249)))

(assert (= (and b!3114024 ((_ is ElementMatch!9603) (regTwo!19718 r!17423))) b!3114479))

(assert (= (and b!3114024 ((_ is Concat!14924) (regTwo!19718 r!17423))) b!3114480))

(assert (= (and b!3114024 ((_ is Star!9603) (regTwo!19718 r!17423))) b!3114481))

(assert (= (and b!3114024 ((_ is Union!9603) (regTwo!19718 r!17423))) b!3114482))

(declare-fun b!3114487 () Bool)

(declare-fun e!1945252 () Bool)

(declare-fun tp!976918 () Bool)

(assert (=> b!3114487 (= e!1945252 (and tp_is_empty!16769 tp!976918))))

(assert (=> b!3114029 (= tp!976852 e!1945252)))

(assert (= (and b!3114029 ((_ is Cons!35344) (t!234533 s!11993))) b!3114487))

(declare-fun b!3114490 () Bool)

(declare-fun e!1945253 () Bool)

(declare-fun tp!976922 () Bool)

(assert (=> b!3114490 (= e!1945253 tp!976922)))

(declare-fun b!3114488 () Bool)

(assert (=> b!3114488 (= e!1945253 tp_is_empty!16769)))

(declare-fun b!3114491 () Bool)

(declare-fun tp!976923 () Bool)

(declare-fun tp!976919 () Bool)

(assert (=> b!3114491 (= e!1945253 (and tp!976923 tp!976919))))

(declare-fun b!3114489 () Bool)

(declare-fun tp!976920 () Bool)

(declare-fun tp!976921 () Bool)

(assert (=> b!3114489 (= e!1945253 (and tp!976920 tp!976921))))

(assert (=> b!3114023 (= tp!976856 e!1945253)))

(assert (= (and b!3114023 ((_ is ElementMatch!9603) (reg!9932 r!17423))) b!3114488))

(assert (= (and b!3114023 ((_ is Concat!14924) (reg!9932 r!17423))) b!3114489))

(assert (= (and b!3114023 ((_ is Star!9603) (reg!9932 r!17423))) b!3114490))

(assert (= (and b!3114023 ((_ is Union!9603) (reg!9932 r!17423))) b!3114491))

(declare-fun b!3114494 () Bool)

(declare-fun e!1945254 () Bool)

(declare-fun tp!976927 () Bool)

(assert (=> b!3114494 (= e!1945254 tp!976927)))

(declare-fun b!3114492 () Bool)

(assert (=> b!3114492 (= e!1945254 tp_is_empty!16769)))

(declare-fun b!3114495 () Bool)

(declare-fun tp!976928 () Bool)

(declare-fun tp!976924 () Bool)

(assert (=> b!3114495 (= e!1945254 (and tp!976928 tp!976924))))

(declare-fun b!3114493 () Bool)

(declare-fun tp!976925 () Bool)

(declare-fun tp!976926 () Bool)

(assert (=> b!3114493 (= e!1945254 (and tp!976925 tp!976926))))

(assert (=> b!3114025 (= tp!976854 e!1945254)))

(assert (= (and b!3114025 ((_ is ElementMatch!9603) (regOne!19719 r!17423))) b!3114492))

(assert (= (and b!3114025 ((_ is Concat!14924) (regOne!19719 r!17423))) b!3114493))

(assert (= (and b!3114025 ((_ is Star!9603) (regOne!19719 r!17423))) b!3114494))

(assert (= (and b!3114025 ((_ is Union!9603) (regOne!19719 r!17423))) b!3114495))

(declare-fun b!3114498 () Bool)

(declare-fun e!1945255 () Bool)

(declare-fun tp!976932 () Bool)

(assert (=> b!3114498 (= e!1945255 tp!976932)))

(declare-fun b!3114496 () Bool)

(assert (=> b!3114496 (= e!1945255 tp_is_empty!16769)))

(declare-fun b!3114499 () Bool)

(declare-fun tp!976933 () Bool)

(declare-fun tp!976929 () Bool)

(assert (=> b!3114499 (= e!1945255 (and tp!976933 tp!976929))))

(declare-fun b!3114497 () Bool)

(declare-fun tp!976930 () Bool)

(declare-fun tp!976931 () Bool)

(assert (=> b!3114497 (= e!1945255 (and tp!976930 tp!976931))))

(assert (=> b!3114025 (= tp!976855 e!1945255)))

(assert (= (and b!3114025 ((_ is ElementMatch!9603) (regTwo!19719 r!17423))) b!3114496))

(assert (= (and b!3114025 ((_ is Concat!14924) (regTwo!19719 r!17423))) b!3114497))

(assert (= (and b!3114025 ((_ is Star!9603) (regTwo!19719 r!17423))) b!3114498))

(assert (= (and b!3114025 ((_ is Union!9603) (regTwo!19719 r!17423))) b!3114499))

(check-sat (not b!3114352) (not b!3114340) (not b!3114497) (not b!3114482) (not d!862027) (not bm!220820) (not b!3114458) (not b!3114481) (not bm!220835) (not b!3114489) (not b!3114204) (not bm!220834) (not b!3114353) (not b!3114493) (not b!3114346) (not b!3114348) (not b!3114490) (not b!3114409) (not b!3114205) (not d!862031) (not bm!220781) (not bm!220823) (not b!3114499) (not b!3114449) (not b!3114476) (not bm!220832) (not d!862021) (not b!3114349) (not bm!220819) (not b!3114491) (not b!3114498) (not bm!220824) (not bm!220825) (not bm!220837) (not b!3114477) tp_is_empty!16769 (not b!3114478) (not bm!220804) (not b!3114495) (not b!3114487) (not b!3114428) (not bm!220782) (not b!3114480) (not b!3114494))
(check-sat)
